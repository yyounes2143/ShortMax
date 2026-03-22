.class public final Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$c;
.super Ljava/lang/Object;
.source "DiscoverCategoryViewPagerAdapter.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;->N(Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryPageBinding;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$d<",
        "Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryPageBinding;

.field final synthetic b:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryPageBinding;Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$c;->a:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryPageBinding;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$c;->b:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$c;->b(Landroid/view/View;ILcom/startshorts/androidplayer/bean/adapter/SelectableItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Landroid/view/View;ILcom/startshorts/androidplayer/bean/adapter/SelectableItem;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "view"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string p1, "d"

    .line 8
    .line 9
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$c;->a:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryPageBinding;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryPageBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/TabView;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/base/TabView;->setSelectedIndex(I)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$c;->b:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;->H(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;)Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->setCategoryTabSelectedPos(I)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$c;->a:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryPageBinding;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCategoryPageBinding;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 31
    .line 32
    const/4 p3, 0x0

    .line 33
    invoke-virtual {p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
