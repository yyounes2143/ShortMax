.class Lcom/bytedance/sdk/openadsdk/jFA/ZYk$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/si/ex;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/jFA/ZYk;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lcom/bytedance/sdk/component/Pfn/eZI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/jFA/ZYk;

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/jFA/ZYk;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/jFA/ZYk$1;->ZYk:Lcom/bytedance/sdk/openadsdk/jFA/ZYk;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/jFA/ZYk$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public generatorModel()Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;
    .locals 3

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "load_img"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->ZYk(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/jFA/ZYk$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const-string v2, "-1"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->nke(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->tB(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/jFA/ZYk$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->TxP()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->tB(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->ex(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    const-string v1, "7.5.0.4"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->oJ(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-object v0
.end method
