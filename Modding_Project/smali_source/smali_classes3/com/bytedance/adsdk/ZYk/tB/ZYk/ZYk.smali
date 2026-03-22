.class public Lcom/bytedance/adsdk/ZYk/tB/ZYk/ZYk;
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

.field private final ex:Z

.field private final oJ:Ljava/lang/String;

.field private final tB:Lcom/bytedance/adsdk/ZYk/tB/oJ/ba;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/adsdk/ZYk/tB/oJ/PiB;Lcom/bytedance/adsdk/ZYk/tB/oJ/ba;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/adsdk/ZYk/tB/oJ/PiB<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/bytedance/adsdk/ZYk/tB/oJ/ba;",
            "ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/ZYk;->oJ:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/ZYk;->ZYk:Lcom/bytedance/adsdk/ZYk/tB/oJ/PiB;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/ZYk;->tB:Lcom/bytedance/adsdk/ZYk/tB/oJ/ba;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/ZYk;->ex:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/ZYk;->Pfn:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public Pfn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/ZYk;->Pfn:Z

    .line 2
    .line 3
    return v0
.end method

.method public ZYk()Lcom/bytedance/adsdk/ZYk/tB/oJ/PiB;
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
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/ZYk;->ZYk:Lcom/bytedance/adsdk/ZYk/tB/oJ/PiB;

    .line 2
    .line 3
    return-object v0
.end method

.method public ex()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/ZYk;->ex:Z

    .line 2
    .line 3
    return v0
.end method

.method public oJ(Lcom/bytedance/adsdk/ZYk/jFA;Lcom/bytedance/adsdk/ZYk/cFZ;Lcom/bytedance/adsdk/ZYk/tB/tB/oJ;)Lcom/bytedance/adsdk/ZYk/oJ/oJ/tB;
    .locals 0

    .line 1
    new-instance p2, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ba;

    invoke-direct {p2, p1, p3, p0}, Lcom/bytedance/adsdk/ZYk/oJ/oJ/ba;-><init>(Lcom/bytedance/adsdk/ZYk/jFA;Lcom/bytedance/adsdk/ZYk/tB/tB/oJ;Lcom/bytedance/adsdk/ZYk/tB/ZYk/ZYk;)V

    return-object p2
.end method

.method public oJ()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/ZYk;->oJ:Ljava/lang/String;

    return-object v0
.end method

.method public tB()Lcom/bytedance/adsdk/ZYk/tB/oJ/ba;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/ZYk;->tB:Lcom/bytedance/adsdk/ZYk/tB/oJ/ba;

    .line 2
    .line 3
    return-object v0
.end method
