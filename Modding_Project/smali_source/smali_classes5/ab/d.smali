.class public Lab/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final o:Ljava/lang/String; = "d"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:[B

.field private c:I

.field private d:J

.field private e:J

.field private f:J

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:J

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/Exception;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/util/Map;[BJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;[BJ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lab/d;->h:I

    const/16 v0, 0x2329

    iput v0, p0, Lab/d;->i:I

    const-string v0, ""

    iput-object v0, p0, Lab/d;->j:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lab/d;->k:J

    iput-object v0, p0, Lab/d;->l:Ljava/lang/String;

    iput p1, p0, Lab/d;->c:I

    iput-object p2, p0, Lab/d;->a:Ljava/util/Map;

    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    iput-object p1, p0, Lab/d;->b:[B

    iput-wide p4, p0, Lab/d;->d:J

    invoke-direct {p0}, Lab/d;->H()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;J)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lab/d;->c:I

    const/4 v0, 0x2

    iput v0, p0, Lab/d;->h:I

    const/16 v0, 0x2329

    iput v0, p0, Lab/d;->i:I

    const-string v0, ""

    iput-object v0, p0, Lab/d;->j:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lab/d;->k:J

    iput-object v0, p0, Lab/d;->l:Ljava/lang/String;

    iput-object p1, p0, Lab/d;->m:Ljava/lang/Exception;

    iput-wide p2, p0, Lab/d;->d:J

    return-void
.end method

.method private E()V
    .locals 9

    .line 1
    const-string v0, "errorList"

    .line 2
    .line 3
    const-string v1, "errorDesc"

    .line 4
    .line 5
    const-string v2, "errorCode"

    .line 6
    .line 7
    const-string v3, "resultCode"

    .line 8
    .line 9
    const-string v4, "isSuccess"

    .line 10
    .line 11
    invoke-virtual {p0}, Lab/d;->B()Z

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    const/4 v6, 0x1

    .line 16
    if-eqz v5, :cond_0

    .line 17
    .line 18
    sget-object v0, Lab/d;->o:Ljava/lang/String;

    .line 19
    .line 20
    const-string v1, "GRSSDK get httpcode{304} not any changed."

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v6}, Lab/d;->l(I)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-virtual {p0}, Lab/d;->D()Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const/4 v7, 0x2

    .line 34
    if-nez v5, :cond_1

    .line 35
    .line 36
    sget-object v0, Lab/d;->o:Ljava/lang/String;

    .line 37
    .line 38
    const-string v1, "GRSSDK parse server body all failed."

    .line 39
    .line 40
    invoke-static {v0, v1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v7}, Lab/d;->l(I)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    :try_start_0
    iget-object v5, p0, Lab/d;->b:[B

    .line 48
    .line 49
    invoke-static {v5}, Lcom/huawei/hms/framework/common/StringUtils;->byte2Str([B)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    new-instance v8, Lorg/json/JSONObject;

    .line 54
    .line 55
    invoke-direct {v8, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_2

    .line 63
    .line 64
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-ne v3, v6, :cond_3

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    goto/16 :goto_5

    .line 73
    .line 74
    :cond_2
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_4

    .line 79
    .line 80
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-nez v3, :cond_3

    .line 85
    .line 86
    :goto_0
    move v3, v6

    .line 87
    goto :goto_1

    .line 88
    :cond_3
    move v3, v7

    .line 89
    goto :goto_1

    .line 90
    :cond_4
    sget-object v3, Lab/d;->o:Ljava/lang/String;

    .line 91
    .line 92
    const-string v4, "sth. wrong because server errorcode\'s key."

    .line 93
    .line 94
    invoke-static {v3, v4}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    .line 97
    const/4 v3, -0x1

    .line 98
    :goto_1
    const-string v4, "services"

    .line 99
    .line 100
    if-eq v3, v6, :cond_5

    .line 101
    .line 102
    :try_start_1
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-eqz v5, :cond_5

    .line 107
    .line 108
    const/4 v3, 0x0

    .line 109
    :cond_5
    invoke-direct {p0, v3}, Lab/d;->l(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 110
    .line 111
    .line 112
    const-string v5, ""

    .line 113
    .line 114
    if-eq v3, v6, :cond_9

    .line 115
    .line 116
    if-nez v3, :cond_6

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_6
    :try_start_2
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_7

    .line 124
    .line 125
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    goto :goto_2

    .line 130
    :cond_7
    const/16 v0, 0x2329

    .line 131
    .line 132
    :goto_2
    invoke-direct {p0, v0}, Lab/d;->g(I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_8

    .line 140
    .line 141
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    :cond_8
    invoke-direct {p0, v5}, Lab/d;->q(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    goto :goto_6

    .line 149
    :cond_9
    :goto_3
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-eqz v1, :cond_a

    .line 154
    .line 155
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    goto :goto_4

    .line 164
    :cond_a
    move-object v1, v5

    .line 165
    :goto_4
    invoke-direct {p0, v1}, Lab/d;->u(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-eqz v1, :cond_b

    .line 173
    .line 174
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    :cond_b
    invoke-direct {p0, v5}, Lab/d;->s(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 183
    .line 184
    .line 185
    goto :goto_6

    .line 186
    :goto_5
    sget-object v1, Lab/d;->o:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-static {v0}, Lcom/huawei/hms/framework/common/StringUtils;->anonymizeMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    const-string v2, "GrsResponse GrsResponse(String result) JSONException: %s"

    .line 201
    .line 202
    invoke-static {v1, v2, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    invoke-direct {p0, v7}, Lab/d;->l(I)V

    .line 206
    .line 207
    .line 208
    :goto_6
    return-void
.end method

.method private F()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lab/d;->D()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lab/d;->C()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lab/d;->B()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-direct {p0}, Lab/d;->G()Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-gtz v1, :cond_1

    .line 29
    .line 30
    sget-object v0, Lab/d;->o:Ljava/lang/String;

    .line 31
    .line 32
    const-string v1, "parseHeader {headers.size() <= 0}"

    .line 33
    .line 34
    invoke-static {v0, v1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lab/d;->D()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0}, Lab/d;->B()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lab/d;->j(Ljava/util/Map;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, v0}, Lab/d;->e(Ljava/util/Map;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    invoke-virtual {p0}, Lab/d;->C()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    invoke-direct {p0, v0}, Lab/d;->o(Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :goto_1
    sget-object v1, Lab/d;->o:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/huawei/hms/framework/common/StringUtils;->anonymizeMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const-string v2, "parseHeader catch JSONException: %s"

    .line 84
    .line 85
    invoke-static {v1, v2, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :cond_4
    :goto_2
    return-void
.end method

.method private G()Ljava/util/Map;
    .locals 5
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
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lab/d;->a:Ljava/util/Map;

    .line 9
    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-gtz v1, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget-object v1, p0, Lab/d;->a:Ljava/util/Map;

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Ljava/util/Map$Entry;

    .line 40
    .line 41
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Ljava/lang/String;

    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_1

    .line 62
    .line 63
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Ljava/lang/String;

    .line 68
    .line 69
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    return-object v0

    .line 74
    :cond_3
    :goto_1
    sget-object v1, Lab/d;->o:Ljava/lang/String;

    .line 75
    .line 76
    const-string v2, "parseRespHeaders {respHeaders == null} or {respHeaders.size() <= 0}"

    .line 77
    .line 78
    invoke-static {v1, v2}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    return-object v0
.end method

.method private H()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lab/d;->F()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lab/d;->E()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private e(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "ETag"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    sget-object v0, Lab/d;->o:Ljava/lang/String;

    .line 22
    .line 23
    const-string v1, "success get Etag from server"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lab/d;->d(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    sget-object p1, Lab/d;->o:Ljava/lang/String;

    .line 33
    .line 34
    const-string v0, "The Response Heads Etag is Empty"

    .line 35
    .line 36
    :goto_0
    invoke-static {p1, v0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    sget-object p1, Lab/d;->o:Ljava/lang/String;

    .line 41
    .line 42
    const-string v0, "Response Heads has not Etag"

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :goto_1
    return-void
.end method

.method private g(I)V
    .locals 0

    .line 1
    iput p1, p0, Lab/d;->i:I

    .line 2
    .line 3
    return-void
.end method

.method private j(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "Cache-Control"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-wide/16 v2, 0x3e8

    .line 8
    .line 9
    const-wide/16 v4, 0x0

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_4

    .line 24
    .line 25
    const-string v0, "max-age="

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_4

    .line 32
    .line 33
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    add-int/lit8 v0, v0, 0x8

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    :try_start_1
    sget-object p1, Lab/d;->o:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 48
    .line 49
    const-string v6, "Cache-Control value{%s}"

    .line 50
    .line 51
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    invoke-static {p1, v6, v7}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 60
    .line 61
    .line 62
    goto/16 :goto_5

    .line 63
    .line 64
    :catch_0
    move-exception p1

    .line 65
    goto :goto_0

    .line 66
    :catch_1
    move-exception p1

    .line 67
    move-wide v0, v4

    .line 68
    :goto_0
    sget-object v6, Lab/d;->o:Ljava/lang/String;

    .line 69
    .line 70
    const-string v7, "getExpireTime addHeadersToResult NumberFormatException"

    .line 71
    .line 72
    invoke-static {v6, v7, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    goto :goto_5

    .line 76
    :cond_0
    const-string v0, "Expires"

    .line 77
    .line 78
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Ljava/lang/String;

    .line 89
    .line 90
    sget-object v1, Lab/d;->o:Ljava/lang/String;

    .line 91
    .line 92
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    const-string v7, "expires is{%s}"

    .line 97
    .line 98
    invoke-static {v1, v7, v6}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 102
    .line 103
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 104
    .line 105
    const-string v7, "EEE, d MMM yyyy HH:mm:ss \'GMT\'"

    .line 106
    .line 107
    invoke-direct {v1, v7, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 108
    .line 109
    .line 110
    const-string v6, "Date"

    .line 111
    .line 112
    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    if-eqz v7, :cond_1

    .line 117
    .line 118
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    check-cast p1, Ljava/lang/String;

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_1
    const/4 p1, 0x0

    .line 126
    :goto_1
    :try_start_3
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    if-eqz v6, :cond_2

    .line 135
    .line 136
    new-instance p1, Ljava/util/Date;

    .line 137
    .line 138
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :catch_2
    move-exception p1

    .line 143
    goto :goto_3

    .line 144
    :cond_2
    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    :goto_2
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 149
    .line 150
    .line 151
    move-result-wide v0

    .line 152
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 153
    .line 154
    .line 155
    move-result-wide v6

    .line 156
    sub-long/2addr v0, v6

    .line 157
    div-long/2addr v0, v2
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_2

    .line 158
    goto :goto_5

    .line 159
    :goto_3
    sget-object v0, Lab/d;->o:Ljava/lang/String;

    .line 160
    .line 161
    const-string v1, "getExpireTime ParseException."

    .line 162
    .line 163
    invoke-static {v0, v1, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_3
    sget-object p1, Lab/d;->o:Ljava/lang/String;

    .line 168
    .line 169
    const-string v0, "response headers neither contains Cache-Control nor Expires."

    .line 170
    .line 171
    invoke-static {p1, v0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    :cond_4
    :goto_4
    move-wide v0, v4

    .line 175
    :goto_5
    cmp-long p1, v0, v4

    .line 176
    .line 177
    if-lez p1, :cond_5

    .line 178
    .line 179
    const-wide/32 v4, 0x278d00

    .line 180
    .line 181
    .line 182
    cmp-long p1, v0, v4

    .line 183
    .line 184
    if-lez p1, :cond_6

    .line 185
    .line 186
    :cond_5
    const-wide/32 v0, 0x15180

    .line 187
    .line 188
    .line 189
    :cond_6
    mul-long/2addr v0, v2

    .line 190
    sget-object p1, Lab/d;->o:Ljava/lang/String;

    .line 191
    .line 192
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    const-string v3, "convert expireTime{%s}"

    .line 201
    .line 202
    invoke-static {p1, v3, v2}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 206
    .line 207
    .line 208
    move-result-wide v2

    .line 209
    add-long/2addr v0, v2

    .line 210
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-direct {p0, p1}, Lab/d;->n(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    return-void
.end method

.method private l(I)V
    .locals 0

    .line 1
    iput p1, p0, Lab/d;->h:I

    .line 2
    .line 3
    return-void
.end method

.method private m(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lab/d;->k:J

    .line 2
    .line 3
    return-void
.end method

.method private n(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lab/d;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method private o(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "Retry-After"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p1

    .line 27
    sget-object v0, Lab/d;->o:Ljava/lang/String;

    .line 28
    .line 29
    const-string v1, "getRetryAfter addHeadersToResult NumberFormatException"

    .line 30
    .line 31
    invoke-static {v0, v1, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    .line 35
    .line 36
    :goto_0
    const-wide/16 v2, 0x3e8

    .line 37
    .line 38
    mul-long/2addr v0, v2

    .line 39
    sget-object p1, Lab/d;->o:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const-string v3, "convert retry-afterTime{%s}"

    .line 50
    .line 51
    invoke-static {p1, v3, v2}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, v0, v1}, Lab/d;->m(J)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method private q(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method private s(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method private u(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lab/d;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lab/d;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public B()Z
    .locals 2

    .line 1
    iget v0, p0, Lab/d;->c:I

    .line 2
    .line 3
    const/16 v1, 0x130

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public C()Z
    .locals 2

    .line 1
    iget v0, p0, Lab/d;->c:I

    .line 2
    .line 3
    const/16 v1, 0x1f7

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public D()Z
    .locals 2

    .line 1
    iget v0, p0, Lab/d;->c:I

    .line 2
    .line 3
    const/16 v1, 0xc8

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lab/d;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lab/d;->f:J

    .line 2
    .line 3
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lab/d;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lab/d;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public h(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lab/d;->e:J

    .line 2
    .line 3
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lab/d;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lab/d;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public p()Ljava/lang/Exception;
    .locals 1

    .line 1
    iget-object v0, p0, Lab/d;->m:Ljava/lang/Exception;

    .line 2
    .line 3
    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lab/d;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()I
    .locals 1

    .line 1
    iget v0, p0, Lab/d;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public v()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lab/d;->f:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public w()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lab/d;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public x()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lab/d;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lab/d;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public z()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lab/d;->k:J

    .line 2
    .line 3
    return-wide v0
.end method
