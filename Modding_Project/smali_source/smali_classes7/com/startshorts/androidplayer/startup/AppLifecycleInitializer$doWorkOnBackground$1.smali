.class final Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$doWorkOnBackground$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AppLifecycleInitializer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;->o()Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.startup.AppLifecycleInitializer$doWorkOnBackground$1"
    f = "AppLifecycleInitializer.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$doWorkOnBackground$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$doWorkOnBackground$1;->i:Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;

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
    new-instance p1, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$doWorkOnBackground$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$doWorkOnBackground$1;->i:Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$doWorkOnBackground$1;-><init>(Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$doWorkOnBackground$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$doWorkOnBackground$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$doWorkOnBackground$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$doWorkOnBackground$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$doWorkOnBackground$1;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->U()Lkotlinx/coroutines/r;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer$doWorkOnBackground$1;->i:Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;->l(Lcom/startshorts/androidplayer/startup/AppLifecycleInitializer;)V

    .line 19
    .line 20
    .line 21
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/PushManager;->a:Lcom/startshorts/androidplayer/manager/push/PushManager;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/push/PushManager;->k()V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    const/4 v8, 0x0

    .line 28
    const/4 v9, 0x1

    .line 29
    invoke-static {v0, v8, v9, v1}, Lcom/startshorts/androidplayer/manager/push/PushManager;->f(Lcom/startshorts/androidplayer/manager/push/PushManager;ZILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 30
    .line 31
    .line 32
    sget-object v0, Lcom/startshorts/androidplayer/repo/push/PushRepo;->a:Lcom/startshorts/androidplayer/repo/push/PushRepo;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->w()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->h()V

    .line 38
    .line 39
    .line 40
    sget-object v0, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 41
    .line 42
    sget-object v1, Lcom/startshorts/androidplayer/bean/ad/AdScene;->APP_OPEN:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a0(Lcom/startshorts/androidplayer/bean/ad/AdScene;)Lkotlinx/coroutines/r;

    .line 45
    .line 46
    .line 47
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;

    .line 48
    .line 49
    sget-object v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->GP_INSTALL_REFERRER:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->o(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)V

    .line 52
    .line 53
    .line 54
    sget-object v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->PRE_INSTALL:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->o(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)V

    .line 57
    .line 58
    .line 59
    sget-object v0, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->a:Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->c()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->b()V

    .line 65
    .line 66
    .line 67
    sget-object v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->M()V

    .line 70
    .line 71
    .line 72
    const/4 v6, 0x6

    .line 73
    const/4 v7, 0x0

    .line 74
    const-string v2, "app_active_background"

    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    const-wide/16 v4, 0x0

    .line 78
    .line 79
    move-object v1, p1

    .line 80
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    sget-object v0, Lfk/c;->a:Lfk/c;

    .line 84
    .line 85
    invoke-virtual {v0}, Lfk/c;->a()V

    .line 86
    .line 87
    .line 88
    sget-object v0, Laf/i;->a:Laf/i;

    .line 89
    .line 90
    invoke-virtual {v0}, Laf/i;->f()V

    .line 91
    .line 92
    .line 93
    sget-object v0, Lud/a;->a:Lud/a;

    .line 94
    .line 95
    invoke-virtual {v0, v9}, Lud/a;->d0(Z)V

    .line 96
    .line 97
    .line 98
    sget-object v0, Lde/s;->a:Lde/s;

    .line 99
    .line 100
    invoke-virtual {v0, v8}, Lde/s;->a(Z)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->r(Z)V

    .line 104
    .line 105
    .line 106
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/log/Logger;->f()V

    .line 109
    .line 110
    .line 111
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 112
    .line 113
    return-object p1

    .line 114
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 115
    .line 116
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 117
    .line 118
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p1
.end method
