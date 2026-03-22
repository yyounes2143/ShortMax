.class public Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;
.super Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;
.source "DiscoverBannerAdapter3.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3$a;
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
        "SMAP\nDiscoverBannerAdapter3.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverBannerAdapter3.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,175:1\n216#2,2:176\n*S KotlinDebug\n*F\n+ 1 DiscoverBannerAdapter3.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3\n*L\n49#1:176,2\n*E\n"
    }
.end annotation


# static fields
.field public static final p:Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final q:I

.field private static final r:I

.field private static final s:I

.field private static final t:I

.field private static final u:I


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
    .locals 3

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->p:Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3$a;

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
    const/high16 v1, 0x42600000    # 56.0f

    .line 16
    .line 17
    invoke-static {v1}, Ljk/g;->a(F)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    mul-int/lit8 v1, v1, 0x2

    .line 22
    .line 23
    sub-int/2addr v0, v1

    .line 24
    sput v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->q:I

    .line 25
    .line 26
    sget-object v1, Lqe/a;->a:Lqe/a;

    .line 27
    .line 28
    invoke-virtual {v1}, Lqe/a;->h()Lcom/startshorts/androidplayer/bean/configure/FeatureController;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->getFixedBannerHeightEnable()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    const/high16 v1, 0x43a50000    # 330.0f

    .line 39
    .line 40
    invoke-static {v1}, Ljk/g;->a(F)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    int-to-float v1, v0

    .line 46
    const v2, 0x3faa57a8    # 1.3308f

    .line 47
    .line 48
    .line 49
    mul-float/2addr v1, v2

    .line 50
    invoke-static {v1}, Lbt/a;->c(F)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    :goto_0
    sput v1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->r:I

    .line 55
    .line 56
    sput v1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->s:I

    .line 57
    .line 58
    sput v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->t:I

    .line 59
    .line 60
    sput v1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->u:I

    .line 61
    .line 62
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
    iput v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->l:F

    .line 12
    .line 13
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->n:Z

    .line 22
    .line 23
    return-void
.end method

.method public static final synthetic n()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->u:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic o()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->t:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic p()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->s:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic q()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->q:I

    .line 2
    .line 3
    return v0
.end method

.method private final r(Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;)V
    .locals 3
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
    sget v0, Lcom/startshorts/androidplayer/R$id;->cover_iv:I

    .line 11
    .line 12
    invoke-virtual {p2, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->getContentValueName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/16 v1, 0x20

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->getCoverId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->getContentType()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    sget-object v0, Lkk/f;->a:Lkk/f;

    .line 60
    .line 61
    new-instance v1, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 62
    .line 63
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->getCoverId()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    sget p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->t:I

    .line 74
    .line 75
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 76
    .line 77
    .line 78
    sget p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->u:I

    .line 79
    .line 80
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 81
    .line 82
    .line 83
    sget p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->q:I

    .line 84
    .line 85
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 86
    .line 87
    .line 88
    sget p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->s:I

    .line 89
    .line 90
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 91
    .line 92
    .line 93
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_banner_placeholder:I

    .line 94
    .line 95
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 96
    .line 97
    .line 98
    const/4 p1, 0x1

    .line 99
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 100
    .line 101
    .line 102
    iget p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->l:F

    .line 103
    .line 104
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 105
    .line 106
    .line 107
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 108
    .line 109
    invoke-virtual {v0, p2, v1}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method private final t(Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;)V
    .locals 3
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
    sget v0, Lcom/startshorts/androidplayer/R$id;->cover_iv:I

    .line 28
    .line 29
    invoke-virtual {p2, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->getContentValueName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const/16 v1, 0x20

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->getCoverId()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->getContentType()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    sget-object v0, Lkk/f;->a:Lkk/f;

    .line 77
    .line 78
    new-instance v1, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 79
    .line 80
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->getCoverId()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    sget p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->t:I

    .line 91
    .line 92
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 93
    .line 94
    .line 95
    sget p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->u:I

    .line 96
    .line 97
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 98
    .line 99
    .line 100
    sget p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->q:I

    .line 101
    .line 102
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 103
    .line 104
    .line 105
    sget p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->s:I

    .line 106
    .line 107
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 108
    .line 109
    .line 110
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_banner_placeholder:I

    .line 111
    .line 112
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 113
    .line 114
    .line 115
    const/4 p1, 0x1

    .line 116
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 117
    .line 118
    .line 119
    iget p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->l:F

    .line 120
    .line 121
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 122
    .line 123
    .line 124
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 125
    .line 126
    invoke-virtual {v0, p2, v1}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method private final u(Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;)V
    .locals 3
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
    sget v0, Lcom/startshorts/androidplayer/R$id;->cover_iv:I

    .line 19
    .line 20
    invoke-virtual {p2, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->getContentValueName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const/16 v1, 0x20

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->getCoverId()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->getContentType()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    sget-object v0, Lkk/f;->a:Lkk/f;

    .line 68
    .line 69
    new-instance v1, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 70
    .line 71
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->getCoverId()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    sget p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->t:I

    .line 82
    .line 83
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 84
    .line 85
    .line 86
    sget p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->u:I

    .line 87
    .line 88
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 89
    .line 90
    .line 91
    sget p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->q:I

    .line 92
    .line 93
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 94
    .line 95
    .line 96
    sget p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->s:I

    .line 97
    .line 98
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 99
    .line 100
    .line 101
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_banner_placeholder:I

    .line 102
    .line 103
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 104
    .line 105
    .line 106
    const/4 p1, 0x1

    .line 107
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 108
    .line 109
    .line 110
    iget p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->l:F

    .line 111
    .line 112
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 113
    .line 114
    .line 115
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 116
    .line 117
    invoke-virtual {v0, p2, v1}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 118
    .line 119
    .line 120
    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Ljava/lang/Object;III)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->s(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;III)V

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

.method protected s(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;III)V
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
    iget-object p3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->m:Ljava/util/concurrent/ConcurrentHashMap;

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
    iget-object p3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->m:Ljava/util/concurrent/ConcurrentHashMap;

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
    iget-object p5, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 74
    .line 75
    invoke-interface {p5, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    iget-boolean p3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->n:Z

    .line 79
    .line 80
    if-eqz p3, :cond_3

    .line 81
    .line 82
    const/4 p3, 0x0

    .line 83
    iput-boolean p3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->n:Z

    .line 84
    .line 85
    invoke-virtual {p0, p4}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->v(I)V

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
    invoke-direct {p0, p2, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->u(Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;)V

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
    invoke-direct {p0, p2, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->r(Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;)V

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_7
    :goto_1
    invoke-direct {p0, p2, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->t(Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;)V

    .line 135
    .line 136
    .line 137
    :cond_8
    :goto_2
    return-void
.end method

.method public final v(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->m:Ljava/util/concurrent/ConcurrentHashMap;

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
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->o:I

    .line 60
    .line 61
    return-void
.end method
