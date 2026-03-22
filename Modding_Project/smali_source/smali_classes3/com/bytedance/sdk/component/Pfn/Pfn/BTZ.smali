.class public Lcom/bytedance/sdk/component/Pfn/Pfn/BTZ;
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


# virtual methods
.method public oJ()Ljava/lang/String;
    .locals 1

    .line 5
    const-string v0, "raw_cache"

    return-object v0
.end method

.method public oJ(Lcom/bytedance/sdk/component/Pfn/tB/tB;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->Ry()Lcom/bytedance/sdk/component/Pfn/tB/ba;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->RZ()Lcom/bytedance/sdk/component/Pfn/ZYk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/Pfn/tB/ba;->ZYk(Lcom/bytedance/sdk/component/Pfn/ZYk;)Lcom/bytedance/sdk/component/Pfn/Ry;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->jFA()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/Pfn/oJ;->oJ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/bytedance/sdk/component/Pfn/Pfn/ba;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/Pfn/Pfn/ba;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->oJ(Lcom/bytedance/sdk/component/Pfn/Pfn/jFA;)Z

    return-void

    .line 4
    :cond_0
    new-instance v1, Lcom/bytedance/sdk/component/Pfn/Pfn/ZYk;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/component/Pfn/Pfn/ZYk;-><init>([BLcom/bytedance/sdk/component/Pfn/ba;)V

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->oJ(Lcom/bytedance/sdk/component/Pfn/Pfn/jFA;)Z

    return-void
.end method
