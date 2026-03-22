.class Lcom/facebook/imagepipeline/producers/j$a;
.super Lcom/facebook/imagepipeline/producers/u;
.source "BitmapPrepareProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/u<",
        "Lo2/a<",
        "Ly3/e;",
        ">;",
        "Lo2/a<",
        "Ly3/e;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/n;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/n<",
            "Lo2/a<",
            "Ly3/e;",
            ">;>;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/u;-><init>(Lcom/facebook/imagepipeline/producers/n;)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/facebook/imagepipeline/producers/j$a;->c:I

    .line 5
    .line 6
    iput p3, p0, Lcom/facebook/imagepipeline/producers/j$a;->d:I

    .line 7
    .line 8
    return-void
.end method

.method private p(Lo2/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo2/a<",
            "Ly3/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    invoke-virtual {p1}, Lo2/a;->u()Z

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
    invoke-virtual {p1}, Lo2/a;->s()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ly3/e;

    .line 15
    .line 16
    if-eqz p1, :cond_5

    .line 17
    .line 18
    invoke-interface {p1}, Ly3/e;->isClosed()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    instance-of v0, p1, Ly3/f;

    .line 26
    .line 27
    if-eqz v0, :cond_5

    .line 28
    .line 29
    check-cast p1, Ly3/f;

    .line 30
    .line 31
    invoke-interface {p1}, Ly3/d;->B0()Landroid/graphics/Bitmap;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-nez p1, :cond_2

    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    mul-int/2addr v0, v1

    .line 47
    iget v1, p0, Lcom/facebook/imagepipeline/producers/j$a;->c:I

    .line 48
    .line 49
    if-ge v0, v1, :cond_3

    .line 50
    .line 51
    return-void

    .line 52
    :cond_3
    iget v1, p0, Lcom/facebook/imagepipeline/producers/j$a;->d:I

    .line 53
    .line 54
    if-le v0, v1, :cond_4

    .line 55
    .line 56
    return-void

    .line 57
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 58
    .line 59
    .line 60
    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic h(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Lo2/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/j$a;->q(Lo2/a;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected q(Lo2/a;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo2/a<",
            "Ly3/e;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/j$a;->p(Lo2/a;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/u;->o()Lcom/facebook/imagepipeline/producers/n;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/n;->b(Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
