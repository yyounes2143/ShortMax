.class final Lcom/startshorts/androidplayer/manager/configure/ad/AdSignInfoManager$querySignInAdInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AdSignInfoManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/configure/ad/AdSignInfoManager;->b()Lkotlinx/coroutines/r;
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.manager.configure.ad.AdSignInfoManager$querySignInAdInfo$1"
    f = "AdSignInfoManager.kt"
    l = {
        0x12
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAdSignInfoManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdSignInfoManager.kt\ncom/startshorts/androidplayer/manager/configure/ad/AdSignInfoManager$querySignInAdInfo$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,24:1\n1#2:25\n*E\n"
    }
.end annotation


# instance fields
.field h:I


# direct methods
.method constructor <init>(Lrs/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/configure/ad/AdSignInfoManager$querySignInAdInfo$1;",
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
    .locals 0
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
    new-instance p1, Lcom/startshorts/androidplayer/manager/configure/ad/AdSignInfoManager$querySignInAdInfo$1;

    .line 2
    .line 3
    invoke-direct {p1, p2}, Lcom/startshorts/androidplayer/manager/configure/ad/AdSignInfoManager$querySignInAdInfo$1;-><init>(Lrs/c;)V

    .line 4
    .line 5
    .line 6
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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/configure/ad/AdSignInfoManager$querySignInAdInfo$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/configure/ad/AdSignInfoManager$querySignInAdInfo$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/configure/ad/AdSignInfoManager$querySignInAdInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/configure/ad/AdSignInfoManager$querySignInAdInfo$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/manager/configure/ad/AdSignInfoManager$querySignInAdInfo$1;->h:I

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
    check-cast p1, Lkotlin/Result;

    .line 16
    .line 17
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sget-object p1, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->a:Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;

    .line 34
    .line 35
    iput v2, p0, Lcom/startshorts/androidplayer/manager/configure/ad/AdSignInfoManager$querySignInAdInfo$1;->h:I

    .line 36
    .line 37
    const-string v1, "1"

    .line 38
    .line 39
    invoke-virtual {p1, v1, p0}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->t(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-ne p1, v0, :cond_2

    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_2
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    check-cast p1, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;

    .line 53
    .line 54
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/AdSignInfoManager;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdSignInfoManager;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/configure/ad/AdSignInfoManager;->c(Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;)V

    .line 57
    .line 58
    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->getZoneStr()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    sget-object v0, Lud/b;->a:Lud/b;

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Lud/b;->r5(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 73
    .line 74
    return-object p1
.end method
