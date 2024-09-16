import axios from "axios";
import { SwalError } from "../../common/Generics/Swals/SwalsApi";

export const LoginAPP = async (values: any) => {
    try {
        const response = await axios.post('api/v1/login', {
            email: values.email,
            password: values.password
        })
        if (response.status) {
            return response.data
        }
    } catch (error) {
        SwalError({ title: error })
    }
}
