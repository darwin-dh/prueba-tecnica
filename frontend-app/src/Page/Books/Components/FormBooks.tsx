import { Button, Card, CardBody, CardHeader, Col, Form, Input, Label, Row } from 'reactstrap'
import { useFormik } from 'formik'
import { FC, useEffect, useState } from 'react'
import * as Yup from 'yup'
import InputCommon from '../../../common/Generics/InputCommon'
import SelectGeneric from '../../../common/Generics/SelectGeneric'
import { useGetAuthrs } from '../../../Hooks/UseAuthrs'
import { editBook, saveBook } from '../../../Hooks/UseBooApi'
import { SwalSuccess } from '../../../common/Generics/Swals/SwalsApi'
interface IFormBooks {
    isEdit: boolean
    itmesForm: any
    handleClear: () => void
    id_libro: any
    query: any
    testop: any
    iDAuthrDefault: any
}
const FormBooks: FC<IFormBooks> = ({ isEdit, itmesForm, handleClear, id_libro, query, testop, iDAuthrDefault }) => {


    //Formik
    const validation: any = useFormik({
        enableReinitialize: true,
        initialValues: {
            status: (itmesForm && itmesForm?.status) || true,
            titulo: (itmesForm && itmesForm?.titulo) || '',
            ayer: (itmesForm && itmesForm?.ayer) || '',
            genero: (itmesForm && itmesForm?.genero) || '',
            idioma: (itmesForm && itmesForm?.idioma) || '',
            descripcion: (itmesForm && itmesForm?.descripcion) || '',
            id_autor: (itmesForm && itmesForm?.id_autor) || iDAuthrDefault,


        },
        validationSchema: Yup.object({
            titulo: Yup.string().required('Campo requerido'),
            id_autor: Yup.string().required('Campo requerido'),
        }),
        onSubmit: async (values) => {
            if (isEdit) {
                const res: any = await editBook(values, id_libro)
                if (res) {
                    query.refetch()
                    handleClearForm()
                    SwalSuccess({ title: 'Guardado con exito' })

                }

            } else {
                const res: any = await saveBook(values)
                if (res) {
                    query.refetch()
                    handleClearForm()
                    SwalSuccess({ title: 'Guardado con exito' })
                }
            }
        }
    })



    const handleToggleField = (fieldName: string) => {
        validation.setFieldValue(fieldName, !validation.values[fieldName])
    }
    const handleClearForm = () => {
        validation.resetForm()
        handleClear()
    }
    return (
        <>
            <Form
                onSubmit={(e) => {
                    e.preventDefault();
                    validation.handleSubmit();
                    return false;
                }}
            >
                <Card>
                    <CardHeader className='bg-primary text-white'>
                        <h5>Formulario</h5>
                    </CardHeader>
                    <CardBody>
                        <Row className='mb-2'>
                            <Col lg='1'>
                                <Label>titulo</Label>
                            </Col>
                            <Col lg='3'>
                                <InputCommon
                                    nameInput='titulo'
                                    validationValue={validation.values.titulo}
                                    validation={validation}
                                    validationTouched={validation.touched.titulo}
                                    validationErrors={validation.errors.titulo}

                                />
                            </Col>
                            <Col lg='1'>
                                <Label>Año</Label>
                            </Col>
                            <Col lg='3'>
                                <InputCommon
                                    nameInput='ayer'
                                    type='date'
                                    validationValue={validation.values.ayer}
                                    validation={validation}
                                    validationTouched={validation.touched.ayer}
                                    validationErrors={validation.errors.ayer}

                                />
                            </Col>
                            <Col lg='1'>
                                <Label>genero</Label>
                            </Col>
                            <Col lg='2'>
                                <InputCommon
                                    nameInput='genero'
                                    validationValue={validation.values.genero}
                                    validation={validation}
                                    validationTouched={validation.touched.genero}
                                    validationErrors={validation.errors.genero}

                                />
                            </Col>
                            <Col>
                                <Input
                                    id="status"
                                    type="checkbox"
                                    name="status"
                                    checked={validation.values.status}
                                    onChange={() => handleToggleField('status')}
                                />
                                <Label htmlFor='status'>Estado</Label>
                            </Col>
                        </Row>
                        <Row className='mb-3'>
                            <Col lg='1'>
                                <Label>idioma</Label>
                            </Col>
                            <Col lg='3'>
                                <InputCommon
                                    nameInput='idioma'
                                    validationValue={validation.values.idioma}
                                    validation={validation}
                                    validationTouched={validation.touched.idioma}
                                    validationErrors={validation.errors.idioma}

                                />
                            </Col>
                            <Col lg='1'>
                                <Label>descripcion</Label>
                            </Col>
                            <Col lg='3'>
                                <InputCommon
                                    nameInput='descripcion'
                                    validationValue={validation.values.descripcion}
                                    validation={validation}
                                    validationTouched={validation.touched.descripcion}
                                    validationErrors={validation.errors.descripcion}

                                />
                            </Col>
                            <Col lg='1'>
                                <Label>Autor</Label>
                            </Col>
                            <Col lg='2'>
                                <div>

                                    <SelectGeneric
                                        optionSelect={(e: number) => validation.setFieldValue('id_autor', e)}
                                        options={testop}
                                        btnClear={false}
                                        validationValue={validation.values.id_autor}

                                    />






                                    {validation.touched.id_autor && validation.errors.id_autor ? (
                                        <div className='text-danger'>{validation.errors.id_autor}</div>
                                    ) : null
                                    }
                                </div>
                            </Col>
                        </Row>
                        <Row className='my-2 w-50 float-end'>
                            <Col className='' >
                                <Button block color='primary' type='submit' className='btn btn-primary '>Guardar</Button>
                            </Col>
                            <Col className='' >
                                <Button block color='danger' outline type='button' onClick={handleClearForm}>Cancelar</Button>
                            </Col>
                        </Row>
                    </CardBody>
                </Card>
            </Form>
        </>
    )
}
export default FormBooks