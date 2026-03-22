.class Lcom/bytedance/sdk/openadsdk/core/oJ/oJ$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/si/ex;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/oJ/oJ;->oJ(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/oJ/oJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/oJ/oJ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/oJ/oJ$2;->oJ:Lcom/bytedance/sdk/openadsdk/core/oJ/oJ;

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
    const-string v1, "load_ad"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->ZYk(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/oJ/oJ$2;->oJ:Lcom/bytedance/sdk/openadsdk/core/oJ/oJ;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/oJ/oJ;->ZYk(Lcom/bytedance/sdk/openadsdk/core/oJ/oJ;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->tB(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/oJ/oJ$2;->oJ:Lcom/bytedance/sdk/openadsdk/core/oJ/oJ;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/oJ/oJ;->ZYk(Lcom/bytedance/sdk/openadsdk/core/oJ/oJ;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->tB(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->ex(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v1, "7.5.0.4"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->oJ(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/oJ/oJ$2;->oJ:Lcom/bytedance/sdk/openadsdk/core/oJ/oJ;

    .line 47
    .line 48
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/oJ/oJ;->ZYk(Lcom/bytedance/sdk/openadsdk/core/oJ/oJ;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/si/ZYk/oJ;->cFZ(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-object v0
.end method
