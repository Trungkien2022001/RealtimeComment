import './app.scss'
import {BrowserRouter, Routes, Route} from 'react-router-dom'

import { Homepage } from './page/client/home/Homepage';
import { Register } from './page/client/register/Register';
import { NotFound } from './components/notFound/NotFound';
import { Login } from './page/client/login/Login';
import { Comment } from './page/client/comment/Comment';

function App() {
  return (
    <div className="App">
      <BrowserRouter>
        <Routes>
          <Route path='/' element = {<Homepage/>}/>
          <Route path='/login' element = {<Login/>}/>
          <Route path='/register' element = {<Register/>}/>
          <Route path='/comment/:id' element = {<Comment/>}/>
          <Route path='*' element = {<NotFound/>}/>
        </Routes>
      </BrowserRouter>
    </div>
  );
}

export default App;
