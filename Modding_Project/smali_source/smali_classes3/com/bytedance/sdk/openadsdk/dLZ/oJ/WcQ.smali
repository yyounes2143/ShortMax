.class public Lcom/bytedance/sdk/openadsdk/dLZ/oJ/WcQ;
.super Lcom/bytedance/sdk/component/oJ/Pfn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/component/oJ/Pfn<",
        "Lorg/json/JSONObject;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field oJ:Lcom/bytedance/sdk/openadsdk/core/UN;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/UN;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/oJ/Pfn;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/WcQ;->oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 5
    .line 6
    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/component/oJ/si;Lcom/bytedance/sdk/openadsdk/core/UN;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/WcQ;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/WcQ;-><init>(Lcom/bytedance/sdk/openadsdk/core/UN;)V

    const-string p1, "stayDynamic"

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/component/oJ/si;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/component/oJ/Pfn;)Lcom/bytedance/sdk/component/oJ/si;

    return-void
.end method


# virtual methods
.method public bridge synthetic oJ(Ljava/lang/Object;Lcom/bytedance/sdk/component/oJ/ba;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/WcQ;->oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/oJ/ba;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/oJ/ba;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/WcQ;->oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/UN;->awB()V

    const/4 p1, 0x0

    return-object p1
.end method
