# Api todo list for RubyGarage course

# Group Authentication


## Authentication [/auth]


### Create a session [POST /api/v1/sign_in]


+ Request when success
**POST**&nbsp;&nbsp;`/api/v1/sign_in`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            email=lashaykoch%40murphy.net&password=EmMfU6AnGcR954

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "csrf": "PE0Q5Fn+op8qwXssttUK+MR6nLoP11oDTnMeZ7PiCpQHr6RfU2k7z0zjXCoy6klys9HHR1eDUNbRaxTYbE1kkg=="
            }

+ Request when not found
**POST**&nbsp;&nbsp;`/api/v1/sign_in`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            email=franklin%40kris.ip&password=KvDgBbT8Qc98Gb4

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Couldn't find User"
            }

+ Request when unauthorize
**POST**&nbsp;&nbsp;`/api/v1/sign_in`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            email=carrol%40purdystroman.co&password=C3OhW3Ut56XaA765

+ Response 401

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Unauthorized"
            }

### Update a session [POST /api/v1/refresh]


+ Request when success
**POST**&nbsp;&nbsp;`/api/v1/refresh`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM2ODk2MjQsInVzZXJfaWQiOjQsInVpZCI6IjEwMzA2NGM0LWMyMGItNGEzMC1iMTkxLTdiZWYxMDRjOTY0ZSIsImV4cCI6MTU1MzY4OTYyNCwicnVpZCI6IjU3YjU2Yjc4LWMyNzYtNDVmNy05ODU0LWM3N2JmYzBmMzJiZCJ9.1OC3N4P9PZsrYlwAX4K93qHBVP9RexhE28jBc1ZPHy8
            X-CSRF-Token: 9QLwLMKFAbUPErhdStJn8PwS0PuBFGyz0Tke13LFv9AoVLReMsBgzmHRGjia9ACk144chiAMrIYvlbEZRwgr3w==
            Content-Type: application/x-www-form-urlencoded

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "csrf": "+I6ZgK2a7XFAFBtMnqbasiZyNPUwvYEd6pR+5iVwbMSQjEziZ+/zXtmZVttgBvplYA8uFU0Jw3Itx1EW0P9KIA=="
            }

+ Request when unauthorize
**POST**&nbsp;&nbsp;`/api/v1/refresh`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM2OTMyMjQsInVzZXJfaWQiOjUsInVpZCI6ImUyMzQ3MGUwLTEzZWEtNDA5ZC04Yjg2LTMwMGE0ZWYzZTA4ZiIsImV4cCI6MTU1MzY5MzIyNCwicnVpZCI6Ijg5NDU5MTVmLTFjZGEtNGEwNi1hMzQyLWM3MGI4MThjYTY3NiJ9.mmng4WbNNXKxmfZPkhPqbfu9lsAeb4EFaZZ9BCdH92o
            X-CSRF-Token: RFpSyTSBxQqjK76ctxoz17jPRAYisSN4fRUdo5QNHeKo85vlVg1UZ7s5ZU3qOIGkG25onP/5OdOcPCvtlPGhNg==
            Content-Type: application/x-www-form-urlencoded

+ Response 401

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Unauthorized"
            }

### Delete a session [DELETE /api/v1/sign_out]


+ Request when destroy a session
**DELETE**&nbsp;&nbsp;`/api/v1/sign_out`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM2OTMyMjQsInVzZXJfaWQiOjYsInVpZCI6ImNlMjk0N2JjLTAzZjItNGM0OS1iZmFhLTQ4ZTk0N2YzOWRlZiIsImV4cCI6MTU1MzY5MzIyNCwicnVpZCI6IjE5YjdmZGI4LTFkMzMtNGE0MS05NmViLWVlMTgyMTNiNzhjOCJ9.AUZKfqB_7mXzfOs5fzbZUm_InRd4m3FXwp6XCZTRMlM
            X-CSRF-Token: n//GQ8L4chzbBjNuQYW33LGLddmLzMrECWO0dqgBuH7x8BBaR9JNwJN59K+M/JQeCGcJF2389KK8csXjYUTugw==
            Content-Type: application/x-www-form-urlencoded

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            "ok"

# Group Comments


## Comments [/comments]


### Get comments [GET /api/v1/tasks/:task_id/comments]

+ Parameters
    + task_id: `1` (integer, required)

