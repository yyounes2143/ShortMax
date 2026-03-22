.class final Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FirebaseAuthManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$2$1$a;
    }
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
    c = "com.startshorts.androidplayer.manager.auth.FirebaseAuthManager$bind$1$2$1"
    f = "FirebaseAuthManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

.field final synthetic j:Lcom/hades/aar/auth/base/AuthType;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;Lcom/hades/aar/auth/base/AuthType;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;",
            "Lcom/hades/aar/auth/base/AuthType;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$2$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$2$1;->i:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$2$1;->j:Lcom/hades/aar/auth/base/AuthType;

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
    new-instance p1, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$2$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$2$1;->i:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$2$1;->j:Lcom/hades/aar/auth/base/AuthType;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$2$1;-><init>(Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;Lcom/hades/aar/auth/base/AuthType;Lrs/c;)V

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$2$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$2$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$2$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$2$1;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$2$1;->i:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$2$1;->j:Lcom/hades/aar/auth/base/AuthType;

    .line 14
    .line 15
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;->v(Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;Lcom/hades/aar/auth/base/AuthType;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$2$1;->j:Lcom/hades/aar/auth/base/AuthType;

    .line 19
    .line 20
    sget-object v0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1$2$1$a;->$EnumSwitchMapping$0:[I

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    aget p1, v0, p1

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    if-eq p1, v0, :cond_3

    .line 30
    .line 31
    const/4 v0, 0x2

    .line 32
    const/4 v1, 0x4

    .line 33
    if-eq p1, v0, :cond_2

    .line 34
    .line 35
    const/4 v0, 0x5

    .line 36
    const/4 v2, 0x3

    .line 37
    if-eq p1, v2, :cond_1

    .line 38
    .line 39
    if-eq p1, v1, :cond_0

    .line 40
    .line 41
    if-eq p1, v0, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    new-instance v0, Lcom/startshorts/androidplayer/bean/eventbus/BindSuccessEvent;

    .line 49
    .line 50
    invoke-direct {v0, v2}, Lcom/startshorts/androidplayer/bean/eventbus/BindSuccessEvent;-><init>(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lau/c;->l(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    new-instance v1, Lcom/startshorts/androidplayer/bean/eventbus/BindSuccessEvent;

    .line 62
    .line 63
    invoke-direct {v1, v0}, Lcom/startshorts/androidplayer/bean/eventbus/BindSuccessEvent;-><init>(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v1}, Lau/c;->l(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    new-instance v0, Lcom/startshorts/androidplayer/bean/eventbus/BindSuccessEvent;

    .line 75
    .line 76
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/bean/eventbus/BindSuccessEvent;-><init>(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0}, Lau/c;->l(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    new-instance v1, Lcom/startshorts/androidplayer/bean/eventbus/BindSuccessEvent;

    .line 88
    .line 89
    invoke-direct {v1, v0}, Lcom/startshorts/androidplayer/bean/eventbus/BindSuccessEvent;-><init>(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v1}, Lau/c;->l(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 96
    .line 97
    return-object p1

    .line 98
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 99
    .line 100
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 101
    .line 102
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p1
.end method
