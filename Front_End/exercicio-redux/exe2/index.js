import { legacy_createStore as createStore } from "redux";
import { composeWithDevTools } from "@redux-devtools/extension";

const INITIAL_STATE = {
    status: 'offline',
    theme: 'dark',
  };

  const themeButton = document.getElementById('toggle-theme');
  const statusButton = document.getElementById('toggle-status');

  const DARK_THEME = "DARK_THEME";
  const LIGHT_THEME = "LIGHT_THEME";
  const ONLINE_STATUS = "ONLINE_STATUS";
  const OFFLINE_STATUS = "OFFLINE_STATUS";

  // reducer (gerenciador das actions)
  const reducer = ( state = INITIAL_STATE, action) => {
  // console.log(action);
    switch (action.type){
    case DARK_THEME:
    return { ...state, theme:'dark'};
    case LIGHT_THEME:
    return { ...state, theme:'light' };
    case ONLINE_STATUS:
    return { ...state, status: 'online' };
    case OFFLINE_STATUS:
    return { ...state,  status: 'offline'};
    default:
    return state;
 }
  }
  // store 
  const store = createStore(reducer, composeWithDevTools()); 
// actions 
   const changeStatus = (e) =>  { 
    e.target.innerHTML.includes('Online') ?
    store.dispatch({ type: ONLINE_STATUS }):
    store.dispatch({ type: OFFLINE_STATUS })
  };
 const changeTheme = (e) => {
    e.target.innerHTML.includes('Light') ?
    store.dispatch({ type: LIGHT_THEME }):
    store.dispatch({ type: DARK_THEME })
 }
  themeButton.addEventListener('click', (e) => changeTheme(e));
  statusButton.addEventListener('click', (e) => changeStatus(e));

  // subscribe ( disparar as ações)
  store.subscribe(() => {
    // theme do button
    const globalState = store.getState();
    themeButton.innerHTML = globalState.theme === 'light' ? 'Dark Mode' :  'Light Mode';
    document.body.style.backgroundColor = globalState.theme === 'light' ? 'white' : 'black';
    document.body.style.color = globalState.theme === 'light' ? 'black' : 'white';
   //status do button
    statusButton.innerHTML = globalState.status === 'online' ? 'Ficar Offline' :  'Ficar Online';
    const statusElement = document.getElementById("status");
    statusElement.innerHTML = globalState.status
  }) 
  

