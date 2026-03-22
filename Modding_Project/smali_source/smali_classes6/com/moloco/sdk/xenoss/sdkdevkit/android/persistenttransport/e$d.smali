.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$d;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e;->b(Lio/ktor/client/HttpClient;Ljava/lang/String;[BLio/ktor/http/a;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgt/g0;",
        "Lrs/c<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.HttpRequestClientKt$sendPostRequest$2"
    f = "HttpRequestClient.kt"
    l = {
        0x59
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHttpRequestClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpRequestClient.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/HttpRequestClientKt$sendPostRequest$2\n+ 2 builders.kt\nio/ktor/client/request/BuildersKt\n+ 3 RequestBody.kt\nio/ktor/client/request/RequestBodyKt\n+ 4 TypeInfoJvm.kt\nio/ktor/util/reflect/TypeInfoJvmKt\n*L\n1#1,67:1\n343#2:68\n233#2:69\n109#2,2:87\n22#2:89\n16#3,4:70\n21#3,10:77\n17#4,3:74\n*S KotlinDebug\n*F\n+ 1 HttpRequestClient.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/HttpRequestClientKt$sendPostRequest$2\n*L\n49#1:68\n49#1:69\n49#1:87,2\n49#1:89\n55#1:70,4\n55#1:77,10\n55#1:74,3\n*E\n"
    }
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lio/ktor/client/HttpClient;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:[B

.field public final synthetic m:Lio/ktor/http/a;


# direct methods
.method public constructor <init>(Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;[BLio/ktor/http/a;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/HttpClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Lio/ktor/http/a;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$d;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$d;->i:Lio/ktor/client/HttpClient;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$d;->j:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$d;->k:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$d;->l:[B

    .line 8
    .line 9
    iput-object p5, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$d;->m:Lio/ktor/http/a;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final i(Ljava/lang/String;Lwr/g;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lwr/i;->a:Lwr/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lwr/i;->f()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0, p0}, Lio/ktor/util/StringValuesBuilderImpl;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method


# virtual methods
.method public final a(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$d;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$d;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$d;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$d;->i:Lio/ktor/client/HttpClient;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$d;->j:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$d;->k:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$d;->l:[B

    .line 10
    .line 11
    iget-object v5, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$d;->m:Lio/ktor/http/a;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$d;-><init>(Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;[BLio/ktor/http/a;Lrs/c;)V

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lgt/g0;

    .line 2
    .line 3
    check-cast p2, Lrs/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$d;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$d;->h:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$d;->i:Lio/ktor/client/HttpClient;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$d;->j:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$d;->k:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$d;->l:[B

    .line 35
    .line 36
    iget-object v5, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$d;->m:Lio/ktor/http/a;

    .line 37
    .line 38
    new-instance v6, Lio/ktor/client/request/HttpRequestBuilder;

    .line 39
    .line 40
    invoke-direct {v6}, Lio/ktor/client/request/HttpRequestBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-static {v6, v1}, Lio/ktor/client/request/a;->b(Lio/ktor/client/request/HttpRequestBuilder;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    invoke-static {v3}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    xor-int/2addr v1, v2

    .line 53
    if-ne v1, v2, :cond_2

    .line 54
    .line 55
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/h;

    .line 56
    .line 57
    invoke-direct {v1, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/h;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v6, v1}, Lio/ktor/client/request/a;->a(Lwr/l;Lkotlin/jvm/functions/Function1;)Lwr/g;

    .line 61
    .line 62
    .line 63
    :cond_2
    const-class v1, [B

    .line 64
    .line 65
    if-nez v4, :cond_3

    .line 66
    .line 67
    sget-object v3, Lxr/a;->a:Lxr/a;

    .line 68
    .line 69
    invoke-virtual {v6, v3}, Lio/ktor/client/request/HttpRequestBuilder;->j(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-static {v3}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-static {v4, v1, v3}, Les/b;->b(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Les/a;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v6, v1}, Lio/ktor/client/request/HttpRequestBuilder;->k(Les/a;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    instance-of v3, v4, Lxr/b;

    .line 93
    .line 94
    if-eqz v3, :cond_4

    .line 95
    .line 96
    invoke-virtual {v6, v4}, Lio/ktor/client/request/HttpRequestBuilder;->j(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    const/4 v1, 0x0

    .line 100
    invoke-virtual {v6, v1}, Lio/ktor/client/request/HttpRequestBuilder;->k(Les/a;)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_4
    invoke-virtual {v6, v4}, Lio/ktor/client/request/HttpRequestBuilder;->j(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-static {v3}, Lkotlin/reflect/TypesJVMKt;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-static {v4, v1, v3}, Les/b;->b(Ljava/lang/reflect/Type;Lkotlin/reflect/KClass;Lkotlin/reflect/KType;)Les/a;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v6, v1}, Lio/ktor/client/request/HttpRequestBuilder;->k(Les/a;)V

    .line 124
    .line 125
    .line 126
    :goto_0
    invoke-static {v6, v5}, Lio/ktor/http/d;->e(Lwr/l;Lio/ktor/http/a;)V

    .line 127
    .line 128
    .line 129
    const-wide/16 v3, 0x1388

    .line 130
    .line 131
    invoke-static {v6, v3, v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/c;->b(Lio/ktor/client/request/HttpRequestBuilder;J)V

    .line 132
    .line 133
    .line 134
    sget-object v1, Lwr/m;->b:Lwr/m$a;

    .line 135
    .line 136
    invoke-virtual {v1}, Lwr/m$a;->c()Lwr/m;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v6, v1}, Lio/ktor/client/request/HttpRequestBuilder;->n(Lwr/m;)V

    .line 141
    .line 142
    .line 143
    new-instance v1, Lio/ktor/client/statement/HttpStatement;

    .line 144
    .line 145
    invoke-direct {v1, v6, p1}, Lio/ktor/client/statement/HttpStatement;-><init>(Lio/ktor/client/request/HttpRequestBuilder;Lio/ktor/client/HttpClient;)V

    .line 146
    .line 147
    .line 148
    iput v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$d;->h:I

    .line 149
    .line 150
    invoke-virtual {v1, p0}, Lio/ktor/client/statement/HttpStatement;->d(Lrs/c;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    if-ne p1, v0, :cond_5

    .line 155
    .line 156
    return-object v0

    .line 157
    :cond_5
    :goto_1
    check-cast p1, Ltr/c;

    .line 158
    .line 159
    invoke-virtual {p1}, Ltr/c;->e()Lwr/o;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    sget-object v3, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 164
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    const-string v1, "Response status: "

    .line 171
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string v1, " for url: "

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$d;->j:Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    const/4 v7, 0x4

    .line 193
    const/4 v8, 0x0

    .line 194
    const-string v4, "HttpClient"

    .line 195
    .line 196
    const/4 v6, 0x0

    .line 197
    invoke-static/range {v3 .. v8}, Lcom/moloco/sdk/internal/MolocoLogger;->debugBuildLog$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    sget-object v0, Lwr/o;->c:Lwr/o$a;

    .line 201
    .line 202
    invoke-virtual {v0}, Lwr/o$a;->B()Lwr/o;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    if-nez v1, :cond_7

    .line 211
    .line 212
    invoke-virtual {v0}, Lwr/o$a;->v()Lwr/o;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    if-eqz p1, :cond_6

    .line 221
    .line 222
    goto :goto_2

    .line 223
    :cond_6
    const/4 v2, 0x0

    .line 224
    :cond_7
    :goto_2
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    return-object p1
.end method
