import React from 'react'
import ReactDOM from 'react-dom'
import LandingPage from '../components/landingPage';

const Index = props => (
  <div id="app">  
    <LandingPage />
  </div>
)

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <Index />,
    document.body.appendChild(document.createElement('div')),
  )
})

export default Index