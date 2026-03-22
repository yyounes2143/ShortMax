.class public final Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment$updateTabView$2;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "DiscoverRankingTabFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;->h0(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment$updateTabView$2;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment$updateTabView$2;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;->Z(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;)Lcom/startshorts/androidplayer/databinding/FragmentDiscoverRankingTabBinding;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverRankingTabBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/TabView;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/view/base/TabView;->setSelectedIndex(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
