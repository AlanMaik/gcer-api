
## <a name="resource-error">Error</a>

Stability: `prototype`

An error represents a failed action in the API

### Attributes

| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **id** | *string* | unique identifier of error<br/> **pattern:** `^\w+$` | `"example"` |
| **message** | *string* | message of error | `"example"` |

### <a name="link-GET-error-/errors/{(%23%2Fdefinitions%2Ferror%2Fdefinitions%2Fidentity)}">Error Info</a>

Info for existing error.

```
GET /errors/{error_id}
```


#### Curl Example

```bash
$ curl -n https://api.gcer.com/errors/$ERROR_ID
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
{
  "id": "example",
  "message": "example"
}
```


## <a name="resource-user">User</a>

Stability: `prototype`

Users

### Attributes

| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **email** | *string* | the email of the user | `"example"` |
| **id** | *integer* | unique identifier of the user | `42` |

### <a name="link-GET-user-/users">User List</a>

List users

```
GET /users
```

#### Optional Parameters

| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **filter** | *string* | the filter of the user | `"example"` |
| **range** | *string* | the range of the user | `"example"` |
| **sort** | *string* | the sort of the user | `"example"` |


#### Curl Example

```bash
$ curl -n https://api.gcer.com/users
 -G \
  -d filter=example \
  -d range=example \
  -d sort=example
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
null
```


