import React from 'react'
import { Button, Card, CardBody, CardFooter, CardHeader, Form, Input, Label } from 'reactstrap'
import { LoginAPP } from './ApiLogin'
import { useNavigate } from 'react-router-dom'
import { useFormik } from 'formik'
import * as Yup from 'yup'
import InputCommon from '../../common/Generics/InputCommon'

const Login = () => {
    const navigate = useNavigate()
    const [form, setForm] = React.useState({
        email: '',
        password: ''
    })
    const validation: any = useFormik({
        enableReinitialize: true,
        initialValues: {
            email: (form && form?.email) || '',
            password: (form && form?.password) || '',


        },
        validationSchema: Yup.object({
            email: Yup.string().required('Campo requerido'),
            password: Yup.string().required('Campo requerido'),
        }),
        onSubmit: async (values) => {
            const res: any = await LoginAPP(values)
            if (res) {
                sessionStorage.setItem('authUser', JSON.stringify(res))
                navigate('/home')
            }
        }
    })
    return (
        <div style={{ display: 'flex', justifyContent: 'center', alignItems: 'center', height: '100vh' }}>
            <Card>
                <Form
                    onSubmit={(e) => {
                        e.preventDefault();
                        validation.handleSubmit();
                        return false;
                    }}
                >
                    <Card style={{ width: '500px'}} className=''>
                        <CardHeader className='bg-primary text-white'>
                            <h1>Login</h1>
                        </CardHeader>
                        <CardBody className=' text-center py-2 d-flex flex-column justify-content-around align-items-center mb-3 p-5'>
                            <Label>Email</Label>
                            <InputCommon
                                nameInput='email'
                                validationValue={validation.values.email}
                                validation={validation}
                                validationTouched={validation.touched.email}
                                validationErrors={validation.errors.email}
                                bsSize={'lg'}


                            />
                            <Label>password</Label>

                            <InputCommon
                                nameInput='password'
                                validationValue={validation.values.password}
                                validation={validation}
                                validationTouched={validation.touched.password}
                                validationErrors={validation.errors.password}
                                bsSize={'lg'}
                                inputClass={'mb-3'}
                                type={'password'}


                            />
                        </CardBody>
                        <CardFooter>
                            <Button color='primary' block type='submit' size='lg'>Login</Button>
                        </CardFooter>
                    </Card>
                </Form>
            </Card>
        </div>
    )
}

export default Login