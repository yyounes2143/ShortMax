.class Lcom/bytedance/sdk/openadsdk/core/dLZ$1$3;
.super Lcom/bytedance/sdk/component/cFZ/oJ/oJ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/dLZ$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/core/dLZ$1;

.field final synthetic oJ:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/dLZ$1;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ$1$3;->ZYk:Lcom/bytedance/sdk/openadsdk/core/dLZ$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ$1$3;->oJ:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/bytedance/sdk/component/cFZ/oJ/oJ;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public oJ(Lcom/bytedance/sdk/component/cFZ/ZYk/tB;Lcom/bytedance/sdk/component/cFZ/ZYk;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cFZ/ZYk;->ba()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cFZ/ZYk;->ex()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ$1$3;->oJ:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/dLZ;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ$1$3;->oJ:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cFZ/ZYk;->oJ()I

    move-result v0

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cFZ/ZYk;->ZYk()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ(ILjava/lang/String;ILjava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ$1$3;->oJ:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cFZ/ZYk;->oJ()I

    move-result v0

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cFZ/ZYk;->ZYk()Ljava/lang/String;

    move-result-object p2

    const-string v1, "ipv6"

    invoke-static {v1, p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/awB/oJ/Pfn;->oJ(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 5
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/dLZ$1$3$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ$1$3$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/dLZ$1$3;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/si/tB;->tB(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    .line 6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dLZ;->oJ()V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/cFZ/ZYk/tB;Ljava/io/IOException;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ$1$3;->oJ:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ(ILjava/lang/String;ILjava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ$1$3;->oJ:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ipv6"

    invoke-static {v0, p1, v2, p2}, Lcom/bytedance/sdk/openadsdk/awB/oJ/Pfn;->oJ(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/dLZ$1$3$2;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ$1$3$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/dLZ$1$3;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/si/tB;->tB(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    .line 10
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dLZ;->oJ()V

    return-void
.end method