+ Request when success
**GET**&nbsp;&nbsp;`/api/v1/tasks/1/comments`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM2OTMyMjQsInVzZXJfaWQiOjcsInVpZCI6ImY1YjUxYmRmLTg1MjctNGYzZi1hNDI3LWRiZWM0NGQ4NWFkZiIsImV4cCI6MTU1MzY5MzIyNH0.-czqjuSi43VoL3OsrItX84XNIV6OW80seLRemh3YH6Y
            X-CSRF-Token: 8+//hOuLpUz6MC5z/abbW6aQ3G2QqBDvYI7uDNdjUOy8mBKJ1ZQ61mp2cQI43c9tY7SzdZ+PLPu3uFLrFEPkbQ==

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "id": "1",
                  "type": "comment",
                  "attributes": {
                    "body": "Et expedita ut occaecati.",
                    "image": {
                      "url": null,
                      "thumb": {
                        "url": null
                      }
                    }
                  },
                  "relationships": {
                    "task": {
                      "data": {
                        "id": "1",
                        "type": "task"
                      }
                    }
                  }
                }
              ]
            }

### Create a comment [POST /api/v1/tasks/:task_id/comments]

+ Parameters
    + task_id: `1` (integer, required)
    + body: `New_comment_body` (string, required)
    + image: `%2Fuploads%2Fimage.jpg` (string, false)

+ Request when success
**POST**&nbsp;&nbsp;`/api/v1/tasks/2/comments`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM2OTMyMjQsInVzZXJfaWQiOjgsInVpZCI6ImE2NzdlM2E2LWEyYmQtNGNjNS1hOWI5LTZiNzgwM2I2NjIxOCIsImV4cCI6MTU1MzY5MzIyNH0.ZQ2NO7meEI_g03188INZYGQg1VLer-kwP7_qLx7U9FM
            X-CSRF-Token: bwuF97LIIRAVWdvvlMZlHuEE/LwMtGBRxahaZJQwMIaqwWNTxTpsoBKiGC29zhDoMQKbBOVk9XbeFu2VhfbWvw==
            Content-Type: application/x-www-form-urlencoded

    + Body

            comment[body]=Minima+voluptatem+cum+quia.

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "3",
                "type": "comment",
                "attributes": {
                  "body": "Minima voluptatem cum quia.",
                  "image": {
                    "url": null,
                    "thumb": {
                      "url": null
                    }
                  }
                },
                "relationships": {
                  "task": {
                    "data": {
                      "id": "2",
                      "type": "task"
                    }
                  }
                }
              }
            }

+ Request when not created
**POST**&nbsp;&nbsp;`/api/v1/tasks/3/comments`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM2OTMyMjQsInVzZXJfaWQiOjksInVpZCI6ImRmNGMyZTk3LTIwNTQtNDk3My1hMWViLWIyODNmMjEyNjA5MiIsImV4cCI6MTU1MzY5MzIyNH0._lXJy3rG_xpdAFk1mCNsyQDx8EoiMrNgYy_pCf-z6uI
            X-CSRF-Token: cd3r6wTtdk/AAk4Z1hMoTcBO5g1PxgSN+Pz7DTKPEWChO2Q2eVexHgTMyIV1s4rCfnHyo/HKNRh9Ta4jpVyTNg==
            Content-Type: application/x-www-form-urlencoded

    + Body

            comment[body]

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": {
                "body": [
                  "can't be blank",
                  "is too short (minimum is 10 characters)"
                ]
              }
            }

### Delete a comment [DELETE /api/v1/comments/:id]

+ Parameters
    + id: `1` (integer, required)

+ Request when delete a comment 
**DELETE**&nbsp;&nbsp;`/api/v1/comments/5`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM2OTMyMjQsInVzZXJfaWQiOjEwLCJ1aWQiOiI4N2NkMmQ2OS1jM2QyLTQzZGQtYTVjYy02MDc0MGU0N2E0YzciLCJleHAiOjE1NTM2OTMyMjR9.Jds8X-EjMqz-mET_SGxr-VKurBofC92RO5GAvHzRBg8
            X-CSRF-Token: KbVByGyagjTo5NIOAHnmERGsfw2SgI+Gi/5ch0aw8xmjwIc/zC7KLjenmFJ4JSppuONRTf+JwpUMy8yBSdjxnQ==
            Content-Type: application/x-www-form-urlencoded

+ Response 204

