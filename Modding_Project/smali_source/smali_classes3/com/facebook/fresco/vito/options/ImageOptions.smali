.class public final Lcom/facebook/fresco/vito/options/ImageOptions;
.super Lcom/facebook/fresco/vito/options/DecodedImageOptions;
.source "ImageOptions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/vito/options/ImageOptions$Builder;,
        Lcom/facebook/fresco/vito/options/ImageOptions$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/fresco/vito/options/ImageOptions$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static defaultImageOptions:Lcom/facebook/fresco/vito/options/ImageOptions;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _autoPlay:Z

.field private final _autoStop:Z

.field private final _resizeToViewport:Z

.field private final actualImageColorFilter:Landroid/graphics/ColorFilter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final backgroundDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final errorApplyRoundingOptions:Z

.field private final errorColor:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final errorDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final errorFocusPoint:Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final errorRes:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private final errorScaleType:Lc3/q;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final fadeDurationMs:I

.field private final isPerfMediaRemountInstrumentationFix:Z

.field private final overlayDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final overlayRes:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private final placeholderApplyRoundingOptions:Z

.field private final placeholderColor:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final placeholderDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final placeholderFocusPoint:Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final placeholderRes:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private final placeholderScaleType:Lc3/q;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final progressDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final progressRes:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private final progressScaleType:Lc3/q;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/fresco/vito/options/ImageOptions$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/fresco/vito/options/ImageOptions$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/fresco/vito/options/ImageOptions;->Companion:Lcom/facebook/fresco/vito/options/ImageOptions$Companion;

    .line 8
    .line 9
    new-instance v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;-><init>()V

    .line 12
    .line 13
    .line 14
    sget-object v1, Lc3/q;->h:Lc3/q;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->placeholderScaleType(Lc3/q;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, v1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->progressScaleType(Lc3/q;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, v1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->errorScaleType(Lc3/q;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget-object v1, Lcom/facebook/imagepipeline/common/Priority;->HIGH:Lcom/facebook/imagepipeline/common/Priority;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;->priority(Lcom/facebook/imagepipeline/common/Priority;)Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->build()Lcom/facebook/fresco/vito/options/ImageOptions;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sput-object v0, Lcom/facebook/fresco/vito/options/ImageOptions;->defaultImageOptions:Lcom/facebook/fresco/vito/options/ImageOptions;

    .line 41
    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/facebook/fresco/vito/options/ImageOptions$Builder;)V
    .locals 1
    .param p1    # Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "builder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;-><init>(Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_placeholderColor$options_release()Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderColor:Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_placeholderRes$options_release()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderRes:I

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_placeholderDrawable$options_release()Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_placeholderScaleType$options_release()Lc3/q;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderScaleType:Lc3/q;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_placeholderFocusPoint$options_release()Landroid/graphics/PointF;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderFocusPoint:Landroid/graphics/PointF;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_placeholderApplyRoundingOptions$options_release()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderApplyRoundingOptions:Z

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_progressRes$options_release()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iput v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressRes:I

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_progressDrawable$options_release()Landroid/graphics/drawable/Drawable;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressDrawable:Landroid/graphics/drawable/Drawable;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_progressScaleType$options_release()Lc3/q;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressScaleType:Lc3/q;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_errorColor$options_release()Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorColor:Ljava/lang/Integer;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_errorRes$options_release()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    iput v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorRes:I

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_errorScaleType$options_release()Lc3/q;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorScaleType:Lc3/q;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_errorFocusPoint$options_release()Landroid/graphics/PointF;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorFocusPoint:Landroid/graphics/PointF;

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_errorDrawable$options_release()Landroid/graphics/drawable/Drawable;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_errorApplyRoundingOptions$options_release()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorApplyRoundingOptions:Z

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_actualImageColorFilter$options_release()Landroid/graphics/ColorFilter;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->actualImageColorFilter:Landroid/graphics/ColorFilter;

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_overlayRes$options_release()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    iput v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayRes:I

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_overlayDrawable$options_release()Landroid/graphics/drawable/Drawable;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_backgroundDrawable$options_release()Landroid/graphics/drawable/Drawable;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_resizeToViewport$options_release()Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_resizeToViewport:Z

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_fadeDurationMs$options_release()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    iput v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->fadeDurationMs:I

    .line 134
    .line 135
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_autoPlay$options_release()Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoPlay:Z

    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_autoStop$options_release()Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoStop:Z

    .line 146
    .line 147
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_perfMediaRemountInstrumentationFix$options_release()Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->isPerfMediaRemountInstrumentationFix:Z

    .line 152
    .line 153
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_customDrawableFactory$options_release()Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    iput-object p1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    .line 158
    .line 159
    return-void
.end method

.method public static final synthetic access$getDefaultImageOptions$cp()Lcom/facebook/fresco/vito/options/ImageOptions;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/fresco/vito/options/ImageOptions;->defaultImageOptions:Lcom/facebook/fresco/vito/options/ImageOptions;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$setDefaultImageOptions$cp(Lcom/facebook/fresco/vito/options/ImageOptions;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/facebook/fresco/vito/options/ImageOptions;->defaultImageOptions:Lcom/facebook/fresco/vito/options/ImageOptions;

    .line 2
    .line 3
    return-void
.end method

.method public static final create()Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/fresco/vito/options/ImageOptions;->Companion:Lcom/facebook/fresco/vito/options/ImageOptions$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/facebook/fresco/vito/options/ImageOptions$Companion;->create()Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static final defaults()Lcom/facebook/fresco/vito/options/ImageOptions;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/fresco/vito/options/ImageOptions;->Companion:Lcom/facebook/fresco/vito/options/ImageOptions$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/facebook/fresco/vito/options/ImageOptions$Companion;->defaults()Lcom/facebook/fresco/vito/options/ImageOptions;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static final extend(Lcom/facebook/fresco/vito/options/ImageOptions;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1
    .param p0    # Lcom/facebook/fresco/vito/options/ImageOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/fresco/vito/options/ImageOptions;->Companion:Lcom/facebook/fresco/vito/options/ImageOptions$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/fresco/vito/options/ImageOptions$Companion;->extend(Lcom/facebook/fresco/vito/options/ImageOptions;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static final setDefaults(Lcom/facebook/fresco/vito/options/ImageOptions;)V
    .locals 1
    .param p0    # Lcom/facebook/fresco/vito/options/ImageOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/facebook/fresco/vito/options/ImageOptions;->Companion:Lcom/facebook/fresco/vito/options/ImageOptions$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/facebook/fresco/vito/options/ImageOptions$Companion;->setDefaults(Lcom/facebook/fresco/vito/options/ImageOptions;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_5

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-class v2, Lcom/facebook/fresco/vito/options/ImageOptions;

    .line 13
    .line 14
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    goto/16 :goto_0

    .line 21
    .line 22
    :cond_1
    check-cast p1, Lcom/facebook/fresco/vito/options/ImageOptions;

    .line 23
    .line 24
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->isPerfMediaRemountInstrumentationFix:Z

    .line 25
    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderColor:Ljava/lang/Integer;

    .line 29
    .line 30
    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderColor:Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    iget v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderRes:I

    .line 39
    .line 40
    iget v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderRes:I

    .line 41
    .line 42
    if-ne v1, v2, :cond_2

    .line 43
    .line 44
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 45
    .line 46
    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 47
    .line 48
    invoke-static {v1, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderScaleType:Lc3/q;

    .line 55
    .line 56
    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderScaleType:Lc3/q;

    .line 57
    .line 58
    invoke-static {v1, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderFocusPoint:Landroid/graphics/PointF;

    .line 65
    .line 66
    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderFocusPoint:Landroid/graphics/PointF;

    .line 67
    .line 68
    invoke-static {v1, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderApplyRoundingOptions:Z

    .line 75
    .line 76
    iget-boolean v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderApplyRoundingOptions:Z

    .line 77
    .line 78
    if-ne v1, v2, :cond_2

    .line 79
    .line 80
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorColor:Ljava/lang/Integer;

    .line 81
    .line 82
    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorColor:Ljava/lang/Integer;

    .line 83
    .line 84
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_2

    .line 89
    .line 90
    iget v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorRes:I

    .line 91
    .line 92
    iget v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorRes:I

    .line 93
    .line 94
    if-ne v1, v2, :cond_2

    .line 95
    .line 96
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorScaleType:Lc3/q;

    .line 97
    .line 98
    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorScaleType:Lc3/q;

    .line 99
    .line 100
    invoke-static {v1, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_2

    .line 105
    .line 106
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorFocusPoint:Landroid/graphics/PointF;

    .line 107
    .line 108
    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorFocusPoint:Landroid/graphics/PointF;

    .line 109
    .line 110
    invoke-static {v1, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_2

    .line 115
    .line 116
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorApplyRoundingOptions:Z

    .line 117
    .line 118
    iget-boolean v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorApplyRoundingOptions:Z

    .line 119
    .line 120
    if-ne v1, v2, :cond_2

    .line 121
    .line 122
    iget v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayRes:I

    .line 123
    .line 124
    iget v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayRes:I

    .line 125
    .line 126
    if-ne v1, v2, :cond_2

    .line 127
    .line 128
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 129
    .line 130
    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 131
    .line 132
    invoke-static {v1, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_2

    .line 137
    .line 138
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 139
    .line 140
    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 141
    .line 142
    invoke-static {v1, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_2

    .line 147
    .line 148
    iget v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressRes:I

    .line 149
    .line 150
    iget v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->progressRes:I

    .line 151
    .line 152
    if-ne v1, v2, :cond_2

    .line 153
    .line 154
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressDrawable:Landroid/graphics/drawable/Drawable;

    .line 155
    .line 156
    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->progressDrawable:Landroid/graphics/drawable/Drawable;

    .line 157
    .line 158
    invoke-static {v1, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_2

    .line 163
    .line 164
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressScaleType:Lc3/q;

    .line 165
    .line 166
    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->progressScaleType:Lc3/q;

    .line 167
    .line 168
    invoke-static {v1, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-eqz v1, :cond_2

    .line 173
    .line 174
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->actualImageColorFilter:Landroid/graphics/ColorFilter;

    .line 175
    .line 176
    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->actualImageColorFilter:Landroid/graphics/ColorFilter;

    .line 177
    .line 178
    invoke-static {v1, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-eqz v1, :cond_2

    .line 183
    .line 184
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_resizeToViewport:Z

    .line 185
    .line 186
    iget-boolean v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->_resizeToViewport:Z

    .line 187
    .line 188
    if-ne v1, v2, :cond_2

    .line 189
    .line 190
    iget v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->fadeDurationMs:I

    .line 191
    .line 192
    iget v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->fadeDurationMs:I

    .line 193
    .line 194
    if-ne v1, v2, :cond_2

    .line 195
    .line 196
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoPlay:Z

    .line 197
    .line 198
    iget-boolean v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoPlay:Z

    .line 199
    .line 200
    if-ne v1, v2, :cond_2

    .line 201
    .line 202
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoStop:Z

    .line 203
    .line 204
    iget-boolean v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoStop:Z

    .line 205
    .line 206
    if-ne v1, v2, :cond_2

    .line 207
    .line 208
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    .line 209
    .line 210
    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    .line 211
    .line 212
    invoke-static {v1, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    if-eqz v1, :cond_2

    .line 217
    .line 218
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 219
    .line 220
    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 221
    .line 222
    invoke-static {v1, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-eqz v1, :cond_2

    .line 227
    .line 228
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->isPerfMediaRemountInstrumentationFix:Z

    .line 229
    .line 230
    iget-boolean v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->isPerfMediaRemountInstrumentationFix:Z

    .line 231
    .line 232
    if-eq v1, v2, :cond_4

    .line 233
    .line 234
    :cond_2
    return v0

    .line 235
    :cond_3
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderColor:Ljava/lang/Integer;

    .line 236
    .line 237
    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderColor:Ljava/lang/Integer;

    .line 238
    .line 239
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    if-eqz v1, :cond_5

    .line 244
    .line 245
    iget v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderRes:I

    .line 246
    .line 247
    iget v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderRes:I

    .line 248
    .line 249
    if-ne v1, v2, :cond_5

    .line 250
    .line 251
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 252
    .line 253
    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 254
    .line 255
    invoke-static {v1, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-eqz v1, :cond_5

    .line 260
    .line 261
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderScaleType:Lc3/q;

    .line 262
    .line 263
    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderScaleType:Lc3/q;

    .line 264
    .line 265
    invoke-static {v1, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    if-eqz v1, :cond_5

    .line 270
    .line 271
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderFocusPoint:Landroid/graphics/PointF;

    .line 272
    .line 273
    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderFocusPoint:Landroid/graphics/PointF;

    .line 274
    .line 275
    invoke-static {v1, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    if-eqz v1, :cond_5

    .line 280
    .line 281
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderApplyRoundingOptions:Z

    .line 282
    .line 283
    iget-boolean v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderApplyRoundingOptions:Z

    .line 284
    .line 285
    if-ne v1, v2, :cond_5

    .line 286
    .line 287
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorColor:Ljava/lang/Integer;

    .line 288
    .line 289
    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorColor:Ljava/lang/Integer;

    .line 290
    .line 291
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    if-eqz v1, :cond_5

    .line 296
    .line 297
    iget v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorRes:I

    .line 298
    .line 299
    iget v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorRes:I

    .line 300
    .line 301
    if-ne v1, v2, :cond_5

    .line 302
    .line 303
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorScaleType:Lc3/q;

    .line 304
    .line 305
    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorScaleType:Lc3/q;

    .line 306
    .line 307
    invoke-static {v1, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    if-eqz v1, :cond_5

    .line 312
    .line 313
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorFocusPoint:Landroid/graphics/PointF;

    .line 314
    .line 315
    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorFocusPoint:Landroid/graphics/PointF;

    .line 316
    .line 317
    invoke-static {v1, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    if-eqz v1, :cond_5

    .line 322
    .line 323
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorApplyRoundingOptions:Z

    .line 324
    .line 325
    iget-boolean v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorApplyRoundingOptions:Z

    .line 326
    .line 327
    if-ne v1, v2, :cond_5

    .line 328
    .line 329
    iget v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayRes:I

    .line 330
    .line 331
    iget v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayRes:I

    .line 332
    .line 333
    if-ne v1, v2, :cond_5

    .line 334
    .line 335
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 336
    .line 337
    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 338
    .line 339
    invoke-static {v1, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    if-eqz v1, :cond_5

    .line 344
    .line 345
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 346
    .line 347
    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 348
    .line 349
    invoke-static {v1, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    if-eqz v1, :cond_5

    .line 354
    .line 355
    iget v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressRes:I

    .line 356
    .line 357
    iget v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->progressRes:I

    .line 358
    .line 359
    if-ne v1, v2, :cond_5

    .line 360
    .line 361
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressDrawable:Landroid/graphics/drawable/Drawable;

    .line 362
    .line 363
    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->progressDrawable:Landroid/graphics/drawable/Drawable;

    .line 364
    .line 365
    if-ne v1, v2, :cond_5

    .line 366
    .line 367
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressScaleType:Lc3/q;

    .line 368
    .line 369
    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->progressScaleType:Lc3/q;

    .line 370
    .line 371
    if-ne v1, v2, :cond_5

    .line 372
    .line 373
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->actualImageColorFilter:Landroid/graphics/ColorFilter;

    .line 374
    .line 375
    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->actualImageColorFilter:Landroid/graphics/ColorFilter;

    .line 376
    .line 377
    invoke-static {v1, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    if-eqz v1, :cond_5

    .line 382
    .line 383
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_resizeToViewport:Z

    .line 384
    .line 385
    iget-boolean v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->_resizeToViewport:Z

    .line 386
    .line 387
    if-ne v1, v2, :cond_5

    .line 388
    .line 389
    iget v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->fadeDurationMs:I

    .line 390
    .line 391
    iget v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->fadeDurationMs:I

    .line 392
    .line 393
    if-ne v1, v2, :cond_5

    .line 394
    .line 395
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoPlay:Z

    .line 396
    .line 397
    iget-boolean v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoPlay:Z

    .line 398
    .line 399
    if-ne v1, v2, :cond_5

    .line 400
    .line 401
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoStop:Z

    .line 402
    .line 403
    iget-boolean v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoStop:Z

    .line 404
    .line 405
    if-ne v1, v2, :cond_5

    .line 406
    .line 407
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    .line 408
    .line 409
    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    .line 410
    .line 411
    invoke-static {v1, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    if-eqz v1, :cond_5

    .line 416
    .line 417
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 418
    .line 419
    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 420
    .line 421
    if-eq v1, v2, :cond_4

    .line 422
    .line 423
    goto :goto_0

    .line 424
    :cond_4
    invoke-virtual {p0, p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->equalDecodedOptions(Lcom/facebook/fresco/vito/options/DecodedImageOptions;)Z

    .line 425
    .line 426
    .line 427
    move-result p1

    .line 428
    return p1

    .line 429
    :cond_5
    :goto_0
    return v0
.end method

.method public final equalsForActualImage(Lcom/facebook/fresco/vito/options/ImageOptions;)Z
    .locals 3
    .param p1    # Lcom/facebook/fresco/vito/options/ImageOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-ne p0, p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    return p1

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->isPerfMediaRemountInstrumentationFix:Z

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayRes:I

    .line 16
    .line 17
    iget v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayRes:I

    .line 18
    .line 19
    if-ne v0, v2, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    invoke-static {v0, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    invoke-static {v0, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->actualImageColorFilter:Landroid/graphics/ColorFilter;

    .line 42
    .line 43
    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->actualImageColorFilter:Landroid/graphics/ColorFilter;

    .line 44
    .line 45
    invoke-static {v0, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_resizeToViewport:Z

    .line 52
    .line 53
    iget-boolean v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->_resizeToViewport:Z

    .line 54
    .line 55
    if-ne v0, v2, :cond_1

    .line 56
    .line 57
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoPlay:Z

    .line 58
    .line 59
    iget-boolean v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoPlay:Z

    .line 60
    .line 61
    if-ne v0, v2, :cond_1

    .line 62
    .line 63
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoStop:Z

    .line 64
    .line 65
    iget-boolean v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoStop:Z

    .line 66
    .line 67
    if-ne v0, v2, :cond_1

    .line 68
    .line 69
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    .line 70
    .line 71
    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    .line 72
    .line 73
    invoke-static {v0, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->isPerfMediaRemountInstrumentationFix:Z

    .line 80
    .line 81
    iget-boolean v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->isPerfMediaRemountInstrumentationFix:Z

    .line 82
    .line 83
    if-eq v0, v2, :cond_3

    .line 84
    .line 85
    :cond_1
    return v1

    .line 86
    :cond_2
    iget v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayRes:I

    .line 87
    .line 88
    iget v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayRes:I

    .line 89
    .line 90
    if-ne v0, v2, :cond_4

    .line 91
    .line 92
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 93
    .line 94
    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 95
    .line 96
    invoke-static {v0, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_4

    .line 101
    .line 102
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 103
    .line 104
    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 105
    .line 106
    invoke-static {v0, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_4

    .line 111
    .line 112
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->actualImageColorFilter:Landroid/graphics/ColorFilter;

    .line 113
    .line 114
    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->actualImageColorFilter:Landroid/graphics/ColorFilter;

    .line 115
    .line 116
    invoke-static {v0, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_4

    .line 121
    .line 122
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_resizeToViewport:Z

    .line 123
    .line 124
    iget-boolean v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->_resizeToViewport:Z

    .line 125
    .line 126
    if-ne v0, v2, :cond_4

    .line 127
    .line 128
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    .line 129
    .line 130
    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    .line 131
    .line 132
    invoke-static {v0, v2}, Lk2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-nez v0, :cond_3

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_3
    invoke-virtual {p0, p1}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->equalDecodedOptions(Lcom/facebook/fresco/vito/options/DecodedImageOptions;)Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    return p1

    .line 144
    :cond_4
    :goto_0
    return v1
.end method

.method public final extend()Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object v0, Lcom/facebook/fresco/vito/options/ImageOptions;->Companion:Lcom/facebook/fresco/vito/options/ImageOptions$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/fresco/vito/options/ImageOptions$Companion;->extend(Lcom/facebook/fresco/vito/options/ImageOptions;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getActualImageColorFilter()Landroid/graphics/ColorFilter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->actualImageColorFilter:Landroid/graphics/ColorFilter;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCustomDrawableFactory()Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getErrorApplyRoundingOptions()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorApplyRoundingOptions:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getErrorColor()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorColor:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getErrorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getErrorFocusPoint()Landroid/graphics/PointF;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorFocusPoint:Landroid/graphics/PointF;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getErrorRes()I
    .locals 1
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    .line 1
    iget v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorRes:I

    .line 2
    .line 3
    return v0
.end method

.method public final getErrorScaleType()Lc3/q;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorScaleType:Lc3/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFadeDurationMs()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->fadeDurationMs:I

    .line 2
    .line 3
    return v0
.end method

.method public final getOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOverlayRes()I
    .locals 1
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    .line 1
    iget v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayRes:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPlaceholderApplyRoundingOptions()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderApplyRoundingOptions:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getPlaceholderColor()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderColor:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPlaceholderFocusPoint()Landroid/graphics/PointF;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderFocusPoint:Landroid/graphics/PointF;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPlaceholderRes()I
    .locals 1
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    .line 1
    iget v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderRes:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPlaceholderScaleType()Lc3/q;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderScaleType:Lc3/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getProgressRes()I
    .locals 1
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    .line 1
    iget v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressRes:I

    .line 2
    .line 3
    return v0
.end method

.method public final getProgressScaleType()Lc3/q;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressScaleType:Lc3/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x1f

    .line 6
    .line 7
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderColor:Ljava/lang/Integer;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v1, v2

    .line 18
    :goto_0
    add-int/2addr v0, v1

    .line 19
    mul-int/lit8 v0, v0, 0x1f

    .line 20
    .line 21
    iget v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderRes:I

    .line 22
    .line 23
    add-int/2addr v0, v1

    .line 24
    mul-int/lit8 v0, v0, 0x1f

    .line 25
    .line 26
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move v1, v2

    .line 36
    :goto_1
    add-int/2addr v0, v1

    .line 37
    mul-int/lit8 v0, v0, 0x1f

    .line 38
    .line 39
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderScaleType:Lc3/q;

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move v1, v2

    .line 49
    :goto_2
    add-int/2addr v0, v1

    .line 50
    mul-int/lit8 v0, v0, 0x1f

    .line 51
    .line 52
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderFocusPoint:Landroid/graphics/PointF;

    .line 53
    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/graphics/PointF;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    goto :goto_3

    .line 61
    :cond_3
    move v1, v2

    .line 62
    :goto_3
    add-int/2addr v0, v1

    .line 63
    mul-int/lit8 v0, v0, 0x1f

    .line 64
    .line 65
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderApplyRoundingOptions:Z

    .line 66
    .line 67
    add-int/2addr v0, v1

    .line 68
    mul-int/lit8 v0, v0, 0x1f

    .line 69
    .line 70
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorColor:Ljava/lang/Integer;

    .line 71
    .line 72
    if-eqz v1, :cond_4

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    goto :goto_4

    .line 79
    :cond_4
    move v1, v2

    .line 80
    :goto_4
    add-int/2addr v0, v1

    .line 81
    mul-int/lit8 v0, v0, 0x1f

    .line 82
    .line 83
    iget v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorRes:I

    .line 84
    .line 85
    add-int/2addr v0, v1

    .line 86
    mul-int/lit8 v0, v0, 0x1f

    .line 87
    .line 88
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorScaleType:Lc3/q;

    .line 89
    .line 90
    if-eqz v1, :cond_5

    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    goto :goto_5

    .line 97
    :cond_5
    move v1, v2

    .line 98
    :goto_5
    add-int/2addr v0, v1

    .line 99
    mul-int/lit8 v0, v0, 0x1f

    .line 100
    .line 101
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorFocusPoint:Landroid/graphics/PointF;

    .line 102
    .line 103
    if-eqz v1, :cond_6

    .line 104
    .line 105
    invoke-virtual {v1}, Landroid/graphics/PointF;->hashCode()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    goto :goto_6

    .line 110
    :cond_6
    move v1, v2

    .line 111
    :goto_6
    add-int/2addr v0, v1

    .line 112
    mul-int/lit8 v0, v0, 0x1f

    .line 113
    .line 114
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 115
    .line 116
    if-eqz v1, :cond_7

    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    goto :goto_7

    .line 123
    :cond_7
    move v1, v2

    .line 124
    :goto_7
    add-int/2addr v0, v1

    .line 125
    mul-int/lit8 v0, v0, 0x1f

    .line 126
    .line 127
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorApplyRoundingOptions:Z

    .line 128
    .line 129
    add-int/2addr v0, v1

    .line 130
    mul-int/lit8 v0, v0, 0x1f

    .line 131
    .line 132
    iget v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayRes:I

    .line 133
    .line 134
    add-int/2addr v0, v1

    .line 135
    mul-int/lit8 v0, v0, 0x1f

    .line 136
    .line 137
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 138
    .line 139
    if-eqz v1, :cond_8

    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    goto :goto_8

    .line 146
    :cond_8
    move v1, v2

    .line 147
    :goto_8
    add-int/2addr v0, v1

    .line 148
    mul-int/lit8 v0, v0, 0x1f

    .line 149
    .line 150
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 151
    .line 152
    if-eqz v1, :cond_9

    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    goto :goto_9

    .line 159
    :cond_9
    move v1, v2

    .line 160
    :goto_9
    add-int/2addr v0, v1

    .line 161
    mul-int/lit8 v0, v0, 0x1f

    .line 162
    .line 163
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressDrawable:Landroid/graphics/drawable/Drawable;

    .line 164
    .line 165
    if-eqz v1, :cond_a

    .line 166
    .line 167
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    goto :goto_a

    .line 172
    :cond_a
    move v1, v2

    .line 173
    :goto_a
    add-int/2addr v0, v1

    .line 174
    mul-int/lit8 v0, v0, 0x1f

    .line 175
    .line 176
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressScaleType:Lc3/q;

    .line 177
    .line 178
    if-eqz v1, :cond_b

    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    goto :goto_b

    .line 185
    :cond_b
    move v1, v2

    .line 186
    :goto_b
    add-int/2addr v0, v1

    .line 187
    mul-int/lit8 v0, v0, 0x1f

    .line 188
    .line 189
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->actualImageColorFilter:Landroid/graphics/ColorFilter;

    .line 190
    .line 191
    if-eqz v1, :cond_c

    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    goto :goto_c

    .line 198
    :cond_c
    move v1, v2

    .line 199
    :goto_c
    add-int/2addr v0, v1

    .line 200
    mul-int/lit8 v0, v0, 0x1f

    .line 201
    .line 202
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_resizeToViewport:Z

    .line 203
    .line 204
    add-int/2addr v0, v1

    .line 205
    mul-int/lit8 v0, v0, 0x1f

    .line 206
    .line 207
    iget v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->fadeDurationMs:I

    .line 208
    .line 209
    add-int/2addr v0, v1

    .line 210
    mul-int/lit8 v0, v0, 0x1f

    .line 211
    .line 212
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoPlay:Z

    .line 213
    .line 214
    add-int/2addr v0, v1

    .line 215
    mul-int/lit8 v0, v0, 0x1f

    .line 216
    .line 217
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoStop:Z

    .line 218
    .line 219
    add-int/2addr v0, v1

    .line 220
    mul-int/lit8 v0, v0, 0x1f

    .line 221
    .line 222
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->isPerfMediaRemountInstrumentationFix:Z

    .line 223
    .line 224
    add-int/2addr v0, v1

    .line 225
    mul-int/lit8 v0, v0, 0x1f

    .line 226
    .line 227
    iget v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressRes:I

    .line 228
    .line 229
    add-int/2addr v0, v1

    .line 230
    mul-int/lit8 v0, v0, 0x1f

    .line 231
    .line 232
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    .line 233
    .line 234
    if-eqz v1, :cond_d

    .line 235
    .line 236
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    :cond_d
    add-int/2addr v0, v2

    .line 241
    return v0
.end method

.method public final isPerfMediaRemountInstrumentationFix()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->isPerfMediaRemountInstrumentationFix:Z

    .line 2
    .line 3
    return v0
.end method

.method public final shouldAutoPlay()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoPlay:Z

    .line 2
    .line 3
    return v0
.end method

.method public final shouldAutoStop()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoStop:Z

    .line 2
    .line 3
    return v0
.end method

.method public final shouldResizeToViewport()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_resizeToViewport:Z

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/ImageOptions;->toStringHelper()Lk2/f$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "ImageOptions{"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, "}"

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method protected toStringHelper()Lk2/f$a;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->toStringHelper()Lk2/f$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "placeholderColor"

    .line 6
    .line 7
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderColor:Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "placeholderRes"

    .line 14
    .line 15
    iget v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderRes:I

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->a(Ljava/lang/String;I)Lk2/f$a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "placeholderDrawable"

    .line 22
    .line 23
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "placeholderScaleType"

    .line 30
    .line 31
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderScaleType:Lc3/q;

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "placeholderFocusPoint"

    .line 38
    .line 39
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderFocusPoint:Landroid/graphics/PointF;

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "placeholderApplyRoundingOptions"

    .line 46
    .line 47
    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderApplyRoundingOptions:Z

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->d(Ljava/lang/String;Z)Lk2/f$a;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, "progressRes"

    .line 54
    .line 55
    iget v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressRes:I

    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->a(Ljava/lang/String;I)Lk2/f$a;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, "progressDrawable"

    .line 62
    .line 63
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressDrawable:Landroid/graphics/drawable/Drawable;

    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v1, "progressScaleType"

    .line 70
    .line 71
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressScaleType:Lc3/q;

    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v1, "errorColor"

    .line 78
    .line 79
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorColor:Ljava/lang/Integer;

    .line 80
    .line 81
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string v1, "errorRes"

    .line 86
    .line 87
    iget v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorRes:I

    .line 88
    .line 89
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->a(Ljava/lang/String;I)Lk2/f$a;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v1, "errorScaleType"

    .line 94
    .line 95
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorScaleType:Lc3/q;

    .line 96
    .line 97
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const-string v1, "errorFocusPoint"

    .line 102
    .line 103
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorFocusPoint:Landroid/graphics/PointF;

    .line 104
    .line 105
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const-string v1, "errorDrawable"

    .line 110
    .line 111
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 112
    .line 113
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    const-string v1, "errorApplyRoundingOptions"

    .line 118
    .line 119
    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorApplyRoundingOptions:Z

    .line 120
    .line 121
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->d(Ljava/lang/String;Z)Lk2/f$a;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    const-string v1, "actualImageColorFilter"

    .line 126
    .line 127
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->actualImageColorFilter:Landroid/graphics/ColorFilter;

    .line 128
    .line 129
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    const-string v1, "overlayRes"

    .line 134
    .line 135
    iget v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayRes:I

    .line 136
    .line 137
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->a(Ljava/lang/String;I)Lk2/f$a;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    const-string v1, "overlayDrawable"

    .line 142
    .line 143
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 144
    .line 145
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    const-string v1, "backgroundDrawable"

    .line 150
    .line 151
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 152
    .line 153
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    const-string v1, "resizeToViewport"

    .line 158
    .line 159
    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_resizeToViewport:Z

    .line 160
    .line 161
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->d(Ljava/lang/String;Z)Lk2/f$a;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    const-string v1, "autoPlay"

    .line 166
    .line 167
    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoPlay:Z

    .line 168
    .line 169
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->d(Ljava/lang/String;Z)Lk2/f$a;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    const-string v1, "autoStop"

    .line 174
    .line 175
    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoStop:Z

    .line 176
    .line 177
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->d(Ljava/lang/String;Z)Lk2/f$a;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    const-string v1, "mPerfMediaRemountInstrumentationFix"

    .line 182
    .line 183
    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->isPerfMediaRemountInstrumentationFix:Z

    .line 184
    .line 185
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->d(Ljava/lang/String;Z)Lk2/f$a;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    const-string v1, "fadeDurationMs"

    .line 190
    .line 191
    iget v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->fadeDurationMs:I

    .line 192
    .line 193
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->a(Ljava/lang/String;I)Lk2/f$a;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    const-string v1, "customDrawableFactory"

    .line 198
    .line 199
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    .line 200
    .line 201
    invoke-virtual {v0, v1, v2}, Lk2/f$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lk2/f$a;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    const-string v1, "add(...)"

    .line 206
    .line 207
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    return-object v0
.end method
