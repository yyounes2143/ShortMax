.class final Lcom/bytedance/sdk/openadsdk/core/XAo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/utils/ZYk$ZYk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/XAo;->oJ(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;ILjava/lang/String;ZLcom/bytedance/sdk/openadsdk/core/RZ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Ljava/lang/String;

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/XAo$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/XAo$1;->ZYk:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public oJ()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/XAo$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/XAo$1;->ZYk:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILorg/json/JSONObject;)V

    return-void
.end method

.method public oJ(Ljava/lang/Throwable;)V
    .locals 3

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/XAo$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/XAo$1;->ZYk:Ljava/lang/String;

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILorg/json/JSONObject;)V

    return-void
.end method