+ Request when not found
**DELETE**&nbsp;&nbsp;`/api/v1/comments/7`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM2OTMyMjQsInVzZXJfaWQiOjExLCJ1aWQiOiI4YmQ3YjQ1NS0wZmM2LTQxM2YtYmYwMC0zMjk1Yjk2ZWE4MDkiLCJleHAiOjE1NTM2OTMyMjR9.XWdW6gC8cuV2lzqW4622R5M3yCMDjt4rM6Uh0B7fqHE
            X-CSRF-Token: N21MIropeeTou1VbsMVjrXPilnW6ScLVtYwrALAianIivpkh0CDFsqmxcEaG9+NZP0aUbf7NNV27oUlvZzfWSw==
            Content-Type: application/x-www-form-urlencoded

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Couldn't find Comment with 'id'=7"
            }

# Group Projects


## Projects [/projects]


### Get projects [GET /api/v1/projects]


+ Request when success
**GET**&nbsp;&nbsp;`/api/v1/projects`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM2OTMyMjUsInVzZXJfaWQiOjEyLCJ1aWQiOiIwYTRhMzM5NC1lMTA1LTRjZjctYTFkOS1kNTk2MDc5M2Q0MDAiLCJleHAiOjE1NTM2OTMyMjV9.4_PBuAA1hAdT2Fn85T6NE7jpsN-JeAM9hy35GFV0oLk
            X-CSRF-Token: z0Bb29HWdp8xn3eUu6UitCy8bw5YNAH34GS1WlnVxxWeIP+qgkW0QYjIr6TIG98dgjIscuDjfjYEfl0ZflYMtQ==

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "id": "6",
                  "type": "project",
                  "attributes": {
                    "name": "repellat"
                  },
                  "relationships": {
                    "user": {
                      "data": {
                        "id": "12",
                        "type": "user"
                      }
                    },
                    "tasks": {
                      "data": [
            
                      ]
                    }
                  }
                }
              ]
            }

### Get project [GET /api/v1/projects/:id]

+ Parameters
    + id: `1` (integer, required)

+ Request when success
**GET**&nbsp;&nbsp;`/api/v1/projects/7`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM2OTMyMjUsInVzZXJfaWQiOjEzLCJ1aWQiOiI0MzY4ODNiZC02MjQzLTRmMTItOGE0Ni03NjAwOTk4NjExYjkiLCJleHAiOjE1NTM2OTMyMjV9.x7XYZ5FeM43lR1Vjxf8prvFnVC-rpJJxf8-dOhaeCdk
            X-CSRF-Token: 1Pln2zjZUc1/m3VCPPDWK/+mGEK7xieDiyCKmMAx23xsv1UA5nnX7N62QrJm9X/YaxQdcBtQZKW1AufbTMJrHQ==

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "7",
                "type": "project",
                "attributes": {
                  "name": "voluptas"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "13",
                      "type": "user"
                    }
                  },
                  "tasks": {
                    "data": [
            
                    ]
                  }
                }
              }
            }

+ Request when not found
**GET**&nbsp;&nbsp;`/api/v1/projects/9`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM2OTMyMjUsInVzZXJfaWQiOjE0LCJ1aWQiOiJkNWVmNGZiYi1hZjNkLTQ2YmItOGQ1Ny1kNjM2MTBjOWM1YjAiLCJleHAiOjE1NTM2OTMyMjV9.GFdF6QXP255AUJC2LKH03I-hjEi0i4FYD9_m4RwH8yE
            X-CSRF-Token: qwXK7pbWHEipCGv8XQQizewsoRkPsl0EmQtYqIUUwqdhwCsCyticAvWplt1oUvI0nErqYV0CmZ+Ub+AUc14+dw==

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Couldn't find Project with 'id'=9"
            }

### Create a project [POST /api/v1/projects]

+ Parameters
    + name: `New_project_name` (string, required)

+ Request when success
**POST**&nbsp;&nbsp;`/api/v1/projects`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM2OTMyMjUsInVzZXJfaWQiOjE1LCJ1aWQiOiJhNzE0MWIxZi0wMDM0LTQzOGItYWEwMS02NTczNDBiN2QwMTEiLCJleHAiOjE1NTM2OTMyMjV9.SuD0jSktcBADdrolwHnoBzaKHNChz42IRjEbi_lB9O4
            X-CSRF-Token: V4FjHS4qE9o3P/H/qT81ozb9EydgR0VZ/cAOtjGsrldjO6bzU/Bh+PaLKlzHHZXtmjW6INAAewOB+7MRkGZLCg==
            Content-Type: application/x-www-form-urlencoded

    + Body

            project[name]=vel

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "10",
                "type": "project",
                "attributes": {
                  "name": "vel"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "15",
                      "type": "user"
                    }
                  },
                  "tasks": {
                    "data": [
            
                    ]
                  }
                }
              }
            }

