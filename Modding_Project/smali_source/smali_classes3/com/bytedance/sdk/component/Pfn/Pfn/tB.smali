.class public Lcom/bytedance/sdk/component/Pfn/Pfn/tB;
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

    .line 6
    const-string v0, "generate_key"

    return-object v0
.end method

.method public oJ(Lcom/bytedance/sdk/component/Pfn/tB/tB;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->kkU()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->Ry()Lcom/bytedance/sdk/component/Pfn/tB/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Pfn/tB/ba;->ba()Lcom/bytedance/sdk/component/Pfn/BTZ;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/Pfn/BTZ;->oJ(Lcom/bytedance/sdk/component/Pfn/jFA;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->ZYk(Ljava/lang/String;)V

    .line 4
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/Pfn/BTZ;->ZYk(Lcom/bytedance/sdk/component/Pfn/jFA;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->oJ(Ljava/lang/String;)V

    .line 5
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/Pfn/Pfn/cFZ;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/Pfn/Pfn/cFZ;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->oJ(Lcom/bytedance/sdk/component/Pfn/Pfn/jFA;)Z

    return-void
.end method
