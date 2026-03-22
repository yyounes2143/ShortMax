.class public Lcom/bytedance/adsdk/ZYk/tB/oJ/jFA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/adsdk/ZYk/tB/oJ/PiB;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/adsdk/ZYk/tB/oJ/PiB<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final ZYk:Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;

.field private final oJ:Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/adsdk/ZYk/tB/oJ/jFA;->oJ:Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bytedance/adsdk/ZYk/tB/oJ/jFA;->ZYk:Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public ZYk()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/tB/oJ/jFA;->oJ:Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;->ZYk()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/tB/oJ/jFA;->ZYk:Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;->ZYk()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public oJ()Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/WcQ;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/adsdk/ZYk/tB/oJ/jFA;->oJ:Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;->oJ()Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/bytedance/adsdk/ZYk/tB/oJ/jFA;->ZYk:Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;->oJ()Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-direct {v0, v1, v2}, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/WcQ;-><init>(Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public tB()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ZYk/cFZ/oJ<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v1, "Cannot call getKeyframes on AnimatableSplitDimensionPathValue."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method
