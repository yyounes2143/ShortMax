.class public final Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$b;
.super Ljava/lang/Object;
.source "ShortsFragment.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/shorts/feature/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->S1()Lcom/startshorts/androidplayer/manager/shorts/feature/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->v0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->A0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Ldk/f;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ldk/f;->i()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->J0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 11
    .line 12
    sget-object v1, Lvi/e;->a:Lvi/e;

    .line 13
    .line 14
    invoke-virtual {v1}, Lvi/e;->a()Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->w1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->g1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->w0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isLocked()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->g1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onRelease()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->A0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Ldk/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ldk/f;->i()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
