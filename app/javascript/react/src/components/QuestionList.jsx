import * as React from 'react'
import * as ReactDOM from 'react-dom'
import QuestionDetail from "./QuestionDetail"

const QuestionList = () => {
  const questionsList = [
    {
      id: 1,
      title: 'How to check if a key is present in a Hash?',
      tag: 'Ruby'
    },
    {
      id: 2,
      title: 'What is the difference between strings and symbol?',
      tag: 'Ruby'
    },
    {
      id: 3,
      title: 'What happened if you add two same keys in Hash?',
      tag: 'Ruby'
    },
    {
      id: 4,
      title: 'How to delete a given key from hash?',
      tag: 'Ruby'
    },
    {
      id: 5,
      title: 'How to check if two hashes are identical?',
      tag: 'Ruby'
    },
    {
      id: 6,
      title: 'How to combine two hashes in Ruby?',
      tag: 'Ruby'
    },
    {
      id: 7,
      title: 'How to get unique keys from tow hashes in Rby?',
      tag: 'Ruby'
    },
    {
      id: 8,
      title: 'What does the has_key?, key?, member? and include? methods in a hash?',
      tag: 'Ruby'
    },
    {
      id: 9,
      title: 'What are blocks in Ruby?',
      tag: 'Ruby'
    },
    {
      id: 10,
      title: 'Does the order of keys matters to compare two hashes in Ruby?',
      tag: 'Ruby'
    },
  ]

  return(
    <div className="row">
      <div className="col-lg-10 mx-auto">
        {questionsList.map((question) => 
          <QuestionDetail question={question} key={question.id}/>
        )}
      </div>
    </div>
  )
}

export default QuestionList