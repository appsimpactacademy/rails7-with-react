import * as React from 'react';
import { useState } from 'react';
// import * as ReactDOM from 'react-dom'
import ServerSideError from './ServerSideError';

const Answer = (question) => {

  const [answer, setAnswer] = useState('');
  const [isServerSideError, setIsServerSideError] = useState(false);
  const [serverErrors, setServerErrors] = useState([])

  const handleProvideAnswer = (event) => {
    setAnswer(event.target.value);
  }

  const handleAnswerSubmit = (event) => {
    event.preventDefault();
    console.log('Answer is: ', answer);
    createAnswer({answer: answer});
  }

  const createAnswer = (data) => {
    fetch(`/api/v1/questions/1/answer`, {
      method: 'PUT',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(data)
    })
    .then((response) => response.json())
    .then((data) => {
      console.log('Success:', data)
      if(data['status'] === "failure") {
        setIsServerSideError(true)
      } else {
        setIsServerSideError(false)
      }
    })
    .catch((error) => {
      console.log('Error:', error)
    })
  }

  return (
    <div className="modal fade" id="answerModal" tabIndex="-1" role="dialog" aria-labelledby="answerModalLabel" aria-hidden="true">
      <div className="modal-dialog">
        <div className="modal-content">
          <div className="modal-header">
            <h5 className="modal-title" id="answerModalLabel">Write your answer</h5>
            <button type="button" className="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <form onSubmit={handleAnswerSubmit}>
            <div className="modal-body">
              { isServerSideError && <ServerSideError errors={serverErrors}/> }
              <div className="form-group">
                <label className="form-label mt-3 mb-3">Answer</label>
                <textarea className="form-control form-control-lg rounded-0" value={answer} onChange={event => handleProvideAnswer(event)} name="answer" />
              </div>
            </div>
            <div className="modal-footer">
              <button type="button" className="btn btn-secondary" data-bs-dismiss="modal">Close</button>
              <button type="submit" className="btn btn-primary">Answer question</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  )
}

export default Answer;
