import ReactDOM from 'react-dom/client'
import { QueryClient, QueryClientProvider } from 'react-query';
import { ReactQueryDevtools } from 'react-query/devtools'
import React, { Suspense } from 'react'
import { BrowserRouter } from "react-router-dom";
import App from './App';
import { Provider } from "react-redux";
import { configureStore } from "@reduxjs/toolkit";
import rootReducer from "./slices";
import Spinner from './common/Loading/Spinner';
import 'bootstrap/dist/css/bootstrap.min.css';
import './helpers/api_helper'
const store = configureStore({
  reducer: rootReducer,
  devTools: true,
  middleware: (getDefaultMiddleware) => {
    return getDefaultMiddleware({
      serializableCheck: false
    })
  }

});
const queryClient = new QueryClient()

ReactDOM.createRoot(document.getElementById('root') as HTMLElement).render(
  <React.StrictMode>
    <BrowserRouter>
      <Provider store={store}>
        <Suspense fallback={<Spinner />}>
          <QueryClientProvider client={queryClient}>
            <App />
            <ReactQueryDevtools />
          </QueryClientProvider>
        </Suspense>
      </Provider>
    </BrowserRouter>

  </React.StrictMode>,
)

postMessage({ payload: 'removeLoading' }, '*')
