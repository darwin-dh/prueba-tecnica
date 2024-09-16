import { useQuery } from "react-query";
import axios from "axios";
import { ADD_NEW_BOOK, DELETE_BOOK, GET_BOOK_LIST, UPDATE_BOOK } from "../helpers/url_helper";
import { SwalError } from "../common/Generics/Swals/SwalsApi";
const getBookList = async () => {

    try {
        const response: any = await axios.get(GET_BOOK_LIST)
        if (response.status) {
            return response.data
        }

    } catch (e) {
        throw new Error("Error fetching groups");

    }
}
//filter book
export const useFilterBook = async (op: string) => {
    const res: any = await axios.get('api/v1/list/libros/filtros', {
        params: {
            id_autor: op
        }
    })
    if (res.status) {
        return res.data
    }
}


export const useGetBook = () => {
    const query = useQuery(['books'], getBookList, {
        refetchOnWindowFocus: false,

    });
    return query
}
//save book
export const saveBook = async (data: any) => {
    try {
        const response: any = await axios.post(ADD_NEW_BOOK, data)
        if (response.status) {
            return response
        }

    } catch (e) {
        SwalError({ title: e })
        throw new Error("Error fetching groups");

    }
}
//edit book
export const editBook = async (data: any, id_libro: number) => {
    try {
        const response: any = await axios.put(`${UPDATE_BOOK}/${id_libro}`, data)
        if (response.status) {
            return response
        }

    } catch (e) {
        SwalError({ title: e })

        throw new Error("Error fetching groups");

    }
}
//delete book
export const deleteBook = async (id_libro: number) => {
    try {
        const response: any = await axios.delete(`${DELETE_BOOK}/${id_libro}`)
        if (response.status) {
            return response
        }

    } catch (e) {
        SwalError({ title: e })

        throw new Error("Error fetching groups");

    }
}