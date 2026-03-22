.class final Lcom/startshorts/androidplayer/repo/account/AccountRepo$clearAndCreateTouristForTest$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AccountRepo.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/account/AccountRepo;->T(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V
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
    c = "com.startshorts.androidplayer.repo.account.AccountRepo$clearAndCreateTouristForTest$1"
    f = "AccountRepo.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/account/AccountRepo$clearAndCreateTouristForTest$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$clearAndCreateTouristForTest$1;->i:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static synthetic i(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo$clearAndCreateTouristForTest$1;->s(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo$clearAndCreateTouristForTest$1;->q(Lkotlin/jvm/functions/Function0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo$clearAndCreateTouristForTest$1;->n(Lkotlin/jvm/functions/Function0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final n(Lkotlin/jvm/functions/Function0;)V
    .locals 2

    .line 1
    sget-object v0, Lfk/h0;->a:Lfk/h0;

    .line 2
    .line 3
    new-instance v1, Lcom/startshorts/androidplayer/repo/account/c;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/repo/account/c;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static final q(Lkotlin/jvm/functions/Function0;)V
    .locals 4

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lfk/u;->a:Lfk/u;

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "\u65b0\u8d26\u53f7\u521b\u5efa\u5b8c\u6bd5"

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {p0, v2, v3, v0, v1}, Lfk/u;->k(Lfk/u;Ljava/lang/String;IILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static final s(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)Lkotlin/Unit;
    .locals 4

    .line 1
    sget-object p0, Lfk/u;->a:Lfk/u;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/4 v1, 0x0

    .line 5
    const-string v2, "\u65b0\u8d26\u53f7\u521b\u5efa\u5931\u8d25"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {p0, v2, v3, v0, v1}, Lfk/u;->k(Lfk/u;Ljava/lang/String;IILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
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
    new-instance p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo$clearAndCreateTouristForTest$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$clearAndCreateTouristForTest$1;->i:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo$clearAndCreateTouristForTest$1;-><init>(Lkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 6
    .line 7
    .line 8
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo$clearAndCreateTouristForTest$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo$clearAndCreateTouristForTest$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo$clearAndCreateTouristForTest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo$clearAndCreateTouristForTest$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$clearAndCreateTouristForTest$1;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->n0(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object p1, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->a:Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->j()V

    .line 27
    .line 28
    .line 29
    sget-object p1, Lcom/startshorts/androidplayer/manager/account/AccountManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountManager;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$clearAndCreateTouristForTest$1;->i:Lkotlin/jvm/functions/Function0;

    .line 32
    .line 33
    new-instance v1, Lcom/startshorts/androidplayer/repo/account/a;

    .line 34
    .line 35
    invoke-direct {v1, v0}, Lcom/startshorts/androidplayer/repo/account/a;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 36
    .line 37
    .line 38
    new-instance v0, Lcom/startshorts/androidplayer/repo/account/b;

    .line 39
    .line 40
    invoke-direct {v0}, Lcom/startshorts/androidplayer/repo/account/b;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1, v0}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->f(Ljava/lang/Runnable;Lkotlin/jvm/functions/Function1;)V

    .line 44
    .line 45
    .line 46
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-static {p1, v1, v0, v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->X(Lcom/startshorts/androidplayer/repo/account/AccountRepo;Ljava/lang/String;ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 54
    .line 55
    return-object p1

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 59
    .line 60
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1
.end method
