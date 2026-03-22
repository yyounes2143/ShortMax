.class public Lcom/bytedance/adsdk/ZYk/oJ/ZYk/si;
.super Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ<",
        "TK;TA;>;"
    }
.end annotation


# virtual methods
.method public ZYk()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;->tB:Lcom/bytedance/adsdk/ZYk/cFZ/ZYk;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;->ZYk()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method ba()F
    .locals 1

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    return v0
.end method

.method public cFZ()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method oJ(Lcom/bytedance/adsdk/ZYk/cFZ/oJ;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/ZYk/cFZ/oJ<",
            "TK;>;F)TA;"
        }
    .end annotation

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public oJ(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;->ZYk:F

    return-void
.end method
