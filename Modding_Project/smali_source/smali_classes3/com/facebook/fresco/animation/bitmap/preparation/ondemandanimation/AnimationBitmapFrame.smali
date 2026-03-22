.class public final Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;
.super Ljava/lang/Object;
.source "AnimationBitmapFrame.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final bitmap:Lo2/a;
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

.field private frameNumber:I


# direct methods
.method public constructor <init>(ILo2/a;)V
    .locals 1
    .param p2    # Lo2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "bitmap"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;->frameNumber:I

    .line 10
    .line 11
    iput-object p2, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;->bitmap:Lo2/a;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;->bitmap:Lo2/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lo2/a;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getBitmap()Lo2/a;
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
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;->bitmap:Lo2/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFrameNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;->frameNumber:I

    .line 2
    .line 3
    return v0
.end method

.method public final isValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;->bitmap:Lo2/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lo2/a;->u()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final isValidFor(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;->frameNumber:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;->bitmap:Lo2/a;

    .line 6
    .line 7
    invoke-virtual {p1}, Lo2/a;->u()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method public final setFrameNumber(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/AnimationBitmapFrame;->frameNumber:I

    .line 2
    .line 3
    return-void
.end method