+ Request when not created
**POST**&nbsp;&nbsp;`/api/v1/projects`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM2OTMyMjUsInVzZXJfaWQiOjE2LCJ1aWQiOiI3YjIzMzA3Yi0zMDVmLTQzNTMtODk1ZC02YzFkNDg4Nzg4MjUiLCJleHAiOjE1NTM2OTMyMjV9.9K-0-DqQ0eKdjzL_TIhot9xZHJwC4ULpBScUmLk40X0
            X-CSRF-Token: NjMpokIxAzcu7j5phJ7yd6VIwS+gsjB18GOprte8xuaIC0VCoh03kziDesXgbBC50V158+eQuRt1jka9AgtDqw==
            Content-Type: application/x-www-form-urlencoded

    + Body

            project[name]

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": {
                "name": [
                  "can't be blank"
                ]
              }
            }

### Update a project [PUT /api/v1/projects/:id]

+ Parameters
    + id: `1` (integer, required)
    + name: `New+project+name` (string, required)

+ Request when success
**PUT**&nbsp;&nbsp;`/api/v1/projects/12`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM2OTMyMjUsInVzZXJfaWQiOjE3LCJ1aWQiOiJjN2E4ZTk4Ni0zOGQ5LTRjOTEtODhkMy1hMjRmZDgwMWE2MzEiLCJleHAiOjE1NTM2OTMyMjV9.abaPU2SSrRKazU3xTW7e_4JHm2r0idcszYqB5-uqOo8
            X-CSRF-Token: Sa+SOMnMdKTQkDlxNsbJCVfD+wvTh49Lke9k/Wi5xXN1gOBgbp19bEi9Xq9E8f/qU06XSrtT62MwhKxtbqP6pA==
            Content-Type: application/x-www-form-urlencoded

    + Body

            project[name]=autem

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "12",
                "type": "project",
                "attributes": {
                  "name": "autem"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "17",
                      "type": "user"
                    }
                  },
                  "tasks": {
                    "data": [
            
                    ]
                  }
                }
              }
            }

+ Request when not updated
**PUT**&nbsp;&nbsp;`/api/v1/projects/13`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM2OTMyMjUsInVzZXJfaWQiOjE4LCJ1aWQiOiI0ZWYxY2NiNC04MmYzLTQ0MGEtYjQzYS00YmFlYWY2OWIwOTciLCJleHAiOjE1NTM2OTMyMjV9.8aeiL5KlgWS-ej63oy1xSVzNFV1FdNsOn7lVhFfC7YE
            X-CSRF-Token: o59GSG180TygfY1jIVK2C39rUjb13Qhbgkfi37pI2ZZgNpynuX+e2jo3xtj5OB4RX4Q5dYiQs2eP2SkS41mxrg==
            Content-Type: application/x-www-form-urlencoded

    + Body

            project[name]

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": {
                "name": [
                  "can't be blank"
                ]
              }
            }

+ Request when not found
**PUT**&nbsp;&nbsp;`/api/v1/projects/15`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM2OTMyMjUsInVzZXJfaWQiOjE5LCJ1aWQiOiJkMGEyMTMyNy0wZTFiLTQ1Y2MtODA2Yi1jODIwNGI0YWUyZmMiLCJleHAiOjE1NTM2OTMyMjV9.LnFgPRWCsXwi6QAjgXXF__0txpSre9-wiEkxPF2igR8
            X-CSRF-Token: pcM23Wfe+MhpbYGj0fYQy0JTg08QVPu5606mrNo1dzQu3oJStkF7FBzxDOikSlPH7YHvc+7Clhd4YMqzTfym+A==
            Content-Type: application/x-www-form-urlencoded

    + Body

            project[name]

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Couldn't find Project with 'id'=15"
            }

### Delete a project [DELETE /api/v1/projects/:id]

+ Parameters
    + id: `1` (integer, required)

