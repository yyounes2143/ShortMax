.class public final Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$e;
.super Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$b;
.source "DiscoverCategoryViewPagerItemAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;

.field final synthetic c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverCategoryShorts;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:I

.field final synthetic e:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;Ljava/util/List;ILkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;",
            "Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverCategoryShorts;",
            ">;I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$e;->a:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$e;->b:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$e;->c:Ljava/util/List;

    .line 6
    .line 7
    iput p4, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$e;->d:I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$e;->e:Lkotlin/jvm/functions/Function2;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$b;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a(ZII)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$e;->b:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;

    .line 2
    .line 3
    iget-object p3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$e;->c:Ljava/util/List;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$e;->a:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->getData()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "getData(...)"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 21
    .line 22
    invoke-static {p1, p3, p2, v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->w(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;Ljava/util/List;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-instance p2, Lcom/startshorts/androidplayer/bean/eventbus/VideoPreviewPlayEvent;

    .line 30
    .line 31
    invoke-direct {p2}, Lcom/startshorts/androidplayer/bean/eventbus/VideoPreviewPlayEvent;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lau/c;->l(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$b;->b(I)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$e;->a:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->getCurrentItem()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iget v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$e;->d:I

    .line 13
    .line 14
    rem-int/2addr p1, v0

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$e;->e:Lkotlin/jvm/functions/Function2;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$e;->e:Lkotlin/jvm/functions/Function2;

    .line 31
    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-interface {v0, p1, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$e;->b:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->E(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;Z)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
