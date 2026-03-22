.class public Lcom/bytedance/sdk/component/Pfn/Pfn/ex;
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

    .line 7
    const-string v0, "cache_policy"

    return-object v0
.end method

.method public oJ(Lcom/bytedance/sdk/component/Pfn/tB/tB;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->RZ()Lcom/bytedance/sdk/component/Pfn/ZYk;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/bytedance/sdk/component/Pfn/ZYk;->Pfn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v0, Lcom/bytedance/sdk/component/Pfn/Pfn/kkU;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/Pfn/Pfn/kkU;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->oJ(Lcom/bytedance/sdk/component/Pfn/Pfn/jFA;)Z

    return-void

    .line 4
    :cond_0
    invoke-interface {v0}, Lcom/bytedance/sdk/component/Pfn/ZYk;->cFZ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lcom/bytedance/sdk/component/Pfn/Pfn/ba;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/Pfn/Pfn/ba;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->oJ(Lcom/bytedance/sdk/component/Pfn/Pfn/jFA;)Z

    return-void

    .line 6
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/component/Pfn/Pfn/dLZ;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/Pfn/Pfn/dLZ;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->oJ(Lcom/bytedance/sdk/component/Pfn/Pfn/jFA;)Z

    return-void
.end method
