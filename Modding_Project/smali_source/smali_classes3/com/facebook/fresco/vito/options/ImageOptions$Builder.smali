.class public final Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
.super Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;
.source "ImageOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/vito/options/ImageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder<",
        "Lcom/facebook/fresco/vito/options/ImageOptions$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nImageOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageOptions.kt\ncom/facebook/fresco/vito/options/ImageOptions$Builder\n*L\n1#1,475:1\n449#1,2:476\n449#1,2:478\n449#1,2:480\n449#1,2:482\n449#1,2:484\n449#1,2:486\n449#1,2:488\n449#1,2:490\n449#1,2:492\n449#1,2:494\n449#1,2:496\n449#1,2:498\n449#1,2:500\n449#1,2:502\n449#1,2:504\n449#1,2:506\n449#1,2:508\n449#1,2:510\n449#1,2:512\n449#1,2:514\n449#1,2:516\n449#1,2:518\n449#1,2:520\n449#1,2:522\n449#1,2:524\n449#1,2:526\n449#1,2:528\n449#1,2:530\n449#1,2:532\n*S KotlinDebug\n*F\n+ 1 ImageOptions.kt\ncom/facebook/fresco/vito/options/ImageOptions$Builder\n*L\n280#1:476,2\n289#1:478,2\n296#1:480,2\n302#1:482,2\n311#1:484,2\n318#1:486,2\n322#1:488,2\n327#1:490,2\n331#1:492,2\n337#1:494,2\n343#1:496,2\n347#1:498,2\n351#1:500,2\n357#1:502,2\n361#1:504,2\n364#1:506,2\n369#1:508,2\n374#1:510,2\n379#1:512,2\n383#1:514,2\n388#1:516,2\n393#1:518,2\n395#1:520,2\n404#1:522,2\n411#1:524,2\n413#1:526,2\n424#1:528,2\n433#1:530,2\n442#1:532,2\n*E\n"
    }
.end annotation


# instance fields
.field private _actualImageColorFilter:Landroid/graphics/ColorFilter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private _autoPlay:Z

.field private _autoStop:Z

.field private _backgroundDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private _customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private _errorApplyRoundingOptions:Z

.field private _errorColor:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private _errorDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private _errorFocusPoint:Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private _errorRes:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private _errorScaleType:Lc3/q;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private _fadeDurationMs:I

.field private _overlayDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private _overlayRes:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private _perfMediaRemountInstrumentationFix:Z

.field private _placeholderApplyRoundingOptions:Z

.field private _placeholderColor:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private _placeholderDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private _placeholderFocusPoint:Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private _placeholderRes:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private _placeholderScaleType:Lc3/q;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private _progressDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private _progressRes:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private _progressScaleType:Lc3/q;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private _resizeToViewport:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_autoStop:Z

    return-void
.end method

.method public constructor <init>(Lcom/facebook/fresco/vito/options/ImageOptions;)V
    .locals 1
    .param p1    # Lcom/facebook/fresco/vito/options/ImageOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "defaultOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;-><init>(Lcom/facebook/fresco/vito/options/ImageOptions;)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_autoStop:Z

    .line 5
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getPlaceholderColor()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderColor:Ljava/lang/Integer;

    .line 6
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getPlaceholderRes()I

    move-result v0

    iput v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderRes:I

    .line 7
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 8
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getPlaceholderScaleType()Lc3/q;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderScaleType:Lc3/q;

    .line 9
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getPlaceholderFocusPoint()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderFocusPoint:Landroid/graphics/PointF;

    .line 10
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getPlaceholderApplyRoundingOptions()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderApplyRoundingOptions:Z

    .line 11
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getProgressRes()I

    move-result v0

    iput v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressRes:I

    .line 12
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressDrawable:Landroid/graphics/drawable/Drawable;

    .line 13
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getProgressScaleType()Lc3/q;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressScaleType:Lc3/q;

    .line 14
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getErrorColor()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorColor:Ljava/lang/Integer;

    .line 15
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getErrorRes()I

    move-result v0

    iput v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorRes:I

    .line 16
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getErrorScaleType()Lc3/q;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorScaleType:Lc3/q;

    .line 17
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getErrorFocusPoint()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorFocusPoint:Landroid/graphics/PointF;

    .line 18
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getErrorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 19
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getErrorApplyRoundingOptions()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorApplyRoundingOptions:Z

    .line 20
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getActualImageColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_actualImageColorFilter:Landroid/graphics/ColorFilter;

    .line 21
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getOverlayRes()I

    move-result v0

    iput v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_overlayRes:I

    .line 22
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getOverlayDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_overlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 23
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->shouldResizeToViewport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_resizeToViewport:Z

    .line 24
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->shouldAutoPlay()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_autoPlay:Z

    .line 25
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->shouldAutoStop()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_autoStop:Z

    .line 26
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getFadeDurationMs()I

    move-result v0

    iput v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_fadeDurationMs:I

    .line 27
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions;->getCustomDrawableFactory()Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    return-void
.end method

