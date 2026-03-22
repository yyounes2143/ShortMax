.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e;->a(Lio/ktor/client/HttpClient;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
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
    c = "com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.HttpRequestClientKt$sendGetRequest$2"
    f = "HttpRequestClient.kt"
    l = {
        0x48
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHttpRequestClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpRequestClient.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/HttpRequestClientKt$sendGetRequest$2\n+ 2 builders.kt\nio/ktor/client/request/BuildersKt\n*L\n1#1,67:1\n332#2:68\n225#2:69\n99#2,2:70\n22#2:72\n*S KotlinDebug\n*F\n+ 1 HttpRequestClient.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/HttpRequestClientKt$sendGetRequest$2\n*L\n37#1:68\n37#1:69\n37#1:70,2\n37#1:72\n*E\n"
    }
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lio/ktor/client/HttpClient;

.field public final synthetic j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/ktor/client/HttpClient;Ljava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/HttpClient;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$b;->i:Lio/ktor/client/HttpClient;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$b;->j:Ljava/lang/String;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$b;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$b;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2
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
    new-instance p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$b;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$b;->i:Lio/ktor/client/HttpClient;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$b;->j:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$b;-><init>(Lio/ktor/client/HttpClient;Ljava/lang/String;Lrs/c;)V

    .line 8
    .line 9
    .line 10
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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$b;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$b;->h:I

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
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$b;->i:Lio/ktor/client/HttpClient;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$b;->j:Ljava/lang/String;

    .line 30
    .line 31
    new-instance v3, Lio/ktor/client/request/HttpRequestBuilder;

    .line 32
    .line 33
    invoke-direct {v3}, Lio/ktor/client/request/HttpRequestBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-static {v3, v1}, Lio/ktor/client/request/a;->b(Lio/ktor/client/request/HttpRequestBuilder;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-wide/16 v4, 0x1388

    .line 40
    .line 41
    invoke-static {v3, v4, v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/c;->b(Lio/ktor/client/request/HttpRequestBuilder;J)V

    .line 42
    .line 43
    .line 44
    sget-object v1, Lwr/m;->b:Lwr/m$a;

    .line 45
    .line 46
    invoke-virtual {v1}, Lwr/m$a;->a()Lwr/m;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v3, v1}, Lio/ktor/client/request/HttpRequestBuilder;->n(Lwr/m;)V

    .line 51
    .line 52
    .line 53
    new-instance v1, Lio/ktor/client/statement/HttpStatement;

    .line 54
    .line 55
    invoke-direct {v1, v3, p1}, Lio/ktor/client/statement/HttpStatement;-><init>(Lio/ktor/client/request/HttpRequestBuilder;Lio/ktor/client/HttpClient;)V

    .line 56
    .line 57
    .line 58
    iput v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/e$b;->h:I

    .line 59
    .line 60
    invoke-virtual {v1, p0}, Lio/ktor/client/statement/HttpStatement;->d(Lrs/c;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-ne p1, v0, :cond_2

    .line 65
    .line 66
    return-object v0

    .line 67
    :cond_2
    :goto_0
    check-cast p1, Ltr/c;

    .line 68
    .line 69
    invoke-virtual {p1}, Ltr/c;->e()Lwr/o;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    sget-object v0, Lwr/o;->c:Lwr/o$a;

    .line 74
    .line 75
    invoke-virtual {v0}, Lwr/o$a;->B()Lwr/o;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_4

    .line 84
    .line 85
    invoke-virtual {v0}, Lwr/o$a;->v()Lwr/o;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_3

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    const/4 v2, 0x0

    .line 97
    :cond_4
    :goto_1
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    return-object p1
.end method
