
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


## <a name="resource-service">Service</a>

Stability: `prototype`

Services offered by professionals

### Attributes

| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **duraction** | *integer* | the phone of the user | `42` |
| **id** | *integer* | unique identifier of the user | `42` |
| **price** | *nullable number* | the specialty of the professional | `null` |
| **service** | *string* | the email of the user | `"example"` |
| **[specialty_id](#resource-specialty)** | *integer* | unique identifier of the user | `42` |
| **type_service** | *nullable string* | the kind of the user, admin or professional or secretary | `null` |

### <a name="link-GET-service-/services">Service List</a>

List services

```
GET /services
```


#### Curl Example

```bash
$ curl -n https://api.gcer.com/services
 -G \
  -d 
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
null
```


## <a name="resource-specialty">Specialty</a>

Stability: `prototype`

Specialties of the users for example Podologa, masseur

### Attributes

| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **id** | *integer* | unique identifier of the user | `42` |
| **specialty** | *string* | the name of the specialty | `"example"` |
| **specialty_description** | *nullable string* | the description of the specialty | `null` |

### <a name="link-GET-specialty-/specialties">Specialty List</a>

List specialties

```
GET /specialties
```


#### Curl Example

```bash
$ curl -n https://api.gcer.com/specialties
 -G \
  -d 
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
null
```


## <a name="resource-user">User</a>

Stability: `prototype`

System user separator by type

### Attributes

| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **cpf** | *nullable string* | the cpf of the user | `null` |
| **email** | *string* | the email of the user | `"example"` |
| **id** | *integer* | unique identifier of the user | `42` |
| **kind** | *nullable string* | the kind of the user, admin or professional or secretary | `null` |
| **last_name** | *nullable string* | the last name of the user | `null` |
| **name** | *nullable string* | the name of the user | `null` |
| **phone** | *nullable string* | the phone of the user | `null` |
| **specialty** | *nullable string* | the specialty of the professional | `null` |

### <a name="link-GET-user-/users">User List</a>

List users

```
GET /users
```


#### Curl Example

```bash
$ curl -n https://api.gcer.com/users
 -G \
  -d 
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
null
```


