import { createAsyncThunk } from "@reduxjs/toolkit";
import { toast } from 'react-toastify';
import "react-toastify/dist/ReactToastify.css";
import {
    getBooksList as getBooksListApi,
    addNewBooks as addNewBooksApi,
    updateBooks as updateBooksApi,
    deleteBooks as deleteBooksApi,
} from "../../helpers/fakebackend_helper";

export const getBookList = createAsyncThunk("Book/getPersonalList", async (params: any) => {
    try {
        const response = getBooksListApi(params);
        return response;
    } catch (error) {
        return error;
    }
});
export const addNewBook = createAsyncThunk("Book/addNewBook", async (book: any) => {

    try {
        const response = await addNewBooksApi(book);
        toast.success("Guardado con éxito", { autoClose: 3000 });
        return response;
    } catch (error) {
        toast.error("Fallo al Guardar -" + error, { autoClose: 3000 });
        throw error;
    }
});




export const updateBook = createAsyncThunk("Book/updateBook", async (book: any) => {
    try {
        const response = await updateBooksApi(book);
        console.log("response correcto", response)
        toast.success("Editado con extio", { autoClose: 3000 });
        return response;
    } catch (error) {
        console.log('errores', error)
        toast.error("Falllo al editar", { autoClose: 3000 });
        return error;
    }
});

export const deleteBook = createAsyncThunk("Book/deleteBook", async (book: any) => {
    try {
        const response = deleteBooksApi(book);
        toast.success("Borrado con exito", { autoClose: 3000 });
        return { book, ...response };
    } catch (error) {
        toast.error("Fallo al borrar", { autoClose: 3000 });
        return error;
    }
});