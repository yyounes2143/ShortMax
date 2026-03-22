.class public final Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$mOnPageChangeCallback$2$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "DiscoverCategoryViewPagerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;-><init>(Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryPageBinding;Landroidx/lifecycle/Lifecycle;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$mOnPageChangeCallback$2$1;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$mOnPageChangeCallback$2$1;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onPageSelected -> position("

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v2, 0x29

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->r(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$mOnPageChangeCallback$2$1;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;->H(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;)Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->setCategoryTabSelectedPos(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$mOnPageChangeCallback$2$1;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;->F(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;)Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryPageBinding;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryPageBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/TabView;

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/view/base/TabView;->setSelectedIndex(I)V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    new-instance v0, Lcom/startshorts/androidplayer/bean/eventbus/VideoPreviewPlayEvent;

    .line 53
    .line 54
    invoke-direct {v0}, Lcom/startshorts/androidplayer/bean/eventbus/VideoPreviewPlayEvent;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Lau/c;->l(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
