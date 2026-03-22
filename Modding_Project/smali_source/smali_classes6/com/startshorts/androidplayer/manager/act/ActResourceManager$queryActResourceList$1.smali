.class final Lcom/startshorts/androidplayer/manager/act/ActResourceManager$queryActResourceList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ActResourceManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->y(Z)Lkotlinx/coroutines/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/Result<",
        "+",
        "Lcom/startshorts/androidplayer/bean/act/ActResourceList;",
        ">;",
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
    c = "com.startshorts.androidplayer.manager.act.ActResourceManager$queryActResourceList$1"
    f = "ActResourceManager.kt"
    l = {
        0x20,
        0x22
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field synthetic i:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrs/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/act/ActResourceManager$queryActResourceList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 1
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
    new-instance v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$queryActResourceList$1;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$queryActResourceList$1;-><init>(Lrs/c;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$queryActResourceList$1;->i:Ljava/lang/Object;

    .line 7
    .line 8
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    move-result-object p1

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$queryActResourceList$1;->invoke(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$queryActResourceList$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$queryActResourceList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$queryActResourceList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$queryActResourceList$1;->h:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$queryActResourceList$1;->i:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p1, Lkotlin/Result;

    .line 37
    .line 38
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_4

    .line 47
    .line 48
    sget-object p1, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->a:Lcom/startshorts/androidplayer/manager/act/ActResourceManager;

    .line 49
    .line 50
    iput v3, p0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$queryActResourceList$1;->h:I

    .line 51
    .line 52
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->u(Lrs/c;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-ne p1, v0, :cond_3

    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_3
    :goto_0
    sget-object p1, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->a:Lcom/startshorts/androidplayer/manager/act/ActResourceManager;

    .line 60
    .line 61
    invoke-static {p1}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->c(Lcom/startshorts/androidplayer/manager/act/ActResourceManager;)V

    .line 62
    .line 63
    .line 64
    iput v2, p0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager$queryActResourceList$1;->h:I

    .line 65
    .line 66
    invoke-static {p1, p0}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->d(Lcom/startshorts/androidplayer/manager/act/ActResourceManager;Lrs/c;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-ne p1, v0, :cond_4

    .line 71
    .line 72
    return-object v0

    .line 73
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 74
    .line 75
    return-object p1
.end method
