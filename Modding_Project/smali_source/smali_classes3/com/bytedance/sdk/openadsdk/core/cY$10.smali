.class Lcom/bytedance/sdk/openadsdk/core/cY$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/si/ex;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lcom/bytedance/sdk/component/cFZ/ZYk/ex;Ljava/io/IOException;Lcom/bytedance/sdk/component/cFZ/ZYk;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/core/Id$oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/core/cY;

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/AdSlot;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/cY$10;->ZYk:Lcom/bytedance/sdk/openadsdk/core/cY;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/cY$10;->oJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

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
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "get_ad"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->ZYk(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/cY$10;->oJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->tB(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/cY$10;->oJ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->tB(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->ex(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v1, "7.5.0.4"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->oJ(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method
