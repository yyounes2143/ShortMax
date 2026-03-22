.class public Lcom/bytedance/sdk/component/Pfn/Pfn/kkU;
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

.method private ZYk(Lcom/bytedance/sdk/component/Pfn/tB/tB;)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->Ry()Lcom/bytedance/sdk/component/Pfn/tB/ba;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Pfn/tB/ba;->oJ()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/bytedance/sdk/component/Pfn/si;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->kkU()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/Pfn/oJ;->oJ(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Landroid/graphics/Bitmap;

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    :cond_2
    return-object v1
.end method

.method private tB(Lcom/bytedance/sdk/component/Pfn/tB/tB;)Landroid/graphics/Bitmap;
    .locals 2

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
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/Pfn/tB/ba;->oJ(Lcom/bytedance/sdk/component/Pfn/ZYk;)Lcom/bytedance/sdk/component/Pfn/si;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->kkU()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/Pfn/oJ;->oJ(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroid/graphics/Bitmap;

    .line 22
    .line 23
    return-object p1
.end method


# virtual methods
.method public oJ()Ljava/lang/String;
    .locals 1

    .line 7
    const-string v0, "memory_cache"

    return-object v0
.end method

.method public oJ(Lcom/bytedance/sdk/component/Pfn/tB/tB;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->BTZ()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    goto :goto_2

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->QSm()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->RZ()Lcom/bytedance/sdk/component/Pfn/ZYk;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/Pfn/ZYk;->jFA()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Pfn/Pfn/kkU;->tB(Lcom/bytedance/sdk/component/Pfn/tB/tB;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 4
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Pfn/Pfn/kkU;->ZYk(Lcom/bytedance/sdk/component/Pfn/tB/tB;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_4

    .line 5
    new-instance v0, Lcom/bytedance/sdk/component/Pfn/Pfn/BTZ;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/Pfn/Pfn/BTZ;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->oJ(Lcom/bytedance/sdk/component/Pfn/Pfn/jFA;)Z

    return-void

    .line 6
    :cond_4
    new-instance v1, Lcom/bytedance/sdk/component/Pfn/Pfn/PiB;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/bytedance/sdk/component/Pfn/Pfn/PiB;-><init>(Ljava/lang/Object;Lcom/bytedance/sdk/component/Pfn/ba;Z)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->oJ(Lcom/bytedance/sdk/component/Pfn/Pfn/jFA;)Z

    return-void
.end method
