.class public Lcom/bytedance/sdk/component/Pfn/Pfn/ba;
.super Lcom/bytedance/sdk/component/Pfn/Pfn/oJ;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/Pfn/Pfn/oJ;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private ZYk(Lcom/bytedance/sdk/component/Pfn/tB/tB;Ljava/lang/String;)[B
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->Ry()Lcom/bytedance/sdk/component/Pfn/tB/ba;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->RZ()Lcom/bytedance/sdk/component/Pfn/ZYk;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/Pfn/tB/ba;->tB(Lcom/bytedance/sdk/component/Pfn/ZYk;)Lcom/bytedance/sdk/component/Pfn/tB;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return-object p1

    .line 17
    :cond_0
    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/Pfn/oJ;->oJ(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, [B

    .line 22
    .line 23
    return-object p1
.end method

.method private oJ(Lcom/bytedance/sdk/component/Pfn/tB/tB;Ljava/lang/String;)[B
    .locals 2

    .line 8
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->Ry()Lcom/bytedance/sdk/component/Pfn/tB/ba;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->RZ()Lcom/bytedance/sdk/component/Pfn/ZYk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/Pfn/tB/ba;->tB(Lcom/bytedance/sdk/component/Pfn/ZYk;)Lcom/bytedance/sdk/component/Pfn/tB;

    .line 9
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->Ry()Lcom/bytedance/sdk/component/Pfn/tB/ba;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/ba;->tB()Ljava/util/Collection;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 10
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/Pfn/tB;

    .line 11
    invoke-interface {v1, p2}, Lcom/bytedance/sdk/component/Pfn/oJ;->oJ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-eqz v1, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public oJ()Ljava/lang/String;
    .locals 1

    .line 12
    const-string v0, "disk_cache"

    return-object v0
.end method

.method public oJ(Lcom/bytedance/sdk/component/Pfn/tB/tB;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->jFA()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->QSm()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->RZ()Lcom/bytedance/sdk/component/Pfn/ZYk;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/component/Pfn/ZYk;->jFA()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/Pfn/Pfn/ba;->ZYk(Lcom/bytedance/sdk/component/Pfn/tB/tB;Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/Pfn/Pfn/ba;->oJ(Lcom/bytedance/sdk/component/Pfn/tB/tB;Ljava/lang/String;)[B

    move-result-object v1

    :goto_1
    if-nez v1, :cond_2

    .line 5
    new-instance v0, Lcom/bytedance/sdk/component/Pfn/Pfn/dLZ;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/Pfn/Pfn/dLZ;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->oJ(Lcom/bytedance/sdk/component/Pfn/Pfn/jFA;)Z

    return-void

    .line 6
    :cond_2
    new-instance v2, Lcom/bytedance/sdk/component/Pfn/Pfn/ZYk;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/bytedance/sdk/component/Pfn/Pfn/ZYk;-><init>([BLcom/bytedance/sdk/component/Pfn/ba;)V

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->oJ(Lcom/bytedance/sdk/component/Pfn/Pfn/jFA;)Z

    .line 7
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->Ry()Lcom/bytedance/sdk/component/Pfn/tB/ba;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->RZ()Lcom/bytedance/sdk/component/Pfn/ZYk;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/component/Pfn/tB/ba;->ZYk(Lcom/bytedance/sdk/component/Pfn/ZYk;)Lcom/bytedance/sdk/component/Pfn/Ry;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/Pfn/oJ;->oJ(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
