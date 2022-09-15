import * as React from 'react'
import * as ReactDOM from 'react-dom/client'
import QuestionList from "./QuestionList"

class Welcome extends React.Component {
  render() {
    return(
      <div className="container">
        <div className="row mt-5">
          <div className="col-lg-10 mx-auto">
            <h1 className='text-center mb-5'>APPSIMPACT Academy</h1>
            <p className="lead mb-5">Here you will find all you need to know and prepare for your next interview. Our collection of questions not only help you in getting a better job but also in understanding the concepts much better.</p>
          </div>
        </div>
        <QuestionList />
      </div>
    )
  }
}

const root = ReactDOM.createRoot(document.getElementById('welcome'))
root.render(
  <React.StrictMode>
    <Welcome />
  </React.StrictMode>
)

export default Welcome;
