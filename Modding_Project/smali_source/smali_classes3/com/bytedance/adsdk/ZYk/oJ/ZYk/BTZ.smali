.class public Lcom/bytedance/adsdk/ZYk/oJ/ZYk/BTZ;
.super Lcom/bytedance/adsdk/ZYk/oJ/ZYk/cFZ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/adsdk/ZYk/oJ/ZYk/cFZ<",
        "Lcom/bytedance/adsdk/ZYk/cFZ/tB;",
        ">;"
    }
.end annotation


# instance fields
.field private final ex:Lcom/bytedance/adsdk/ZYk/cFZ/tB;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ZYk/cFZ/oJ<",
            "Lcom/bytedance/adsdk/ZYk/cFZ/tB;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/cFZ;-><init>(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/bytedance/adsdk/ZYk/cFZ/tB;

    .line 5
    .line 6
    invoke-direct {p1}, Lcom/bytedance/adsdk/ZYk/cFZ/tB;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/BTZ;->ex:Lcom/bytedance/adsdk/ZYk/cFZ/tB;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public ZYk(Lcom/bytedance/adsdk/ZYk/cFZ/oJ;F)Lcom/bytedance/adsdk/ZYk/cFZ/tB;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/ZYk/cFZ/oJ<",
            "Lcom/bytedance/adsdk/ZYk/cFZ/tB;",
            ">;F)",
            "Lcom/bytedance/adsdk/ZYk/cFZ/tB;"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/bytedance/adsdk/ZYk/cFZ/oJ;->oJ:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p1, Lcom/bytedance/adsdk/ZYk/cFZ/oJ;->ZYk:Ljava/lang/Object;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast v0, Lcom/bytedance/adsdk/ZYk/cFZ/tB;

    .line 10
    .line 11
    check-cast v1, Lcom/bytedance/adsdk/ZYk/cFZ/tB;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;->tB:Lcom/bytedance/adsdk/ZYk/cFZ/ZYk;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/BTZ;->ex:Lcom/bytedance/adsdk/ZYk/cFZ/tB;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/cFZ/tB;->oJ()F

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v1}, Lcom/bytedance/adsdk/ZYk/cFZ/tB;->oJ()F

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-static {v2, v3, p2}, Lcom/bytedance/adsdk/ZYk/ba/Pfn;->oJ(FFF)F

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/cFZ/tB;->ZYk()F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {v1}, Lcom/bytedance/adsdk/ZYk/cFZ/tB;->ZYk()F

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-static {v0, v1, p2}, Lcom/bytedance/adsdk/ZYk/ba/Pfn;->oJ(FFF)F

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    invoke-virtual {p1, v2, p2}, Lcom/bytedance/adsdk/ZYk/cFZ/tB;->oJ(FF)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/BTZ;->ex:Lcom/bytedance/adsdk/ZYk/cFZ/tB;

    .line 47
    .line 48
    return-object p1

    .line 49
    :cond_0
    iget-object p1, p1, Lcom/bytedance/adsdk/ZYk/cFZ/oJ;->cFZ:Ljava/lang/Float;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;->ex()F

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;->so()F

    .line 58
    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    throw p1

    .line 62
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    const-string p2, "Missing values for keyframe."

    .line 65
    .line 66
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1
.end method

.method public synthetic oJ(Lcom/bytedance/adsdk/ZYk/cFZ/oJ;F)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/BTZ;->ZYk(Lcom/bytedance/adsdk/ZYk/cFZ/oJ;F)Lcom/bytedance/adsdk/ZYk/cFZ/tB;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
