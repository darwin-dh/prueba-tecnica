import { useQuery } from "react-query";
import axios from "axios";
import { GET_AUTHOR_LIST } from "../helpers/url_helper";
const getAuthrsList = async () => {

    try {
        const response: any = await axios.get(GET_AUTHOR_LIST)
        if (response.status) {
            return response.data
        }

    } catch (e) {
        throw new Error("Error fetching groups");

    }
}



export const useGetAuthrs = () => {
    const query = useQuery(['authrs'], getAuthrsList, {
        refetchOnWindowFocus: false,

    });
    return query
}