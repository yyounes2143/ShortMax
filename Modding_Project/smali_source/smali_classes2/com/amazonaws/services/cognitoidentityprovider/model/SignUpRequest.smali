.class public Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SignUpRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

.field private m:Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public B()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->k:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public C(Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->l:Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    .line 2
    .line 3
    return-void
.end method

.method public D(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->j:Ljava/util/List;

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->j:Ljava/util/List;

    .line 13
    .line 14
    return-void
.end method

.method public E(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->k:Ljava/util/List;

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->k:Ljava/util/List;

    .line 13
    .line 14
    return-void
.end method

.method public F(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public G(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->n:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public H(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public I(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public J(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->D(Ljava/util/Collection;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public K(Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->m:Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    .line 2
    .line 3
    return-object p0
.end method

.method public L(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public M(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->E(Ljava/util/Collection;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;

    .line 10
    .line 11
    if-nez v2, :cond_2

    .line 12
    .line 13
    return v1

    .line 14
    :cond_2
    check-cast p1, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->s()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-nez v2, :cond_3

    .line 21
    .line 22
    move v2, v0

    .line 23
    goto :goto_0

    .line 24
    :cond_3
    move v2, v1

    .line 25
    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->s()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-nez v3, :cond_4

    .line 30
    .line 31
    move v3, v0

    .line 32
    goto :goto_1

    .line 33
    :cond_4
    move v3, v1

    .line 34
    :goto_1
    xor-int/2addr v2, v3

    .line 35
    if-eqz v2, :cond_5

    .line 36
    .line 37
    return v1

    .line 38
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->s()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-eqz v2, :cond_6

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->s()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->s()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_6

    .line 57
    .line 58
    return v1

    .line 59
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->v()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    if-nez v2, :cond_7

    .line 64
    .line 65
    move v2, v0

    .line 66
    goto :goto_2

    .line 67
    :cond_7
    move v2, v1

    .line 68
    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->v()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    if-nez v3, :cond_8

    .line 73
    .line 74
    move v3, v0

    .line 75
    goto :goto_3

    .line 76
    :cond_8
    move v3, v1

    .line 77
    :goto_3
    xor-int/2addr v2, v3

    .line 78
    if-eqz v2, :cond_9

    .line 79
    .line 80
    return v1

    .line 81
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->v()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    if-eqz v2, :cond_a

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->v()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->v()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-nez v2, :cond_a

    .line 100
    .line 101
    return v1

    .line 102
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->A()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    if-nez v2, :cond_b

    .line 107
    .line 108
    move v2, v0

    .line 109
    goto :goto_4

    .line 110
    :cond_b
    move v2, v1

    .line 111
    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->A()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    if-nez v3, :cond_c

    .line 116
    .line 117
    move v3, v0

    .line 118
    goto :goto_5

    .line 119
    :cond_c
    move v3, v1

    .line 120
    :goto_5
    xor-int/2addr v2, v3

    .line 121
    if-eqz v2, :cond_d

    .line 122
    .line 123
    return v1

    .line 124
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->A()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    if-eqz v2, :cond_e

    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->A()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->A()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-nez v2, :cond_e

    .line 143
    .line 144
    return v1

    .line 145
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->u()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    if-nez v2, :cond_f

    .line 150
    .line 151
    move v2, v0

    .line 152
    goto :goto_6

    .line 153
    :cond_f
    move v2, v1

    .line 154
    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->u()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    if-nez v3, :cond_10

    .line 159
    .line 160
    move v3, v0

    .line 161
    goto :goto_7

    .line 162
    :cond_10
    move v3, v1

    .line 163
    :goto_7
    xor-int/2addr v2, v3

    .line 164
    if-eqz v2, :cond_11

    .line 165
    .line 166
    return v1

    .line 167
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->u()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    if-eqz v2, :cond_12

    .line 172
    .line 173
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->u()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->u()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-nez v2, :cond_12

    .line 186
    .line 187
    return v1

    .line 188
    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->y()Ljava/util/List;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    if-nez v2, :cond_13

    .line 193
    .line 194
    move v2, v0

    .line 195
    goto :goto_8

    .line 196
    :cond_13
    move v2, v1

    .line 197
    :goto_8
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->y()Ljava/util/List;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    if-nez v3, :cond_14

    .line 202
    .line 203
    move v3, v0

    .line 204
    goto :goto_9

    .line 205
    :cond_14
    move v3, v1

    .line 206
    :goto_9
    xor-int/2addr v2, v3

    .line 207
    if-eqz v2, :cond_15

    .line 208
    .line 209
    return v1

    .line 210
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->y()Ljava/util/List;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    if-eqz v2, :cond_16

    .line 215
    .line 216
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->y()Ljava/util/List;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->y()Ljava/util/List;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-nez v2, :cond_16

    .line 229
    .line 230
    return v1

    .line 231
    :cond_16
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->B()Ljava/util/List;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    if-nez v2, :cond_17

    .line 236
    .line 237
    move v2, v0

    .line 238
    goto :goto_a

    .line 239
    :cond_17
    move v2, v1

    .line 240
    :goto_a
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->B()Ljava/util/List;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    if-nez v3, :cond_18

    .line 245
    .line 246
    move v3, v0

    .line 247
    goto :goto_b

    .line 248
    :cond_18
    move v3, v1

    .line 249
    :goto_b
    xor-int/2addr v2, v3

    .line 250
    if-eqz v2, :cond_19

    .line 251
    .line 252
    return v1

    .line 253
    :cond_19
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->B()Ljava/util/List;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    if-eqz v2, :cond_1a

    .line 258
    .line 259
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->B()Ljava/util/List;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->B()Ljava/util/List;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    if-nez v2, :cond_1a

    .line 272
    .line 273
    return v1

    .line 274
    :cond_1a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->r()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    if-nez v2, :cond_1b

    .line 279
    .line 280
    move v2, v0

    .line 281
    goto :goto_c

    .line 282
    :cond_1b
    move v2, v1

    .line 283
    :goto_c
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->r()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    if-nez v3, :cond_1c

    .line 288
    .line 289
    move v3, v0

    .line 290
    goto :goto_d

    .line 291
    :cond_1c
    move v3, v1

    .line 292
    :goto_d
    xor-int/2addr v2, v3

    .line 293
    if-eqz v2, :cond_1d

    .line 294
    .line 295
    return v1

    .line 296
    :cond_1d
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->r()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    if-eqz v2, :cond_1e

    .line 301
    .line 302
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->r()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->r()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;->equals(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v2

    .line 314
    if-nez v2, :cond_1e

    .line 315
    .line 316
    return v1

    .line 317
    :cond_1e
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->z()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    if-nez v2, :cond_1f

    .line 322
    .line 323
    move v2, v0

    .line 324
    goto :goto_e

    .line 325
    :cond_1f
    move v2, v1

    .line 326
    :goto_e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->z()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    if-nez v3, :cond_20

    .line 331
    .line 332
    move v3, v0

    .line 333
    goto :goto_f

    .line 334
    :cond_20
    move v3, v1

    .line 335
    :goto_f
    xor-int/2addr v2, v3

    .line 336
    if-eqz v2, :cond_21

    .line 337
    .line 338
    return v1

    .line 339
    :cond_21
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->z()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    if-eqz v2, :cond_22

    .line 344
    .line 345
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->z()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->z()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    .line 350
    .line 351
    .line 352
    move-result-object v3

    .line 353
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;->equals(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    if-nez v2, :cond_22

    .line 358
    .line 359
    return v1

    .line 360
    :cond_22
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->t()Ljava/util/Map;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    if-nez v2, :cond_23

    .line 365
    .line 366
    move v2, v0

    .line 367
    goto :goto_10

    .line 368
    :cond_23
    move v2, v1

    .line 369
    :goto_10
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->t()Ljava/util/Map;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    if-nez v3, :cond_24

    .line 374
    .line 375
    move v3, v0

    .line 376
    goto :goto_11

    .line 377
    :cond_24
    move v3, v1

    .line 378
    :goto_11
    xor-int/2addr v2, v3

    .line 379
    if-eqz v2, :cond_25

    .line 380
    .line 381
    return v1

    .line 382
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->t()Ljava/util/Map;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    if-eqz v2, :cond_26

    .line 387
    .line 388
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->t()Ljava/util/Map;

    .line 389
    .line 390
    .line 391
    move-result-object p1

    .line 392
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->t()Ljava/util/Map;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    invoke-interface {p1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    move-result p1

    .line 400
    if-nez p1, :cond_26

    .line 401
    .line 402
    return v1

    .line 403
    :cond_26
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->s()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->s()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    :goto_0
    const/16 v2, 0x1f

    .line 19
    .line 20
    add-int/2addr v0, v2

    .line 21
    mul-int/2addr v0, v2

    .line 22
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->v()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    move v3, v1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->v()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    :goto_1
    add-int/2addr v0, v3

    .line 39
    mul-int/2addr v0, v2

    .line 40
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->A()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-nez v3, :cond_2

    .line 45
    .line 46
    move v3, v1

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->A()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    :goto_2
    add-int/2addr v0, v3

    .line 57
    mul-int/2addr v0, v2

    .line 58
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->u()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    if-nez v3, :cond_3

    .line 63
    .line 64
    move v3, v1

    .line 65
    goto :goto_3

    .line 66
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->u()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    :goto_3
    add-int/2addr v0, v3

    .line 75
    mul-int/2addr v0, v2

    .line 76
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->y()Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    if-nez v3, :cond_4

    .line 81
    .line 82
    move v3, v1

    .line 83
    goto :goto_4

    .line 84
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->y()Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    :goto_4
    add-int/2addr v0, v3

    .line 93
    mul-int/2addr v0, v2

    .line 94
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->B()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    if-nez v3, :cond_5

    .line 99
    .line 100
    move v3, v1

    .line 101
    goto :goto_5

    .line 102
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->B()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    :goto_5
    add-int/2addr v0, v3

    .line 111
    mul-int/2addr v0, v2

    .line 112
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->r()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    if-nez v3, :cond_6

    .line 117
    .line 118
    move v3, v1

    .line 119
    goto :goto_6

    .line 120
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->r()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;->hashCode()I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    :goto_6
    add-int/2addr v0, v3

    .line 129
    mul-int/2addr v0, v2

    .line 130
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->z()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    if-nez v3, :cond_7

    .line 135
    .line 136
    move v3, v1

    .line 137
    goto :goto_7

    .line 138
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->z()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v3}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;->hashCode()I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    :goto_7
    add-int/2addr v0, v3

    .line 147
    mul-int/2addr v0, v2

    .line 148
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->t()Ljava/util/Map;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    if-nez v2, :cond_8

    .line 153
    .line 154
    goto :goto_8

    .line 155
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->t()Ljava/util/Map;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    :goto_8
    add-int/2addr v0, v1

    .line 164
    return v0
.end method

.method public r()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->l:Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    .line 2
    .line 3
    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->n:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "{"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->s()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, ","

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v3, "ClientId: "

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->s()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->v()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v3, "SecretHash: "

    .line 59
    .line 60
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->v()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->A()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    if-eqz v1, :cond_2

    .line 85
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v3, "Username: "

    .line 92
    .line 93
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->A()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->u()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    if-eqz v1, :cond_3

    .line 118
    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string v3, "Password: "

    .line 125
    .line 126
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->u()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->y()Ljava/util/List;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    if-eqz v1, :cond_4

    .line 151
    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string v3, "UserAttributes: "

    .line 158
    .line 159
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->y()Ljava/util/List;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->B()Ljava/util/List;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    if-eqz v1, :cond_5

    .line 184
    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    const-string v3, "ValidationData: "

    .line 191
    .line 192
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->B()Ljava/util/List;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->r()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    if-eqz v1, :cond_6

    .line 217
    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .line 222
    .line 223
    const-string v3, "AnalyticsMetadata: "

    .line 224
    .line 225
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->r()Lcom/amazonaws/services/cognitoidentityprovider/model/AnalyticsMetadataType;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->z()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    if-eqz v1, :cond_7

    .line 250
    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .line 255
    .line 256
    const-string v3, "UserContextData: "

    .line 257
    .line 258
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->z()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->t()Ljava/util/Map;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    if-eqz v1, :cond_8

    .line 283
    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .line 288
    .line 289
    const-string v2, "ClientMetadata: "

    .line 290
    .line 291
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->t()Ljava/util/Map;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    :cond_8
    const-string/jumbo v1, "}"

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public y()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/cognitoidentityprovider/model/AttributeType;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->j:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public z()Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentityprovider/model/SignUpRequest;->m:Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;

    .line 2
    .line 3
    return-object v0
.end method