.method private final modify(Lkotlin/jvm/functions/Function1;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/facebook/fresco/vito/options/ImageOptions$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/facebook/fresco/vito/options/ImageOptions$Builder;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method


# virtual methods
.method public final autoPlay(Z)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_autoPlay:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final autoStop(Z)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_autoStop:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final background(Landroid/graphics/drawable/Drawable;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic build()Lcom/facebook/fresco/vito/options/DecodedImageOptions;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->build()Lcom/facebook/fresco/vito/options/ImageOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/facebook/fresco/vito/options/EncodedImageOptions;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->build()Lcom/facebook/fresco/vito/options/ImageOptions;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/facebook/fresco/vito/options/ImageOptions;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    new-instance v0, Lcom/facebook/fresco/vito/options/ImageOptions;

    invoke-direct {v0, p0}, Lcom/facebook/fresco/vito/options/ImageOptions;-><init>(Lcom/facebook/fresco/vito/options/ImageOptions$Builder;)V

    return-object v0
.end method

.method public final colorFilter(Landroid/graphics/ColorFilter;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_actualImageColorFilter:Landroid/graphics/ColorFilter;

    .line 2
    .line 3
    return-object p0
.end method

.method public final customDrawableFactory(Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 0
    .param p1    # Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    .line 2
    .line 3
    return-object p0
.end method

.method public final errorApplyRoundingOptions(Z)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorApplyRoundingOptions:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final errorColor(I)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorColor:Ljava/lang/Integer;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorRes:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    return-object p0
.end method

.method public final errorDrawable(Landroid/graphics/drawable/Drawable;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorColor:Ljava/lang/Integer;

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorRes:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    return-object p0
.end method

.method public final errorFocusPoint(Landroid/graphics/PointF;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 0
    .param p1    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorFocusPoint:Landroid/graphics/PointF;

    .line 2
    .line 3
    return-object p0
.end method

.method public final errorRes(I)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorColor:Ljava/lang/Integer;

    .line 3
    .line 4
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorRes:I

    .line 5
    .line 6
    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    return-object p0
.end method

.method public final errorScaleType(Lc3/q;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 0
    .param p1    # Lc3/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorScaleType:Lc3/q;

    .line 2
    .line 3
    return-object p0
.end method

.method public final fadeDurationMs(I)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_fadeDurationMs:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final get_actualImageColorFilter$options_release()Landroid/graphics/ColorFilter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_actualImageColorFilter:Landroid/graphics/ColorFilter;

    .line 2
    .line 3
    return-object v0
.end method

.method public final get_autoPlay$options_release()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_autoPlay:Z

    .line 2
    .line 3
    return v0
.end method

.method public final get_autoStop$options_release()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_autoStop:Z

    .line 2
    .line 3
    return v0
.end method

.method public final get_backgroundDrawable$options_release()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public final get_customDrawableFactory$options_release()Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    .line 2
    .line 3
    return-object v0
.end method

.method public final get_errorApplyRoundingOptions$options_release()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorApplyRoundingOptions:Z

    .line 2
    .line 3
    return v0
.end method

.method public final get_errorColor$options_release()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorColor:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final get_errorDrawable$options_release()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public final get_errorFocusPoint$options_release()Landroid/graphics/PointF;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorFocusPoint:Landroid/graphics/PointF;

    .line 2
    .line 3
    return-object v0
.end method

.method public final get_errorRes$options_release()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorRes:I

    .line 2
    .line 3
    return v0
.end method

.method public final get_errorScaleType$options_release()Lc3/q;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorScaleType:Lc3/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public final get_fadeDurationMs$options_release()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_fadeDurationMs:I

    .line 2
    .line 3
    return v0
.end method

.method public final get_overlayDrawable$options_release()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_overlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public final get_overlayRes$options_release()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_overlayRes:I

    .line 2
    .line 3
    return v0
.end method

.method public final get_perfMediaRemountInstrumentationFix$options_release()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_perfMediaRemountInstrumentationFix:Z

    .line 2
    .line 3
    return v0
.end method

.method public final get_placeholderApplyRoundingOptions$options_release()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderApplyRoundingOptions:Z

    .line 2
    .line 3
    return v0
.end method

.method public final get_placeholderColor$options_release()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderColor:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final get_placeholderDrawable$options_release()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public final get_placeholderFocusPoint$options_release()Landroid/graphics/PointF;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderFocusPoint:Landroid/graphics/PointF;

    .line 2
    .line 3
    return-object v0
.end method

.method public final get_placeholderRes$options_release()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderRes:I

    .line 2
    .line 3
    return v0
.end method

.method public final get_placeholderScaleType$options_release()Lc3/q;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderScaleType:Lc3/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public final get_progressDrawable$options_release()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public final get_progressRes$options_release()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressRes:I

    .line 2
    .line 3
    return v0
.end method

.method public final get_progressScaleType$options_release()Lc3/q;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressScaleType:Lc3/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public final get_resizeToViewport$options_release()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_resizeToViewport:Z

    .line 2
    .line 3
    return v0
.end method

.method public final overlay(Landroid/graphics/drawable/Drawable;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_overlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_overlayRes:I

    .line 5
    .line 6
    return-object p0
.end method

.method public final overlayRes(I)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_overlayRes:I

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_overlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    return-object p0
.end method

.method public final perfMediaRemountInstrumentationFix(Z)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_perfMediaRemountInstrumentationFix:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final placeholder(Landroid/graphics/drawable/Drawable;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderColor:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderRes:I

    return-object p0
.end method

.method public final placeholder(Landroid/graphics/drawable/Drawable;Lc3/q;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lc3/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    iput-object p2, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderScaleType:Lc3/q;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderColor:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderRes:I

    return-object p0
.end method

.method public final placeholderApplyRoundingOptions(Z)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderApplyRoundingOptions:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final placeholderColor(I)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderColor:Ljava/lang/Integer;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderRes:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    return-object p0
.end method

.method public final placeholderFocusPoint(Landroid/graphics/PointF;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 0
    .param p1    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderFocusPoint:Landroid/graphics/PointF;

    .line 2
    .line 3
    return-object p0
.end method

.method public final placeholderRes(I)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderRes:I

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderColor:Ljava/lang/Integer;

    .line 3
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final placeholderRes(ILc3/q;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # Lc3/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 4
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderRes:I

    .line 5
    iput-object p2, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderScaleType:Lc3/q;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderColor:Ljava/lang/Integer;

    .line 7
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final placeholderScaleType(Lc3/q;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 0
    .param p1    # Lc3/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderScaleType:Lc3/q;

    .line 2
    .line 3
    return-object p0
.end method

.method public final progress(Landroid/graphics/drawable/Drawable;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final progress(Landroid/graphics/drawable/Drawable;Lc3/q;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lc3/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    iput-object p2, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressScaleType:Lc3/q;

    return-object p0
.end method

.method public final progressRes(I)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressRes:I

    return-object p0
.end method

.method public final progressRes(ILc3/q;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # Lc3/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressRes:I

    .line 3
    iput-object p2, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressScaleType:Lc3/q;

    return-object p0
.end method

.method public final progressScaleType(Lc3/q;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 0
    .param p1    # Lc3/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressScaleType:Lc3/q;

    .line 2
    .line 3
    return-object p0
.end method

.method public final resizeToViewport(Z)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_resizeToViewport:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final set_actualImageColorFilter$options_release(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_actualImageColorFilter:Landroid/graphics/ColorFilter;

    .line 2
    .line 3
    return-void
.end method

.method public final set_autoPlay$options_release(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_autoPlay:Z

    .line 2
    .line 3
    return-void
.end method

.method public final set_autoStop$options_release(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_autoStop:Z

    .line 2
    .line 3
    return-void
.end method

.method public final set_backgroundDrawable$options_release(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-void
.end method

.method public final set_customDrawableFactory$options_release(Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;)V
    .locals 0
    .param p1    # Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    .line 2
    .line 3
    return-void
.end method

.method public final set_errorApplyRoundingOptions$options_release(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorApplyRoundingOptions:Z

    .line 2
    .line 3
    return-void
.end method

.method public final set_errorColor$options_release(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorColor:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final set_errorDrawable$options_release(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-void
.end method

.method public final set_errorFocusPoint$options_release(Landroid/graphics/PointF;)V
    .locals 0
    .param p1    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorFocusPoint:Landroid/graphics/PointF;

    .line 2
    .line 3
    return-void
.end method

.method public final set_errorRes$options_release(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorRes:I

    .line 2
    .line 3
    return-void
.end method

.method public final set_errorScaleType$options_release(Lc3/q;)V
    .locals 0
    .param p1    # Lc3/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_errorScaleType:Lc3/q;

    .line 2
    .line 3
    return-void
.end method

.method public final set_fadeDurationMs$options_release(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_fadeDurationMs:I

    .line 2
    .line 3
    return-void
.end method

.method public final set_overlayDrawable$options_release(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_overlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-void
.end method

.method public final set_overlayRes$options_release(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_overlayRes:I

    .line 2
    .line 3
    return-void
.end method

.method public final set_perfMediaRemountInstrumentationFix$options_release(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_perfMediaRemountInstrumentationFix:Z

    .line 2
    .line 3
    return-void
.end method

.method public final set_placeholderApplyRoundingOptions$options_release(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderApplyRoundingOptions:Z

    .line 2
    .line 3
    return-void
.end method

.method public final set_placeholderColor$options_release(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderColor:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final set_placeholderDrawable$options_release(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-void
.end method

.method public final set_placeholderFocusPoint$options_release(Landroid/graphics/PointF;)V
    .locals 0
    .param p1    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderFocusPoint:Landroid/graphics/PointF;

    .line 2
    .line 3
    return-void
.end method

.method public final set_placeholderRes$options_release(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderRes:I

    .line 2
    .line 3
    return-void
.end method

.method public final set_placeholderScaleType$options_release(Lc3/q;)V
    .locals 0
    .param p1    # Lc3/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_placeholderScaleType:Lc3/q;

    .line 2
    .line 3
    return-void
.end method

.method public final set_progressDrawable$options_release(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-void
.end method

.method public final set_progressRes$options_release(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressRes:I

    .line 2
    .line 3
    return-void
.end method

.method public final set_progressScaleType$options_release(Lc3/q;)V
    .locals 0
    .param p1    # Lc3/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_progressScaleType:Lc3/q;

    .line 2
    .line 3
    return-void
.end method

.method public final set_resizeToViewport$options_release(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->_resizeToViewport:Z

    .line 2
    .line 3
    return-void
.end method
