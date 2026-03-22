.class final Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory$activeAbleBeforeMainActivity$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ABTestFactory.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->p0(Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;)Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lrs/c<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory$activeAbleBeforeMainActivity$1$1"
    f = "ABTestFactory.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory$activeAbleBeforeMainActivity$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory$activeAbleBeforeMainActivity$1$1;->i:Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Lrs/c;)Lrs/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory$activeAbleBeforeMainActivity$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory$activeAbleBeforeMainActivity$1$1;->i:Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory$activeAbleBeforeMainActivity$1$1;-><init>(Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrs/c;

    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory$activeAbleBeforeMainActivity$1$1;->invoke(Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lrs/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory$activeAbleBeforeMainActivity$1$1;->create(Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory$activeAbleBeforeMainActivity$1$1;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory$activeAbleBeforeMainActivity$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory$activeAbleBeforeMainActivity$1$1;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lfk/a;->a:Lfk/a;

    .line 12
    .line 13
    invoke-virtual {p1}, Lfk/a;->a()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory$activeAbleBeforeMainActivity$1$1;->i:Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->getAbTestKey()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, " active ignore, MainActivity is exist already"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "ABTestFactory"

    .line 45
    .line 46
    invoke-virtual {p1, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory$activeAbleBeforeMainActivity$1$1;->i:Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->initFixedABTestValue()V

    .line 54
    .line 55
    .line 56
    const/4 p1, 0x1

    .line 57
    :goto_0
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    return-object p1

    .line 62
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 65
    .line 66
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1
.end method