+ Request when delete a project 
**DELETE**&nbsp;&nbsp;`/api/v1/projects/15`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM2OTMyMjUsInVzZXJfaWQiOjIwLCJ1aWQiOiJhMWNiODhlOS1mOGMzLTRmMTMtYTNlZi1iMDljZWFjOTkzYTAiLCJleHAiOjE1NTM2OTMyMjV9.UiSUEGEahWIxQY3H8sH20zO-xB4QIaBp242C9AIBgRM
            X-CSRF-Token: zQNbpPvppXA/4LxfIUVrTdN3r8dTdcrjkjKySBmopAzz54+YT+ekvxcE2M4kkl+1+iMME0P9EYv5fxiKBlhFYQ==
            Content-Type: application/x-www-form-urlencoded

+ Response 204

+ Request when not found
**DELETE**&nbsp;&nbsp;`/api/v1/projects/17`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM2OTMyMjUsInVzZXJfaWQiOjIxLCJ1aWQiOiJjNzUwYmNmNy0zZGUyLTQ1NDYtOTJjMi0yZGE0NGMwYmY3YTkiLCJleHAiOjE1NTM2OTMyMjV9.wIXfq79cdlVQzg_-X_wEbPikKr5BGYZDMpEvRPoSnJc
            X-CSRF-Token: thnCJo0jGIwL5Y4k7FFod7WQReryhujIkx9dmso84t6xjRMzfh6kcSvYAwOzQuxDy7RhKZiSxVq11gUO+ZS1YQ==
            Content-Type: application/x-www-form-urlencoded

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Couldn't find Project with 'id'=17"
            }

# Group Tasks


## Tasks [/tasks]


### Get tasks [GET /api/v1/projects/:project_id/tasks]

+ Parameters
    + project_id: `1` (integer, required)

+ Request when success
**GET**&nbsp;&nbsp;`/api/v1/projects/17/tasks`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM2OTMyMjUsInVzZXJfaWQiOjIyLCJ1aWQiOiIwM2NhODY5OC0xNGVlLTQxYjUtYjZjYi05NDQ3NmFjMjNhOGQiLCJleHAiOjE1NTM2OTMyMjV9.rN7U9uuX9JfkWqf_Ij2JCjwXfgK5jWgx2l3F0jnf9Ts
            X-CSRF-Token: buNR8CGJ8nsnxbNhI20QEHhCTr+xXROTVe8v5kFmdoji9FYiofcVgdHfL8vLNOQzgBFt1MegmA41FWQbY2gWCQ==

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
                {
                  "id": "6",
                  "type": "task",
                  "attributes": {
                    "name": "id",
                    "complete": false,
                    "deadline": "2019-04-03T11:27:05.664Z",
                    "position": 1,
                    "comments_count": 7
                  },
                  "relationships": {
                    "comments": {
                      "data": [
            
                      ]
                    }
                  }
                }
              ]
            }

### Get task [GET /api/v1/tasks/:id]

+ Parameters
    + id: `1` (integer, required)

+ Request when success
**GET**&nbsp;&nbsp;`/api/v1/tasks/7`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM2OTMyMjUsInVzZXJfaWQiOjIzLCJ1aWQiOiIyZTdlZTVlOC1jYmI1LTRjMDAtOTM3NS1mMzFkZjBmYTU4MDciLCJleHAiOjE1NTM2OTMyMjV9.gpnoCkOsbon0zcWkwMkXaRgKsO9GwGHG63pZjjRRTJc
            X-CSRF-Token: sKU7mX55oc5rfjneuuz5K5bVHB/Y2klVVAJnUYfGmUJ5EsE+jKMQyiI6GHK+FpyDtplmuZG82qa1Pl2jq8Z0HA==

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "7",
                "type": "task",
                "attributes": {
                  "name": "id",
                  "complete": false,
                  "deadline": "2019-04-03T11:27:05.767Z",
                  "position": 1,
                  "comments_count": 3
                },
                "relationships": {
                  "comments": {
                    "data": [
            
                    ]
                  }
                }
              }
            }

+ Request when not found
**GET**&nbsp;&nbsp;`/api/v1/tasks/9`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM2OTMyMjUsInVzZXJfaWQiOjI0LCJ1aWQiOiIxMGY0Y2UzNS00OTJkLTQ5NWEtYjU2NS1jNmRhMGNjMTcxZGUiLCJleHAiOjE1NTM2OTMyMjV9.cyGINC3vD6tAbAVC6QOwO0oTG7DRgy_Ag494u2NgR-c
            X-CSRF-Token: PN0UdRAL2J2kNphyFwb+Bn1y+u9y4var2Qy4th+EbP2lfu+8UVvNs/PimMzj+bmXa5U6P5t64YtJ9+Pjonypjw==

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Couldn't find Task with 'id'=9"
            }

