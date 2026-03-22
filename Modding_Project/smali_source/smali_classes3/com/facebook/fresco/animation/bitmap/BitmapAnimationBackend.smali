.class public final Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;
.super Ljava/lang/Object;
.source "BitmapAnimationBackend.kt"

# interfaces
.implements Lcom/facebook/fresco/animation/backend/AnimationBackend;
.implements Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck$InactivityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$Companion;,
        Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameListener;,
        Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FRAME_TYPE_CACHED:I = 0x0

.field public static final FRAME_TYPE_CREATED:I = 0x2

.field public static final FRAME_TYPE_FALLBACK:I = 0x3

.field public static final FRAME_TYPE_REUSED:I = 0x1

.field public static final FRAME_TYPE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private animationListener:Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final bitmapConfig:Landroid/graphics/Bitmap$Config;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final bitmapFrameCache:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final bitmapFramePreparationStrategy:Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final bitmapFramePreparer:Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final bitmapFrameRenderer:Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private bitmapHeight:I

.field private bitmapWidth:I

.field private bounds:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final cornerRadii:[F
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private frameListener:Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final isNewRenderImplementation:Z

.field private final matrix:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final paint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final path:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pathFrameNumber:I

.field private final platformBitmapFactory:Lq3/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->Companion:Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$Companion;

    .line 8
    .line 9
    const-class v0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;

    .line 10
    .line 11
    sput-object v0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->TAG:Ljava/lang/Class;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lq3/d;Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;Lcom/facebook/fresco/animation/backend/AnimationInformation;Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;ZLcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;Lcom/facebook/fresco/vito/options/RoundingOptions;)V
    .locals 1
    .param p1    # Lq3/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/fresco/animation/backend/AnimationInformation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/facebook/fresco/vito/options/RoundingOptions;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "platformBitmapFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmapFrameCache"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animationInformation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmapFrameRenderer"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->platformBitmapFactory:Lq3/d;

    .line 3
    iput-object p2, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameCache:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;

    .line 4
    iput-object p3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    .line 5
    iput-object p4, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameRenderer:Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;

    .line 6
    iput-boolean p5, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->isNewRenderImplementation:Z

    .line 7
    iput-object p6, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFramePreparationStrategy:Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;

    .line 8
    iput-object p7, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFramePreparer:Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;

    if-eqz p8, :cond_1

    .line 9
    invoke-virtual {p8}, Lcom/facebook/fresco/vito/options/RoundingOptions;->getCornerRadius()F

    move-result p1

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-nez p1, :cond_0

    .line 10
    invoke-virtual {p8}, Lcom/facebook/fresco/vito/options/RoundingOptions;->getCornerRadii()[F

    move-result-object p1

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 11
    new-array p1, p1, [F

    .line 12
    invoke-virtual {p8}, Lcom/facebook/fresco/vito/options/RoundingOptions;->getCornerRadius()F

    move-result p3

    const/4 p6, 0x6

    const/4 p7, 0x0

    const/4 p4, 0x0

    const/4 p5, 0x0

    move-object p2, p1

    invoke-static/range {p2 .. p7}, Lkotlin/collections/n;->E([FFIIILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 13
    :goto_0
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->cornerRadii:[F

    .line 14
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 15
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->paint:Landroid/graphics/Paint;

    .line 16
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->path:Landroid/graphics/Path;

    .line 17
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->matrix:Landroid/graphics/Matrix;

    const/4 p1, -0x1

    .line 18
    iput p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->pathFrameNumber:I

    .line 19
    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->updateBitmapDimensions()V

    return-void
.end method

.method public synthetic constructor <init>(Lq3/d;Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;Lcom/facebook/fresco/animation/backend/AnimationInformation;Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;ZLcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;Lcom/facebook/fresco/vito/options/RoundingOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    move/from16 v0, p9

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v9, v0

    goto :goto_0

    :cond_0
    move-object/from16 v9, p8

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 20
    invoke-direct/range {v1 .. v9}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;-><init>(Lq3/d;Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;Lcom/facebook/fresco/animation/backend/AnimationInformation;Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;ZLcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;Lcom/facebook/fresco/vito/options/RoundingOptions;)V

    return-void
.end method

.method public static synthetic a(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->preloadAnimation$lambda$2(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->preloadAnimation$lambda$1(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final drawBitmap(ILandroid/graphics/Bitmap;Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bounds:Landroid/graphics/Rect;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->paint:Landroid/graphics/Paint;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p3, p2, v0, v0, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    int-to-float v1, v1

    .line 17
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    int-to-float v2, v2

    .line 22
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->updatePath(ILandroid/graphics/Bitmap;FF)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->path:Landroid/graphics/Path;

    .line 29
    .line 30
    iget-object p2, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->paint:Landroid/graphics/Paint;

    .line 31
    .line 32
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p1, 0x0

    .line 37
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->paint:Landroid/graphics/Paint;

    .line 38
    .line 39
    invoke-virtual {p3, p2, p1, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method private final drawBitmapAndCache(ILo2/a;Landroid/graphics/Canvas;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Canvas;",
            "I)Z"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_3

    .line 2
    .line 3
    invoke-static {p2}, Lo2/a;->v(Lo2/a;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p2}, Lo2/a;->s()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "get(...)"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    check-cast v0, Landroid/graphics/Bitmap;

    .line 20
    .line 21
    invoke-direct {p0, p1, v0, p3}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->drawBitmap(ILandroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    .line 22
    .line 23
    .line 24
    const/4 p3, 0x3

    .line 25
    if-eq p4, p3, :cond_1

    .line 26
    .line 27
    iget-boolean p3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->isNewRenderImplementation:Z

    .line 28
    .line 29
    if-nez p3, :cond_1

    .line 30
    .line 31
    iget-object p3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameCache:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;

    .line 32
    .line 33
    invoke-interface {p3, p1, p2, p4}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;->onFrameRendered(ILo2/a;I)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object p2, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->frameListener:Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameListener;

    .line 37
    .line 38
    if-eqz p2, :cond_2

    .line 39
    .line 40
    invoke-interface {p2, p0, p1, p4}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameListener;->onFrameDrawn(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;II)V

    .line 41
    .line 42
    .line 43
    :cond_2
    const/4 p1, 0x1

    .line 44
    return p1

    .line 45
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 46
    return p1
.end method

.method private final drawFrameOrFallback(Landroid/graphics/Canvas;II)Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->isNewRenderImplementation:Z

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eqz v1, :cond_3

    .line 7
    .line 8
    iget-object p3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFramePreparationStrategy:Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;

    .line 9
    .line 10
    if-eqz p3, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    invoke-interface {p3, p2, v1, v4}, Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;->getBitmapFrame(III)Lo2/a;

    .line 21
    .line 22
    .line 23
    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto/16 :goto_3

    .line 27
    .line 28
    :cond_0
    move-object p3, v0

    .line 29
    :goto_0
    if-eqz p3, :cond_1

    .line 30
    .line 31
    :try_start_1
    invoke-virtual {p3}, Lo2/a;->u()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p3}, Lo2/a;->s()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "get(...)"

    .line 42
    .line 43
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    check-cast v0, Landroid/graphics/Bitmap;

    .line 47
    .line 48
    invoke-direct {p0, p2, v0, p1}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->drawBitmap(ILandroid/graphics/Bitmap;Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    .line 50
    .line 51
    invoke-static {p3}, Lo2/a;->r(Lo2/a;)V

    .line 52
    .line 53
    .line 54
    return v3

    .line 55
    :catchall_1
    move-exception p1

    .line 56
    move-object v0, p3

    .line 57
    goto/16 :goto_3

    .line 58
    .line 59
    :cond_1
    :try_start_2
    iget-object p2, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFramePreparationStrategy:Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;

    .line 60
    .line 61
    if-eqz p2, :cond_2

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    invoke-interface {p2, v1, p1, v0}, Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;->prepareFrames(IILkotlin/jvm/functions/Function0;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 72
    .line 73
    .line 74
    :cond_2
    invoke-static {p3}, Lo2/a;->r(Lo2/a;)V

    .line 75
    .line 76
    .line 77
    return v2

    .line 78
    :cond_3
    const/4 v1, -0x1

    .line 79
    if-eqz p3, :cond_9

    .line 80
    .line 81
    const/4 v4, 0x2

    .line 82
    if-eq p3, v3, :cond_7

    .line 83
    .line 84
    const/4 v5, 0x3

    .line 85
    if-eq p3, v4, :cond_5

    .line 86
    .line 87
    if-eq p3, v5, :cond_4

    .line 88
    .line 89
    invoke-static {v0}, Lo2/a;->r(Lo2/a;)V

    .line 90
    .line 91
    .line 92
    return v2

    .line 93
    :cond_4
    :try_start_3
    iget-object p3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameCache:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;

    .line 94
    .line 95
    invoke-interface {p3, p2}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;->getFallbackFrame(I)Lo2/a;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-direct {p0, p2, v0, p1, v5}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->drawBitmapAndCache(ILo2/a;Landroid/graphics/Canvas;I)Z

    .line 100
    .line 101
    .line 102
    move-result p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    move v3, v1

    .line 104
    goto :goto_1

    .line 105
    :cond_5
    :try_start_4
    iget-object p3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->platformBitmapFactory:Lq3/d;

    .line 106
    .line 107
    iget v6, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapWidth:I

    .line 108
    .line 109
    iget v7, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapHeight:I

    .line 110
    .line 111
    iget-object v8, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 112
    .line 113
    invoke-virtual {p3, v6, v7, v8}, Lq3/d;->b(IILandroid/graphics/Bitmap$Config;)Lo2/a;

    .line 114
    .line 115
    .line 116
    move-result-object v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 117
    :try_start_5
    invoke-direct {p0, p2, v0}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->renderFrameInBitmap(ILo2/a;)Z

    .line 118
    .line 119
    .line 120
    move-result p3

    .line 121
    if-eqz p3, :cond_6

    .line 122
    .line 123
    invoke-direct {p0, p2, v0, p1, v4}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->drawBitmapAndCache(ILo2/a;Landroid/graphics/Canvas;I)Z

    .line 124
    .line 125
    .line 126
    move-result p3

    .line 127
    if-eqz p3, :cond_6

    .line 128
    .line 129
    move v2, v3

    .line 130
    :cond_6
    move p3, v2

    .line 131
    move v3, v5

    .line 132
    goto :goto_1

    .line 133
    :catch_0
    move-exception p1

    .line 134
    sget-object p2, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->TAG:Ljava/lang/Class;

    .line 135
    .line 136
    const-string p3, "Failed to create frame bitmap"

    .line 137
    .line 138
    invoke-static {p2, p3, p1}, Ll2/a;->w(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 139
    .line 140
    .line 141
    invoke-static {v0}, Lo2/a;->r(Lo2/a;)V

    .line 142
    .line 143
    .line 144
    return v2

    .line 145
    :cond_7
    :try_start_6
    iget-object p3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameCache:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;

    .line 146
    .line 147
    iget v5, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapWidth:I

    .line 148
    .line 149
    iget v6, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapHeight:I

    .line 150
    .line 151
    invoke-interface {p3, p2, v5, v6}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;->getBitmapToReuseForFrame(III)Lo2/a;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-direct {p0, p2, v0}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->renderFrameInBitmap(ILo2/a;)Z

    .line 156
    .line 157
    .line 158
    move-result p3

    .line 159
    if-eqz p3, :cond_8

    .line 160
    .line 161
    invoke-direct {p0, p2, v0, p1, v3}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->drawBitmapAndCache(ILo2/a;Landroid/graphics/Canvas;I)Z

    .line 162
    .line 163
    .line 164
    move-result p3

    .line 165
    if-eqz p3, :cond_8

    .line 166
    .line 167
    move v2, v3

    .line 168
    :cond_8
    move p3, v2

    .line 169
    move v3, v4

    .line 170
    goto :goto_1

    .line 171
    :cond_9
    iget-object p3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameCache:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;

    .line 172
    .line 173
    invoke-interface {p3, p2}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;->getCachedFrame(I)Lo2/a;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-direct {p0, p2, v0, p1, v2}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->drawBitmapAndCache(ILo2/a;Landroid/graphics/Canvas;I)Z

    .line 178
    .line 179
    .line 180
    move-result p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 181
    :goto_1
    invoke-static {v0}, Lo2/a;->r(Lo2/a;)V

    .line 182
    .line 183
    .line 184
    if-nez p3, :cond_b

    .line 185
    .line 186
    if-ne v3, v1, :cond_a

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_a
    invoke-direct {p0, p1, p2, v3}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->drawFrameOrFallback(Landroid/graphics/Canvas;II)Z

    .line 190
    .line 191
    .line 192
    move-result p3

    .line 193
    :cond_b
    :goto_2
    return p3

    .line 194
    :goto_3
    invoke-static {v0}, Lo2/a;->r(Lo2/a;)V

    .line 195
    .line 196
    .line 197
    throw p1
.end method

.method private static final preloadAnimation$lambda$1(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->animationListener:Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-interface {p0}, Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;->onAnimationLoaded()V

    .line 11
    .line 12
    .line 13
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method private static final preloadAnimation$lambda$2(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->animationListener:Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-interface {p0}, Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;->onAnimationLoaded()V

    .line 11
    .line 12
    .line 13
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method private final renderFrameInBitmap(ILo2/a;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    invoke-virtual {p2}, Lo2/a;->u()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameRenderer:Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;

    .line 11
    .line 12
    invoke-virtual {p2}, Lo2/a;->s()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "get(...)"

    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    check-cast v1, Landroid/graphics/Bitmap;

    .line 22
    .line 23
    invoke-interface {v0, p1, v1}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;->renderFrame(ILandroid/graphics/Bitmap;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    invoke-static {p2}, Lo2/a;->r(Lo2/a;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return p1

    .line 33
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 34
    return p1
.end method

.method private final updateBitmapDimensions()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameRenderer:Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;->getIntrinsicWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapWidth:I

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bounds:Landroid/graphics/Rect;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v1

    .line 22
    :goto_0
    iput v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapWidth:I

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameRenderer:Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;

    .line 25
    .line 26
    invoke-interface {v0}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;->getIntrinsicHeight()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapHeight:I

    .line 31
    .line 32
    if-ne v0, v1, :cond_3

    .line 33
    .line 34
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bounds:Landroid/graphics/Rect;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    :cond_2
    iput v1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapHeight:I

    .line 43
    .line 44
    :cond_3
    return-void
.end method

.method private final updatePath(ILandroid/graphics/Bitmap;FF)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->cornerRadii:[F

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->pathFrameNumber:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    return v1

    .line 13
    :cond_1
    new-instance v0, Landroid/graphics/BitmapShader;

    .line 14
    .line 15
    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 16
    .line 17
    invoke-direct {v0, p2, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 18
    .line 19
    .line 20
    new-instance p2, Landroid/graphics/RectF;

    .line 21
    .line 22
    iget v2, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapWidth:I

    .line 23
    .line 24
    int-to-float v2, v2

    .line 25
    iget v3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapHeight:I

    .line 26
    .line 27
    int-to-float v3, v3

    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-direct {p2, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 30
    .line 31
    .line 32
    new-instance v2, Landroid/graphics/RectF;

    .line 33
    .line 34
    invoke-direct {v2, v4, v4, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 35
    .line 36
    .line 37
    iget-object v3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->matrix:Landroid/graphics/Matrix;

    .line 38
    .line 39
    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    .line 40
    .line 41
    invoke-virtual {v3, p2, v2, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 42
    .line 43
    .line 44
    iget-object p2, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->matrix:Landroid/graphics/Matrix;

    .line 45
    .line 46
    invoke-virtual {v0, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 47
    .line 48
    .line 49
    iget-object p2, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->paint:Landroid/graphics/Paint;

    .line 50
    .line 51
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 52
    .line 53
    .line 54
    iget-object p2, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->path:Landroid/graphics/Path;

    .line 55
    .line 56
    new-instance v0, Landroid/graphics/RectF;

    .line 57
    .line 58
    invoke-direct {v0, v4, v4, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 59
    .line 60
    .line 61
    iget-object p3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->cornerRadii:[F

    .line 62
    .line 63
    sget-object p4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 64
    .line 65
    invoke-virtual {p2, v0, p3, p4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 66
    .line 67
    .line 68
    iput p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->pathFrameNumber:I

    .line 69
    .line 70
    return v1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->isNewRenderImplementation:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFramePreparationStrategy:Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;->clearFrames()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameCache:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;->clear()V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    return-void
.end method

.method public drawFrame(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;I)Z
    .locals 8
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "parent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "canvas"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->frameListener:Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameListener;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-interface {p1, p0, p3}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameListener;->onDrawFrameStart(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    invoke-direct {p0, p2, p3, p1}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->drawFrameOrFallback(Landroid/graphics/Canvas;II)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    iget-object p2, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->frameListener:Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameListener;

    .line 26
    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    invoke-interface {p2, p0, p3}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameListener;->onFrameDropped(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;I)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-boolean p2, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->isNewRenderImplementation:Z

    .line 33
    .line 34
    if-nez p2, :cond_2

    .line 35
    .line 36
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFramePreparer:Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFramePreparationStrategy:Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    iget-object v2, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameCache:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;

    .line 45
    .line 46
    const/16 v6, 0x10

    .line 47
    .line 48
    const/4 v7, 0x0

    .line 49
    const/4 v5, 0x0

    .line 50
    move-object v3, p0

    .line 51
    move v4, p3

    .line 52
    invoke-static/range {v0 .. v7}, Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy$DefaultImpls;->prepareFrames$default(Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;Lcom/facebook/fresco/animation/backend/AnimationBackend;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    return p1
.end method

.method public final getCornerRadii()[F
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->cornerRadii:[F

    .line 2
    .line 3
    return-object v0
.end method

.method public getFrameCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getFrameCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getFrameDurationMs(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getFrameDurationMs(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public getLoopCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getLoopCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getLoopDurationMs()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getLoopDurationMs()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getSizeInBytes()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameCache:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;->getSizeInBytes()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public height()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->height()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onInactive()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->isNewRenderImplementation:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFramePreparationStrategy:Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;->onStop()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->clear()V

    .line 14
    .line 15
    .line 16
    :cond_1
    :goto_0
    return-void
.end method

.method public preloadAnimation()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->isNewRenderImplementation:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v2, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFramePreparer:Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFramePreparationStrategy:Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget-object v3, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameCache:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;

    .line 14
    .line 15
    new-instance v6, Lh3/a;

    .line 16
    .line 17
    invoke-direct {v6, p0}, Lh3/a;-><init>(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;)V

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    move-object v4, p0

    .line 22
    invoke-interface/range {v1 .. v6}, Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;->prepareFrames(Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;Lcom/facebook/fresco/animation/backend/AnimationBackend;ILkotlin/jvm/functions/Function0;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFramePreparationStrategy:Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    .line 31
    .line 32
    invoke-interface {v1}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->width()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iget-object v2, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    .line 37
    .line 38
    invoke-interface {v2}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->height()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    new-instance v3, Lh3/b;

    .line 43
    .line 44
    invoke-direct {v3, p0}, Lh3/b;-><init>(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;->prepareFrames(IILkotlin/jvm/functions/Function0;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->paint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setAnimationListener(Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;)V
    .locals 0
    .param p1    # Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->animationListener:Lcom/facebook/fresco/animation/backend/AnimationBackend$Listener;

    .line 2
    .line 3
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bounds:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->bitmapFrameRenderer:Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;->setBounds(Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->updateBitmapDimensions()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->paint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setFrameListener(Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameListener;)V
    .locals 0
    .param p1    # Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->frameListener:Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend$FrameListener;

    .line 2
    .line 3
    return-void
.end method

.method public width()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/BitmapAnimationBackend;->animationInformation:Lcom/facebook/fresco/animation/backend/AnimationInformation;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->width()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
