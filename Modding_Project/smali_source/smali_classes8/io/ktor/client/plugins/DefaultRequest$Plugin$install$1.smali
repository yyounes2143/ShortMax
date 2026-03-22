.class final Lio/ktor/client/plugins/DefaultRequest$Plugin$install$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DefaultRequest.kt"

# interfaces
.implements Lat/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/DefaultRequest$Plugin;->e(Lio/ktor/client/plugins/DefaultRequest;Lio/ktor/client/HttpClient;)V
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
    c = "io.ktor.client.plugins.DefaultRequest$Plugin$install$1"
    f = "DefaultRequest.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDefaultRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultRequest.kt\nio/ktor/client/plugins/DefaultRequest$Plugin$install$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,212:1\n1855#2,2:213\n*S KotlinDebug\n*F\n+ 1 DefaultRequest.kt\nio/ktor/client/plugins/DefaultRequest$Plugin$install$1\n*L\n77#1:213,2\n*E\n"
    }
.end annotation


# instance fields
.field h:I

.field private synthetic i:Ljava/lang/Object;

.field final synthetic j:Lio/ktor/client/plugins/DefaultRequest;


# direct methods
.method constructor <init>(Lio/ktor/client/plugins/DefaultRequest;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/plugins/DefaultRequest;",
            "Lrs/c<",
            "-",
            "Lio/ktor/client/plugins/DefaultRequest$Plugin$install$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/ktor/client/plugins/DefaultRequest$Plugin$install$1;->j:Lio/ktor/client/plugins/DefaultRequest;

    .line 2
    .line 3
    const/4 p1, 0x3

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final i(Lds/c;Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;
    .locals 1
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
    new-instance p2, Lio/ktor/client/plugins/DefaultRequest$Plugin$install$1;

    .line 2
    .line 3
    iget-object v0, p0, Lio/ktor/client/plugins/DefaultRequest$Plugin$install$1;->j:Lio/ktor/client/plugins/DefaultRequest;

    .line 4
    .line 5
    invoke-direct {p2, v0, p3}, Lio/ktor/client/plugins/DefaultRequest$Plugin$install$1;-><init>(Lio/ktor/client/plugins/DefaultRequest;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p2, Lio/ktor/client/plugins/DefaultRequest$Plugin$install$1;->i:Ljava/lang/Object;

    .line 9
    .line 10
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    invoke-virtual {p2, p1}, Lio/ktor/client/plugins/DefaultRequest$Plugin$install$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
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
    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/client/plugins/DefaultRequest$Plugin$install$1;->i(Lds/c;Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
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
    iget v0, p0, Lio/ktor/client/plugins/DefaultRequest$Plugin$install$1;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lio/ktor/client/plugins/DefaultRequest$Plugin$install$1;->i:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lds/c;

    .line 14
    .line 15
    invoke-virtual {p1}, Lds/c;->b()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lio/ktor/client/request/HttpRequestBuilder;

    .line 20
    .line 21
    invoke-virtual {v0}, Lio/ktor/client/request/HttpRequestBuilder;->i()Lio/ktor/http/h;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lio/ktor/http/h;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Lio/ktor/client/plugins/DefaultRequest$a;

    .line 30
    .line 31
    invoke-direct {v1}, Lio/ktor/client/plugins/DefaultRequest$a;-><init>()V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lio/ktor/client/plugins/DefaultRequest$Plugin$install$1;->j:Lio/ktor/client/plugins/DefaultRequest;

    .line 35
    .line 36
    invoke-virtual {v1}, Lio/ktor/client/plugins/DefaultRequest$a;->a()Lwr/g;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {p1}, Lds/c;->b()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Lio/ktor/client/request/HttpRequestBuilder;

    .line 45
    .line 46
    invoke-virtual {v4}, Lio/ktor/client/request/HttpRequestBuilder;->a()Lwr/g;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-static {v3, v4}, Lyr/s;->c(Lyr/q;Lyr/q;)Lyr/q;

    .line 51
    .line 52
    .line 53
    invoke-static {v2}, Lio/ktor/client/plugins/DefaultRequest;->a(Lio/ktor/client/plugins/DefaultRequest;)Lkotlin/jvm/functions/Function1;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Lio/ktor/client/plugins/DefaultRequest$a;->c()Lio/ktor/http/h;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v2}, Lio/ktor/http/h;->b()Lio/ktor/http/Url;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    sget-object v3, Lio/ktor/client/plugins/DefaultRequest;->b:Lio/ktor/client/plugins/DefaultRequest$Plugin;

    .line 69
    .line 70
    invoke-virtual {p1}, Lds/c;->b()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    check-cast v4, Lio/ktor/client/request/HttpRequestBuilder;

    .line 75
    .line 76
    invoke-virtual {v4}, Lio/ktor/client/request/HttpRequestBuilder;->i()Lio/ktor/http/h;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-static {v3, v2, v4}, Lio/ktor/client/plugins/DefaultRequest$Plugin;->c(Lio/ktor/client/plugins/DefaultRequest$Plugin;Lio/ktor/http/Url;Lio/ktor/http/h;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Lio/ktor/client/plugins/DefaultRequest$a;->b()Lyr/b;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-interface {v2}, Lyr/b;->b()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Ljava/lang/Iterable;

    .line 92
    .line 93
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_1

    .line 102
    .line 103
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    check-cast v3, Lyr/a;

    .line 108
    .line 109
    invoke-virtual {p1}, Lds/c;->b()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    check-cast v4, Lio/ktor/client/request/HttpRequestBuilder;

    .line 114
    .line 115
    invoke-virtual {v4}, Lio/ktor/client/request/HttpRequestBuilder;->c()Lyr/b;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-interface {v4, v3}, Lyr/b;->e(Lyr/a;)Z

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    if-nez v4, :cond_0

    .line 124
    .line 125
    invoke-virtual {p1}, Lds/c;->b()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    check-cast v4, Lio/ktor/client/request/HttpRequestBuilder;

    .line 130
    .line 131
    invoke-virtual {v4}, Lio/ktor/client/request/HttpRequestBuilder;->c()Lyr/b;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    const-string v5, "null cannot be cast to non-null type io.ktor.util.AttributeKey<kotlin.Any>"

    .line 136
    .line 137
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Lio/ktor/client/plugins/DefaultRequest$a;->b()Lyr/b;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    invoke-interface {v5, v3}, Lyr/b;->d(Lyr/a;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-interface {v4, v3, v5}, Lyr/b;->a(Lyr/a;Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {p1}, Lds/c;->b()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    check-cast v2, Lio/ktor/client/request/HttpRequestBuilder;

    .line 157
    .line 158
    invoke-virtual {v2}, Lio/ktor/client/request/HttpRequestBuilder;->a()Lwr/g;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v2}, Lio/ktor/util/StringValuesBuilderImpl;->clear()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Lds/c;->b()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    check-cast v2, Lio/ktor/client/request/HttpRequestBuilder;

    .line 170
    .line 171
    invoke-virtual {v2}, Lio/ktor/client/request/HttpRequestBuilder;->a()Lwr/g;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {v1}, Lio/ktor/client/plugins/DefaultRequest$a;->a()Lwr/g;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v1}, Lwr/g;->n()Lwr/f;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v2, v1}, Lio/ktor/util/StringValuesBuilderImpl;->e(Lyr/p;)V

    .line 184
    .line 185
    .line 186
    invoke-static {}, Lio/ktor/client/plugins/DefaultRequestKt;->a()Ldu/a;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .line 194
    .line 195
    const-string v3, "Applied DefaultRequest to "

    .line 196
    .line 197
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v0, ". New url: "

    .line 204
    .line 205
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1}, Lds/c;->b()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    check-cast p1, Lio/ktor/client/request/HttpRequestBuilder;

    .line 213
    .line 214
    invoke-virtual {p1}, Lio/ktor/client/request/HttpRequestBuilder;->i()Lio/ktor/http/h;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-interface {v1, p1}, Ldu/a;->b(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 229
    .line 230
    return-object p1

    .line 231
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 232
    .line 233
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 234
    .line 235
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    throw p1
.end method
