.class public final Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$g0;
.super Ljava/lang/Object;
.source "ImmersionActivity.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->g9(ILcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nImmersionActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$showAdContinueRetentionDialog$1$1\n+ 2 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,6800:1\n4827#2:6801\n1#3:6802\n*S KotlinDebug\n*F\n+ 1 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$showAdContinueRetentionDialog$1$1\n*L\n5494#1:6801\n5494#1:6802\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

.field final synthetic b:Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$g0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$g0;->b:Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$g0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->S1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$g0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->d2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/Iterable;

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x0

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    move-object v4, v2

    .line 34
    check-cast v4, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature;

    .line 35
    .line 36
    instance-of v4, v4, Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature;

    .line 37
    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    move-object v2, v3

    .line 42
    :goto_0
    instance-of v1, v2, Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature;

    .line 43
    .line 44
    if-nez v1, :cond_3

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    move-object v3, v2

    .line 48
    :goto_1
    check-cast v3, Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature;

    .line 49
    .line 50
    if-eqz v3, :cond_4

    .line 51
    .line 52
    sget-object v1, Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;->PRE:Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;

    .line 53
    .line 54
    invoke-virtual {v3, v0, v1}, Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature;->u(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature$DisplayPosition;)V

    .line 55
    .line 56
    .line 57
    :cond_4
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$g0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    invoke-static {v1, v2, v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->J1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;ZLcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$g0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$g0;->b:Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;

    .line 66
    .line 67
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {v0, v1, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->F2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;Ljava/lang/Integer;Z)V

    .line 72
    .line 73
    .line 74
    return-void
.end method
