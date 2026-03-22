.class Lcom/bytedance/sdk/openadsdk/core/kkU/ex/oJ$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/kkU/ex/oJ;->oJ(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/kkU/cFZ/ex;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lorg/json/JSONObject;

.field final synthetic ex:Lcom/bytedance/sdk/openadsdk/core/kkU/ex/oJ;

.field final synthetic oJ:Lorg/json/JSONObject;

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/core/kkU/cFZ/ex;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/kkU/ex/oJ;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/kkU/cFZ/ex;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ex/oJ$1;->ex:Lcom/bytedance/sdk/openadsdk/core/kkU/ex/oJ;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ex/oJ$1;->oJ:Lorg/json/JSONObject;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ex/oJ$1;->ZYk:Lorg/json/JSONObject;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ex/oJ$1;->tB:Lcom/bytedance/sdk/openadsdk/core/kkU/cFZ/ex;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ex/oJ$1;->ex:Lcom/bytedance/sdk/openadsdk/core/kkU/ex/oJ;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ex/oJ$1;->oJ:Lorg/json/JSONObject;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ex/oJ$1;->ZYk:Lorg/json/JSONObject;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ex/oJ$1;->tB:Lcom/bytedance/sdk/openadsdk/core/kkU/cFZ/ex;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/kkU/ex/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/kkU/ex/oJ;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/kkU/cFZ/ex;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
