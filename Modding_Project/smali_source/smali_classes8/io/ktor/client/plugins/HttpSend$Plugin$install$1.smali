.class final Lio/ktor/client/plugins/HttpSend$Plugin$install$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HttpSend.kt"

# interfaces
.implements Lat/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/HttpSend$Plugin;->c(Lio/ktor/client/plugins/HttpSend;Lio/ktor/client/HttpClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lat/n<",
        "Lds/c<",
        "Ljava/lang/Object;",
        "Lio/ktor/client/request/HttpRequestBuilder;",
        ">;",
        "Ljava/lang/Object;",
        "Lrs/c<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "io.ktor.client.plugins.HttpSend$Plugin$install$1"
    f = "HttpSend.kt"
    l = {
        0x68,
        0x69
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHttpSend.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpSend.kt\nio/ktor/client/plugins/HttpSend$Plugin$install$1\n+ 2 RequestBody.kt\nio/ktor/client/request/RequestBodyKt\n+ 3 TypeInfoJvm.kt\nio/ktor/util/reflect/TypeInfoJvmKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,158:1\n16#2,4:159\n21#2,10:166\n17#3,3:163\n1855#4,2:176\n*S KotlinDebug\n*F\n+ 1 HttpSend.kt\nio/ktor/client/plugins/HttpSend$Plugin$install$1\n*L\n96#1:159,4\n96#1:166,10\n96#1:163,3\n100#1:176,2\n*E\n"
    }
.end annotation


# instance fields
.field h:I

.field private synthetic i:Ljava/lang/Object;

.field synthetic j:Ljava/lang/Object;

.field final synthetic k:Lio/ktor/client/plugins/HttpSend;

.field final synthetic l:Lio/ktor/client/HttpClient;


# direct methods
.method constructor <init>(Lio/ktor/client/plugins/HttpSend;Lio/ktor/client/HttpClient;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/plugins/HttpSend;",
            "Lio/ktor/client/HttpClient;",
            "Lrs/c<",
            "-",
            "Lio/ktor/client/plugins/HttpSend$Plugin$install$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/ktor/client/plugins/HttpSend$Plugin$install$1;->k:Lio/ktor/client/plugins/HttpSend;

    .line 2
    .line 3
    iput-object p2, p0, Lio/ktor/client/plugins/HttpSend$Plugin$install$1;->l:Lio/ktor/client/HttpClient;

    .line 4
    .line 5
    const/4 p1, 0x3

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final i(Lds/c;Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lds/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lds/c<",
            "Ljava/lang/Object;",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            ">;",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lio/ktor/client/plugins/HttpSend$Plugin$install$1;

    .line 2
    .line 3
    iget-object v1, p0, Lio/ktor/client/plugins/HttpSend$Plugin$install$1;->k:Lio/ktor/client/plugins/HttpSend;

    .line 4
    .line 5
    iget-object v2, p0, Lio/ktor/client/plugins/HttpSend$Plugin$install$1;->l:Lio/ktor/client/HttpClient;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p3}, Lio/ktor/client/plugins/HttpSend$Plugin$install$1;-><init>(Lio/ktor/client/plugins/HttpSend;Lio/ktor/client/HttpClient;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lio/ktor/client/plugins/HttpSend$Plugin$install$1;->i:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p2, v0, Lio/ktor/client/plugins/HttpSend$Plugin$install$1;->j:Ljava/lang/Object;

    .line 13
    .line 14
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lio/ktor/client/plugins/HttpSend$Plugin$install$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lds/c;

    .line 2
    .line 3
    check-cast p3, Lrs/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/client/plugins/HttpSend$Plugin$install$1;->i(Lds/c;Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lio/ktor/client/plugins/HttpSend$Plugin$install$1;->h:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eq v1, v3, :cond_1

    .line 13
    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto/16 :goto_3

    .line 20
    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    iget-object v1, p0, Lio/ktor/client/plugins/HttpSend$Plugin$install$1;->i:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Lds/c;

    .line 32
    .line 33
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_2

    .line 37
    .line 38
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lio/ktor/client/plugins/HttpSend$Plugin$install$1;->i:Ljava/lang/Object;

    .line 42
    .line 43
    move-object v1, p1

    .line 44
    check-cast v1, Lds/c;

    .line 45
    .line 46
    iget-object p1, p0, Lio/ktor/client/plugins/HttpSend$Plugin$install$1;->j:Ljava/lang/Object;

    .line 47
    .line 48
    instance-of v5, p1, Lxr/b;

    .line 49
    .line 50
    if-eqz v5, :cond_8

    .line 51
    .line 52
    invoke-virtual {v1}, Lds/c;->b()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    check-cast v5, Lio/ktor/client/request/HttpRequestBuilder;

    .line 57
    .line 58
    const-class v6, Lxr/b;

    .line 59
    .line 60
    if-nez p1, :cond_3

    .line 61
    .line 62
    sget-object p1, Lxr/a;->a:Lxr/a;

    .line 63
    .line 64
    invoke-virtual {v5, p1}, Lio/ktor/client/request/HttpRequestBuilder;->j(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p1}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    invoke-static {v7, v6, p1}, Les/b;->b(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Les/a;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {v5, p1}, Lio/ktor/client/request/HttpRequestBuilder;->k(Les/a;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    instance-of v7, p1, Lxr/b;

    .line 88
    .line 89
    if-eqz v7, :cond_4

    .line 90
    .line 91
    invoke-virtual {v5, p1}, Lio/ktor/client/request/HttpRequestBuilder;->j(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5, v4}, Lio/ktor/client/request/HttpRequestBuilder;->k(Les/a;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_4
    invoke-virtual {v5, p1}, Lio/ktor/client/request/HttpRequestBuilder;->j(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-static {p1}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-static {v7, v6, p1}, Les/b;->b(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Les/a;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {v5, p1}, Lio/ktor/client/request/HttpRequestBuilder;->k(Les/a;)V

    .line 118
    .line 119
    .line 120
    :goto_0
    new-instance p1, Lio/ktor/client/plugins/HttpSend$DefaultSender;

    .line 121
    .line 122
    iget-object v5, p0, Lio/ktor/client/plugins/HttpSend$Plugin$install$1;->k:Lio/ktor/client/plugins/HttpSend;

    .line 123
    .line 124
    invoke-static {v5}, Lio/ktor/client/plugins/HttpSend;->c(Lio/ktor/client/plugins/HttpSend;)I

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    iget-object v6, p0, Lio/ktor/client/plugins/HttpSend$Plugin$install$1;->l:Lio/ktor/client/HttpClient;

    .line 129
    .line 130
    invoke-direct {p1, v5, v6}, Lio/ktor/client/plugins/HttpSend$DefaultSender;-><init>(ILio/ktor/client/HttpClient;)V

    .line 131
    .line 132
    .line 133
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 134
    .line 135
    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 136
    .line 137
    .line 138
    iput-object p1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 139
    .line 140
    iget-object p1, p0, Lio/ktor/client/plugins/HttpSend$Plugin$install$1;->k:Lio/ktor/client/plugins/HttpSend;

    .line 141
    .line 142
    invoke-static {p1}, Lio/ktor/client/plugins/HttpSend;->a(Lio/ktor/client/plugins/HttpSend;)Ljava/util/List;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->p(Ljava/util/List;)I

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    const/4 v6, 0x0

    .line 151
    invoke-static {p1, v6}, Lkotlin/ranges/e;->r(II)Lkotlin/ranges/d;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    iget-object v6, p0, Lio/ktor/client/plugins/HttpSend$Plugin$install$1;->k:Lio/ktor/client/plugins/HttpSend;

    .line 156
    .line 157
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    .line 163
    .line 164
    move-result v7

    .line 165
    if-eqz v7, :cond_5

    .line 166
    .line 167
    move-object v7, p1

    .line 168
    check-cast v7, Lkotlin/collections/m0;

    .line 169
    .line 170
    invoke-virtual {v7}, Lkotlin/collections/m0;->nextInt()I

    .line 171
    .line 172
    .line 173
    move-result v7

    .line 174
    invoke-static {v6}, Lio/ktor/client/plugins/HttpSend;->a(Lio/ktor/client/plugins/HttpSend;)Ljava/util/List;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    check-cast v7, Lat/n;

    .line 183
    .line 184
    new-instance v8, Lio/ktor/client/plugins/HttpSend$b;

    .line 185
    .line 186
    iget-object v9, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v9, Lqr/h;

    .line 189
    .line 190
    invoke-direct {v8, v7, v9}, Lio/ktor/client/plugins/HttpSend$b;-><init>(Lat/n;Lqr/h;)V

    .line 191
    .line 192
    .line 193
    iput-object v8, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_5
    iget-object p1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 197
    .line 198
    check-cast p1, Lqr/h;

    .line 199
    .line 200
    invoke-virtual {v1}, Lds/c;->b()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    check-cast v5, Lio/ktor/client/request/HttpRequestBuilder;

    .line 205
    .line 206
    iput-object v1, p0, Lio/ktor/client/plugins/HttpSend$Plugin$install$1;->i:Ljava/lang/Object;

    .line 207
    .line 208
    iput v3, p0, Lio/ktor/client/plugins/HttpSend$Plugin$install$1;->h:I

    .line 209
    .line 210
    invoke-interface {p1, v5, p0}, Lqr/h;->a(Lio/ktor/client/request/HttpRequestBuilder;Lrs/c;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    if-ne p1, v0, :cond_6

    .line 215
    .line 216
    return-object v0

    .line 217
    :cond_6
    :goto_2
    check-cast p1, Lio/ktor/client/call/HttpClientCall;

    .line 218
    .line 219
    iput-object v4, p0, Lio/ktor/client/plugins/HttpSend$Plugin$install$1;->i:Ljava/lang/Object;

    .line 220
    .line 221
    iput v2, p0, Lio/ktor/client/plugins/HttpSend$Plugin$install$1;->h:I

    .line 222
    .line 223
    invoke-virtual {v1, p1, p0}, Lds/c;->d(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    if-ne p1, v0, :cond_7

    .line 228
    .line 229
    return-object v0

    .line 230
    :cond_7
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 231
    .line 232
    return-object p1

    .line 233
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .line 237
    .line 238
    const-string v2, "\n|Fail to prepare request body for sending. \n|The body type is: "

    .line 239
    .line 240
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    const-string p1, ", with Content-Type: "

    .line 255
    .line 256
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1}, Lds/c;->b()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    check-cast p1, Lwr/l;

    .line 264
    .line 265
    invoke-static {p1}, Lio/ktor/http/d;->d(Lwr/l;)Lio/ktor/http/a;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string p1, ".\n|\n|If you expect serialized body, please check that you have installed the corresponding plugin(like `ContentNegotiation`) and set `Content-Type` header."

    .line 273
    .line 274
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    invoke-static {p1, v4, v3, v4}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 286
    .line 287
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    throw v0
.end method
