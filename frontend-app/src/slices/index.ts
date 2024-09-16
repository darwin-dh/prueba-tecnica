import { combineReducers } from "redux";
import cajaSlice from "./Book/cajaSlice";

//dashboard

const rootReducer = combineReducers({
    //dashboard
    //dashboard: dashboardReducer
    cajaSlice: cajaSlice,
});

export default rootReducer;