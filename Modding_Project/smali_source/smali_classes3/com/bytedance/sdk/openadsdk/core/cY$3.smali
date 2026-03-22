.class Lcom/bytedance/sdk/openadsdk/core/cY$3;
.super Lcom/bytedance/sdk/component/cFZ/oJ/oJ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Ljava/lang/String;Ljava/util/List;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/core/cY;

.field final synthetic oJ:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/cY;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/cY$3;->ZYk:Lcom/bytedance/sdk/openadsdk/core/cY;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/cY$3;->oJ:Ljava/lang/String;

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
    .locals 2

    .line 1
    const-string p1, "dislike"

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cFZ/ZYk;->ba()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/cY$3$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/cY$3$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/cY$3;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/si/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/cY$3$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/cY$3$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/cY$3;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/si/tB;->tB(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cY$3;->oJ:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cFZ/ZYk;->oJ()I

    move-result v1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cFZ/ZYk;->ZYk()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/bytedance/sdk/openadsdk/awB/oJ/Pfn;->oJ(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/cY$3;->oJ:Ljava/lang/String;

    const/4 v0, -0x1

    const-string v1, "response is null"

    invoke-static {p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/awB/oJ/Pfn;->oJ(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/cY$3$3;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/cY$3$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/cY$3;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/si/tB;->tB(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/cFZ/ZYk/tB;Ljava/io/IOException;)V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cY$3;->oJ:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, "null"

    :goto_0
    const-string v1, "dislike"

    const/4 v2, -0x1

    invoke-static {v1, v0, v2, p2}, Lcom/bytedance/sdk/openadsdk/awB/oJ/Pfn;->oJ(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ex()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/oq;->oJ(Ljava/lang/String;)V

    .line 10
    :cond_1
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/cY$3$4;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/cY$3$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/cY$3;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/si/tB;->tB(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    return-void
.end method
