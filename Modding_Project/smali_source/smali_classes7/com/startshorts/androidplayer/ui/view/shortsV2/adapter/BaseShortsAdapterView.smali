.class public abstract Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;
.super Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;
.source "BaseShortsAdapterView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBaseShortsAdapterView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseShortsAdapterView.kt\ncom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,258:1\n1863#2,2:259\n*S KotlinDebug\n*F\n+ 1 BaseShortsAdapterView.kt\ncom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView\n*L\n87#1:259,2\n*E\n"
    }
.end annotation


# static fields
.field public static final D:Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final E:I

.field private static final F:I


# instance fields
.field private A:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private B:Z

.field private C:Z

.field private v:Landroid/view/TextureView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private w:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private x:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private y:Lcom/startshorts/androidplayer/ui/view/pagestate/SLoadingView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private z:Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->D:Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView$a;

    .line 8
    .line 9
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sput v1, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->E:I

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->F()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/high16 v1, 0x42440000    # 49.0f

    .line 22
    .line 23
    invoke-static {v1}, Ljk/g;->a(F)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    sub-int/2addr v0, v1

    .line 28
    sput v0, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->F:I

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final C(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->C:Z

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->B:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->w:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->getExtraAdInfo()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/act/ActResource;->isBrandAdVideo()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x1

    .line 30
    if-ne v2, v3, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    move v3, v1

    .line 34
    :goto_0
    if-eqz v3, :cond_3

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getFirstFrameWidthForAdOfShorts()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getFirstFrameHeightForAdOfShorts()I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getCoverWidthForAdOfShorts()I

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getCoverHeightForAdOfShorts()I

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    const/4 v5, 0x1

    .line 53
    move-object v4, p1

    .line 54
    invoke-virtual/range {v4 .. v9}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoCover(ZIIII)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    goto :goto_1

    .line 59
    :cond_3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->fromRecommendPool()Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getFirstFrameWidthForShorts()I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getFirstFrameHeightForShorts()I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getCoverWidthForShorts()I

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getCoverHeightForShorts()I

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    move-object v4, p1

    .line 80
    invoke-virtual/range {v4 .. v9}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoCover(ZIIII)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    :goto_1
    sget-object v2, Lkk/f;->a:Lkk/f;

    .line 85
    .line 86
    new-instance v4, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 87
    .line 88
    invoke-direct {v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssProcess(Z)V

    .line 95
    .line 96
    .line 97
    new-instance p1, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView$b;

    .line 98
    .line 99
    invoke-direct {p1, p0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView$b;-><init>(Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setControllerListener(Lz2/a;)V

    .line 103
    .line 104
    .line 105
    if-eqz v3, :cond_4

    .line 106
    .line 107
    sget-object p1, Lc3/q;->b:Lc3/q;

    .line 108
    .line 109
    invoke-virtual {v4, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setScaleType(Lc3/q;)V

    .line 110
    .line 111
    .line 112
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 113
    .line 114
    invoke-virtual {v2, v0, v4}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 115
    .line 116
    .line 117
    :cond_5
    :goto_2
    return-void
.end method

.method private final getNotificationLayout()Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->z:Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    sget v0, Lcom/startshorts/androidplayer/R$id;->notification_layout_viewstub:I

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v1, v0, Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    check-cast v0, Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    instance-of v1, v0, Landroid/view/ViewStub;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    check-cast v0, Landroid/view/ViewStub;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move-object v0, v2

    .line 27
    :goto_0
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    move-object v0, v2

    .line 35
    :goto_1
    instance-of v1, v0, Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;

    .line 36
    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    check-cast v0, Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_3
    move-object v0, v2

    .line 43
    :goto_2
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->z:Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;

    .line 44
    .line 45
    :cond_4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->z:Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;

    .line 46
    .line 47
    return-object v0
.end method

.method public static final synthetic s(Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->B:Z

    .line 2
    .line 3
    return-void
.end method

.method private final v()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->w:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->getNotificationLayout()Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final B(Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationType;ZLyd/a;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lyd/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->getNotificationLayout()Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;->h(Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationType;ZLyd/a;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final D()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->y:Lcom/startshorts/androidplayer/ui/view/pagestate/SLoadingView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_4

    .line 5
    .line 6
    sget v0, Lcom/startshorts/androidplayer/R$id;->loading_viewstub:I

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    instance-of v2, v0, Lcom/startshorts/androidplayer/ui/view/pagestate/SLoadingView;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    check-cast v0, Lcom/startshorts/androidplayer/ui/view/pagestate/SLoadingView;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    instance-of v1, v0, Landroid/view/ViewStub;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    check-cast v0, Landroid/view/ViewStub;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move-object v0, v2

    .line 31
    :goto_0
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move-object v0, v2

    .line 39
    :goto_1
    instance-of v1, v0, Lcom/startshorts/androidplayer/ui/view/pagestate/SLoadingView;

    .line 40
    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    check-cast v0, Lcom/startshorts/androidplayer/ui/view/pagestate/SLoadingView;

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_3
    move-object v0, v2

    .line 47
    :goto_2
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->y:Lcom/startshorts/androidplayer/ui/view/pagestate/SLoadingView;

    .line 48
    .line 49
    if-eqz v0, :cond_5

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/pagestate/SLoadingView;->b()V

    .line 52
    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->z()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_5

    .line 60
    .line 61
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->y:Lcom/startshorts/androidplayer/ui/view/pagestate/SLoadingView;

    .line 62
    .line 63
    if-eqz v0, :cond_5

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/pagestate/SLoadingView;->b()V

    .line 69
    .line 70
    .line 71
    :cond_5
    :goto_3
    return-void
.end method

.method public final E()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->x:Landroid/widget/ImageView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_4

    .line 5
    .line 6
    sget v0, Lcom/startshorts/androidplayer/R$id;->play_button_viewstub:I

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    instance-of v2, v0, Landroid/widget/ImageView;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    check-cast v0, Landroid/widget/ImageView;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    instance-of v1, v0, Landroid/view/ViewStub;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    check-cast v0, Landroid/view/ViewStub;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move-object v0, v2

    .line 31
    :goto_0
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move-object v0, v2

    .line 39
    :goto_1
    instance-of v1, v0, Landroid/widget/ImageView;

    .line 40
    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    check-cast v0, Landroid/widget/ImageView;

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_3
    move-object v0, v2

    .line 47
    :goto_2
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->x:Landroid/widget/ImageView;

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_4
    if-eqz v0, :cond_5

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    :cond_5
    :goto_3
    return-void
.end method

.method public e(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p2, "context"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget p1, Lcom/startshorts/androidplayer/R$id;->cover_iv:I

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->w:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 15
    .line 16
    return-void
.end method

.method public final getAllMenus()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzj/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$id;->menu_layout:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/ViewGroup;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_0
    if-ge v3, v2, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    instance-of v5, v4, Lzj/a;

    .line 30
    .line 31
    if-eqz v5, :cond_1

    .line 32
    .line 33
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    return-object v1
.end method

.method protected final getMEpisode()Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->A:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMVideoRendered()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->C:Z

    .line 2
    .line 3
    return v0
.end method

.method public final synthetic getMenu()Lzj/a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lzj/a;",
            ">()TT;"
        }
    .end annotation

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$id;->menu_layout:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/ViewGroup;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    :goto_0
    if-ge v3, v2, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    const/4 v5, 0x3

    .line 25
    const-string v6, "T"

    .line 26
    .line 27
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    instance-of v5, v4, Lzj/a;

    .line 31
    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    check-cast v4, Lzj/a;

    .line 35
    .line 36
    return-object v4

    .line 37
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    return-object v1
.end method

.method public final getVideoRenderView()Landroid/view/TextureView;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->v:Landroid/view/TextureView;

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    sget v0, Lcom/startshorts/androidplayer/R$id;->video_render_viewstub:I

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v1, v0, Landroid/view/TextureView;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    check-cast v0, Landroid/view/TextureView;

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    instance-of v1, v0, Landroid/view/ViewStub;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    check-cast v0, Landroid/view/ViewStub;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move-object v0, v2

    .line 27
    :goto_0
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    move-object v0, v2

    .line 35
    :goto_1
    instance-of v1, v0, Landroid/view/TextureView;

    .line 36
    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    check-cast v0, Landroid/view/TextureView;

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_3
    move-object v0, v2

    .line 43
    :goto_2
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->v:Landroid/view/TextureView;

    .line 44
    .line 45
    :cond_4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->v:Landroid/view/TextureView;

    .line 46
    .line 47
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->A:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->C(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->setMVideoRendered(Z)V

    .line 6
    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->B:Z

    .line 9
    .line 10
    return-void
.end method

.method public setEpisode(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "episode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->A:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->y(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected final setMEpisode(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->A:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 2
    .line 3
    return-void
.end method

.method public final setMVideoRendered(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->C:Z

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v0, "episode("

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->A:Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, ") mVideoRendered(true)"

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/base/BaseFrameLayout;->c(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->v()V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method public final t(Lak/a;Landroid/widget/LinearLayout$LayoutParams;Lyd/a;)V
    .locals 1
    .param p1    # Lak/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/LinearLayout$LayoutParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lyd/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "notification"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "layoutParams"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->getNotificationLayout()Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;->f(Lak/a;Landroid/widget/LinearLayout$LayoutParams;Lyd/a;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final u(I)Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$id;->menu_layout:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/ViewGroup;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    :goto_0
    if-ge v3, v2, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    instance-of v5, v4, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;

    .line 25
    .line 26
    if-eqz v5, :cond_1

    .line 27
    .line 28
    check-cast v4, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;

    .line 29
    .line 30
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;->x()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-ne v5, p1, :cond_1

    .line 35
    .line 36
    return-object v4

    .line 37
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    return-object v1
.end method

.method public final w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->y:Lcom/startshorts/androidplayer/ui/view/pagestate/SLoadingView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/pagestate/SLoadingView;->d()V

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->x:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public y(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "episode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->getAllMenus()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    check-cast v0, Ljava/lang/Iterable;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lzj/a;

    .line 29
    .line 30
    invoke-interface {v1, p1}, Lzj/a;->e(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method public final z()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->y:Lcom/startshorts/androidplayer/ui/view/pagestate/SLoadingView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    :cond_0
    return v1
.end method
