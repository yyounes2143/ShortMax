.class public final Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendAnimationInformation;
.super Ljava/lang/Object;
.source "AnimatedDrawableBackendAnimationInformation.kt"

# interfaces
.implements Lcom/facebook/fresco/animation/backend/AnimationInformation;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final animatedDrawableBackend:Ll3/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ll3/a;)V
    .locals 1
    .param p1    # Ll3/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "animatedDrawableBackend"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendAnimationInformation;->animatedDrawableBackend:Ll3/a;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getFrameCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendAnimationInformation;->animatedDrawableBackend:Ll3/a;

    .line 2
    .line 3
    invoke-interface {v0}, Ll3/a;->getFrameCount()I

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
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendAnimationInformation;->animatedDrawableBackend:Ll3/a;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ll3/a;->b(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getLoopCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendAnimationInformation;->animatedDrawableBackend:Ll3/a;

    .line 2
    .line 3
    invoke-interface {v0}, Ll3/a;->getLoopCount()I

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
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendAnimationInformation;->animatedDrawableBackend:Ll3/a;

    .line 2
    .line 3
    invoke-interface {v0}, Ll3/a;->e()I

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
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendAnimationInformation;->animatedDrawableBackend:Ll3/a;

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

.method public width()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/wrapper/AnimatedDrawableBackendAnimationInformation;->animatedDrawableBackend:Ll3/a;

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
