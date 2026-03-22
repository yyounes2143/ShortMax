.class public final Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;
.super Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;
.source "DiscoverBannerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter$a;
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDiscoverBannerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverBannerAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,166:1\n216#2,2:167\n*S KotlinDebug\n*F\n+ 1 DiscoverBannerAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter\n*L\n45#1:167,2\n*E\n"
    }
.end annotation


# static fields
.field public static final p:Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final q:I

.field private static final r:I

.field private static final s:I

.field private static final t:I

.field private static final u:I

.field private static final v:I


# instance fields
.field private final l:F

.field private final m:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private n:Z

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->p:Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter$a;

    .line 8
    .line 9
    const/high16 v0, 0x43c10000    # 386.0f

    .line 10
    .line 11
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->q:I

    .line 16
    .line 17
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/high16 v2, 0x42300000    # 44.0f

    .line 24
    .line 25
    invoke-static {v2}, Ljk/g;->a(F)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    mul-int/lit8 v2, v2, 0x2

    .line 30
    .line 31
    sub-int/2addr v1, v2

    .line 32
    sput v1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->r:I

    .line 33
    .line 34
    int-to-float v2, v1

    .line 35
    const v3, 0x3faa5e35    # 1.331f

    .line 36
    .line 37
    .line 38
    mul-float/2addr v2, v3

    .line 39
    invoke-static {v2}, Lbt/a;->c(F)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    sput v2, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->s:I

    .line 44
    .line 45
    if-ge v2, v0, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move v0, v2

    .line 49
    :goto_0
    sput v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->t:I

    .line 50
    .line 51
    sput v1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->u:I

    .line 52
    .line 53
    sput v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->v:I

    .line 54
    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lfk/z;->a:Lfk/z;

    .line 5
    .line 6
    invoke-virtual {v0}, Lfk/z;->r()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    int-to-float v0, v0

    .line 11
    iput v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->l:F

    .line 12
    .line 13
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->n:Z

    .line 22
    .line 23
    return-void
.end method

.method public static final synthetic n()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->v:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic o()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->u:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic p()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->t:I

    .line 2
    .line 3
    return v0
.end method

.method private final q(Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;)V
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
    sget p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->u:I

    .line 33
    .line 34
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 35
    .line 36
    .line 37
    sget p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->v:I

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 40
    .line 41
    .line 42
    sget p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->r:I

    .line 43
    .line 44
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 45
    .line 46
    .line 47
    sget p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->t:I

    .line 48
    .line 49
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 50
    .line 51
    .line 52
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_banner_placeholder:I

    .line 53
    .line 54
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 55
    .line 56
    .line 57
    const/4 p1, 0x1

    .line 58
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 59
    .line 60
    .line 61
    iget p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->l:F

    .line 62
    .line 63
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 64
    .line 65
    .line 66
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 67
    .line 68
    invoke-virtual {v0, p2, v1}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method private final s(Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;)V
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
    sget p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->u:I

    .line 50
    .line 51
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 52
    .line 53
    .line 54
    sget p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->v:I

    .line 55
    .line 56
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 57
    .line 58
    .line 59
    sget p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->r:I

    .line 60
    .line 61
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 62
    .line 63
    .line 64
    sget p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->t:I

    .line 65
    .line 66
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 67
    .line 68
    .line 69
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_banner_placeholder:I

    .line 70
    .line 71
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 72
    .line 73
    .line 74
    const/4 p1, 0x1

    .line 75
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 76
    .line 77
    .line 78
    iget p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->l:F

    .line 79
    .line 80
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 81
    .line 82
    .line 83
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 84
    .line 85
    invoke-virtual {v0, p2, v1}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 86
    .line 87
    .line 88
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
    sget p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->u:I

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 43
    .line 44
    .line 45
    sget p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->v:I

    .line 46
    .line 47
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 48
    .line 49
    .line 50
    sget p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->r:I

    .line 51
    .line 52
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 53
    .line 54
    .line 55
    sget p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->t:I

    .line 56
    .line 57
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 58
    .line 59
    .line 60
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_banner_placeholder:I

    .line 61
    .line 62
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 63
    .line 64
    .line 65
    const/4 p1, 0x1

    .line 66
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 67
    .line 68
    .line 69
    iget p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->l:F

    .line 70
    .line 71
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

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


# virtual methods
.method public bridge synthetic b(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Ljava/lang/Object;III)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->r(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;III)V

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
    sget p1, Lcom/startshorts/androidplayer/R$layout;->item_discover_banner_shorts:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget p1, Lcom/startshorts/androidplayer/R$layout;->item_discover_banner_h5:I

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    sget p1, Lcom/startshorts/androidplayer/R$layout;->item_discover_banner_brand_ad:I

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

.method protected r(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;III)V
    .locals 2
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
    iget-object p3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result p5

    .line 25
    const/4 v0, -0x1

    .line 26
    if-eqz p5, :cond_1

    .line 27
    .line 28
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p5

    .line 32
    check-cast p5, Ljava/util/Map$Entry;

    .line 33
    .line 34
    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/lang/Number;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p5

    .line 48
    check-cast p5, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;

    .line 49
    .line 50
    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p5

    .line 54
    if-eqz p5, :cond_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move v1, v0

    .line 58
    :goto_0
    if-eq v1, v0, :cond_2

    .line 59
    .line 60
    iget-object p3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 61
    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object p5

    .line 66
    invoke-virtual {p3, p5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    iget-object p5, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 74
    .line 75
    invoke-interface {p5, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    iget-boolean p3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->n:Z

    .line 79
    .line 80
    if-eqz p3, :cond_3

    .line 81
    .line 82
    const/4 p3, 0x0

    .line 83
    iput-boolean p3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->n:Z

    .line 84
    .line 85
    invoke-virtual {p0, p4}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->u(I)V

    .line 86
    .line 87
    .line 88
    :cond_3
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->getBannerContent()Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    if-nez p2, :cond_4

    .line 93
    .line 94
    return-void

    .line 95
    :cond_4
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->isShortsBanner()Z

    .line 96
    .line 97
    .line 98
    move-result p3

    .line 99
    if-eqz p3, :cond_5

    .line 100
    .line 101
    invoke-direct {p0, p2, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->t(Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;)V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_5
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->isActBanner()Z

    .line 106
    .line 107
    .line 108
    move-result p3

    .line 109
    if-nez p3, :cond_7

    .line 110
    .line 111
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->isH5WebViewBanner()Z

    .line 112
    .line 113
    .line 114
    move-result p3

    .line 115
    if-nez p3, :cond_7

    .line 116
    .line 117
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->isH5BrowserBanner()Z

    .line 118
    .line 119
    .line 120
    move-result p3

    .line 121
    if-eqz p3, :cond_6

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_6
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->isBrandAdBanner()Z

    .line 125
    .line 126
    .line 127
    move-result p3

    .line 128
    if-eqz p3, :cond_8

    .line 129
    .line 130
    invoke-direct {p0, p2, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->q(Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;)V

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_7
    :goto_1
    invoke-direct {p0, p2, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->s(Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;)V

    .line 135
    .line 136
    .line 137
    :cond_8
    :goto_2
    return-void
.end method

.method public final u(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;

    .line 28
    .line 29
    sget v3, Lcom/startshorts/androidplayer/R$id;->play_iv:I

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroid/widget/ImageView;

    .line 36
    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Ljava/lang/Number;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-ne v1, p1, :cond_1

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const/16 v1, 0x8

    .line 54
    .line 55
    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->o:I

    .line 60
    .line 61
    return-void
.end method
