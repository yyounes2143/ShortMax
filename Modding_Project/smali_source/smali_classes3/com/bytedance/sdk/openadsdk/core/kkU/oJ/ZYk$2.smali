.class Lcom/bytedance/sdk/openadsdk/core/kkU/oJ/ZYk$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/kkU/oJ/ZYk$oJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/kkU/oJ/ZYk;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/kkU/oJ/ZYk$oJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/core/kkU/oJ/ZYk;

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/kkU/oJ/ZYk$oJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/kkU/oJ/ZYk;Lcom/bytedance/sdk/openadsdk/core/kkU/oJ/ZYk$oJ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/oJ/ZYk$2;->ZYk:Lcom/bytedance/sdk/openadsdk/core/kkU/oJ/ZYk;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/oJ/ZYk$2;->oJ:Lcom/bytedance/sdk/openadsdk/core/kkU/oJ/ZYk$oJ;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public oJ(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/oJ/ZYk$2;->oJ:Lcom/bytedance/sdk/openadsdk/core/kkU/oJ/ZYk$oJ;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/kkU/oJ/ZYk$oJ;->oJ(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public oJ(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/oJ/ZYk$2;->oJ:Lcom/bytedance/sdk/openadsdk/core/kkU/oJ/ZYk$oJ;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/kkU/oJ/ZYk$oJ;->oJ(Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
