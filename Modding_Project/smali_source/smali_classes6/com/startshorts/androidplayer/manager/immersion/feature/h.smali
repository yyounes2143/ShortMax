.class public final Lcom/startshorts/androidplayer/manager/immersion/feature/h;
.super Ljava/lang/Object;
.source "DisableSkipUnlockTipFeature.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/immersion/feature/h$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/widget/Toast;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final b()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/h;->b:Landroid/widget/Toast;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/h;->b:Landroid/widget/Toast;

    .line 10
    .line 11
    return-void
.end method

.method private final c()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/h;->b()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    sget-object v0, Laa/a;->a:Laa/a;

    .line 5
    .line 6
    invoke-virtual {v0}, Laa/a;->d()Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/hades/aar/activity/IDActivity;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget v1, Lcom/startshorts/androidplayer/R$string;->episode_list_dialog_fragment_disable_skip_locked_episode:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "getString(...)"

    .line 28
    .line 29
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/h;->b:Landroid/widget/Toast;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    nop

    .line 43
    :catch_0
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/manager/immersion/feature/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->b()Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    sget-object v0, Lcom/startshorts/androidplayer/manager/immersion/feature/h$a;->$EnumSwitchMapping$0:[I

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    aget p1, v0, p1

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    if-eq p1, v0, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    if-eq p1, v1, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x3

    .line 25
    if-eq p1, v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/h;->a:Z

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/h;->a:Z

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1, p0}, Lau/c;->p(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method public final receiveShowDisableSkipUnlockToastEvent(Lcom/startshorts/androidplayer/bean/eventbus/ShowDisableSkipUnlockToastEvent;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/ShowDisableSkipUnlockToastEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/h;->a:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/h;->c()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lau/c;->r(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/h;->b()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public type()Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;->DISABLE_SKIP_UNLOCK_TIP:Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;

    .line 2
    .line 3
    return-object v0
.end method
