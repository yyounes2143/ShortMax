.class public final Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$u;
.super Ljava/lang/Object;
.source "ImmersionActivity.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionMiniWindowView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->J6()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$u;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

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
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$u;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->r7()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$u;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->S1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const/4 v6, 0x4

    .line 23
    const/4 v7, 0x0

    .line 24
    const-string v2, "pip_click"

    .line 25
    .line 26
    const-wide/16 v4, 0x0

    .line 27
    .line 28
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$u;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 32
    .line 33
    const-string v1, "pip_click"

    .line 34
    .line 35
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->y4(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
