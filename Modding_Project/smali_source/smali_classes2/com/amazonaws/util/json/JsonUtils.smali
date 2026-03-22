.class public Lcom/amazonaws/util/json/JsonUtils;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# static fields
.field private static final a:Lcom/amazonaws/util/json/AwsJsonFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/amazonaws/util/json/GsonFactory;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/amazonaws/util/json/GsonFactory;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/amazonaws/util/json/JsonUtils;->a:Lcom/amazonaws/util/json/AwsJsonFactory;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Ljava/io/Reader;)Lcom/amazonaws/util/json/AwsJsonReader;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazonaws/util/json/JsonUtils;->a:Lcom/amazonaws/util/json/AwsJsonFactory;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lcom/amazonaws/util/json/AwsJsonFactory;->b(Ljava/io/Reader;)Lcom/amazonaws/util/json/AwsJsonReader;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static b(Ljava/io/Writer;)Lcom/amazonaws/util/json/AwsJsonWriter;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazonaws/util/json/JsonUtils;->a:Lcom/amazonaws/util/json/AwsJsonFactory;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lcom/amazonaws/util/json/AwsJsonFactory;->a(Ljava/io/Writer;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static c(Ljava/io/Reader;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/amazonaws/util/json/JsonUtils;->a(Ljava/io/Reader;)Lcom/amazonaws/util/json/AwsJsonReader;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :try_start_0
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->peek()Lcom/amazonaws/util/json/AwsJsonToken;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 12
    .line 13
    return-object p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->c()V

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->g()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->e()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->f()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->h()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->d()V

    .line 53
    .line 54
    .line 55
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->close()V

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 59
    .line 60
    .line 61
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    return-object p0

    .line 63
    :goto_1
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    .line 64
    .line 65
    const-string v1, "Unable to parse JSON String."

    .line 66
    .line 67
    invoke-direct {v0, v1, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    throw v0
.end method

.method public static d(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/io/StringReader;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/amazonaws/util/json/JsonUtils;->c(Ljava/io/Reader;)Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_1
    :goto_0
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 21
    .line 22
    return-object p0
.end method

.method public static e(Ljava/io/Reader;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/amazonaws/util/json/JsonUtils;->a(Ljava/io/Reader;)Lcom/amazonaws/util/json/AwsJsonReader;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :try_start_0
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->peek()Lcom/amazonaws/util/json/AwsJsonToken;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 12
    .line 13
    return-object p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    goto/16 :goto_4

    .line 16
    .line 17
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->c()V

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_b

    .line 30
    .line 31
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->g()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->e()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_a

    .line 40
    .line 41
    sget-object v2, Lcom/amazonaws/util/json/AwsJsonToken;->BEGIN_ARRAY:Lcom/amazonaws/util/json/AwsJsonToken;

    .line 42
    .line 43
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->peek()Lcom/amazonaws/util/json/AwsJsonToken;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_9

    .line 52
    .line 53
    new-instance v2, Ljava/io/StringWriter;

    .line 54
    .line 55
    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-static {v2}, Lcom/amazonaws/util/json/JsonUtils;->b(Ljava/io/Writer;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->b()V

    .line 63
    .line 64
    .line 65
    invoke-interface {v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->b()Lcom/amazonaws/util/json/AwsJsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_1
    :try_start_1
    sget-object v4, Lcom/amazonaws/util/json/AwsJsonToken;->END_ARRAY:Lcom/amazonaws/util/json/AwsJsonToken;

    .line 69
    .line 70
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->peek()Lcom/amazonaws/util/json/AwsJsonToken;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-nez v5, :cond_8

    .line 79
    .line 80
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->peek()Lcom/amazonaws/util/json/AwsJsonToken;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    sget-object v6, Lcom/amazonaws/util/json/AwsJsonToken;->BEGIN_OBJECT:Lcom/amazonaws/util/json/AwsJsonToken;

    .line 85
    .line 86
    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-eqz v6, :cond_2

    .line 91
    .line 92
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->c()V

    .line 93
    .line 94
    .line 95
    invoke-interface {v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catch_1
    move-exception v4

    .line 100
    goto :goto_3

    .line 101
    :cond_2
    sget-object v6, Lcom/amazonaws/util/json/AwsJsonToken;->FIELD_NAME:Lcom/amazonaws/util/json/AwsJsonToken;

    .line 102
    .line 103
    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-eqz v6, :cond_3

    .line 108
    .line 109
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->g()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    sget-object v5, Lcom/amazonaws/util/json/AwsJsonToken;->BEGIN_ARRAY:Lcom/amazonaws/util/json/AwsJsonToken;

    .line 114
    .line 115
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->peek()Lcom/amazonaws/util/json/AwsJsonToken;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-nez v5, :cond_1

    .line 124
    .line 125
    invoke-interface {v3, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->f(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_3
    sget-object v6, Lcom/amazonaws/util/json/AwsJsonToken;->END_OBJECT:Lcom/amazonaws/util/json/AwsJsonToken;

    .line 130
    .line 131
    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    if-eqz v6, :cond_4

    .line 136
    .line 137
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->d()V

    .line 138
    .line 139
    .line 140
    invoke-interface {v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_4
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    if-eqz v4, :cond_5

    .line 149
    .line 150
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->a()V

    .line 151
    .line 152
    .line 153
    invoke-interface {v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->a()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_5
    sget-object v4, Lcom/amazonaws/util/json/AwsJsonToken;->VALUE_STRING:Lcom/amazonaws/util/json/AwsJsonToken;

    .line 158
    .line 159
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    if-nez v4, :cond_7

    .line 164
    .line 165
    sget-object v4, Lcom/amazonaws/util/json/AwsJsonToken;->VALUE_NUMBER:Lcom/amazonaws/util/json/AwsJsonToken;

    .line 166
    .line 167
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    if-nez v4, :cond_7

    .line 172
    .line 173
    sget-object v4, Lcom/amazonaws/util/json/AwsJsonToken;->VALUE_NULL:Lcom/amazonaws/util/json/AwsJsonToken;

    .line 174
    .line 175
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    if-nez v4, :cond_7

    .line 180
    .line 181
    sget-object v4, Lcom/amazonaws/util/json/AwsJsonToken;->VALUE_BOOLEAN:Lcom/amazonaws/util/json/AwsJsonToken;

    .line 182
    .line 183
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v4

    .line 187
    if-eqz v4, :cond_6

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_6
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->f()V

    .line 191
    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_7
    :goto_2
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->h()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    invoke-interface {v3, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->e(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 199
    .line 200
    .line 201
    goto/16 :goto_1

    .line 202
    .line 203
    :goto_3
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 204
    .line 205
    .line 206
    :cond_8
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->a()V

    .line 207
    .line 208
    .line 209
    invoke-interface {v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->a()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 210
    .line 211
    .line 212
    invoke-interface {v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->flush()V

    .line 213
    .line 214
    .line 215
    invoke-interface {v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->close()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    goto/16 :goto_0

    .line 226
    .line 227
    :cond_9
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->f()V

    .line 228
    .line 229
    .line 230
    goto/16 :goto_0

    .line 231
    .line 232
    :cond_a
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->h()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    goto/16 :goto_0

    .line 240
    .line 241
    :cond_b
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->d()V

    .line 242
    .line 243
    .line 244
    invoke-interface {p0}, Lcom/amazonaws/util/json/AwsJsonReader;->close()V

    .line 245
    .line 246
    .line 247
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 248
    .line 249
    .line 250
    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 251
    return-object p0

    .line 252
    :goto_4
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    .line 253
    .line 254
    const-string v1, "Unable to parse JSON String."

    .line 255
    .line 256
    invoke-direct {v0, v1, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    .line 258
    .line 259
    throw v0
.end method

.method public static f(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/amazonaws/util/json/JsonUtils;->b(Ljava/io/Writer;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 20
    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ljava/util/Map$Entry;

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Ljava/lang/String;

    .line 47
    .line 48
    invoke-interface {v1, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->f(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Ljava/lang/String;

    .line 57
    .line 58
    invoke-interface {v3, v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->e(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception p0

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 65
    .line 66
    .line 67
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->close()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return-object p0

    .line 75
    :goto_1
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    .line 76
    .line 77
    const-string v1, "Unable to serialize to JSON String."

    .line 78
    .line 79
    invoke-direct {v0, v1, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    throw v0

    .line 83
    :cond_2
    :goto_2
    const-string/jumbo p0, "{}"

    .line 84
    .line 85
    .line 86
    return-object p0
.end method
