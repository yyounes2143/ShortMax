.class public final Lcom/startshorts/androidplayer/manager/ad/AdManager$g;
.super Ljava/lang/Object;
.source "AdManager.kt"

# interfaces
.implements Lca/f$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/ad/AdManager;->e0(Landroid/app/Activity;Landroid/view/ViewGroup;JJLjava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lgt/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/ad/AdManager$g$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/manager/ad/AdManager$a;

.field final synthetic b:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lca/d;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic f:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lca/d;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/manager/ad/AdManager$a;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/manager/ad/AdManager$a;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lca/d;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lca/d;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$g;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager$a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$g;->b:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$g;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$g;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$g;->e:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$g;->f:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public a(Lca/d;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v1, "showAppOpenAd failed -> "

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "AdManager"

    .line 22
    .line 23
    invoke-virtual {p1, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget-object p1, Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;

    .line 27
    .line 28
    sget-object v0, Lcom/startshorts/androidplayer/bean/ad/AdScene;->APP_OPEN:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;->i(Lcom/startshorts/androidplayer/bean/ad/AdScene;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$g;->e:Lkotlin/jvm/functions/Function1;

    .line 34
    .line 35
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public b(Lca/d;)Z
    .locals 1

    .line 1
    const-string v0, "adInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$g;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 7
    .line 8
    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$g;->f:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public c(Lca/d;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    const-string v1, "adInfo"

    .line 6
    .line 7
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lcom/startshorts/androidplayer/manager/ad/AdManager$g;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager$a;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/ad/AdManager$a;->c()V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lcom/startshorts/androidplayer/manager/ad/AdManager$g;->b:Lkotlin/jvm/functions/Function0;

    .line 16
    .line 17
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Lcom/startshorts/androidplayer/manager/ad/AdManager$g;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 21
    .line 22
    iput-object v7, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 23
    .line 24
    sget-object v8, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 25
    .line 26
    iget-object v2, v0, Lcom/startshorts/androidplayer/manager/ad/AdManager$g;->d:Ljava/lang/String;

    .line 27
    .line 28
    const/4 v5, 0x4

    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v4, 0x0

    .line 31
    move-object v1, v8

    .line 32
    move-object/from16 v3, p1

    .line 33
    .line 34
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->V(Lcom/startshorts/androidplayer/manager/ad/AdManager;Ljava/lang/String;Lca/d;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    sget-object v1, Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;

    .line 38
    .line 39
    sget-object v2, Lcom/startshorts/androidplayer/bean/ad/AdScene;->APP_OPEN:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;->i(Lcom/startshorts/androidplayer/bean/ad/AdScene;)V

    .line 42
    .line 43
    .line 44
    sget-object v1, Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager;

    .line 45
    .line 46
    invoke-virtual/range {p1 .. p1}, Lca/d;->c()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager;->k(Ljava/lang/String;)Lkotlinx/coroutines/r;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v8, v2}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a0(Lcom/startshorts/androidplayer/bean/ad/AdScene;)Lkotlinx/coroutines/r;

    .line 54
    .line 55
    .line 56
    invoke-virtual/range {p1 .. p1}, Lca/d;->h()Lcom/hades/aar/admanager/core/AdFormat;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    sget-object v2, Lcom/startshorts/androidplayer/manager/ad/AdManager$g$a;->$EnumSwitchMapping$0:[I

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    aget v1, v2, v1

    .line 67
    .line 68
    const/4 v2, 0x1

    .line 69
    if-eq v1, v2, :cond_2

    .line 70
    .line 71
    const/4 v2, 0x2

    .line 72
    if-eq v1, v2, :cond_1

    .line 73
    .line 74
    const/4 v2, 0x3

    .line 75
    if-eq v1, v2, :cond_0

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 79
    .line 80
    const/4 v8, 0x6

    .line 81
    const/4 v9, 0x0

    .line 82
    const-string v4, "ad_splash_native"

    .line 83
    .line 84
    const/4 v5, 0x0

    .line 85
    const-wide/16 v6, 0x0

    .line 86
    .line 87
    invoke-static/range {v3 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    sget-object v10, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 92
    .line 93
    const/4 v15, 0x6

    .line 94
    const/16 v16, 0x0

    .line 95
    .line 96
    const-string v11, "ad_splash_interstitial"

    .line 97
    .line 98
    const/4 v12, 0x0

    .line 99
    const-wide/16 v13, 0x0

    .line 100
    .line 101
    invoke-static/range {v10 .. v16}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 106
    .line 107
    const/4 v6, 0x6

    .line 108
    const/4 v7, 0x0

    .line 109
    const-string v2, "ad_splash_app_open"

    .line 110
    .line 111
    const/4 v3, 0x0

    .line 112
    const-wide/16 v4, 0x0

    .line 113
    .line 114
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :goto_0
    return-void
.end method
