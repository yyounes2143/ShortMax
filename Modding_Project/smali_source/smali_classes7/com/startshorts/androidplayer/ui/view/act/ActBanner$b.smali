.class public final Lcom/startshorts/androidplayer/ui/view/act/ActBanner$b;
.super Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$b;
.source "ActBanner.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->z(Ljava/lang/ref/WeakReference;Ljava/lang/String;FILkotlin/jvm/functions/Function1;Landroidx/lifecycle/Lifecycle;Ljava/util/List;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/startshorts/androidplayer/ui/view/act/ActBanner;

.field final synthetic c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager<",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/startshorts/androidplayer/ui/view/act/ActBanner;Lkotlin/jvm/functions/Function1;Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            ">;",
            "Lcom/startshorts/androidplayer/ui/view/act/ActBanner;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager<",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBanner$b;->a:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBanner$b;->b:Lcom/startshorts/androidplayer/ui/view/act/ActBanner;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBanner$b;->c:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBanner$b;->d:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBanner$b;->e:Ljava/lang/String;

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
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBanner$b;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 p3, 0x1

    .line 8
    if-le p1, p3, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBanner$b;->b:Lcom/startshorts/androidplayer/ui/view/act/ActBanner;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->w(Lcom/startshorts/androidplayer/ui/view/act/ActBanner;)Lcom/startshorts/androidplayer/ui/view/base/GuidePointView;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/base/GuidePointView;->setSelectedIndex(I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBanner$b;->c:Lkotlin/jvm/functions/Function1;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    invoke-interface {p1, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBanner$b;->d:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->getData()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string p3, "getData(...)"

    .line 39
    .line 40
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBanner$b;->b:Lcom/startshorts/androidplayer/ui/view/act/ActBanner;

    .line 52
    .line 53
    iget-object p3, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBanner$b;->e:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {p2, p3, p1}, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->x(Lcom/startshorts/androidplayer/ui/view/act/ActBanner;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void
.end method
