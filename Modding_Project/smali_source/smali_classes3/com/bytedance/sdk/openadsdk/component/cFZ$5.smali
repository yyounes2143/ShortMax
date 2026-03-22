.class Lcom/bytedance/sdk/openadsdk/component/cFZ$5;
.super Lcom/bytedance/sdk/openadsdk/core/oq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/cFZ;->ZYk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/utils/wd;

.field oJ:Z

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/component/cFZ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/cFZ;Lcom/bytedance/sdk/openadsdk/utils/wd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$5;->tB:Lcom/bytedance/sdk/openadsdk/component/cFZ;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$5;->ZYk:Lcom/bytedance/sdk/openadsdk/utils/wd;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/oq;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$5;->oJ:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public oJ()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$5;->tB:Lcom/bytedance/sdk/openadsdk/component/cFZ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/cFZ;->Pfn(Lcom/bytedance/sdk/openadsdk/component/cFZ;)Lcom/bytedance/sdk/openadsdk/component/ba;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$5;->tB:Lcom/bytedance/sdk/openadsdk/component/cFZ;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/cFZ;->ex(Lcom/bytedance/sdk/openadsdk/component/cFZ;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/ba;->tB(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public oJ(ILjava/lang/String;)V
    .locals 4

    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$5;->tB:Lcom/bytedance/sdk/openadsdk/component/cFZ;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/cFZ;->oJ(Lcom/bytedance/sdk/openadsdk/component/cFZ;I)I

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$5;->tB:Lcom/bytedance/sdk/openadsdk/component/cFZ;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/Pfn/ZYk;

    const/4 v2, 0x2

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/Pfn/ZYk;-><init>(IIILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/cFZ;->oJ(Lcom/bytedance/sdk/openadsdk/component/cFZ;Lcom/bytedance/sdk/openadsdk/component/Pfn/ZYk;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;)V
    .locals 4

    .line 16
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$5;->oJ:Z

    if-eqz v0, :cond_0

    .line 17
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$5;->tB:Lcom/bytedance/sdk/openadsdk/component/cFZ;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/Pfn/ZYk;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ba()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x65

    invoke-direct {v0, v2, v3, p1, v1}, Lcom/bytedance/sdk/openadsdk/component/Pfn/ZYk;-><init>(IILcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/component/cFZ;->oJ(Lcom/bytedance/sdk/openadsdk/component/cFZ;Lcom/bytedance/sdk/openadsdk/component/Pfn/ZYk;)V

    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$5;->tB:Lcom/bytedance/sdk/openadsdk/component/cFZ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/cFZ;->ba(Lcom/bytedance/sdk/openadsdk/component/cFZ;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$5;->ZYk:Lcom/bytedance/sdk/openadsdk/utils/wd;

    invoke-static {v0, p1, p2, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/cFZ;->oJ(Lcom/bytedance/sdk/openadsdk/component/cFZ;Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/utils/wd;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;)Z
    .locals 4

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->Pfn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ba()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v1

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Xe()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$5;->tB:Lcom/bytedance/sdk/openadsdk/component/cFZ;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/cFZ;->Pfn(Lcom/bytedance/sdk/openadsdk/component/cFZ;)Lcom/bytedance/sdk/openadsdk/component/ba;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/ba;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$5;->oJ:Z

    .line 9
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ba()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/ex/oJ;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    goto :goto_1

    .line 10
    :cond_1
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$5;->oJ:Z

    goto :goto_1

    .line 11
    :cond_2
    :goto_0
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$5;->oJ:Z

    .line 12
    :goto_1
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 13
    :cond_3
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$5;->oJ:Z

    return p1
.end method
