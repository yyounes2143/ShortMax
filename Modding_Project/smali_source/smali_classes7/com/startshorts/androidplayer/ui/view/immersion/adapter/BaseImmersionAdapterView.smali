.class public abstract Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;
.super Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;
.source "BaseImmersionAdapterView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final H:Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final I:I

.field private static final J:I


# instance fields
.field private A:Lcom/startshorts/androidplayer/ui/view/pagestate/SLoadingView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private B:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private C:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private D:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private E:Z

.field private F:Z

.field private G:Z

.field private v:Landroid/view/TextureView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private w:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private x:Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private y:Landroid/view/ViewStub;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private z:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->H:Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView$a;

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
    sput v1, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->I:I

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->F()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/high16 v1, 0x42920000    # 73.0f

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
    sput v0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->J:I

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
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

.method private static final E(Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->getMListener()Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout$b;->i()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->F:Z

    .line 11
    .line 12
    xor-int/lit8 v0, p1, 0x1

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->F:Z

    .line 15
    .line 16
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->z:Landroid/widget/ImageView;

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    if-eqz p0, :cond_2

    .line 21
    .line 22
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_video_play:I

    .line 23
    .line 24
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    if-eqz p0, :cond_2

    .line 29
    .line 30
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_video_pause:I

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    :goto_1
    return-void
.end method

.method private final G()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->B:Landroid/widget/ImageView;

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

.method private final H(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->G:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->E:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->w:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

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
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getFirstFrameWidthForImmersion()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getFirstFrameHeightForImmersion()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getCoverWidthForImmersion()I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getCoverHeightForImmersion()I

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    const/4 v3, 0x0

    .line 36
    move-object v2, p1

    .line 37
    invoke-virtual/range {v2 .. v7}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoCover(ZIIII)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    sget-object v2, Lkk/f;->a:Lkk/f;

    .line 42
    .line 43
    new-instance v3, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 44
    .line 45
    invoke-direct {v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssProcess(Z)V

    .line 52
    .line 53
    .line 54
    new-instance p1, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView$b;

    .line 55
    .line 56
    invoke-direct {p1, p0}, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView$b;-><init>(Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setControllerListener(Lz2/a;)V

    .line 60
    .line 61
    .line 62
    sget-object p1, Lc3/q;->b:Lc3/q;

    .line 63
    .line 64
    invoke-virtual {v3, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setScaleType(Lc3/q;)V

    .line 65
    .line 66
    .line 67
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 68
    .line 69
    invoke-virtual {v2, v0, v3}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 70
    .line 71
    .line 72
    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic s(Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->E(Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic t()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->J:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic u()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->I:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic v(Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->E:Z

    .line 2
    .line 3
    return-void
.end method

.method private final w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->w:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->C:Landroidx/constraintlayout/widget/ConstraintLayout;

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

.method public final B()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    instance-of v3, v2, Lpj/a;

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    check-cast v2, Lpj/a;

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v2, 0x0

    .line 23
    :goto_1
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-interface {v2}, Lpj/a;->release()V

    .line 26
    .line 27
    .line 28
    instance-of v0, v2, Landroid/view/View;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    check-cast v2, Landroid/view/View;

    .line 33
    .line 34
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    return-void
.end method

.method public final C()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->D:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->G()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->E:Z

    .line 14
    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->G:Z

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    return-void

    .line 22
    :cond_2
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->B:Landroid/widget/ImageView;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    if-nez v1, :cond_7

    .line 26
    .line 27
    sget v1, Lcom/startshorts/androidplayer/R$id;->logo_viewstub:I

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    instance-of v3, v1, Landroid/widget/ImageView;

    .line 34
    .line 35
    if-eqz v3, :cond_3

    .line 36
    .line 37
    check-cast v1, Landroid/widget/ImageView;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_3
    instance-of v3, v1, Landroid/view/ViewStub;

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    if-eqz v3, :cond_4

    .line 47
    .line 48
    check-cast v1, Landroid/view/ViewStub;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_4
    move-object v1, v4

    .line 52
    :goto_0
    if-eqz v1, :cond_5

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    goto :goto_1

    .line 59
    :cond_5
    move-object v1, v4

    .line 60
    :goto_1
    instance-of v3, v1, Landroid/widget/ImageView;

    .line 61
    .line 62
    if-eqz v3, :cond_6

    .line 63
    .line 64
    check-cast v1, Landroid/widget/ImageView;

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_6
    move-object v1, v4

    .line 68
    :goto_2
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->B:Landroid/widget/ImageView;

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_7
    if-eqz v1, :cond_8

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    :cond_8
    :goto_3
    sget v1, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->I:I

    .line 77
    .line 78
    int-to-float v1, v1

    .line 79
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getAspectRatio()F

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    div-float/2addr v1, v0

    .line 84
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    sget v1, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->J:I

    .line 89
    .line 90
    sub-int/2addr v1, v0

    .line 91
    div-int/lit8 v1, v1, 0x2

    .line 92
    .line 93
    if-gez v1, :cond_9

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_9
    move v2, v1

    .line 97
    :goto_4
    sget-object v0, Lfk/z;->a:Lfk/z;

    .line 98
    .line 99
    invoke-virtual {v0}, Lfk/z;->d()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    add-int/2addr v2, v0

    .line 104
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->B:Landroid/widget/ImageView;

    .line 105
    .line 106
    if-eqz v0, :cond_a

    .line 107
    .line 108
    invoke-static {v0, v2}, Ljk/b0;->g(Landroid/view/View;I)V

    .line 109
    .line 110
    .line 111
    :cond_a
    return-void
.end method

.method public final D()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->D:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isLocked()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v0, v2, :cond_3

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "showPlayButton failed -> episodeNum("

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->D:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    goto :goto_3

    .line 38
    :cond_0
    move-object v2, v1

    .line 39
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, ") vipFree("

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->D:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 48
    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVipFree()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    move-object v2, v1

    .line 61
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v2, ") alreadyLock("

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->D:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 70
    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getAlreadyLock()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const/16 v1, 0x29

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/view/base/BaseFrameLayout;->b(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->y:Landroid/view/ViewStub;

    .line 98
    .line 99
    if-nez v0, :cond_6

    .line 100
    .line 101
    sget v0, Lcom/startshorts/androidplayer/R$id;->play_button_viewstub:I

    .line 102
    .line 103
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Landroid/view/ViewStub;

    .line 108
    .line 109
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->y:Landroid/view/ViewStub;

    .line 110
    .line 111
    if-eqz v0, :cond_4

    .line 112
    .line 113
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    goto :goto_2

    .line 118
    :cond_4
    move-object v0, v1

    .line 119
    :goto_2
    instance-of v2, v0, Landroid/widget/ImageView;

    .line 120
    .line 121
    if-eqz v2, :cond_5

    .line 122
    .line 123
    move-object v1, v0

    .line 124
    check-cast v1, Landroid/widget/ImageView;

    .line 125
    .line 126
    :cond_5
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->z:Landroid/widget/ImageView;

    .line 127
    .line 128
    :cond_6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->z:Landroid/widget/ImageView;

    .line 129
    .line 130
    if-eqz v0, :cond_7

    .line 131
    .line 132
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/a;

    .line 133
    .line 134
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/a;-><init>(Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .line 139
    .line 140
    goto :goto_4

    .line 141
    :goto_3
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 142
    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    const-string v3, "inflate exception -> "

    .line 149
    .line 150
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    const-string v2, "initPlayButton"

    .line 165
    .line 166
    invoke-virtual {v1, v2, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    :cond_7
    :goto_4
    return-void
.end method

.method public final F()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->A:Lcom/startshorts/androidplayer/ui/view/pagestate/SLoadingView;

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

.method public final I()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->A:Lcom/startshorts/androidplayer/ui/view/pagestate/SLoadingView;

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
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->A:Lcom/startshorts/androidplayer/ui/view/pagestate/SLoadingView;

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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->F()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_5

    .line 60
    .line 61
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->A:Lcom/startshorts/androidplayer/ui/view/pagestate/SLoadingView;

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

.method public final J(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->z:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->F:Z

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->z:Landroid/widget/ImageView;

    .line 14
    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->ic_video_play:I

    .line 18
    .line 19
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->z:Landroid/widget/ImageView;

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->ic_video_pause:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    :goto_1
    return-void
.end method

.method public final K(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tip"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->C:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    .line 8
    if-nez v0, :cond_4

    .line 9
    .line 10
    sget v0, Lcom/startshorts/androidplayer/R$id;->switching_resolution_viewstub:I

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    instance-of v1, v0, Landroid/view/ViewStub;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    check-cast v0, Landroid/view/ViewStub;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move-object v0, v2

    .line 32
    :goto_0
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move-object v0, v2

    .line 40
    :goto_1
    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 41
    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_3
    move-object v0, v2

    .line 48
    :goto_2
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->C:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 49
    .line 50
    :cond_4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->C:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 51
    .line 52
    if-eqz v0, :cond_6

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    sget v1, Lcom/startshorts/androidplayer/R$id;->tip_tv:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 65
    .line 66
    if-eqz v1, :cond_5

    .line 67
    .line 68
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    :cond_5
    sget p1, Lcom/startshorts/androidplayer/R$id;->refresh_iv:I

    .line 72
    .line 73
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    .line 78
    .line 79
    if-eqz p1, :cond_6

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->y()V

    .line 82
    .line 83
    .line 84
    :cond_6
    return-void
.end method

.method public final L(Lpj/a;)V
    .locals 1
    .param p1    # Lpj/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->B()V

    .line 7
    .line 8
    .line 9
    instance-of v0, p1, Landroid/view/View;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    check-cast p1, Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public M(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Z)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "shortsInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "episode"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->x:Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;->w(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->x:Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;->a(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->w:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 15
    .line 16
    sget p1, Lcom/startshorts/androidplayer/R$id;->v_immersion_control:I

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->x:Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;

    .line 25
    .line 26
    return-void
.end method

.method protected final getMEpisode()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->D:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMVideoRendered()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->G:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getVideoRenderView()Landroid/view/TextureView;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->v:Landroid/view/TextureView;

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
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->v:Landroid/view/TextureView;

    .line 44
    .line 45
    :cond_4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->v:Landroid/view/TextureView;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->D:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->H(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

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
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->setMVideoRendered(Z)V

    .line 6
    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->E:Z

    .line 9
    .line 10
    return-void
.end method

.method public setEpisode(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->D:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 7
    .line 8
    return-void
.end method

.method protected final setMEpisode(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->D:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    return-void
.end method

.method public final setMVideoRendered(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->G:Z

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
    const-string v0, "episodeNum("

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->D:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->C()V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->w()V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method

.method public final x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->A:Lcom/startshorts/androidplayer/ui/view/pagestate/SLoadingView;

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

.method public final y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->B:Landroid/widget/ImageView;

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

.method public final z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->z:Landroid/widget/ImageView;

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
