.class public final Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView$b;
.super Lyd/d;
.source "PurePayingUserAdRetentionUnlockView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;->z(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView$b;->e:Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    invoke-direct {p0, v1, v2, p1, v0}, Lyd/d;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 8

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView$b;->e:Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;->w(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView$b;->e:Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;

    .line 15
    .line 16
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const-string p1, "from"

    .line 23
    .line 24
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;->x(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v3, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string p1, "action"

    .line 32
    .line 33
    const-string v0, "ad_impression"

    .line 34
    .line 35
    invoke-virtual {v3, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string p1, "button_click"

    .line 39
    .line 40
    const-string v0, "watch_ad"

    .line 41
    .line 42
    invoke-virtual {v3, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 46
    .line 47
    const/4 v6, 0x4

    .line 48
    const/4 v7, 0x0

    .line 49
    const-string v2, "unlocked_ep_button_click"

    .line 50
    .line 51
    const-wide/16 v4, 0x0

    .line 52
    .line 53
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView$b;->e:Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;->y(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/PurePayingUserAdRetentionUnlockView;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
