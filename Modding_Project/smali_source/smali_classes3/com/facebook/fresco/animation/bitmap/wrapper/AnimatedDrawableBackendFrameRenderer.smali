.class public final Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendFrameRenderer;
.super Ljava/lang/Object;
.source "AnimatedDrawableBackendFrameRenderer.kt"

# interfaces
.implements Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendFrameRenderer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendFrameRenderer$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private animatedDrawableBackend:Ll3/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private animatedImageCompositor:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final bitmapFrameCache:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final callback:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isNewRenderImplementation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendFrameRenderer$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendFrameRenderer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendFrameRenderer;->Companion:Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendFrameRenderer$Companion;

    .line 8
    .line 9
    const-class v0, Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendFrameRenderer;

    .line 10
    .line 11
    sput-object v0, Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendFrameRenderer;->TAG:Ljava/lang/Class;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;Ll3/a;Z)V
    .locals 1
    .param p1    # Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ll3/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "bitmapFrameCache"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "animatedDrawableBackend"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendFrameRenderer;->bitmapFrameCache:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendFrameRenderer;->animatedDrawableBackend:Ll3/a;

    .line 17
    .line 18
    iput-boolean p3, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendFrameRenderer;->isNewRenderImplementation:Z

    .line 19
    .line 20
    new-instance p1, Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendFrameRenderer$callback$1;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendFrameRenderer$callback$1;-><init>(Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendFrameRenderer;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendFrameRenderer;->callback:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$b;

    .line 26
    .line 27
    new-instance p2, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendFrameRenderer;->animatedDrawableBackend:Ll3/a;

    .line 30
    .line 31
    invoke-direct {p2, v0, p3, p1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;-><init>(Ll3/a;ZLcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$b;)V

    .line 32
    .line 33
    .line 34
    iput-object p2, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendFrameRenderer;->animatedImageCompositor:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

    .line 35
    .line 36
    return-void
.end method

.method public static final synthetic access$getBitmapFrameCache$p(Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendFrameRenderer;)Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendFrameRenderer;->bitmapFrameCache:Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendFrameRenderer;->animatedDrawableBackend:Ll3/a;

    .line 2
    .line 3
    invoke-interface {v0}, Ll3/a;->getHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendFrameRenderer;->animatedDrawableBackend:Ll3/a;

    .line 2
    .line 3
    invoke-interface {v0}, Ll3/a;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public renderFrame(ILandroid/graphics/Bitmap;)Z
    .locals 2
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "targetBitmap"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendFrameRenderer;->animatedImageCompositor:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->h(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :catch_0
    move-exception p2

    .line 14
    sget-object v0, Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendFrameRenderer;->TAG:Ljava/lang/Class;

    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v1, "Rendering of frame unsuccessful. Frame number: %d"

    .line 25
    .line 26
    invoke-static {v0, p2, v1, p1}, Ll2/a;->h(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    return p1
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 3
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendFrameRenderer;->animatedDrawableBackend:Ll3/a;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ll3/a;->g(Landroid/graphics/Rect;)Ll3/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "forNewBounds(...)"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendFrameRenderer;->animatedDrawableBackend:Ll3/a;

    .line 13
    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    .line 16
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendFrameRenderer;->animatedDrawableBackend:Ll3/a;

    .line 17
    .line 18
    new-instance v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

    .line 19
    .line 20
    iget-boolean v1, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendFrameRenderer;->isNewRenderImplementation:Z

    .line 21
    .line 22
    iget-object v2, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendFrameRenderer;->callback:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$b;

    .line 23
    .line 24
    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;-><init>(Ll3/a;ZLcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$b;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendFrameRenderer;->animatedImageCompositor:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

    .line 28
    .line 29
    :cond_0
    return-void
.end method
