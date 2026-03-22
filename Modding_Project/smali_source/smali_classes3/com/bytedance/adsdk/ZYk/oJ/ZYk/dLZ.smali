.class public Lcom/bytedance/adsdk/ZYk/oJ/ZYk/dLZ;
.super Lcom/bytedance/adsdk/ZYk/oJ/ZYk/cFZ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/adsdk/ZYk/oJ/ZYk/cFZ<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final ex:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ZYk/cFZ/oJ<",
            "Landroid/graphics/PointF;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/cFZ;-><init>(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/graphics/PointF;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/dLZ;->ex:Landroid/graphics/PointF;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public ZYk(Lcom/bytedance/adsdk/ZYk/cFZ/oJ;F)Landroid/graphics/PointF;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/ZYk/cFZ/oJ<",
            "Landroid/graphics/PointF;",
            ">;F)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p2, p2}, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/dLZ;->ZYk(Lcom/bytedance/adsdk/ZYk/cFZ/oJ;FFF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method protected ZYk(Lcom/bytedance/adsdk/ZYk/cFZ/oJ;FFF)Landroid/graphics/PointF;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/ZYk/cFZ/oJ<",
            "Landroid/graphics/PointF;",
            ">;FFF)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .line 2
    iget-object p2, p1, Lcom/bytedance/adsdk/ZYk/cFZ/oJ;->oJ:Ljava/lang/Object;

    if-eqz p2, :cond_1

    iget-object v0, p1, Lcom/bytedance/adsdk/ZYk/cFZ/oJ;->ZYk:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 3
    check-cast p2, Landroid/graphics/PointF;

    .line 4
    check-cast v0, Landroid/graphics/PointF;

    .line 5
    iget-object v1, p0, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;->tB:Lcom/bytedance/adsdk/ZYk/cFZ/ZYk;

    if-nez v1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/dLZ;->ex:Landroid/graphics/PointF;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v1

    mul-float/2addr p3, v2

    add-float/2addr v1, p3

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget p3, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p3, p2

    mul-float/2addr p4, p3

    add-float/2addr p2, p4

    invoke-virtual {p1, v1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 7
    iget-object p1, p0, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/dLZ;->ex:Landroid/graphics/PointF;

    return-object p1

    .line 8
    :cond_0
    iget-object p1, p1, Lcom/bytedance/adsdk/ZYk/cFZ/oJ;->cFZ:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 9
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;->ex()F

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;->so()F

    const/4 p1, 0x0

    .line 10
    throw p1

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic oJ(Lcom/bytedance/adsdk/ZYk/cFZ/oJ;F)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/dLZ;->ZYk(Lcom/bytedance/adsdk/ZYk/cFZ/oJ;F)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic oJ(Lcom/bytedance/adsdk/ZYk/cFZ/oJ;FFF)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/dLZ;->ZYk(Lcom/bytedance/adsdk/ZYk/cFZ/oJ;FFF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
