.class public Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConfirmDeviceRequestMarshaller;
.super Ljava/lang/Object;
.source "ConfirmDeviceRequestMarshaller.java"


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
.method public a(Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceRequest;)Lcom/amazonaws/Request;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceRequest;",
            ")",
            "Lcom/amazonaws/Request<",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceRequest;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    new-instance v0, Lcom/amazonaws/DefaultRequest;

    .line 4
    .line 5
    const-string v1, "AmazonCognitoIdentityProvider"

    .line 6
    .line 7
    invoke-direct {v0, p1, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "AWSCognitoIdentityProviderService.ConfirmDevice"

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
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceRequest;->r()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceRequest;->r()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const-string v4, "AccessToken"

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
    goto :goto_1

    .line 60
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceRequest;->s()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    if-eqz v3, :cond_1

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceRequest;->s()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    const-string v4, "DeviceKey"

    .line 71
    .line 72
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->f(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 73
    .line 74
    .line 75
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->e(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 76
    .line 77
    .line 78
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceRequest;->u()Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceSecretVerifierConfigType;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    if-eqz v3, :cond_2

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceRequest;->u()Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceSecretVerifierConfigType;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    const-string v4, "DeviceSecretVerifierConfig"

    .line 89
    .line 90
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->f(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 91
    .line 92
    .line 93
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeviceSecretVerifierConfigTypeJsonMarshaller;->a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeviceSecretVerifierConfigTypeJsonMarshaller;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v4, v3, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DeviceSecretVerifierConfigTypeJsonMarshaller;->b(Lcom/amazonaws/services/cognitoidentityprovider/model/DeviceSecretVerifierConfigType;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    .line 98
    .line 99
    .line 100
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceRequest;->t()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    if-eqz v3, :cond_3

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceRequest;->t()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    const-string v3, "DeviceName"

    .line 111
    .line 112
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->f(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 113
    .line 114
    .line 115
    invoke-interface {v2, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->e(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 116
    .line 117
    .line 118
    :cond_3
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 119
    .line 120
    .line 121
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->close()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    sget-object v1, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    .line 129
    .line 130
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    new-instance v2, Lcom/amazonaws/util/StringInputStream;

    .line 135
    .line 136
    invoke-direct {v2, p1}, Lcom/amazonaws/util/StringInputStream;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-interface {v0, v2}, Lcom/amazonaws/Request;->b(Ljava/io/InputStream;)V

    .line 140
    .line 141
    .line 142
    const-string p1, "Content-Length"

    .line 143
    .line 144
    array-length v1, v1

    .line 145
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-interface {v0, p1, v1}, Lcom/amazonaws/Request;->q(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .line 151
    .line 152
    invoke-interface {v0}, Lcom/amazonaws/Request;->a()Ljava/util/Map;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    const-string v1, "Content-Type"

    .line 157
    .line 158
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-nez p1, :cond_4

    .line 163
    .line 164
    const-string p1, "application/x-amz-json-1.1"

    .line 165
    .line 166
    invoke-interface {v0, v1, p1}, Lcom/amazonaws/Request;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    :cond_4
    return-object v0

    .line 170
    :goto_1
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    .line 171
    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    const-string v2, "Unable to marshall request to JSON: "

    .line 178
    .line 179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    .line 195
    .line 196
    throw v0

    .line 197
    :cond_5
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    .line 198
    .line 199
    const-string v0, "Invalid argument passed to marshall(ConfirmDeviceRequest)"

    .line 200
    .line 201
    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    throw p1
.end method
