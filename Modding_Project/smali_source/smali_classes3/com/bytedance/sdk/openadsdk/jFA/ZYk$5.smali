.class Lcom/bytedance/sdk/openadsdk/jFA/ZYk$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/si/ex;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/jFA/ZYk;->oJ(ILjava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/jFA/ZYk;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/jFA/ZYk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/jFA/ZYk$5;->oJ:Lcom/bytedance/sdk/openadsdk/jFA/ZYk;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
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
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/jFA/ZYk$5;->oJ:Lcom/bytedance/sdk/openadsdk/jFA/ZYk;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/jFA/ZYk;->ZYk(Lcom/bytedance/sdk/openadsdk/jFA/ZYk;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/jFA/ZYk$5;->oJ:Lcom/bytedance/sdk/openadsdk/jFA/ZYk;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/jFA/ZYk;->ZYk(Lcom/bytedance/sdk/openadsdk/jFA/ZYk;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "-1"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->nke(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->tB(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/jFA/ZYk$5;->oJ:Lcom/bytedance/sdk/openadsdk/jFA/ZYk;

    .line 35
    .line 36
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/jFA/ZYk;->ZYk(Lcom/bytedance/sdk/openadsdk/jFA/ZYk;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->TxP()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->tB(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->ex(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    const-string v1, "7.5.0.4"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->oJ(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-object v0
.end method
