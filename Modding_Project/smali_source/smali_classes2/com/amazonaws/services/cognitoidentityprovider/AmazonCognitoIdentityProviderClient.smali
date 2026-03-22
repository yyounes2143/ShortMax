.class public Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;
.super Lcom/amazonaws/AmazonWebServiceClient;
.source "AmazonCognitoIdentityProviderClient.java"

# interfaces
.implements Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;


# instance fields
.field private l:Lcom/amazonaws/auth/AWSCredentialsProvider;

.field protected m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/transform/JsonErrorUnmarshaller;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/amazonaws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/internal/StaticCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    invoke-direct {p0, v0, p2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p2}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V
    .locals 0

    .line 3
    invoke-static {p2}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->J(Lcom/amazonaws/ClientConfiguration;)Lcom/amazonaws/ClientConfiguration;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    .line 4
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->l:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 5
    invoke-direct {p0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->K()V

    return-void
.end method

.method private static J(Lcom/amazonaws/ClientConfiguration;)Lcom/amazonaws/ClientConfiguration;
    .locals 0

    .line 1
    return-object p0
.end method

.method private K()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 7
    .line 8
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AliasExistsExceptionUnmarshaller;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AliasExistsExceptionUnmarshaller;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 17
    .line 18
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CodeDeliveryFailureExceptionUnmarshaller;

    .line 19
    .line 20
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CodeDeliveryFailureExceptionUnmarshaller;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 27
    .line 28
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CodeMismatchExceptionUnmarshaller;

    .line 29
    .line 30
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CodeMismatchExceptionUnmarshaller;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 37
    .line 38
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConcurrentModificationExceptionUnmarshaller;

    .line 39
    .line 40
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConcurrentModificationExceptionUnmarshaller;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 47
    .line 48
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DuplicateProviderExceptionUnmarshaller;

    .line 49
    .line 50
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/DuplicateProviderExceptionUnmarshaller;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 57
    .line 58
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/EnableSoftwareTokenMFAExceptionUnmarshaller;

    .line 59
    .line 60
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/EnableSoftwareTokenMFAExceptionUnmarshaller;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 67
    .line 68
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ExpiredCodeExceptionUnmarshaller;

    .line 69
    .line 70
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ExpiredCodeExceptionUnmarshaller;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 77
    .line 78
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ForbiddenExceptionUnmarshaller;

    .line 79
    .line 80
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ForbiddenExceptionUnmarshaller;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 87
    .line 88
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GroupExistsExceptionUnmarshaller;

    .line 89
    .line 90
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/GroupExistsExceptionUnmarshaller;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 97
    .line 98
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InternalErrorExceptionUnmarshaller;

    .line 99
    .line 100
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InternalErrorExceptionUnmarshaller;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 107
    .line 108
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InvalidEmailRoleAccessPolicyExceptionUnmarshaller;

    .line 109
    .line 110
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InvalidEmailRoleAccessPolicyExceptionUnmarshaller;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 117
    .line 118
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InvalidLambdaResponseExceptionUnmarshaller;

    .line 119
    .line 120
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InvalidLambdaResponseExceptionUnmarshaller;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 127
    .line 128
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InvalidOAuthFlowExceptionUnmarshaller;

    .line 129
    .line 130
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InvalidOAuthFlowExceptionUnmarshaller;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 137
    .line 138
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InvalidParameterExceptionUnmarshaller;

    .line 139
    .line 140
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InvalidParameterExceptionUnmarshaller;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 147
    .line 148
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InvalidPasswordExceptionUnmarshaller;

    .line 149
    .line 150
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InvalidPasswordExceptionUnmarshaller;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 157
    .line 158
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InvalidSmsRoleAccessPolicyExceptionUnmarshaller;

    .line 159
    .line 160
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InvalidSmsRoleAccessPolicyExceptionUnmarshaller;-><init>()V

    .line 161
    .line 162
    .line 163
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 167
    .line 168
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InvalidSmsRoleTrustRelationshipExceptionUnmarshaller;

    .line 169
    .line 170
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InvalidSmsRoleTrustRelationshipExceptionUnmarshaller;-><init>()V

    .line 171
    .line 172
    .line 173
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 177
    .line 178
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InvalidUserPoolConfigurationExceptionUnmarshaller;

    .line 179
    .line 180
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InvalidUserPoolConfigurationExceptionUnmarshaller;-><init>()V

    .line 181
    .line 182
    .line 183
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 187
    .line 188
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/LimitExceededExceptionUnmarshaller;

    .line 189
    .line 190
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/LimitExceededExceptionUnmarshaller;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 197
    .line 198
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/MFAMethodNotFoundExceptionUnmarshaller;

    .line 199
    .line 200
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/MFAMethodNotFoundExceptionUnmarshaller;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 207
    .line 208
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/NotAuthorizedExceptionUnmarshaller;

    .line 209
    .line 210
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/NotAuthorizedExceptionUnmarshaller;-><init>()V

    .line 211
    .line 212
    .line 213
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 217
    .line 218
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/PasswordResetRequiredExceptionUnmarshaller;

    .line 219
    .line 220
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/PasswordResetRequiredExceptionUnmarshaller;-><init>()V

    .line 221
    .line 222
    .line 223
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 227
    .line 228
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/PreconditionNotMetExceptionUnmarshaller;

    .line 229
    .line 230
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/PreconditionNotMetExceptionUnmarshaller;-><init>()V

    .line 231
    .line 232
    .line 233
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 237
    .line 238
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ResourceNotFoundExceptionUnmarshaller;

    .line 239
    .line 240
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ResourceNotFoundExceptionUnmarshaller;-><init>()V

    .line 241
    .line 242
    .line 243
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 247
    .line 248
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ScopeDoesNotExistExceptionUnmarshaller;

    .line 249
    .line 250
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ScopeDoesNotExistExceptionUnmarshaller;-><init>()V

    .line 251
    .line 252
    .line 253
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 257
    .line 258
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SoftwareTokenMFANotFoundExceptionUnmarshaller;

    .line 259
    .line 260
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SoftwareTokenMFANotFoundExceptionUnmarshaller;-><init>()V

    .line 261
    .line 262
    .line 263
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 267
    .line 268
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/TooManyFailedAttemptsExceptionUnmarshaller;

    .line 269
    .line 270
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/TooManyFailedAttemptsExceptionUnmarshaller;-><init>()V

    .line 271
    .line 272
    .line 273
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 277
    .line 278
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/TooManyRequestsExceptionUnmarshaller;

    .line 279
    .line 280
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/TooManyRequestsExceptionUnmarshaller;-><init>()V

    .line 281
    .line 282
    .line 283
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 287
    .line 288
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UnauthorizedExceptionUnmarshaller;

    .line 289
    .line 290
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UnauthorizedExceptionUnmarshaller;-><init>()V

    .line 291
    .line 292
    .line 293
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 297
    .line 298
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UnexpectedLambdaExceptionUnmarshaller;

    .line 299
    .line 300
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UnexpectedLambdaExceptionUnmarshaller;-><init>()V

    .line 301
    .line 302
    .line 303
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 307
    .line 308
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UnsupportedIdentityProviderExceptionUnmarshaller;

    .line 309
    .line 310
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UnsupportedIdentityProviderExceptionUnmarshaller;-><init>()V

    .line 311
    .line 312
    .line 313
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 317
    .line 318
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UnsupportedOperationExceptionUnmarshaller;

    .line 319
    .line 320
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UnsupportedOperationExceptionUnmarshaller;-><init>()V

    .line 321
    .line 322
    .line 323
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 327
    .line 328
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UnsupportedTokenTypeExceptionUnmarshaller;

    .line 329
    .line 330
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UnsupportedTokenTypeExceptionUnmarshaller;-><init>()V

    .line 331
    .line 332
    .line 333
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 337
    .line 338
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UnsupportedUserStateExceptionUnmarshaller;

    .line 339
    .line 340
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UnsupportedUserStateExceptionUnmarshaller;-><init>()V

    .line 341
    .line 342
    .line 343
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 347
    .line 348
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserImportInProgressExceptionUnmarshaller;

    .line 349
    .line 350
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserImportInProgressExceptionUnmarshaller;-><init>()V

    .line 351
    .line 352
    .line 353
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 357
    .line 358
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserLambdaValidationExceptionUnmarshaller;

    .line 359
    .line 360
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserLambdaValidationExceptionUnmarshaller;-><init>()V

    .line 361
    .line 362
    .line 363
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 367
    .line 368
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserNotConfirmedExceptionUnmarshaller;

    .line 369
    .line 370
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserNotConfirmedExceptionUnmarshaller;-><init>()V

    .line 371
    .line 372
    .line 373
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 377
    .line 378
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserNotFoundExceptionUnmarshaller;

    .line 379
    .line 380
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserNotFoundExceptionUnmarshaller;-><init>()V

    .line 381
    .line 382
    .line 383
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 387
    .line 388
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolAddOnNotEnabledExceptionUnmarshaller;

    .line 389
    .line 390
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolAddOnNotEnabledExceptionUnmarshaller;-><init>()V

    .line 391
    .line 392
    .line 393
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 397
    .line 398
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolTaggingExceptionUnmarshaller;

    .line 399
    .line 400
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserPoolTaggingExceptionUnmarshaller;-><init>()V

    .line 401
    .line 402
    .line 403
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 407
    .line 408
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UsernameExistsExceptionUnmarshaller;

    .line 409
    .line 410
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UsernameExistsExceptionUnmarshaller;-><init>()V

    .line 411
    .line 412
    .line 413
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 417
    .line 418
    new-instance v1, Lcom/amazonaws/transform/JsonErrorUnmarshaller;

    .line 419
    .line 420
    invoke-direct {v1}, Lcom/amazonaws/transform/JsonErrorUnmarshaller;-><init>()V

    .line 421
    .line 422
    .line 423
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    const-string v0, "cognito-idp.us-east-1.amazonaws.com"

    .line 427
    .line 428
    invoke-virtual {p0, v0}, Lcom/amazonaws/AmazonWebServiceClient;->b(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    const-string v0, "cognito-idp"

    .line 432
    .line 433
    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->i:Ljava/lang/String;

    .line 434
    .line 435
    new-instance v0, Lcom/amazonaws/handlers/HandlerChainFactory;

    .line 436
    .line 437
    invoke-direct {v0}, Lcom/amazonaws/handlers/HandlerChainFactory;-><init>()V

    .line 438
    .line 439
    .line 440
    iget-object v1, p0, Lcom/amazonaws/AmazonWebServiceClient;->e:Ljava/util/List;

    .line 441
    .line 442
    const-string v2, "/com/amazonaws/services/cognitoidentityprovider/request.handlers"

    .line 443
    .line 444
    invoke-virtual {v0, v2}, Lcom/amazonaws/handlers/HandlerChainFactory;->c(Ljava/lang/String;)Ljava/util/List;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 449
    .line 450
    .line 451
    iget-object v1, p0, Lcom/amazonaws/AmazonWebServiceClient;->e:Ljava/util/List;

    .line 452
    .line 453
    const-string v2, "/com/amazonaws/services/cognitoidentityprovider/request.handler2s"

    .line 454
    .line 455
    invoke-virtual {v0, v2}, Lcom/amazonaws/handlers/HandlerChainFactory;->b(Ljava/lang/String;)Ljava/util/List;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 460
    .line 461
    .line 462
    return-void
.end method

.method private L(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(",
            "Lcom/amazonaws/Request<",
            "TY;>;",
            "Lcom/amazonaws/http/HttpResponseHandler<",
            "Lcom/amazonaws/AmazonWebServiceResponse<",
            "TX;>;>;",
            "Lcom/amazonaws/http/ExecutionContext;",
            ")",
            "Lcom/amazonaws/Response<",
            "TX;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->a:Ljava/net/URI;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->u(Ljava/net/URI;)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->f:J

    .line 7
    .line 8
    invoke-interface {p1, v0, v1}, Lcom/amazonaws/Request;->o(J)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p3}, Lcom/amazonaws/http/ExecutionContext;->a()Lcom/amazonaws/util/AWSRequestMetrics;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->CredentialsRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->g(Lcom/amazonaws/metrics/MetricType;)V

    .line 18
    .line 19
    .line 20
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->l:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 21
    .line 22
    invoke-interface {v2}, Lcom/amazonaws/auth/AWSCredentialsProvider;->getCredentials()Lcom/amazonaws/auth/AWSCredentials;

    .line 23
    .line 24
    .line 25
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-virtual {v0, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Lcom/amazonaws/Request;->r()Lcom/amazonaws/AmazonWebServiceRequest;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/amazonaws/AmazonWebServiceRequest;->i()Lcom/amazonaws/auth/AWSCredentials;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/amazonaws/AmazonWebServiceRequest;->i()Lcom/amazonaws/auth/AWSCredentials;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    :cond_0
    invoke-virtual {p3, v2}, Lcom/amazonaws/http/ExecutionContext;->f(Lcom/amazonaws/auth/AWSCredentials;)V

    .line 46
    .line 47
    .line 48
    new-instance v0, Lcom/amazonaws/http/JsonErrorResponseHandler;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->m:Ljava/util/List;

    .line 51
    .line 52
    invoke-direct {v0, v1}, Lcom/amazonaws/http/JsonErrorResponseHandler;-><init>(Ljava/util/List;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/amazonaws/AmazonWebServiceClient;->d:Lcom/amazonaws/http/AmazonHttpClient;

    .line 56
    .line 57
    invoke-virtual {v1, p1, p2, v0, p3}, Lcom/amazonaws/http/AmazonHttpClient;->d(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    return-object p1

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    sget-object p2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->CredentialsRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 64
    .line 65
    invoke-virtual {v0, p2}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 66
    .line 67
    .line 68
    throw p1
.end method


# virtual methods
.method public d(Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->u(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->a()Lcom/amazonaws/util/AWSRequestMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->g(Lcom/amazonaws/metrics/MetricType;)V

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    const/4 v4, 0x0

    .line 16
    :try_start_0
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 17
    .line 18
    invoke-virtual {v1, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->g(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 19
    .line 20
    .line 21
    :try_start_1
    new-instance v6, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ResendConfirmationCodeRequestMarshaller;

    .line 22
    .line 23
    invoke-direct {v6}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ResendConfirmationCodeRequestMarshaller;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v6, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ResendConfirmationCodeRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeRequest;)Lcom/amazonaws/Request;

    .line 27
    .line 28
    .line 29
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 30
    :try_start_2
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->f(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 31
    .line 32
    .line 33
    :try_start_3
    invoke-virtual {v1, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 34
    .line 35
    .line 36
    new-instance v5, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ResendConfirmationCodeResultJsonUnmarshaller;

    .line 37
    .line 38
    invoke-direct {v5}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ResendConfirmationCodeResultJsonUnmarshaller;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v6, Lcom/amazonaws/http/JsonResponseHandler;

    .line 42
    .line 43
    invoke-direct {v6, v5}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, p1, v6, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->L(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v4}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v1, p1, v4, v3}, Lcom/amazonaws/AmazonWebServiceClient;->w(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 60
    .line 61
    .line 62
    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    move-object v7, v4

    .line 65
    move-object v4, p1

    .line 66
    move-object p1, v7

    .line 67
    goto :goto_1

    .line 68
    :catchall_1
    move-exception v0

    .line 69
    goto :goto_0

    .line 70
    :catchall_2
    move-exception v0

    .line 71
    move-object p1, v4

    .line 72
    :goto_0
    :try_start_4
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 75
    .line 76
    .line 77
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 78
    :catchall_3
    move-exception v0

    .line 79
    move-object p1, v4

    .line 80
    :goto_1
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v1, v4, p1, v3}, Lcom/amazonaws/AmazonWebServiceClient;->w(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 86
    .line 87
    .line 88
    throw v0
.end method

.method public e(Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->u(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->a()Lcom/amazonaws/util/AWSRequestMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->g(Lcom/amazonaws/metrics/MetricType;)V

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    const/4 v4, 0x0

    .line 16
    :try_start_0
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 17
    .line 18
    invoke-virtual {v1, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->g(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 19
    .line 20
    .line 21
    :try_start_1
    new-instance v6, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConfirmDeviceRequestMarshaller;

    .line 22
    .line 23
    invoke-direct {v6}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConfirmDeviceRequestMarshaller;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v6, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConfirmDeviceRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceRequest;)Lcom/amazonaws/Request;

    .line 27
    .line 28
    .line 29
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 30
    :try_start_2
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->f(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 31
    .line 32
    .line 33
    :try_start_3
    invoke-virtual {v1, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 34
    .line 35
    .line 36
    new-instance v5, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConfirmDeviceResultJsonUnmarshaller;

    .line 37
    .line 38
    invoke-direct {v5}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ConfirmDeviceResultJsonUnmarshaller;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v6, Lcom/amazonaws/http/JsonResponseHandler;

    .line 42
    .line 43
    invoke-direct {v6, v5}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, p1, v6, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->L(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v4}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ConfirmDeviceResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v1, p1, v4, v3}, Lcom/amazonaws/AmazonWebServiceClient;->w(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 60
    .line 61
    .line 62
    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    move-object v7, v4

    .line 65
    move-object v4, p1

    .line 66
    move-object p1, v7

    .line 67
    goto :goto_1

    .line 68
    :catchall_1
    move-exception v0

    .line 69
    goto :goto_0

    .line 70
    :catchall_2
    move-exception v0

    .line 71
    move-object p1, v4

    .line 72
    :goto_0
    :try_start_4
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 75
    .line 76
    .line 77
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 78
    :catchall_3
    move-exception v0

    .line 79
    move-object p1, v4

    .line 80
    :goto_1
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v1, v4, p1, v3}, Lcom/amazonaws/AmazonWebServiceClient;->w(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 86
    .line 87
    .line 88
    throw v0
.end method

.method public f(Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->u(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->a()Lcom/amazonaws/util/AWSRequestMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->g(Lcom/amazonaws/metrics/MetricType;)V

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    const/4 v4, 0x0

    .line 16
    :try_start_0
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 17
    .line 18
    invoke-virtual {v1, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->g(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 19
    .line 20
    .line 21
    :try_start_1
    new-instance v6, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SignUpRequestMarshaller;

    .line 22
    .line 23
    invoke-direct {v6}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SignUpRequestMarshaller;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v6, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SignUpRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;)Lcom/amazonaws/Request;

    .line 27
    .line 28
    .line 29
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 30
    :try_start_2
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->f(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 31
    .line 32
    .line 33
    :try_start_3
    invoke-virtual {v1, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 34
    .line 35
    .line 36
    new-instance v5, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SignUpResultJsonUnmarshaller;

    .line 37
    .line 38
    invoke-direct {v5}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/SignUpResultJsonUnmarshaller;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v6, Lcom/amazonaws/http/JsonResponseHandler;

    .line 42
    .line 43
    invoke-direct {v6, v5}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, p1, v6, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->L(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v4}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v1, p1, v4, v3}, Lcom/amazonaws/AmazonWebServiceClient;->w(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 60
    .line 61
    .line 62
    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    move-object v7, v4

    .line 65
    move-object v4, p1

    .line 66
    move-object p1, v7

    .line 67
    goto :goto_1

    .line 68
    :catchall_1
    move-exception v0

    .line 69
    goto :goto_0

    .line 70
    :catchall_2
    move-exception v0

    .line 71
    move-object p1, v4

    .line 72
    :goto_0
    :try_start_4
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 75
    .line 76
    .line 77
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 78
    :catchall_3
    move-exception v0

    .line 79
    move-object p1, v4

    .line 80
    :goto_1
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v1, v4, p1, v3}, Lcom/amazonaws/AmazonWebServiceClient;->w(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 86
    .line 87
    .line 88
    throw v0
.end method

.method public m(Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->u(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->a()Lcom/amazonaws/util/AWSRequestMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->g(Lcom/amazonaws/metrics/MetricType;)V

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    const/4 v4, 0x0

    .line 16
    :try_start_0
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 17
    .line 18
    invoke-virtual {v1, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->g(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 19
    .line 20
    .line 21
    :try_start_1
    new-instance v6, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InitiateAuthRequestMarshaller;

    .line 22
    .line 23
    invoke-direct {v6}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InitiateAuthRequestMarshaller;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v6, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InitiateAuthRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthRequest;)Lcom/amazonaws/Request;

    .line 27
    .line 28
    .line 29
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 30
    :try_start_2
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->f(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 31
    .line 32
    .line 33
    :try_start_3
    invoke-virtual {v1, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 34
    .line 35
    .line 36
    new-instance v5, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InitiateAuthResultJsonUnmarshaller;

    .line 37
    .line 38
    invoke-direct {v5}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InitiateAuthResultJsonUnmarshaller;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v6, Lcom/amazonaws/http/JsonResponseHandler;

    .line 42
    .line 43
    invoke-direct {v6, v5}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, p1, v6, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->L(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v4}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/amazonaws/services/cognitoidentityprovider/model/InitiateAuthResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v1, p1, v4, v3}, Lcom/amazonaws/AmazonWebServiceClient;->w(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 60
    .line 61
    .line 62
    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    move-object v7, v4

    .line 65
    move-object v4, p1

    .line 66
    move-object p1, v7

    .line 67
    goto :goto_1

    .line 68
    :catchall_1
    move-exception v0

    .line 69
    goto :goto_0

    .line 70
    :catchall_2
    move-exception v0

    .line 71
    move-object p1, v4

    .line 72
    :goto_0
    :try_start_4
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 75
    .line 76
    .line 77
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 78
    :catchall_3
    move-exception v0

    .line 79
    move-object p1, v4

    .line 80
    :goto_1
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v1, v4, p1, v3}, Lcom/amazonaws/AmazonWebServiceClient;->w(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 86
    .line 87
    .line 88
    throw v0
.end method

.method public n(Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->u(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->a()Lcom/amazonaws/util/AWSRequestMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->g(Lcom/amazonaws/metrics/MetricType;)V

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    const/4 v4, 0x0

    .line 16
    :try_start_0
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 17
    .line 18
    invoke-virtual {v1, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->g(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 19
    .line 20
    .line 21
    :try_start_1
    new-instance v6, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ForgotPasswordRequestMarshaller;

    .line 22
    .line 23
    invoke-direct {v6}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ForgotPasswordRequestMarshaller;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v6, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ForgotPasswordRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordRequest;)Lcom/amazonaws/Request;

    .line 27
    .line 28
    .line 29
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 30
    :try_start_2
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->f(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 31
    .line 32
    .line 33
    :try_start_3
    invoke-virtual {v1, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 34
    .line 35
    .line 36
    new-instance v5, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ForgotPasswordResultJsonUnmarshaller;

    .line 37
    .line 38
    invoke-direct {v5}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ForgotPasswordResultJsonUnmarshaller;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v6, Lcom/amazonaws/http/JsonResponseHandler;

    .line 42
    .line 43
    invoke-direct {v6, v5}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, p1, v6, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->L(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v4}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v1, p1, v4, v3}, Lcom/amazonaws/AmazonWebServiceClient;->w(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 60
    .line 61
    .line 62
    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    move-object v7, v4

    .line 65
    move-object v4, p1

    .line 66
    move-object p1, v7

    .line 67
    goto :goto_1

    .line 68
    :catchall_1
    move-exception v0

    .line 69
    goto :goto_0

    .line 70
    :catchall_2
    move-exception v0

    .line 71
    move-object p1, v4

    .line 72
    :goto_0
    :try_start_4
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 75
    .line 76
    .line 77
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 78
    :catchall_3
    move-exception v0

    .line 79
    move-object p1, v4

    .line 80
    :goto_1
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v1, v4, p1, v3}, Lcom/amazonaws/AmazonWebServiceClient;->w(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 86
    .line 87
    .line 88
    throw v0
.end method

.method public q(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->u(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/amazonaws/http/ExecutionContext;->a()Lcom/amazonaws/util/AWSRequestMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->g(Lcom/amazonaws/metrics/MetricType;)V

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    const/4 v4, 0x0

    .line 16
    :try_start_0
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 17
    .line 18
    invoke-virtual {v1, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->g(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 19
    .line 20
    .line 21
    :try_start_1
    new-instance v6, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/RespondToAuthChallengeRequestMarshaller;

    .line 22
    .line 23
    invoke-direct {v6}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/RespondToAuthChallengeRequestMarshaller;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v6, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/RespondToAuthChallengeRequestMarshaller;->a(Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeRequest;)Lcom/amazonaws/Request;

    .line 27
    .line 28
    .line 29
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 30
    :try_start_2
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->f(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 31
    .line 32
    .line 33
    :try_start_3
    invoke-virtual {v1, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 34
    .line 35
    .line 36
    new-instance v5, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/RespondToAuthChallengeResultJsonUnmarshaller;

    .line 37
    .line 38
    invoke-direct {v5}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/RespondToAuthChallengeResultJsonUnmarshaller;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v6, Lcom/amazonaws/http/JsonResponseHandler;

    .line 42
    .line 43
    invoke-direct {v6, v5}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, p1, v6, v0}, Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProviderClient;->L(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v4}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v1, p1, v4, v3}, Lcom/amazonaws/AmazonWebServiceClient;->w(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 60
    .line 61
    .line 62
    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    move-object v7, v4

    .line 65
    move-object v4, p1

    .line 66
    move-object p1, v7

    .line 67
    goto :goto_1

    .line 68
    :catchall_1
    move-exception v0

    .line 69
    goto :goto_0

    .line 70
    :catchall_2
    move-exception v0

    .line 71
    move-object p1, v4

    .line 72
    :goto_0
    :try_start_4
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 75
    .line 76
    .line 77
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 78
    :catchall_3
    move-exception v0

    .line 79
    move-object p1, v4

    .line 80
    :goto_1
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v1, v4, p1, v3}, Lcom/amazonaws/AmazonWebServiceClient;->w(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 86
    .line 87
    .line 88
    throw v0
.end method
