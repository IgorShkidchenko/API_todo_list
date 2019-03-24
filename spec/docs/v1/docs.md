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

            email=haydenfritsch%40kuphal.biz&password=Io8d6yZbWdVhE

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "csrf": "8QKEzW86Ek6mxhGGhcacldG0U0LKuujXPIkIxa2wTATDopodUam+31WnTfX+UtrGj7EdydpTYMN27qOMwW6q0Q=="
            }

+ Request when not found
**POST**&nbsp;&nbsp;`/api/v1/sign_in`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            email=bradkuvalis%40gutmann.namf&password=Ya95Fa233fYh

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

            email=adriane%40tremblay.name&password=Fn2oF1J7Vh

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
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM0NDU3MjksInVzZXJfaWQiOjQsInVpZCI6ImNmNDE1YTQzLTE3ZTMtNGJkYi05MTk2LTk2NmE1N2ExMmJkYyIsImV4cCI6MTU1MzQ0NTcyOSwicnVpZCI6ImQyYTk4MDg4LTcwN2MtNGZkNS04ZDA5LTBlN2NkZTg0YmRlZCJ9.5eR7kv2QFRoztF29sLsngV2wj5Y_E6AchAzWIFSv3uA
            X-CSRF-Token: 8ptVu4P8pBnXhErBp6D9bRgtuKmNH9larUsUUQwQLPI+0r/FJh5OO2NUcqxFXSw+gI12YLxR+FRPUEPUgtp9bw==
            Content-Type: application/x-www-form-urlencoded

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "csrf": "l6uurGQZJuUe7ZIYnMfjZl/+Nhz3EcRJ9YZNSOnt97nCl0lZ7kD6i3sP5UnBjLG8RUmbxDG16pJYLj8159FNQg=="
            }

+ Request when unauthorize
**POST**&nbsp;&nbsp;`/api/v1/refresh`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM0NDkzMjksInVzZXJfaWQiOjUsInVpZCI6ImQ3YmMzMDMwLTg4OGYtNGVkZi1iZGY2LTFmOWMyNWZjMmZhNCIsImV4cCI6MTU1MzQ0OTMyOSwicnVpZCI6ImNiYjNlZTc1LWQ1YmUtNDYzZi05NWRjLWUzNGJlMWU1MjViMCJ9.zqfJ5xVgqpj2O4NiJl9SV_f0OxtPhLJgSnMAqBKme5s
            X-CSRF-Token: NjDNKuErlvCQyeD7vNfkmxcjz26DGVltRRmzbWsIOcBtkRQmfz26mI0AZN1+3cth51yIM01UMvTN8KWSLjhcUw==
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
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM0NDkzMjksInVzZXJfaWQiOjYsInVpZCI6IjI3ODgzZTM2LWIyNmEtNDZkYS1iMjY1LWY1MGZkYmQ3MTE2YyIsImV4cCI6MTU1MzQ0OTMyOSwicnVpZCI6IjA2MDA4YTNiLWNkYTctNDMyNy1hODQyLWU2M2YzM2RlN2NiZCJ9.sIqQgenFkWSl7hnmjTHj3vUPd_ACHjQnG-vvzRNIP5M
            X-CSRF-Token: nkXkhvwqo0raAPgX+vF5sBoHWSHTBajYyEO03JPMboNdnrsC7c+cL/M64qDXnHXfbqFTW5bNY7vJLSLmJqLZUw==
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
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM0NDkzMjksInVzZXJfaWQiOjcsInVpZCI6IjdkYjNjY2E0LWU1MzMtNGUzOC04MjE4LTgzNjYxYjgxZmNkMCIsImV4cCI6MTU1MzQ0OTMyOX0.Sq5xKylNbXS_cLqx0mcR74ubqyMITiDFmpI9ePqc4GQ
            X-CSRF-Token: GGPVs8AqMVFGzE9UUAoO51FtGBg8nFVLAoqNR4DNUwUQPhk1zT4PXkIC8V2IqDWukjesEFF7FXcpfxJcCfykHA==

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
                    "body": "In tenetur quia reiciendis.",
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
    + image: `https%3A%2F%2Faccount.s3.us-east-2.amazonaws.com%2Fuploads%2Fimage.jpg` (string, )

