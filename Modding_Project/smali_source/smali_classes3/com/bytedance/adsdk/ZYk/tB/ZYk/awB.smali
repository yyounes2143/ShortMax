.class public Lcom/bytedance/adsdk/ZYk/tB/ZYk/awB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/adsdk/ZYk/tB/ZYk/tB;


# instance fields
.field private final Pfn:Lcom/bytedance/adsdk/ZYk/tB/oJ/ex;

.field private final ZYk:Landroid/graphics/Path$FillType;

.field private final ba:Z

.field private final ex:Lcom/bytedance/adsdk/ZYk/tB/oJ/oJ;

.field private final oJ:Z

.field private final tB:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/bytedance/adsdk/ZYk/tB/oJ/oJ;Lcom/bytedance/adsdk/ZYk/tB/oJ/ex;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/awB;->tB:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/awB;->oJ:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/awB;->ZYk:Landroid/graphics/Path$FillType;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/awB;->ex:Lcom/bytedance/adsdk/ZYk/tB/oJ/oJ;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/awB;->Pfn:Lcom/bytedance/adsdk/ZYk/tB/oJ/ex;

    .line 13
    .line 14
    iput-boolean p6, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/awB;->ba:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public Pfn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/awB;->ba:Z

    .line 2
    .line 3
    return v0
.end method

.method public ZYk()Lcom/bytedance/adsdk/ZYk/tB/oJ/oJ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/awB;->ex:Lcom/bytedance/adsdk/ZYk/tB/oJ/oJ;

    .line 2
    .line 3
    return-object v0
.end method

.method public ex()Landroid/graphics/Path$FillType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/awB;->ZYk:Landroid/graphics/Path$FillType;

    .line 2
    .line 3
    return-object v0
.end method

.method public oJ(Lcom/bytedance/adsdk/ZYk/jFA;Lcom/bytedance/adsdk/ZYk/cFZ;Lcom/bytedance/adsdk/ZYk/tB/tB/oJ;)Lcom/bytedance/adsdk/ZYk/oJ/oJ/tB;
    .locals 0

    .line 2
    new-instance p2, Lcom/bytedance/adsdk/ZYk/oJ/oJ/cFZ;

    invoke-direct {p2, p1, p3, p0}, Lcom/bytedance/adsdk/ZYk/oJ/oJ/cFZ;-><init>(Lcom/bytedance/adsdk/ZYk/jFA;Lcom/bytedance/adsdk/ZYk/tB/tB/oJ;Lcom/bytedance/adsdk/ZYk/tB/ZYk/awB;)V

    return-object p2
.end method

.method public oJ()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/awB;->tB:Ljava/lang/String;

    return-object v0
.end method

.method public tB()Lcom/bytedance/adsdk/ZYk/tB/oJ/ex;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/awB;->Pfn:Lcom/bytedance/adsdk/ZYk/tB/oJ/ex;

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
    const-string v1, "ShapeFill{color=, fillEnabled="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/awB;->oJ:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x7d

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method
