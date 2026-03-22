.class public Lcom/amazonaws/services/cognitoidentity/model/transform/GetIdRequestMarshaller;
.super Ljava/lang/Object;
.source "GetIdRequestMarshaller.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/cognitoidentity/model/GetIdRequest;)Lcom/amazonaws/Request;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cognitoidentity/model/GetIdRequest;",
            ")",
            "Lcom/amazonaws/Request<",
            "Lcom/amazonaws/services/cognitoidentity/model/GetIdRequest;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    new-instance v0, Lcom/amazonaws/DefaultRequest;

    .line 4
    .line 5
    const-string v1, "AmazonCognitoIdentity"

    .line 6
    .line 7
    invoke-direct {v0, p1, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "AWSCognitoIdentityService.GetId"

    .line 11
    .line 12
    const-string v2, "X-Amz-Target"

    .line 13
    .line 14
    invoke-interface {v0, v2, v1}, Lcom/amazonaws/Request;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    .line 18
    .line 19
    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->k(Lcom/amazonaws/http/HttpMethodName;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "/"

    .line 23
    .line 24
    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->d(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Lcom/amazonaws/util/json/JsonUtils;->b(Ljava/io/Writer;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetIdRequest;->r()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetIdRequest;->r()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const-string v4, "AccountId"

    .line 50
    .line 51
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->f(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 52
    .line 53
    .line 54
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->e(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    goto/16 :goto_2

    .line 60
    .line 61
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetIdRequest;->s()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    if-eqz v3, :cond_1

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetIdRequest;->s()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    const-string v4, "IdentityPoolId"

    .line 72
    .line 73
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->f(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 74
    .line 75
    .line 76
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->e(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 77
    .line 78
    .line 79
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetIdRequest;->t()Ljava/util/Map;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    if-eqz v3, :cond_4

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetIdRequest;->t()Ljava/util/Map;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    const-string v3, "Logins"

    .line 90
    .line 91
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->f(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 92
    .line 93
    .line 94
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 95
    .line 96
    .line 97
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_3

    .line 110
    .line 111
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    check-cast v3, Ljava/util/Map$Entry;

    .line 116
    .line 117
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    check-cast v4, Ljava/lang/String;

    .line 122
    .line 123
    if-eqz v4, :cond_2

    .line 124
    .line 125
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    check-cast v3, Ljava/lang/String;

    .line 130
    .line 131
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->f(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 132
    .line 133
    .line 134
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->e(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_3
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 139
    .line 140
    .line 141
    :cond_4
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 142
    .line 143
    .line 144
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->close()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    sget-object v1, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    .line 152
    .line 153
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    new-instance v2, Lcom/amazonaws/util/StringInputStream;

    .line 158
    .line 159
    invoke-direct {v2, p1}, Lcom/amazonaws/util/StringInputStream;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-interface {v0, v2}, Lcom/amazonaws/Request;->b(Ljava/io/InputStream;)V

    .line 163
    .line 164
    .line 165
    const-string p1, "Content-Length"

    .line 166
    .line 167
    array-length v1, v1

    .line 168
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-interface {v0, p1, v1}, Lcom/amazonaws/Request;->q(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .line 174
    .line 175
    invoke-interface {v0}, Lcom/amazonaws/Request;->a()Ljava/util/Map;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    const-string v1, "Content-Type"

    .line 180
    .line 181
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-nez p1, :cond_5

    .line 186
    .line 187
    const-string p1, "application/x-amz-json-1.1"

    .line 188
    .line 189
    invoke-interface {v0, v1, p1}, Lcom/amazonaws/Request;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    :cond_5
    return-object v0

    .line 193
    :goto_2
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    .line 194
    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    const-string v2, "Unable to marshall request to JSON: "

    .line 201
    .line 202
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 217
    .line 218
    .line 219
    throw v0

    .line 220
    :cond_6
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    .line 221
    .line 222
    const-string v0, "Invalid argument passed to marshall(GetIdRequest)"

    .line 223
    .line 224
    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw p1
.end method
