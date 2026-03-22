.class public final Lcom/startshorts/androidplayer/ui/activity/MainActivity$c;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/view/main/ContinuePlayLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/MainActivity;->s0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/MainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity$c;->a:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/b;->r0()Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;

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
    sget-object v1, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->V0:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity$c;->a:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 13
    .line 14
    new-instance v3, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 15
    .line 16
    invoke-direct {v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->getFrom()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setFrom(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->getEpisodeNum()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v4, 0x3

    .line 35
    :goto_0
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setType(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->getEpisodeNum()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->getEpisodeNum()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setEpisodeNum(I)V

    .line 49
    .line 50
    .line 51
    :cond_2
    new-instance v4, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 52
    .line 53
    invoke-direct {v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->getShortPlayId()I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsId(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->getShortPlayCode()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortPlayCode(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->getShortPlayName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsName(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->getCoverId()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setCover(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->getUpack()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setUpack(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setShortsInfo(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;)V

    .line 92
    .line 93
    .line 94
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 95
    .line 96
    invoke-virtual {v1, v2, v3}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;->a(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity$c;->a:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 100
    .line 101
    const-string v2, "continue_watch_pop_click"

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->getShowType()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    invoke-static {v1, v2, v0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->V(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Ljava/lang/String;I)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public b()V
    .locals 13

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/b;->r0()Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;

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
    sget-object v1, Lag/a;->a:Lag/a;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->getShortPlayCode()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->getUpack()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v9

    .line 20
    const/16 v11, 0x17c

    .line 21
    .line 22
    const/4 v12, 0x0

    .line 23
    const-string v2, "continue_watch"

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x0

    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v8, 0x0

    .line 30
    const/4 v10, 0x0

    .line 31
    invoke-static/range {v1 .. v12}, Lag/a;->d(Lag/a;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;ILcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity$c;->a:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 35
    .line 36
    const-string v2, "continue_watch_pop_show"

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->getShowType()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-static {v1, v2, v0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->V(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public onClose()V
    .locals 3

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/b;->r0()Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity$c;->a:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 11
    .line 12
    const-string v2, "continue_watch_pop_close"

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/PlayContinue;->getShowType()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-static {v1, v2, v0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->V(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
