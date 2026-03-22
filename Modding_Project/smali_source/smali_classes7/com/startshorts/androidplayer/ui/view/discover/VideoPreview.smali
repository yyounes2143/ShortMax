.class public final Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;
.super Landroid/widget/FrameLayout;
.source "VideoPreview.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private d:Z

.field private e:Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Lz2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/a<",
            "Ly3/m;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Z


# direct methods
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
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Lgj/e;

    invoke-direct {p1, p0}, Lgj/e;-><init>(Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;)V

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    move-result-object p1

    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->a:Lms/i;

    .line 5
    new-instance p1, Lgj/f;

    invoke-direct {p1, p0}, Lgj/f;-><init>(Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;)V

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    move-result-object p1

    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->b:Lms/i;

    .line 6
    new-instance p1, Lgj/g;

    invoke-direct {p1, p0}, Lgj/g;-><init>(Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;)V

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    move-result-object p1

    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->c:Lms/i;

    .line 7
    invoke-direct {p0, p2, p3}, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->e(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;)Landroid/view/TextureView;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->h(Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;)Landroid/view/TextureView;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;)Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->g(Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;)Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->j(Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;)Landroid/widget/ImageView;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->f(Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final e(Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget p2, Lcom/startshorts/androidplayer/R$layout;->view_discover_video_preview:I

    .line 10
    .line 11
    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->getSoundIv()Landroid/widget/ImageView;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    new-instance p2, Lgj/h;

    .line 19
    .line 20
    invoke-direct {p2, p0}, Lgj/h;-><init>(Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private static final f(Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->d:Z

    .line 2
    .line 3
    xor-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->k(Z)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->e:Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview$a;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-boolean p0, p0, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->d:Z

    .line 13
    .line 14
    invoke-interface {p1, p0}, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview$a;->a(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private static final g(Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;)Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$id;->bg_iv:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 8
    .line 9
    return-object p0
.end method

.method private final getMBgIv()Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getValue(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 13
    .line 14
    return-object v0
.end method

.method private final getSoundIv()Landroid/widget/ImageView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->c:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getValue(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Landroid/widget/ImageView;

    .line 13
    .line 14
    return-object v0
.end method

.method private static final h(Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;)Landroid/view/TextureView;
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$id;->video_render_view:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/TextureView;

    .line 8
    .line 9
    return-object p0
.end method

.method private static final j(Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;)Landroid/widget/ImageView;
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$id;->sound_iv:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/widget/ImageView;

    .line 8
    .line 9
    return-object p0
.end method


# virtual methods
.method public final getMBgUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMControllerListener()Lz2/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz2/a<",
            "Ly3/m;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->f:Lz2/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMHasBgLoaded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getMTextureView()Landroid/view/TextureView;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->a:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getValue(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Landroid/view/TextureView;

    .line 13
    .line 14
    return-object v0
.end method

.method public final i(Ljava/lang/String;II)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "imgUrl"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->g:Ljava/lang/String;

    .line 7
    .line 8
    sget-object v0, Lkk/f;->a:Lkk/f;

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->getMBgIv()Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 15
    .line 16
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, p2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 32
    .line 33
    .line 34
    new-instance p1, Ld4/a;

    .line 35
    .line 36
    const/4 p2, 0x3

    .line 37
    const/4 p3, 0x6

    .line 38
    invoke-direct {p1, p2, p3}, Ld4/a;-><init>(II)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setIterativeBoxBlurPostProcessor(Ld4/a;)V

    .line 42
    .line 43
    .line 44
    sget-object p1, Lc3/q;->g:Lc3/q;

    .line 45
    .line 46
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderScaleType(Lc3/q;)V

    .line 47
    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setFadeDuration(I)V

    .line 51
    .line 52
    .line 53
    new-instance p1, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview$c;

    .line 54
    .line 55
    invoke-direct {p1, p0}, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview$c;-><init>(Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setControllerListener(Lz2/a;)V

    .line 59
    .line 60
    .line 61
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 62
    .line 63
    invoke-virtual {v0, v1, v2}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final k(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->d:Z

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->getSoundIv()Landroid/widget/ImageView;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->d:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->ic_video_preview_sound:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->ic_video_preview_no_sound:I

    .line 15
    .line 16
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final setCornerRadius(Ljava/lang/Float;)V
    .locals 2
    .param p1    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    cmpl-float v0, v0, v1

    .line 9
    .line 10
    if-ltz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview$b;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview$b;-><init>(Ljava/lang/Float;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final setListener(Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview$a;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->e:Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview$a;

    .line 7
    .line 8
    return-void
.end method

.method public final setMBgUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMControllerListener(Lz2/a;)V
    .locals 0
    .param p1    # Lz2/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/a<",
            "Ly3/m;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->f:Lz2/a;

    .line 2
    .line 3
    return-void
.end method

.method public final setMHasBgLoaded(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->h:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setSoundViewVisibility(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->getSoundIv()Landroid/widget/ImageView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
