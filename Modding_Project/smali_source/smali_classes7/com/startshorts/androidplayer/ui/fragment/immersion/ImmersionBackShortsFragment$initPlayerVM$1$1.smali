.class final Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$initPlayerVM$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ImmersionBackShortsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->j0()V
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
    c = "com.startshorts.androidplayer.ui.fragment.immersion.ImmersionBackShortsFragment$initPlayerVM$1$1"
    f = "ImmersionBackShortsFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

.field final synthetic j:Lcom/startshorts/androidplayer/viewmodel/player/c;

.field final synthetic k:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/viewmodel/player/c;Ljava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "Lcom/startshorts/androidplayer/viewmodel/player/c;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$initPlayerVM$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$initPlayerVM$1$1;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$initPlayerVM$1$1;->j:Lcom/startshorts/androidplayer/viewmodel/player/c;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$initPlayerVM$1$1;->k:Ljava/lang/String;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 3
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
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$initPlayerVM$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$initPlayerVM$1$1;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$initPlayerVM$1$1;->j:Lcom/startshorts/androidplayer/viewmodel/player/c;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$initPlayerVM$1$1;->k:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$initPlayerVM$1$1;-><init>(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/viewmodel/player/c;Ljava/lang/String;Lrs/c;)V

    .line 10
    .line 11
    .line 12
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$initPlayerVM$1$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$initPlayerVM$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$initPlayerVM$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$initPlayerVM$1$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$initPlayerVM$1$1;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$initPlayerVM$1$1;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$initPlayerVM$1$1;->j:Lcom/startshorts/androidplayer/viewmodel/player/c;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$initPlayerVM$1$1;->k:Ljava/lang/String;

    .line 22
    .line 23
    const-string v2, "scene"

    .line 24
    .line 25
    const-string v4, "immersion_back_pop"

    .line 26
    .line 27
    invoke-virtual {v3, v2, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/player/c$d;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/player/c$d;->b()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v2, "err_msg"

    .line 37
    .line 38
    invoke-virtual {v3, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string p1, "video_url"

    .line 42
    .line 43
    invoke-virtual {v3, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string p1, "clarity_level"

    .line 47
    .line 48
    const-string v0, "720p"

    .line 49
    .line 50
    invoke-virtual {v3, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->A()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string v0, "userNetworkType"

    .line 60
    .line 61
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 65
    .line 66
    const/4 v6, 0x4

    .line 67
    const/4 v7, 0x0

    .line 68
    const-string v2, "reel_play_fail"

    .line 69
    .line 70
    const-wide/16 v4, 0x0

    .line 71
    .line 72
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 76
    .line 77
    return-object p1

    .line 78
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 79
    .line 80
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 81
    .line 82
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p1
.end method
