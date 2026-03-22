.class public Lcom/bytedance/adsdk/ZYk/tB/ZYk/dLZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/adsdk/ZYk/tB/ZYk/tB;


# instance fields
.field private final Pfn:Z

.field private final ZYk:Lcom/bytedance/adsdk/ZYk/tB/oJ/PiB;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/ZYk/tB/oJ/PiB<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final ex:Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;

.field private final oJ:Ljava/lang/String;

.field private final tB:Lcom/bytedance/adsdk/ZYk/tB/oJ/PiB;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/ZYk/tB/oJ/PiB<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/adsdk/ZYk/tB/oJ/PiB;Lcom/bytedance/adsdk/ZYk/tB/oJ/PiB;Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/adsdk/ZYk/tB/oJ/PiB<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/bytedance/adsdk/ZYk/tB/oJ/PiB<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/dLZ;->oJ:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/dLZ;->ZYk:Lcom/bytedance/adsdk/ZYk/tB/oJ/PiB;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/dLZ;->tB:Lcom/bytedance/adsdk/ZYk/tB/oJ/PiB;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/dLZ;->ex:Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/dLZ;->Pfn:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public Pfn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/dLZ;->Pfn:Z

    .line 2
    .line 3
    return v0
.end method

.method public ZYk()Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/dLZ;->ex:Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;

    .line 2
    .line 3
    return-object v0
.end method

.method public ex()Lcom/bytedance/adsdk/ZYk/tB/oJ/PiB;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/adsdk/ZYk/tB/oJ/PiB<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/dLZ;->ZYk:Lcom/bytedance/adsdk/ZYk/tB/oJ/PiB;

    .line 2
    .line 3
    return-object v0
.end method

.method public oJ(Lcom/bytedance/adsdk/ZYk/jFA;Lcom/bytedance/adsdk/ZYk/cFZ;Lcom/bytedance/adsdk/ZYk/tB/tB/oJ;)Lcom/bytedance/adsdk/ZYk/oJ/oJ/tB;
    .locals 0

    .line 2
    new-instance p2, Lcom/bytedance/adsdk/ZYk/oJ/oJ/awB;

    invoke-direct {p2, p1, p3, p0}, Lcom/bytedance/adsdk/ZYk/oJ/oJ/awB;-><init>(Lcom/bytedance/adsdk/ZYk/jFA;Lcom/bytedance/adsdk/ZYk/tB/tB/oJ;Lcom/bytedance/adsdk/ZYk/tB/ZYk/dLZ;)V

    return-object p2
.end method

.method public oJ()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/dLZ;->oJ:Ljava/lang/String;

    return-object v0
.end method

.method public tB()Lcom/bytedance/adsdk/ZYk/tB/oJ/PiB;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/adsdk/ZYk/tB/oJ/PiB<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/dLZ;->tB:Lcom/bytedance/adsdk/ZYk/tB/oJ/PiB;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "RectangleShape{position="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/dLZ;->ZYk:Lcom/bytedance/adsdk/ZYk/tB/oJ/PiB;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", size="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/dLZ;->tB:Lcom/bytedance/adsdk/ZYk/tB/oJ/PiB;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/16 v1, 0x7d

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method
