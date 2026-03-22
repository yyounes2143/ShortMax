.class public final synthetic Lcom/startshorts/androidplayer/adapter/discover/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$c;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

.field public final synthetic b:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:I

.field public final synthetic e:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;Ljava/util/List;ILkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/g;->a:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/g;->b:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/startshorts/androidplayer/adapter/discover/g;->c:Ljava/util/List;

    .line 9
    .line 10
    iput p4, p0, Lcom/startshorts/androidplayer/adapter/discover/g;->d:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/startshorts/androidplayer/adapter/discover/g;->e:Lkotlin/jvm/functions/Function2;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/g;->a:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/g;->b:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/discover/g;->c:Ljava/util/List;

    .line 6
    .line 7
    iget v3, p0, Lcom/startshorts/androidplayer/adapter/discover/g;->d:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/startshorts/androidplayer/adapter/discover/g;->e:Lkotlin/jvm/functions/Function2;

    .line 10
    .line 11
    move-object v5, p1

    .line 12
    move v6, p2

    .line 13
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->p(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;Ljava/util/List;ILkotlin/jvm/functions/Function2;Landroid/view/View;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
