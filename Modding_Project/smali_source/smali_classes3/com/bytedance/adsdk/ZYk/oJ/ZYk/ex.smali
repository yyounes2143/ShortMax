.class public Lcom/bytedance/adsdk/ZYk/oJ/ZYk/ex;
.super Lcom/bytedance/adsdk/ZYk/oJ/ZYk/cFZ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/adsdk/ZYk/oJ/ZYk/cFZ<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ZYk/cFZ/oJ<",
            "Ljava/lang/Float;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/cFZ;-><init>(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method ZYk(Lcom/bytedance/adsdk/ZYk/cFZ/oJ;F)Ljava/lang/Float;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/ZYk/cFZ/oJ<",
            "Ljava/lang/Float;",
            ">;F)",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/ex;->tB(Lcom/bytedance/adsdk/ZYk/cFZ/oJ;F)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public jFA()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;->tB()Lcom/bytedance/adsdk/ZYk/cFZ/oJ;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;->Pfn()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/ex;->tB(Lcom/bytedance/adsdk/ZYk/cFZ/oJ;F)F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method synthetic oJ(Lcom/bytedance/adsdk/ZYk/cFZ/oJ;F)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/ex;->ZYk(Lcom/bytedance/adsdk/ZYk/cFZ/oJ;F)Ljava/lang/Float;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method tB(Lcom/bytedance/adsdk/ZYk/cFZ/oJ;F)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/ZYk/cFZ/oJ<",
            "Ljava/lang/Float;",
            ">;F)F"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/bytedance/adsdk/ZYk/cFZ/oJ;->oJ:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p1, Lcom/bytedance/adsdk/ZYk/cFZ/oJ;->ZYk:Ljava/lang/Object;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;->tB:Lcom/bytedance/adsdk/ZYk/cFZ/ZYk;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ZYk/cFZ/oJ;->ba()F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ZYk/cFZ/oJ;->cFZ()F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-static {v0, p1, p2}, Lcom/bytedance/adsdk/ZYk/ba/Pfn;->oJ(FFF)F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :cond_0
    iget-object p1, p1, Lcom/bytedance/adsdk/ZYk/cFZ/oJ;->cFZ:Ljava/lang/Float;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;->ex()F

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;->so()F

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    throw p1

    .line 39
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    const-string p2, "Missing values for keyframe."

    .line 42
    .line 43
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1
.end method
