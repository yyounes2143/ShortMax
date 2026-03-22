.class final Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;
.super Ljava/lang/Object;
.source "BufferFrameLoader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BufferFrame"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final bitmapRef:Lo2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isUpdatingFrame:Z


# direct methods
.method public constructor <init>(Lo2/a;)V
    .locals 1
    .param p1    # Lo2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "bitmapRef"

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
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;->bitmapRef:Lo2/a;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getBitmapRef()Lo2/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;->bitmapRef:Lo2/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isFrameAvailable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;->isUpdatingFrame:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;->bitmapRef:Lo2/a;

    .line 6
    .line 7
    invoke-virtual {v0}, Lo2/a;->u()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public final isUpdatingFrame()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;->isUpdatingFrame:Z

    .line 2
    .line 3
    return v0
.end method

.method public final release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;->bitmapRef:Lo2/a;

    .line 2
    .line 3
    invoke-static {v0}, Lo2/a;->r(Lo2/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setUpdatingFrame(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader$BufferFrame;->isUpdatingFrame:Z

    .line 2
    .line 3
    return-void
.end method
