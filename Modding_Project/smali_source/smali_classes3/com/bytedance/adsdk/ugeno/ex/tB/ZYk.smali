.class public Lcom/bytedance/adsdk/ugeno/ex/tB/ZYk;
.super Lcom/bytedance/adsdk/ugeno/ex/ZYk/oJ;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/ex/ba$oJ;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/adsdk/ugeno/ex/ZYk/oJ;-><init>(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/ex/ba$oJ;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public oJ()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ZYk/oJ;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ZYk/oJ;->ba:Ljava/util/Map;

    .line 7
    .line 8
    const-string v1, "position"

    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/String;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {v0, v1}, Lcom/bytedance/adsdk/ugeno/cFZ/tB;->oJ(Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ex/ZYk/oJ;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 22
    .line 23
    invoke-virtual {v1, v1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ZYk(Lcom/bytedance/adsdk/ugeno/ZYk/tB;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    const-string v2, "SwiperView"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Pfn(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    instance-of v2, v1, Lcom/bytedance/adsdk/ugeno/ZYk;

    .line 37
    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    check-cast v1, Lcom/bytedance/adsdk/ugeno/ZYk;

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Lcom/bytedance/adsdk/ugeno/ZYk;->oJ(I)V

    .line 43
    .line 44
    .line 45
    :cond_2
    return-void
.end method
