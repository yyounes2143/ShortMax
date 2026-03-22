.class public final Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c$a;
.super Ljava/lang/Object;
.source "DiscoverRankingViewPagerItemAdapter.kt"

# interfaces
.implements Lik/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c;->k(ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;

.field final synthetic b:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

.field final synthetic c:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c$a;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c$a;->b:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c$a;->c:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public show()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c$a;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->G(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;)Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingPageItemBinding;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v1, v0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    check-cast v0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v0, v2

    .line 24
    :goto_0
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->f0()Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->H0()Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    :cond_1
    move-object v7, v2

    .line 37
    sget-object v3, Lag/a;->a:Lag/a;

    .line 38
    .line 39
    iget-object v4, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c$a;->b:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c$a;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->L(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;)Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getBannerId()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v4, v1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->setModuleId(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->L(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;)Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getTitle()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v4, v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->setModuleName(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c$a;->c:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c$a;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->M(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;)Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    const/16 v12, 0xe4

    .line 78
    .line 79
    const/4 v13, 0x0

    .line 80
    const/4 v6, 0x0

    .line 81
    const/4 v9, 0x0

    .line 82
    const/4 v10, 0x0

    .line 83
    const/4 v11, 0x0

    .line 84
    invoke-static/range {v3 .. v13}, Lag/a;->c(Lag/a;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;IILcom/startshorts/androidplayer/bean/discover/DiscoverTab;Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method
