.class final Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2$job$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ApiBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgt/g0;",
        "Lrs/c<",
        "-",
        "Lkotlin/Result<",
        "+TT;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.manager.api.base.ApiBuilder$execute$2$job$1"
    f = "ApiBuilder.kt"
    l = {
        0x3b,
        0x3f,
        0x42
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nApiBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApiBuilder.kt\ncom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2$job$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,137:1\n1#2:138\n*E\n"
    }
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

.field final synthetic j:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/bean/api/ServerResult<",
            "TT;>;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;Lkotlin/jvm/functions/Function1;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/bean/api/ServerResult<",
            "TT;>;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2$job$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2$job$1;->i:Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2$job$1;->j:Lkotlin/jvm/functions/Function1;

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
    new-instance p1, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2$job$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2$job$1;->i:Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2$job$1;->j:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2$job$1;-><init>(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;Lkotlin/jvm/functions/Function1;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2$job$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2$job$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2$job$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2$job$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2$job$1;->h:I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    if-eq v1, v4, :cond_2

    .line 13
    .line 14
    if-eq v1, v3, :cond_0

    .line 15
    .line 16
    if-ne v1, v2, :cond_1

    .line 17
    .line 18
    :cond_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    check-cast p1, Lkotlin/Result;

    .line 22
    .line 23
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 31
    .line 32
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    check-cast p1, Lkotlin/Result;

    .line 40
    .line 41
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    goto :goto_0

    .line 46
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2$job$1;->i:Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->i(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_6

    .line 56
    .line 57
    sget-object p1, Lcom/startshorts/androidplayer/manager/account/AccountManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountManager;

    .line 58
    .line 59
    iput v4, p0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2$job$1;->h:I

    .line 60
    .line 61
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->n(Lrs/c;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-ne p1, v0, :cond_4

    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_4
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_5

    .line 73
    .line 74
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2$job$1;->i:Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 75
    .line 76
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->j(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    goto :goto_1

    .line 85
    :cond_5
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2$job$1;->i:Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 86
    .line 87
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2$job$1;->j:Lkotlin/jvm/functions/Function1;

    .line 88
    .line 89
    iput v3, p0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2$job$1;->h:I

    .line 90
    .line 91
    invoke-static {p1, v1, p0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->g(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    if-ne p1, v0, :cond_7

    .line 96
    .line 97
    return-object v0

    .line 98
    :cond_6
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2$job$1;->i:Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 99
    .line 100
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2$job$1;->j:Lkotlin/jvm/functions/Function1;

    .line 101
    .line 102
    iput v2, p0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2$job$1;->h:I

    .line 103
    .line 104
    invoke-static {p1, v1, p0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->g(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    if-ne p1, v0, :cond_7

    .line 109
    .line 110
    return-object v0

    .line 111
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder$execute$2$job$1;->i:Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 112
    .line 113
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->l(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_8

    .line 121
    .line 122
    check-cast p1, Lcom/startshorts/androidplayer/bean/api/ServerResult;

    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ServerResult;->getData()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    :cond_8
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-static {p1}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    return-object p1
.end method
