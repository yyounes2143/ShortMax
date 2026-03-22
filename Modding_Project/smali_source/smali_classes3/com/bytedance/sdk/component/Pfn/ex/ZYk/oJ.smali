.class public Lcom/bytedance/sdk/component/Pfn/ex/ZYk/oJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/Pfn/ex/ZYk/ba;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/component/Pfn/ex/ZYk/ba;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;)Z
    .locals 2

    .line 10
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->BTZ()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public oJ()Ljava/lang/String;
    .locals 1

    .line 11
    const-string v0, "bitmap_cache"

    return-object v0
.end method

.method public oJ(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;Lcom/bytedance/sdk/component/Pfn/RZ;Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->kkU()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->oJ()Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->Ry()Lcom/bytedance/sdk/component/Pfn/ZYk;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->si()Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/component/Pfn/ZYk;->Pfn()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Pfn/ex/ZYk/oJ;->oJ(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->oJ(Lcom/bytedance/sdk/component/Pfn/ZYk;)Lcom/bytedance/sdk/component/Pfn/si;

    move-result-object v0

    .line 7
    invoke-interface {v0, p2}, Lcom/bytedance/sdk/component/Pfn/oJ;->oJ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->oJ()Ljava/lang/String;

    .line 9
    new-instance v0, Lcom/bytedance/sdk/component/Pfn/ex/tB/ex;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/Pfn/ex/tB/ex;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/bytedance/sdk/component/Pfn/ex/tB/ex;->oJ(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;Ljava/lang/Object;Ljava/util/Map;Z)Lcom/bytedance/sdk/component/Pfn/ex/tB/ex;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ;->oJ(Lcom/bytedance/sdk/component/Pfn/dLZ;)V

    return v2

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
