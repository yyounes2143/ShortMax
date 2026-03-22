.class public final Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$d1;
.super Ljava/lang/Object;
.source "ImmersionActivity.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->Aa(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$d1;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$d1;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->P2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$d1;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->S1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$d1;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->p2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {v1, v0, v2, v3}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->z4(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$d1;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->f3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$d1;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->m4(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$d1;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->U2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$d1;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->W3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    return-void
.end method
