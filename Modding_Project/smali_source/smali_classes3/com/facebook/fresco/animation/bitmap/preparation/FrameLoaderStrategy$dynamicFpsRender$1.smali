.class public final Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy$dynamicFpsRender$1;
.super Ljava/lang/Object;
.source "FrameLoaderStrategy.kt"

# interfaces
.implements Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/DynamicRenderingFps;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;-><init>(Ljava/lang/String;Lcom/facebook/fresco/animation/backend/AnimationInformation;Lcom/facebook/fresco/animation/bitmap/BitmapFrameRenderer;Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoaderFactory;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final animationFps:I

.field final synthetic this$0:Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;


# direct methods
.method constructor <init>(Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy$dynamicFpsRender$1;->this$0:Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->access$getMaxAnimationFps$p(Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy$dynamicFpsRender$1;->animationFps:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getAnimationFps()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy$dynamicFpsRender$1;->animationFps:I

    .line 2
    .line 3
    return v0
.end method

.method public getRenderingFps()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy$dynamicFpsRender$1;->this$0:Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->access$getCurrentFps$p(Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public setRenderingFps(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy$dynamicFpsRender$1;->this$0:Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->access$getCurrentFps$p(Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy$dynamicFpsRender$1;->this$0:Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v0}, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->access$getMaxAnimationFps$p(Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-static {p1, v1, v2}, Lkotlin/ranges/e;->n(III)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-static {v0, p1}, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->access$setCurrentFps$p(Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;I)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy$dynamicFpsRender$1;->this$0:Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->access$getFrameLoader(Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;)Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy$dynamicFpsRender$1;->this$0:Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;->access$getCurrentFps$p(Lcom/facebook/fresco/animation/bitmap/preparation/FrameLoaderStrategy;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-interface {p1, v0}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameLoader;->compressToFps(I)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method
