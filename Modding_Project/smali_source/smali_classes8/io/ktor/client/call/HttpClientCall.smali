.class public Lio/ktor/client/call/HttpClientCall;
.super Ljava/lang/Object;
.source "HttpClientCall.kt"

# interfaces
.implements Lgt/g0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/call/HttpClientCall$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHttpClientCall.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpClientCall.kt\nio/ktor/client/call/HttpClientCall\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,208:1\n1#2:209\n*E\n"
    }
.end annotation


# static fields
.field public static final e:Lio/ktor/client/call/HttpClientCall$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final synthetic f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final g:Lyr/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyr/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lio/ktor/client/HttpClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field protected b:Lsr/b;

.field protected c:Ltr/c;

.field private final d:Z

.field private volatile synthetic received:I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/ktor/client/call/HttpClientCall$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lio/ktor/client/call/HttpClientCall$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lio/ktor/client/call/HttpClientCall;->e:Lio/ktor/client/call/HttpClientCall$a;

    .line 8
    .line 9
    new-instance v0, Lyr/a;

    .line 10
    .line 11
    const-string v1, "CustomResponse"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lyr/a;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lio/ktor/client/call/HttpClientCall;->g:Lyr/a;

    .line 17
    .line 18
    const-class v0, Lio/ktor/client/call/HttpClientCall;

    .line 19
    .line 20
    const-string v1, "received"

    .line 21
    .line 22
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lio/ktor/client/call/HttpClientCall;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Lio/ktor/client/HttpClient;)V
    .locals 1
    .param p1    # Lio/ktor/client/HttpClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/ktor/client/call/HttpClientCall;->a:Lio/ktor/client/HttpClient;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lio/ktor/client/call/HttpClientCall;->received:I

    return-void
.end method

