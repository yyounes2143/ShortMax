.class public final Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2;
.super Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;
.source "DiscoverBannerAdapter2.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter<",
        "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final l:Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final m:I

.field private static final n:I

.field private static final o:I

.field private static final p:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2;->l:Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2$a;

    .line 8
    .line 9
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2;->m:I

    .line 16
    .line 17
    int-to-float v1, v0

    .line 18
    const v2, 0x3f5eb852    # 0.87f

    .line 19
    .line 20
    .line 21
    mul-float/2addr v1, v2

    .line 22
    invoke-static {v1}, Lbt/a;->c(F)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    sput v1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2;->n:I

    .line 27
    .line 28
    sput v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2;->o:I

    .line 29
    .line 30
    sput v1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2;->p:I

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic n()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2;->p:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic o()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2;->o:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic p()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2;->n:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic q()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2;->m:I

    .line 2
    .line 3
    return v0
.end method

.method private final r(Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;",
            "Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$id;->resource_name_tv:I

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->getContentValueName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p2, v0, v1}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->d(ILjava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lkk/f;->a:Lkk/f;

    .line 11
    .line 12
    sget v1, Lcom/startshorts/androidplayer/R$id;->cover_iv:I

    .line 13
    .line 14
    invoke-virtual {p2, v1}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    check-cast p2, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 19
    .line 20
    new-instance v1, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 21
    .line 22
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->getCoverId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2;->o:I

    .line 33
    .line 34
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 35
    .line 36
    .line 37
    sget p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2;->p:I

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 40
    .line 41
    .line 42
    sget p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2;->m:I

    .line 43
    .line 44
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 45
    .line 46
    .line 47
    sget p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2;->n:I

    .line 48
    .line 49
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 50
    .line 51
    .line 52
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_banner_placeholder_2:I

    .line 53
    .line 54
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 55
    .line 56
    .line 57
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 58
    .line 59
    invoke-virtual {v0, p2, v1}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method private final t(Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;",
            "Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->isActBanner()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->getMarketingCampaignResponse()Lcom/startshorts/androidplayer/bean/discover/DiscoverAct;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverAct;->getCampaignName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const-string v0, ""

    .line 21
    .line 22
    :goto_0
    sget v1, Lcom/startshorts/androidplayer/R$id;->resource_name_tv:I

    .line 23
    .line 24
    invoke-virtual {p2, v1, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->d(ILjava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    sget-object v0, Lkk/f;->a:Lkk/f;

    .line 28
    .line 29
    sget v1, Lcom/startshorts/androidplayer/R$id;->cover_iv:I

    .line 30
    .line 31
    invoke-virtual {p2, v1}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 36
    .line 37
    new-instance v1, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 38
    .line 39
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->getCoverId()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sget p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2;->o:I

    .line 50
    .line 51
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 52
    .line 53
    .line 54
    sget p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2;->p:I

    .line 55
    .line 56
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 57
    .line 58
    .line 59
    sget p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2;->m:I

    .line 60
    .line 61
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 62
    .line 63
    .line 64
    sget p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2;->n:I

    .line 65
    .line 66
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 67
    .line 68
    .line 69
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_banner_placeholder_2:I

    .line 70
    .line 71
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 72
    .line 73
    .line 74
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 75
    .line 76
    invoke-virtual {v0, p2, v1}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method private final u(Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;",
            "Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$id;->resource_name_tv:I

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->getShortPlayResponse()Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    invoke-virtual {p2, v0, v1}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->d(ILjava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lkk/f;->a:Lkk/f;

    .line 19
    .line 20
    sget v1, Lcom/startshorts/androidplayer/R$id;->cover_iv:I

    .line 21
    .line 22
    invoke-virtual {p2, v1}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 27
    .line 28
    new-instance v1, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 29
    .line 30
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->getCoverId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sget p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2;->o:I

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 43
    .line 44
    .line 45
    sget p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2;->p:I

    .line 46
    .line 47
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 48
    .line 49
    .line 50
    sget p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2;->m:I

    .line 51
    .line 52
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 53
    .line 54
    .line 55
    sget p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2;->n:I

    .line 56
    .line 57
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 58
    .line 59
    .line 60
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_banner_placeholder_2:I

    .line 61
    .line 62
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 63
    .line 64
    .line 65
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 66
    .line 67
    invoke-virtual {v0, p2, v1}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 68
    .line 69
    .line 70
    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Ljava/lang/Object;III)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2;->s(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;III)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(I)I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x5

    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    sget p1, Lcom/startshorts/androidplayer/R$layout;->item_discover_banner_shorts_2:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget p1, Lcom/startshorts/androidplayer/R$layout;->item_discover_banner_h5_2:I

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    sget p1, Lcom/startshorts/androidplayer/R$layout;->item_discover_banner_brand_ad_2:I

    .line 20
    .line 21
    :goto_0
    return p1
.end method

.method protected g(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->d()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->getBannerContent()Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    return v0

    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->isBrandAdBanner()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->isActBanner()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    const/4 v0, 0x3

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->isShortsBanner()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->isH5WebViewBanner()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_4

    .line 47
    .line 48
    const/4 v0, 0x4

    .line 49
    goto :goto_0

    .line 50
    :cond_4
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->isH5BrowserBanner()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_5

    .line 55
    .line 56
    const/4 v0, 0x5

    .line 57
    :cond_5
    :goto_0
    return v0
.end method

.method protected s(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;III)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            "III)V"
        }
    .end annotation

    .line 1
    const-string p3, "holder"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p3, "data"

    .line 7
    .line 8
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->getBannerContent()Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->isShortsBanner()Z

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    if-eqz p3, :cond_1

    .line 23
    .line 24
    invoke-direct {p0, p2, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2;->u(Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->isActBanner()Z

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    if-nez p3, :cond_3

    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->isH5WebViewBanner()Z

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    if-nez p3, :cond_3

    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->isH5BrowserBanner()Z

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    if-eqz p3, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->isBrandAdBanner()Z

    .line 48
    .line 49
    .line 50
    move-result p3

    .line 51
    if-eqz p3, :cond_4

    .line 52
    .line 53
    invoke-direct {p0, p2, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2;->r(Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    :goto_0
    invoke-direct {p0, p2, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2;->t(Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;)V

    .line 58
    .line 59
    .line 60
    :cond_4
    :goto_1
    return-void
.end method
