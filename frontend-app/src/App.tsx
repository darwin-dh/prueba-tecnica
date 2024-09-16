import { Suspense } from 'react';
import AppRouter from './Routes/AppRoutes';
import Spinner from './common/Loading/Spinner';

function App() {

  return (
    <Suspense fallback={<Spinner />}>
      <AppRouter />
    </Suspense>
  )
}

export default App
