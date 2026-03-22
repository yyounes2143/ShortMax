.class Lcom/bytedance/sdk/openadsdk/core/UN$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/Id$oJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/BTZ/ex;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/core/UN;

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/BTZ/ex;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/UN;Lcom/bytedance/sdk/openadsdk/BTZ/ex;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN$11;->ZYk:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/UN$11;->oJ:Lcom/bytedance/sdk/openadsdk/BTZ/ex;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public oJ(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN$11;->oJ:Lcom/bytedance/sdk/openadsdk/BTZ/ex;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/BTZ/ex;->oJ(ZLcom/bytedance/sdk/openadsdk/core/model/oJ;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN$11;->ZYk:Lcom/bytedance/sdk/openadsdk/core/UN;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/UN$11;->oJ:Lcom/bytedance/sdk/openadsdk/BTZ/ex;

    invoke-static {v0, p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/openadsdk/core/UN;Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;Lcom/bytedance/sdk/openadsdk/BTZ/ex;)V

    return-void
.end method
