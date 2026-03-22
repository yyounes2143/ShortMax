.class Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$1$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/si/ex;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$1;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$1;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$1$5;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$1;

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
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$1$5;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$1;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->Jc(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->ex(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v1, "7.5.0.4"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->oJ(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    :catchall_0
    return-object v0
.end method
