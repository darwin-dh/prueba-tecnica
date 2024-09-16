import React from 'react'
import { useNavigate } from 'react-router-dom';
import { Button, Label } from 'reactstrap'

const Header = () => {
    const navigate = useNavigate();
    const authUser = JSON.parse(sessionStorage.getItem('authUser') || '')
    const handleQuit = () => {
        sessionStorage.removeItem('authUser')
        navigate('/')
    }
    return (
        <div>
            <div className='text-white py-2 px-5 d-flex align-items-center justify-content-around' style={{ background: 'rgb(23, 37, 51,0.9)' }}>
                <Label className='fs-20 me-5'>Bienvenido:{authUser?.email} </Label>
                <Label className='fs-20 ml-auto'>Rol:{authUser?.rol} </Label>
                <Button onClick={() => handleQuit()}>

                    Cerrar Sesión</Button>
            </div>

        </div>
    )
}

export default Header