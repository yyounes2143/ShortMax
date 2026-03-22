.class public Lcom/bytedance/sdk/openadsdk/dLZ/oJ/so;
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
.field private final ZYk:Ljava/lang/String;

.field private final oJ:Lcom/bytedance/sdk/openadsdk/core/UN;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/UN;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/oJ/Pfn;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/so;->oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/so;->ZYk:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/component/oJ/si;Lcom/bytedance/sdk/openadsdk/core/UN;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/so;

    const-string v1, "endcardDynamicCreatives"

    invoke-direct {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/so;-><init>(Lcom/bytedance/sdk/openadsdk/core/UN;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/oJ/si;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/component/oJ/Pfn;)Lcom/bytedance/sdk/component/oJ/si;

    .line 3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/so;

    const-string v1, "multiOpenCovert"

    invoke-direct {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/so;-><init>(Lcom/bytedance/sdk/openadsdk/core/UN;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/oJ/si;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/component/oJ/Pfn;)Lcom/bytedance/sdk/component/oJ/si;

    .line 4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/so;

    const-string v1, "skipToNextAd"

    invoke-direct {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/so;-><init>(Lcom/bytedance/sdk/openadsdk/core/UN;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/oJ/si;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/component/oJ/Pfn;)Lcom/bytedance/sdk/component/oJ/si;

    .line 5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/so;

    const-string v1, "speedVideoOrTimer"

    invoke-direct {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/so;-><init>(Lcom/bytedance/sdk/openadsdk/core/UN;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/oJ/si;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/component/oJ/Pfn;)Lcom/bytedance/sdk/component/oJ/si;

    .line 6
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/so;

    const-string v1, "openPlayable"

    invoke-direct {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/so;-><init>(Lcom/bytedance/sdk/openadsdk/core/UN;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/oJ/si;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/component/oJ/Pfn;)Lcom/bytedance/sdk/component/oJ/si;

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

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/so;->oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/oJ/ba;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/oJ/ba;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7
    const-string p2, "endcardDynamicCreatives"

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/so;->ZYk:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 8
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/so;->oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/UN;->jFA(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    const-string p2, "multiOpenCovert"

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/so;->ZYk:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 10
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/so;->oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/UN;->kkU(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 11
    :cond_1
    const-string p2, "skipToNextAd"

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/so;->ZYk:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 12
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/so;->oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/so;->ZYk:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_2
    const-string p2, "speedVideoOrTimer"

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/so;->ZYk:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 14
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/so;->oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/UN;->so(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 15
    :cond_3
    const-string p2, "openPlayable"

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/so;->ZYk:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 16
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/so;->oJ:Lcom/bytedance/sdk/openadsdk/core/UN;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/UN;->cFZ(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
