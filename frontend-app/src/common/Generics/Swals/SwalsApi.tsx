import Swal from 'sweetalert2'
import PropTypes from 'prop-types';
export const SwalSuccess = (props: any) => {
    const { icon, title, timer, showConfirmButton, text } = props
    return (
        Swal.fire({
            icon: icon || 'success',
            title: title || 'Guardado',
            timer: timer || 2000,
            showConfirmButton: showConfirmButton || false
        })
    )
}
export const SwalError = (props: any) => {
    const { icon, title, text } = props
    return (
        Swal.fire({
            icon: icon || 'error',
            title: title || 'Oops...',
            text: text || 'Algo salio mal!',
            confirmButtonText: 'Ok',
        })
    )
}
export const SwalInfo = (props: any) => {
    const { icon, title, text } = props
    return (
        Swal.fire({
            icon: icon || 'info',
            title: title || 'Oops...',
            confirmButtonText: 'Ok',
            showCancelButton: true,
            cancelButtonText: 'Cancelar',
        })
    )
}



SwalSuccess.propTypes = {
    icon: PropTypes.string,
    title: PropTypes.string,
    timer: PropTypes.number,
    showConfirmButton: PropTypes.bool
};