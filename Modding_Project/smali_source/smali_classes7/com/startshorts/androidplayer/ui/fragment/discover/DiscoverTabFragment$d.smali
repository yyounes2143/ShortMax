.class public final Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$d;
.super Ljava/lang/Object;
.source "DiscoverTabFragment.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/view/main/NewUserRecommendLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->N0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

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
    sget-object v0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->E:Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$a;->a()Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 8
    .line 9
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$d$a;

    .line 10
    .line 11
    invoke-direct {v2, v1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$d$a;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->w(Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment$b;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "getChildFragmentManager(...)"

    .line 22
    .line 23
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->x(Landroidx/fragment/app/FragmentManager;)Z

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->g0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;->p2()V

    .line 38
    .line 39
    .line 40
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 41
    .line 42
    const/4 v6, 0x6

    .line 43
    const/4 v7, 0x0

    .line 44
    const-string v2, "suspension_window_click"

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    const-wide/16 v4, 0x0

    .line 48
    .line 49
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public b()V
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    const/4 v5, 0x6

    .line 4
    const/4 v6, 0x0

    .line 5
    const-string v1, "suspension_window_show"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