+ Request when success
**POST**&nbsp;&nbsp;`/api/v1/tasks/2/comments`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM0NDkzMjksInVzZXJfaWQiOjgsInVpZCI6ImM1OTJhOTkxLTRiZjQtNDNmNi1hOTIyLTU4YWQxMjM3MjcyYiIsImV4cCI6MTU1MzQ0OTMyOX0.Pj43YP2DskzUHTDedw2AjFtaHyb5-cIO9rbmNlwI7-o
            X-CSRF-Token: lJOfXLU8+6emtnY0NDFQ3Ve7LNwxqU6Bj1qlegbUwM6SvNyTLX+uLo1qS6dp9ANLg0gkqhQBM0Y8OTb08CxaDw==
            Content-Type: application/x-www-form-urlencoded

    + Body

            comment[body]=Qui+ipsum+consequatur+sint.

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "3",
                "type": "comment",
                "attributes": {
                  "body": "Qui ipsum consequatur sint.",
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
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM0NDkzMjksInVzZXJfaWQiOjksInVpZCI6IjdhNTcyYmQ3LWRhODktNDdhNy1hNzMwLTdkOGM1MzZiOGM5OSIsImV4cCI6MTU1MzQ0OTMyOX0.D-mrA7X5Yu0t6ltiQFZ9-tJeSkUA1bYAlVgX6imYzQA
            X-CSRF-Token: WEAmpoIhM2/0/1sBN446kHIDjtGspwpDxxD9gUpz/5JURk41wb5O+T6m2E6z19gIP66QjbLGMdYqYzTWFKIHRg==
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
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM0NDkzMjksInVzZXJfaWQiOjEwLCJ1aWQiOiIzNzVjNmViMy0xY2Y2LTQ1MmEtODExNy1kOWJjYjdkODQ2ODciLCJleHAiOjE1NTM0NDkzMjl9.ylc-5kvf4wPVC0xPKLGhRxNLIKvQ5hKvAES1L0-RX18
            X-CSRF-Token: SSutP0GIIArQTPcQRtT+vilBGd3qTzoqkGsHvaVAFR9r1xLq2yo2DP7fJjVK944x2Emeynd0wJWftgI2qShn+g==
            Content-Type: application/x-www-form-urlencoded

+ Response 204

+ Request when not found
**DELETE**&nbsp;&nbsp;`/api/v1/comments/7`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM0NDkzMjksInVzZXJfaWQiOjExLCJ1aWQiOiJiNjhhYjM4OC1hNDU5LTQzZDQtYmNjOS05MTRkZmQ5NDhkZDciLCJleHAiOjE1NTM0NDkzMjl9.WhWV7s3N82Dxmy4PfD_ATe_JD8Rug_UBzqaDeAW0btc
            X-CSRF-Token: zhMfuUL1PJBFM8VjUWMTxS7e1N+SwriJEGPea4DfPyMb3WGOo9WBpzpaAzfHBCazIjlS0NNS42F0tzf92fsAJQ==
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
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM0NDkzMzAsInVzZXJfaWQiOjEyLCJ1aWQiOiJjNWU3MjY0Yy05NjExLTQyYTAtODIxZC0xZjc2NzY3NDYwMDEiLCJleHAiOjE1NTM0NDkzMzB9.7St1d0GHhVvH9KwXD1_0MH6tgy3fimSca4ceiHoe0tI
            X-CSRF-Token: ZmEZvkT2B7B1vZ7mbWY2Ep7GLGMRNlLhUlM7jHWhBTpDloeUpamA7pBOsFrFRhmXTZ25mP6CMHEhiHNHct6ZHw==

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
                    "name": "voluptates"
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
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM0NDkzMzAsInVzZXJfaWQiOjEzLCJ1aWQiOiJlOGYwYTIxOS02YTgyLTQ4YzUtODBkMi0wODc4MjIzZGVmMGYiLCJleHAiOjE1NTM0NDkzMzB9.W9Rt-_T3cI7RYIGvUsNZD47jIv8QwtA7sX7BZks8o2o
            X-CSRF-Token: tvgKp1ngnCkAa76b/rfs/DicaGgOrmhAAcVV++fvYRHHaCIglfRAMMpFIC3OGG/HAY0hsuR+mB01EKa9OtHecw==

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "7",
                "type": "project",
                "attributes": {
                  "name": "quia"
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
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM0NDkzMzAsInVzZXJfaWQiOjE0LCJ1aWQiOiI1MGVlNmMyZi02YTY1LTQ4ZGItYTg2NC1lMDQwNWIwYzBjMzIiLCJleHAiOjE1NTM0NDkzMzB9.M9BRFgq73uaNAOxyGNmRfCBiWXJpCWbv_VhPu1JOZhE
            X-CSRF-Token: 5pZxI+GUFZHL8xpb0KfACDApBkypY+1g8KN0zxfLCBuZcc1h9I1Ek9KLbCLA0o2EZY0kmPtGoyeaB3lkJboQHw==

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
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM0NDkzMzAsInVzZXJfaWQiOjE1LCJ1aWQiOiI4ODY1MTNlZS1iMTVhLTQxZGMtOGVhZi04NWMxMDQxMTk5MTAiLCJleHAiOjE1NTM0NDkzMzB9.a6BP5f7Cc_6h6RTauXeTHDl9qxvHwZofw-cPf1XML_o
            X-CSRF-Token: QWapTMEVQEIMYur8pa57+2Znry83MqFN/tDaS7BesQrLcjp/u7Pg6cfAUKwlrxNcnUgbQMxXMv86vth3HRRe0Q==
            Content-Type: application/x-www-form-urlencoded

    + Body

            project[name]=quo

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "10",
                "type": "project",
                "attributes": {
                  "name": "quo"
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
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM0NDkzMzAsInVzZXJfaWQiOjE2LCJ1aWQiOiIzYjgzY2ZjNC1hY2VlLTQ0YTAtOWMzZS0yZDBhYjZmOGI1NmUiLCJleHAiOjE1NTM0NDkzMzB9.zXH5wGiw7Im97HWK4SFcA5AtkWi6O_1CG72_xBrufWI
            X-CSRF-Token: kFYr7Avxwvu4UiUuEkKciuZOJOX8VgvopCIFOVIkCXUZ+uNE8s/IajAhTCSJ5wWxopnTUQ9YEEU1fnzakHR80A==
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
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM0NDkzMzAsInVzZXJfaWQiOjE3LCJ1aWQiOiIyMWFlMjI0Ni1kNGUwLTRhNTctYmZlOS01OTljNzhjZmYyMzYiLCJleHAiOjE1NTM0NDkzMzB9.TQQoEugnJmMVy75gLbv7JDQRgMBfCEyiOeudZ56FKHQ
            X-CSRF-Token: 8i+LKLGTxsa+rYnpneY7dAQGFZl5WrTRVN4L2pM1aBYpD1aBkKOR1LOk95bm13nsfdWoZkWWHgLnZRVC+/0pmw==
            Content-Type: application/x-www-form-urlencoded

    + Body

            project[name]=totam

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "12",
                "type": "project",
                "attributes": {
                  "name": "totam"
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
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM0NDkzMzAsInVzZXJfaWQiOjE4LCJ1aWQiOiJlZWM0YjZhYi1hMTMyLTQ2Y2MtYTc3Yi0yZGU4ODQwZGEzMTMiLCJleHAiOjE1NTM0NDkzMzB9.kJ3GH_iiyzB5yYe_ipB_2iN22sqvTvyw6oxVvSNm3Jc
            X-CSRF-Token: BPJZn8udyuqTyTSLyT3WfBTL9nhocCjq8AQj5gEwZc0R0bMi41nmFOetq+5q9ace/i5C6kVSxGG6pLQacNXpHg==
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
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM0NDkzMzAsInVzZXJfaWQiOjE5LCJ1aWQiOiIzNjYzYmRmYS03YzlhLTQ0MjctYTdiYS0zZDA3MzQwNzc2MmYiLCJleHAiOjE1NTM0NDkzMzB9.xMMSNztyAJ83kArT-TTS6ziRU0PpLkX8a1IxkgtWpIA
            X-CSRF-Token: ym9QC+UvkLVN8ddR99sa4dsEdpjK6M+InJacKwAeKNZX8QsIWidFUmWTPnISFRf1MvUgyisT01ho0eRTkzXG2w==
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
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM0NDkzMzAsInVzZXJfaWQiOjIwLCJ1aWQiOiI3YzZmN2EwZi1lOTVkLTQ1YjMtYjJhNi02NDg2ZjhkMDYwMDgiLCJleHAiOjE1NTM0NDkzMzB9.PT84jH2OXjpUn2mxaD93CsIeSo0mARYPek_nAx8QrSg
            X-CSRF-Token: Sj5iKtBYAvP2IdySe7hZpsHQPtw4iZh/AaxjkLt0w2Phf9M/Ll8rQaNtDltpZeGpwINwKTvIX8VlepDm8SvLBw==
            Content-Type: application/x-www-form-urlencoded

+ Response 204

+ Request when not found
**DELETE**&nbsp;&nbsp;`/api/v1/projects/17`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM0NDkzMzAsInVzZXJfaWQiOjIxLCJ1aWQiOiI2NGViNTI1NS1mNDMyLTRmMjEtOTVmOC05MDc1MjE1ODk4ZTAiLCJleHAiOjE1NTM0NDkzMzB9.a2DcKlSEbtzCmHhcsPyH99gW7Jb5etsH01D76GS71Bo
            X-CSRF-Token: MXmFkAFAqHXBelzVg4N3a6XxiHPMo2Xc5mdO2bPWrN4gRIwvbTenaQ5VxHB6Dwom9kqRJlD4GbCkjZc90CzN6A==
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
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM0NDkzMzAsInVzZXJfaWQiOjIyLCJ1aWQiOiI1OWM0NDg1Yy01MmJmLTQ3NjAtOGZlMC1mYzU4ZjA4YWJlOTciLCJleHAiOjE1NTM0NDkzMzB9.OvHwuPGqmNXcegLYxzvK8L0StGLINM-OZscbb8SCWhQ
            X-CSRF-Token: DplqDc6JsRc/Cn01uU6fDOtG20mYKD9CfzfMpyk7Dv2095UXhMvTnMvkaTbETxpXI1JAyLB5E3eZ4ZbcwKOTwA==

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
                    "deadline": "2019-03-31T15:42:10.649Z",
                    "position": 1,
                    "comments_count": 9
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
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM0NDkzMzAsInVzZXJfaWQiOjIzLCJ1aWQiOiIxODQ3MDdmNC0zYjA3LTQ5MmUtOWFjOS1hYThmYTUwMDQyMWYiLCJleHAiOjE1NTM0NDkzMzB9.d8UCdkPj4nzPmXGUxkhIb71uOumt0JD6kALiO67Kom4
            X-CSRF-Token: yqQgHDTLF5BYwBYJlBAjeroubxdwSO4HCBblt2ED+w75SC5RRPzk9eYvURsMFsiuwDkoSLdbFFtojzMBXwQJ0g==

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "7",
                "type": "task",
                "attributes": {
                  "name": "delectus",
                  "complete": false,
                  "deadline": "2019-03-31T15:42:10.717Z",
                  "position": 1,
                  "comments_count": 4
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
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM0NDkzMzAsInVzZXJfaWQiOjI0LCJ1aWQiOiI0N2Y2YTFjMy1mNjMzLTRkZmQtOTg3Mi1jMTE4YmQzNmM4MTAiLCJleHAiOjE1NTM0NDkzMzB9.-McDIYiQyOP5VVUlSzA9JXsQen8NlDzpJZcyf7SBbew
            X-CSRF-Token: uV88XsXz+o/68GKkbj3UiCzqjw7LnGoWMLA/VrOyvYDKX88jRP2ZT3eQY15G2SI830dwWbxq/kdnpgCmAdAtsQ==

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
    + deadline: `2019-03-31+18%3A42%3A07+%2B0300` (datetime, )
    + complete: `false` (boolean, )
    + position: `1` (integer, required)

+ Request when success
**POST**&nbsp;&nbsp;`/api/v1/projects/20/tasks`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM0NDkzMzAsInVzZXJfaWQiOjI1LCJ1aWQiOiI5ODI1N2E1Zi1hNTliLTRmMDEtYjBjZi1kODY5MDYwMjFhNjgiLCJleHAiOjE1NTM0NDkzMzB9.vwKlEmPcLKuI6J-WdBVxy7K9pT7KXfPcVkuHUvpNT38
            X-CSRF-Token: ga82/JVlm3vUJ6AGsnLNDK+QzhzPn0CjZFHrJdGKUs16yfh7aF/S5sZqc3AGRpQn350yAgRRyLOka0YLKvCTcA==
            Content-Type: application/x-www-form-urlencoded

    + Body

            task[name]=et&task[deadline]=2019-03-31+18%3A42%3A10+%2B0300&task[comments_count]=7

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "10",
                "type": "task",
                "attributes": {
                  "name": "et",
                  "complete": false,
                  "deadline": "2019-03-31T15:42:10.000Z",
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
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM0NDkzMzAsInVzZXJfaWQiOjI2LCJ1aWQiOiI2MTY2NDRjNC05OGU4LTRkNDgtOGEzYy0xZTU5NzEyMzExZmMiLCJleHAiOjE1NTM0NDkzMzB9.TAiCwDP0IJJFR3BYDPlw43OYzl1a7euTmdZpB4DSjUI
            X-CSRF-Token: Iwko5u3MnHYPSiwZqs209WmBrDLlol3dX2krP0j8e1WLqCWuRZWGGtpihW3jDv657ifjR2Qd04HFU6i3scyaig==
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
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM0NDkzMzEsInVzZXJfaWQiOjI3LCJ1aWQiOiJkNzExNjE1ZS04OTc4LTRkNjQtOGZkYi00ZWVmMjU5OTliODQiLCJleHAiOjE1NTM0NDkzMzF9.hozse7B0E_B2nEEke38mVGWVsZ1YcbWowBlRgLNe3-Y
            X-CSRF-Token: djaLG64TmAC54m94roiQ0S16vYApiUmqbbPL50192B3PE0m4KiaSc672Ol1QCQJFYxMIV0I6/qN1Cc2Jt2/q+Q==
            Content-Type: application/x-www-form-urlencoded

    + Body

            task[name]=quia&task[deadline]=2019-03-31+18%3A42%3A11+%2B0300&task[comments_count]=9

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "12",
                "type": "task",
                "attributes": {
                  "name": "quia",
                  "complete": false,
                  "deadline": "2019-03-31T15:42:11.000Z",
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
            }

+ Request when not updated
**PUT**&nbsp;&nbsp;`/api/v1/tasks/13`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM0NDkzMzEsInVzZXJfaWQiOjI4LCJ1aWQiOiJhODVkYmQ2Zi04Y2JkLTQxNGEtYTg2Mi05NDA2YjA5YzUzNTEiLCJleHAiOjE1NTM0NDkzMzF9.VcXMp5fbbngloFDqZI24-EHe_VsKgJLsTmvMRtoMp8k
            X-CSRF-Token: rI+VKCXeFPEsSoMrm1u+zs30OPJlRygPJ38iFbKwEit8TqcJmFplhXIGSX08DducA6o4kTAgCVhw5nY7HD9O+g==
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
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM0NDkzMzEsInVzZXJfaWQiOjI5LCJ1aWQiOiJkNGVkZTQ4Yi0zM2QyLTQxNDAtYWQzZS03OTdlZDA5ZDEwOTciLCJleHAiOjE1NTM0NDkzMzF9.yyEf-2FQ_ny98wrj4ur8okBLUkUFw8UOFB57CYCaQVY
            X-CSRF-Token: cbsTIeu7suQHWrYXLTGNwy7z2WdQHnX5O7EcYXqeP3dTd6XewJgLEMzw+Y026/yjVLLVsYvnpPrtv86gHHfp0w==
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
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM0NDkzMzEsInVzZXJfaWQiOjMwLCJ1aWQiOiI5ZDE2ZWUxOS03NWU3LTQxZTEtYjM0NC01MjBiNTM5YTMyMjEiLCJleHAiOjE1NTM0NDkzMzF9.9I5FpCy9ihwVdAreP7B8v0ssB7hkiKKFicrme1eeOPc
            X-CSRF-Token: sMkwUbyMiw4aXw2N7udu2GE8cvssUUmPFEqA1t9m8uB9ACoVt4wUFWR1drtPZcTPvxNgGh/93rmITQN5KjpaRA==
            Content-Type: application/x-www-form-urlencoded

+ Response 204

+ Request when not found
**DELETE**&nbsp;&nbsp;`/api/v1/tasks/17`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            HTTP_COOKIE: jwt_access=eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1NTM0NDkzMzEsInVzZXJfaWQiOjMxLCJ1aWQiOiI5ZTM2MjQ5Ni02MTM2LTRhZmMtOTcxMy0yZGJlZTM4MGM4NDAiLCJleHAiOjE1NTM0NDkzMzF9.Onik1bOqjifX8Pu9C7fuA_soNtJfYRTvWi9UWfcypa4
            X-CSRF-Token: kZ9NmecfJ4ytQyM197jLgNcEguj/rx9WxcP+DGpzxvJEM4FJfC80JF+/faJMjd8bQ+iZ0KW3/+3QayA+a/H76A==
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

            user[email]=lilifay%40weinat.name&user[password]=1zEs97V3&user[password_confirmation]=1zEs97V3

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "csrf": "XV5LAl5R2yPQVaiLM8EfKP7auxv+qzrx553VMjLTq7R7bjHAtVP7MdUDZj8f7Y/JlmzjhvZ8C1m6QMAhWc/njA=="
            }

+ Request when not created
**POST**&nbsp;&nbsp;`/api/v1/users`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Content-Type: application/x-www-form-urlencoded

    + Body

            user[email]=silaslittle%40muller.net&user[password]=Yp8gKc5eAqN7&user[password_confirmation]=Yp8gKc5eAqN8

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
