.class public final Lcom/facebook/fresco/animation/bitmap/preparation/FixedNumberBitmapFramePreparationStrategy;
.super Ljava/lang/Object;
.source "FixedNumberBitmapFramePreparationStrategy.kt"

# interfaces
.implements Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/facebook/fresco/animation/bitmap/preparation/FixedNumberBitmapFramePreparationStrategy;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final framesToPrepare:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/fresco/animation/bitmap/preparation/FixedNumberBitmapFramePreparationStrategy;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FixedNumberBitmapFramePreparationStrategy;->framesToPrepare:I

    .line 4
    const-class p1, Lcom/facebook/fresco/animation/bitmap/preparation/FixedNumberBitmapFramePreparationStrategy;

    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FixedNumberBitmapFramePreparationStrategy;->TAG:Ljava/lang/Class;

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x3

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/bitmap/preparation/FixedNumberBitmapFramePreparationStrategy;-><init>(I)V

    return-void
.end method


# virtual methods
.method public clearFrames()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy$DefaultImpls;->clearFrames(Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public getBitmapFrame(III)Lo2/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy$DefaultImpls;->getBitmapFrame(Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;III)Lo2/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy$DefaultImpls;->onStop(Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public prepareFrames(IILkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy$DefaultImpls;->prepareFrames(Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparationStrategy;IILkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public prepareFrames(Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;Lcom/facebook/fresco/animation/backend/AnimationBackend;ILkotlin/jvm/functions/Function0;)V
    .locals 7
    .param p1    # Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/fresco/animation/backend/AnimationBackend;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;",
            "Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;",
            "Lcom/facebook/fresco/animation/backend/AnimationBackend;",
            "I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bitmapFramePreparer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmapFrameCache"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animationBackend"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FixedNumberBitmapFramePreparationStrategy;->framesToPrepare:I

    const/4 v1, 0x1

    if-gt v1, v0, :cond_2

    :goto_0
    add-int v2, p4, v1

    .line 3
    invoke-interface {p3}, Lcom/facebook/fresco/animation/backend/AnimationInformation;->getFrameCount()I

    move-result v3

    rem-int/2addr v2, v3

    const/4 v3, 0x2

    .line 4
    invoke-static {v3}, Ll2/a;->n(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    iget-object v3, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FixedNumberBitmapFramePreparationStrategy;->TAG:Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Preparing frame %d, last drawn: %d"

    invoke-static {v3, v6, v4, v5}, Ll2/a;->q(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    :cond_0
    invoke-interface {p1, p2, p3, v2}, Lcom/facebook/fresco/animation/bitmap/preparation/BitmapFramePreparer;->prepareFrame(Lcom/facebook/fresco/animation/bitmap/BitmapFrameCache;Lcom/facebook/fresco/animation/backend/AnimationBackend;I)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    if-eq v1, v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_3

    .line 7
    invoke-interface {p5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_3
    return-void
.end method