### Create a task [POST /api/v1/projects/:project_id/tasks]

+ Parameters
    + project_id: `1` (integer, required)
    + name: `New_task_name` (string, required)
    + deadline: `2019-04-03+14%3A26%3A59+%2B0300` (datetime, )
    + complete: `false` (boolean, )
    + position: `1` (integer, required)

+ Request when success
**POST**&nbsp;&nbsp;`/api/v1/projects/20/tasks`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM2OTMyMjUsInVzZXJfaWQiOjI1LCJ1aWQiOiJiODA1NDQ4Mi0xMTJhLTQ1YjItYWExMy0wNTM1MjY2YWEwZWUiLCJleHAiOjE1NTM2OTMyMjV9.pxXbWMV1iz5r_8ceZmbfPFMEpLagthK-adO3PtCVwGM
            X-CSRF-Token: RZkv6PXMBIleo0Ka39cmfGD2o5ktcuLfuIFDsmMtJZFFdt6WD65MMewSHtTldzdND2rnBzMVlK30N/RMvz/1fw==
            Content-Type: application/x-www-form-urlencoded

    + Body

            task[name]=odio&task[deadline]=2019-04-03+14%3A27%3A05+%2B0300&task[comments_count]=1

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "10",
                "type": "task",
                "attributes": {
                  "name": "odio",
                  "complete": false,
                  "deadline": "2019-04-03T11:27:05.000Z",
                  "position": 2,
                  "comments_count": null
                },
                "relationships": {
                  "comments": {
                    "data": [
            
                    ]
                  }
                }
              }
            }

+ Request when not created
**POST**&nbsp;&nbsp;`/api/v1/projects/21/tasks`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM2OTMyMjYsInVzZXJfaWQiOjI2LCJ1aWQiOiI1MDk3MTUwMi0wOTA3LTRkM2UtOTdmZC1mZTBmNTk1NDlkMDQiLCJleHAiOjE1NTM2OTMyMjZ9.yWOP_n56nN0pY-MPKevc9hjVvAf7knm5E9_COkus3sA
            X-CSRF-Token: 7nC0mov2v7pUtbXigBaTHlcYFyyvBLHLzwImP1/MsL8kSii5sjmJ0pZuyAr2JkuuEYBiRclLHvXiFuaARHomuA==
            Content-Type: application/x-www-form-urlencoded

    + Body

            task[name]

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": {
                "name": [
                  "can't be blank"
                ]
              }
            }

### Change position of task [PATCH /api/v1/tasks/:id/position]

+ Parameters
    + id: `1` (integer, required)
    + position: `1` (integer, required)

+ Request when success
**PUT**&nbsp;&nbsp;`/api/v1/tasks/12`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM2OTMyMjYsInVzZXJfaWQiOjI3LCJ1aWQiOiI0ODlkNjNkOC1hNjk2LTRjMDAtODM5Mi0xMjU0ZDYwZDJlNTYiLCJleHAiOjE1NTM2OTMyMjZ9.3wUBCJBZTmzbTmOzpTK6CXueOJtSzDrr5yAalwxPJA8
            X-CSRF-Token: Djzm2mT0iDWyvYmz9hoeJr/HU9Ghkc9rcl3nss6eZQH1tsNfjS8QKzQqqFXTQvgeLclFWSDn/B4eNaimwwg5CQ==
            Content-Type: application/x-www-form-urlencoded

    + Body

            task[name]=atque&task[deadline]=2019-04-03+14%3A27%3A06+%2B0300&task[comments_count]=6

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "12",
                "type": "task",
                "attributes": {
                  "name": "atque",
                  "complete": false,
                  "deadline": "2019-04-03T11:27:06.000Z",
                  "position": 1,
                  "comments_count": 10
                },
                "relationships": {
                  "comments": {
                    "data": [
            
                    ]
                  }
                }
              }
            }

