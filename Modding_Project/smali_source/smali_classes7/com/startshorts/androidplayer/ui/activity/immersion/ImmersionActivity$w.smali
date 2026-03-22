.class public final Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$w;
.super Ljava/lang/Object;
.source "ImmersionActivity.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->M6()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

.field final synthetic b:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$w;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$w;->b:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$w;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$w;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->b3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$w;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->J2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$w;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 24
    .line 25
    const-wide/16 v0, 0x1388

    .line 26
    .line 27
    invoke-static {p1, v0, v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->H1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;J)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 32
    .line 33
    const/4 v7, 0x6

    .line 34
    const/4 v8, 0x0

    .line 35
    const-string v3, "clarity_click"

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    const-wide/16 v5, 0x0

    .line 39
    .line 40
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$w;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$w;->b:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionView;

    .line 46
    .line 47
    invoke-static {v0, v1, p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->g4(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Landroid/view/View;Z)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$w;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->I1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method
