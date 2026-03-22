.class public final Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$e;
.super Ljava/lang/Object;
.source "ShortsFragment.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/shorts/feature/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->V1()Lcom/startshorts/androidplayer/manager/shorts/feature/f;
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$e;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$e;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->R0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(ZLcom/startshorts/androidplayer/bean/shorts/PlaySpeed;Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;Z)V
    .locals 0

    .line 1
    const-string p2, "newPlaySpeed"

    .line 2
    .line 3
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$e;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 7
    .line 8
    invoke-static {p2}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->C0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2, p3}, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->m(Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    if-nez p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$e;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->F0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Lms/i;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 30
    .line 31
    new-instance p2, Lcom/startshorts/androidplayer/viewmodel/player/b$k;

    .line 32
    .line 33
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->getValue()F

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    invoke-direct {p2, p3}, Lcom/startshorts/androidplayer/viewmodel/player/b$k;-><init>(F)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->M(Lcom/startshorts/androidplayer/viewmodel/player/b;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    if-eqz p4, :cond_2

    .line 44
    .line 45
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$e;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->L0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$e;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->k1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void
.end method

.method public c(Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;)V
    .locals 1

    .line 1
    const-string v0, "playSpeed"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$e;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->z1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