.method public constructor <init>(Lio/ktor/client/HttpClient;Lsr/c;Lsr/e;)V
    .locals 1
    .param p1    # Lio/ktor/client/HttpClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lsr/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lsr/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1}, Lio/ktor/client/call/HttpClientCall;-><init>(Lio/ktor/client/HttpClient;)V

    .line 5
    new-instance p1, Lsr/a;

    invoke-direct {p1, p0, p2}, Lsr/a;-><init>(Lio/ktor/client/call/HttpClientCall;Lsr/c;)V

    invoke-virtual {p0, p1}, Lio/ktor/client/call/HttpClientCall;->h(Lsr/b;)V

    .line 6
    new-instance p1, Ltr/a;

    invoke-direct {p1, p0, p3}, Ltr/a;-><init>(Lio/ktor/client/call/HttpClientCall;Lsr/e;)V

    invoke-virtual {p0, p1}, Lio/ktor/client/call/HttpClientCall;->i(Ltr/c;)V

    .line 7
    invoke-virtual {p3}, Lsr/e;->a()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lio/ktor/utils/io/ByteReadChannel;

    if-nez p1, :cond_0

    .line 8
    invoke-virtual {p0}, Lio/ktor/client/call/HttpClientCall;->m()Lyr/b;

    move-result-object p1

    sget-object p2, Lio/ktor/client/call/HttpClientCall;->g:Lyr/a;

    invoke-virtual {p3}, Lsr/e;->a()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lyr/b;->a(Lyr/a;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic g(Lio/ktor/client/call/HttpClientCall;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/call/HttpClientCall;",
            "Lrs/c<",
            "-",
            "Lio/ktor/utils/io/ByteReadChannel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/ktor/client/call/HttpClientCall;->e()Ltr/c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ltr/c;->b()Lio/ktor/utils/io/ByteReadChannel;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public final a(Les/a;Lrs/c;)Ljava/lang/Object;
    .locals 5
    .param p1    # Les/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Les/a;",
            "Lrs/c<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lio/ktor/client/call/HttpClientCall$bodyNullable$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lio/ktor/client/call/HttpClientCall$bodyNullable$1;

    .line 7
    .line 8
    iget v1, v0, Lio/ktor/client/call/HttpClientCall$bodyNullable$1;->l:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lio/ktor/client/call/HttpClientCall$bodyNullable$1;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lio/ktor/client/call/HttpClientCall$bodyNullable$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lio/ktor/client/call/HttpClientCall$bodyNullable$1;-><init>(Lio/ktor/client/call/HttpClientCall;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lio/ktor/client/call/HttpClientCall$bodyNullable$1;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lio/ktor/client/call/HttpClientCall$bodyNullable$1;->l:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    iget-object p1, v0, Lio/ktor/client/call/HttpClientCall$bodyNullable$1;->i:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, Les/a;

    .line 44
    .line 45
    iget-object v0, v0, Lio/ktor/client/call/HttpClientCall$bodyNullable$1;->h:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Lio/ktor/client/call/HttpClientCall;

    .line 48
    .line 49
    :try_start_0
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    goto/16 :goto_3

    .line 53
    .line 54
    :catchall_0
    move-exception p1

    .line 55
    goto/16 :goto_6

    .line 56
    .line 57
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 60
    .line 61
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :cond_2
    iget-object p1, v0, Lio/ktor/client/call/HttpClientCall$bodyNullable$1;->i:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast p1, Les/a;

    .line 68
    .line 69
    iget-object v2, v0, Lio/ktor/client/call/HttpClientCall$bodyNullable$1;->h:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v2, Lio/ktor/client/call/HttpClientCall;

    .line 72
    .line 73
    :try_start_1
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :catchall_1
    move-exception p1

    .line 78
    move-object v0, v2

    .line 79
    goto/16 :goto_6

    .line 80
    .line 81
    :cond_3
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :try_start_2
    invoke-virtual {p0}, Lio/ktor/client/call/HttpClientCall;->e()Ltr/c;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {p1}, Les/a;->a()Lkotlin/reflect/KClass;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-static {p2, v2}, Les/b;->a(Ljava/lang/Object;Lkotlin/reflect/KClass;)Z

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    if-eqz p2, :cond_4

    .line 97
    .line 98
    invoke-virtual {p0}, Lio/ktor/client/call/HttpClientCall;->e()Ltr/c;

    .line 99
    .line 100
    .line 101
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 102
    invoke-virtual {p0}, Lio/ktor/client/call/HttpClientCall;->e()Ltr/c;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-static {p2}, Lio/ktor/client/statement/HttpResponseKt;->d(Ltr/c;)V

    .line 107
    .line 108
    .line 109
    return-object p1

    .line 110
    :catchall_2
    move-exception p1

    .line 111
    move-object v0, p0

    .line 112
    goto/16 :goto_6

    .line 113
    .line 114
    :cond_4
    :try_start_3
    invoke-virtual {p0}, Lio/ktor/client/call/HttpClientCall;->b()Z

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    if-nez p2, :cond_6

    .line 119
    .line 120
    sget-object p2, Lio/ktor/client/call/HttpClientCall;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 121
    .line 122
    const/4 v2, 0x0

    .line 123
    invoke-virtual {p2, p0, v2, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    if-eqz p2, :cond_5

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_5
    new-instance p1, Lio/ktor/client/call/DoubleReceiveException;

    .line 131
    .line 132
    invoke-direct {p1, p0}, Lio/ktor/client/call/DoubleReceiveException;-><init>(Lio/ktor/client/call/HttpClientCall;)V

    .line 133
    .line 134
    .line 135
    throw p1

    .line 136
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lio/ktor/client/call/HttpClientCall;->m()Lyr/b;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    sget-object v2, Lio/ktor/client/call/HttpClientCall;->g:Lyr/a;

    .line 141
    .line 142
    invoke-interface {p2, v2}, Lyr/b;->f(Lyr/a;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    if-nez p2, :cond_7

    .line 147
    .line 148
    iput-object p0, v0, Lio/ktor/client/call/HttpClientCall$bodyNullable$1;->h:Ljava/lang/Object;

    .line 149
    .line 150
    iput-object p1, v0, Lio/ktor/client/call/HttpClientCall$bodyNullable$1;->i:Ljava/lang/Object;

    .line 151
    .line 152
    iput v4, v0, Lio/ktor/client/call/HttpClientCall$bodyNullable$1;->l:I

    .line 153
    .line 154
    invoke-virtual {p0, v0}, Lio/ktor/client/call/HttpClientCall;->f(Lrs/c;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 158
    if-ne p2, v1, :cond_7

    .line 159
    .line 160
    return-object v1

    .line 161
    :cond_7
    move-object v2, p0

    .line 162
    :goto_2
    :try_start_4
    new-instance v4, Ltr/d;

    .line 163
    .line 164
    invoke-direct {v4, p1, p2}, Ltr/d;-><init>(Les/a;Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    iget-object p2, v2, Lio/ktor/client/call/HttpClientCall;->a:Lio/ktor/client/HttpClient;

    .line 168
    .line 169
    invoke-virtual {p2}, Lio/ktor/client/HttpClient;->q()Ltr/e;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    iput-object v2, v0, Lio/ktor/client/call/HttpClientCall$bodyNullable$1;->h:Ljava/lang/Object;

    .line 174
    .line 175
    iput-object p1, v0, Lio/ktor/client/call/HttpClientCall$bodyNullable$1;->i:Ljava/lang/Object;

    .line 176
    .line 177
    iput v3, v0, Lio/ktor/client/call/HttpClientCall$bodyNullable$1;->l:I

    .line 178
    .line 179
    invoke-virtual {p2, v2, v4, v0}, Lds/b;->d(Ljava/lang/Object;Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 183
    if-ne p2, v1, :cond_8

    .line 184
    .line 185
    return-object v1

    .line 186
    :cond_8
    move-object v0, v2

    .line 187
    :goto_3
    :try_start_5
    check-cast p2, Ltr/d;

    .line 188
    .line 189
    invoke-virtual {p2}, Ltr/d;->c()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    sget-object v1, Lxr/a;->a:Lxr/a;

    .line 194
    .line 195
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-nez v1, :cond_9

    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_9
    const/4 p2, 0x0

    .line 203
    :goto_4
    if-eqz p2, :cond_b

    .line 204
    .line 205
    invoke-virtual {p1}, Les/a;->a()Lkotlin/reflect/KClass;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-static {p2, v1}, Les/b;->a(Ljava/lang/Object;Lkotlin/reflect/KClass;)Z

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-eqz v1, :cond_a

    .line 214
    .line 215
    goto :goto_5

    .line 216
    :cond_a
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    invoke-virtual {p1}, Les/a;->a()Lkotlin/reflect/KClass;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    new-instance v1, Lio/ktor/client/call/NoTransformationFoundException;

    .line 229
    .line 230
    invoke-virtual {v0}, Lio/ktor/client/call/HttpClientCall;->e()Ltr/c;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    invoke-direct {v1, v2, p2, p1}, Lio/ktor/client/call/NoTransformationFoundException;-><init>(Ltr/c;Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;)V

    .line 235
    .line 236
    .line 237
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 238
    :cond_b
    :goto_5
    invoke-virtual {v0}, Lio/ktor/client/call/HttpClientCall;->e()Ltr/c;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    invoke-static {p1}, Lio/ktor/client/statement/HttpResponseKt;->d(Ltr/c;)V

    .line 243
    .line 244
    .line 245
    return-object p2

    .line 246
    :goto_6
    :try_start_6
    invoke-virtual {v0}, Lio/ktor/client/call/HttpClientCall;->e()Ltr/c;

    .line 247
    .line 248
    .line 249
    move-result-object p2

    .line 250
    const-string v1, "Receive failed"

    .line 251
    .line 252
    invoke-static {p2, v1, p1}, Lkotlinx/coroutines/i;->c(Lgt/g0;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 253
    .line 254
    .line 255
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 256
    :catchall_3
    move-exception p1

    .line 257
    invoke-virtual {v0}, Lio/ktor/client/call/HttpClientCall;->e()Ltr/c;

    .line 258
    .line 259
    .line 260
    move-result-object p2

    .line 261
    invoke-static {p2}, Lio/ktor/client/statement/HttpResponseKt;->d(Ltr/c;)V

    .line 262
    .line 263
    .line 264
    throw p1
.end method

.method protected b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/ktor/client/call/HttpClientCall;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public final c()Lio/ktor/client/HttpClient;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/call/HttpClientCall;->a:Lio/ktor/client/HttpClient;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Lsr/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/call/HttpClientCall;->b:Lsr/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "request"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final e()Ltr/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/call/HttpClientCall;->c:Ltr/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "response"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method protected f(Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lio/ktor/utils/io/ByteReadChannel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lio/ktor/client/call/HttpClientCall;->g(Lio/ktor/client/call/HttpClientCall;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/ktor/client/call/HttpClientCall;->e()Ltr/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lgt/g0;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method protected final h(Lsr/b;)V
    .locals 1
    .param p1    # Lsr/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lio/ktor/client/call/HttpClientCall;->b:Lsr/b;

    .line 7
    .line 8
    return-void
.end method

.method protected final i(Ltr/c;)V
    .locals 1
    .param p1    # Ltr/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lio/ktor/client/call/HttpClientCall;->c:Ltr/c;

    .line 7
    .line 8
    return-void
.end method

.method public final j(Ltr/c;)V
    .locals 1
    .param p1    # Ltr/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "response"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lio/ktor/client/call/HttpClientCall;->i(Ltr/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final m()Lyr/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/ktor/client/call/HttpClientCall;->d()Lsr/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lsr/b;->m()Lyr/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "HttpClientCall["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lio/ktor/client/call/HttpClientCall;->d()Lsr/b;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Lsr/b;->getUrl()Lio/ktor/http/Url;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ", "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lio/ktor/client/call/HttpClientCall;->e()Ltr/c;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ltr/c;->e()Lwr/o;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const/16 v1, 0x5d

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    return-object v0
.end method
