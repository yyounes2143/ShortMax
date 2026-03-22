.class Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/si/ex;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->Jm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$2;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;

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
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "video_player"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->ZYk(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$2;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->uq(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->ex(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v1, "7.5.0.4"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->oJ(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    :catchall_0
    return-object v0
.end method
