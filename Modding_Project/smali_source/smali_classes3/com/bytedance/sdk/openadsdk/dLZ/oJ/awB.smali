.class public Lcom/bytedance/sdk/openadsdk/dLZ/oJ/awB;
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
.field private ZYk:Ljava/lang/String;

.field private ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field private oJ:Lcom/bytedance/sdk/component/jFA/ba;

.field private tB:Lcom/bytedance/sdk/openadsdk/core/UN;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/jFA/ba;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/UN;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/oJ/Pfn;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/awB;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/awB;->ZYk:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/awB;->tB:Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/awB;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 11
    .line 12
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/dLZ/oJ/awB;)Lcom/bytedance/sdk/component/jFA/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/awB;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    return-object p0
.end method

.method public static oJ(Lcom/bytedance/sdk/component/oJ/si;Lcom/bytedance/sdk/component/jFA/ba;Lcom/bytedance/sdk/openadsdk/core/UN;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 2

    .line 3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/awB;

    const-string v1, "closeWebview"

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/awB;-><init>(Lcom/bytedance/sdk/component/jFA/ba;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/UN;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/oJ/si;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/component/oJ/Pfn;)Lcom/bytedance/sdk/component/oJ/si;

    .line 4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/awB;

    const-string v1, "makeVisible"

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/awB;-><init>(Lcom/bytedance/sdk/component/jFA/ba;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/UN;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/component/oJ/si;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/component/oJ/Pfn;)Lcom/bytedance/sdk/component/oJ/si;

    .line 5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/awB;

    const-string v1, "getCurrentVisibleState"

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/awB;-><init>(Lcom/bytedance/sdk/component/jFA/ba;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/UN;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

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

    .line 2
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/awB;->oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/oJ/ba;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/oJ/ba;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 7
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/awB;->ZYk:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "success"

    const/4 v3, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "makeVisible"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1
    const-string v4, "closeWebview"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_0

    :sswitch_2
    const-string v4, "getCurrentVisibleState"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 8
    :pswitch_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/awB;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    if-eqz p2, :cond_3

    .line 9
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 10
    new-instance p2, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/awB$2;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/awB$2;-><init>(Lcom/bytedance/sdk/openadsdk/dLZ/oJ/awB;)V

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->oJ(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_1

    .line 12
    :pswitch_1
    new-instance p2, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/awB$1;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/awB$1;-><init>(Lcom/bytedance/sdk/openadsdk/dLZ/oJ/awB;)V

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->oJ(Ljava/lang/Runnable;)V

    .line 13
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_1

    .line 14
    :pswitch_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/awB;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz p2, :cond_4

    .line 15
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/awB;->oJ:Lcom/bytedance/sdk/component/jFA/ba;

    const/16 v3, 0x14

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->TxP()I

    move-result p2

    invoke-static {v2, v3, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/mu;->oJ(Landroid/view/View;IIZ)Z

    move-result p2

    xor-int/2addr p2, v1

    .line 16
    const-string v0, "visibleState"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_4
    :goto_1
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x5a6a23de -> :sswitch_2
        -0x731311f -> :sswitch_1
        0x68af9aa4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