+ Request when not updated
**PUT**&nbsp;&nbsp;`/api/v1/tasks/13`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM2OTMyMjYsInVzZXJfaWQiOjI4LCJ1aWQiOiI2MjcwYWFhNy0xNDcwLTQ4MjAtYjFjZC1kZjFhMzcxOGExMmYiLCJleHAiOjE1NTM2OTMyMjZ9.z_mHwGV06Q-yPU8Dn6F0Be8nR8sLmXCQrXQw_tN2os4
            X-CSRF-Token: MjPwgUd+disnOGWmahIx1cVa5yBBsj0eT2/G6bLO0mGuleU5mP2Go/6FZ2YSGf69Kzj5cyNZZ4ff1QZDuhA3bg==
            Content-Type: application/x-www-form-urlencoded

    + Body

            task[name]

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": {
                "name": [
                  "can't be blank"
                ]
              }
            }

+ Request when not found
**PUT**&nbsp;&nbsp;`/api/v1/tasks/15`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM2OTMyMjYsInVzZXJfaWQiOjI5LCJ1aWQiOiI0NGM2N2Y1Yi1mNmM0LTQ2ODAtYTgwNS1kNzM5NDE2NjI5OGQiLCJleHAiOjE1NTM2OTMyMjZ9.6PjrIi9ISQVOx_cbezUhVHInK0K0gM8NGHRIUoZ9mUs
            X-CSRF-Token: c7n1rPNzIiKZqNMqdhCVzwUjJ90uXiJCYFRBNJZ1u4K1ikirbRKk0s/zn5u9OxAFEaZoH1Fb/bkqDodmM6RQ/A==
            Content-Type: application/x-www-form-urlencoded

    + Body

            task[name]

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Couldn't find Task with 'id'=15"
            }

### Delete a task [DELETE /api/v1/tasks/:id]

+ Parameters
    + id: `1` (integer, required)

+ Request when delete a task 
**DELETE**&nbsp;&nbsp;`/api/v1/tasks/15`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM2OTMyMjYsInVzZXJfaWQiOjMwLCJ1aWQiOiJlMjMwMmM1ZC1lNmY1LTQ5ODItOTA2YS1jNjNlNmQ5NDk0NGMiLCJleHAiOjE1NTM2OTMyMjZ9.Gkcq2Dg91G9FGCzIZpB4yhkEThjyZ5YDe8GILrSFUeY
            X-CSRF-Token: erLF6pwiREMyR5jSaNoGTxemu+pOlCp9CboOpUkyYQXmysN7syGKo71SjIA9XL5B52kU+W+zobgEms6s/iKU5w==
            Content-Type: application/x-www-form-urlencoded

+ Response 204

+ Request when not found
**DELETE**&nbsp;&nbsp;`/api/v1/tasks/17`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM2OTMyMjYsInVzZXJfaWQiOjMxLCJ1aWQiOiJjNDZjZDQ1NS01ZDQ1LTRkMDQtYjg5ZS1lZDY0Y2U1NDIzYjMiLCJleHAiOjE1NTM2OTMyMjZ9.4LxzfMzbvNcz1TBQ3ketQ0y0kuHWHfqXmtxZwLkzNaU
            X-CSRF-Token: SjnEElIv1+2G41gRhYj2ay6Vh8XwOjOy0M5yjdYonOWGzIIS5cKETaK1PVWWur5pzW+ZTjY5Y8d1+hobQS+A1A==
            Content-Type: application/x-www-form-urlencoded

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Couldn't find Task with 'id'=17"
            }

# Group Users


## Users [/users]


### Create a user [POST /api/v1/sign_up]

+ Parameters
    + email: `user%40example.com` (string, required)
    + password: `password` (string, required)
    + password_confirmation: `password` (string, required)

+ Request when success
**POST**&nbsp;&nbsp;`/api/v1/users`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            user[email]=tyranader%40wisozk.name&user[password]=E8P7R9X0&user[password_confirmation]=E8P7R9X0

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "csrf": "JI3aeyV4N6oWNjRXT5mPmlE6Lz6iGXCB+Vq4SobXT+BS8GXREcnecG2c8wtgF7UEjlqeRFk3qqdyoEj8kXvGMw=="
            }

+ Request when not created
**POST**&nbsp;&nbsp;`/api/v1/users`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            user[email]=verda%40kuphallittle.com&user[password]=IuMxIxIk1&user[password_confirmation]=IuMxIxIk2

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": {
                "password_confirmation": [
                  "doesn't match Password"
                ]
              }
            }
