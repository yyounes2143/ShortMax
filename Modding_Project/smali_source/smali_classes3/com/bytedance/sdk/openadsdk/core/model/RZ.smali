.class public Lcom/bytedance/sdk/openadsdk/core/model/RZ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ZYk:I = 0x2

.field public static oJ:I = 0x1


# instance fields
.field private Pfn:I

.field private ba:I

.field private cFZ:I

.field private ex:I

.field private jFA:I

.field private kkU:I

.field private so:I

.field private tB:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x5

    .line 5
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->tB:I

    .line 6
    .line 7
    const/16 v0, 0x1e

    .line 8
    .line 9
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->ex:I

    .line 10
    .line 11
    const/16 v0, 0x46

    .line 12
    .line 13
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->Pfn:I

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->ba:I

    .line 17
    .line 18
    sget v0, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->oJ:I

    .line 19
    .line 20
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->cFZ:I

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->so:I

    .line 24
    .line 25
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->jFA:I

    .line 26
    .line 27
    const/4 v0, 0x3

    .line 28
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->kkU:I

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public Pfn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->ex:I

    return v0
.end method

.method public Pfn(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->ex:I

    return-void
.end method

.method public ZYk()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->jFA:I

    return v0
.end method

.method public ZYk(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->jFA:I

    return-void
.end method

.method public ba()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->Pfn:I

    return v0
.end method

.method public ba(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->Pfn:I

    return-void
.end method

.method public cFZ()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->ba:I

    return v0
.end method

.method public cFZ(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->ba:I

    return-void
.end method

.method public ex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->tB:I

    return v0
.end method

.method public ex(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->tB:I

    return-void
.end method

.method public oJ()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->kkU:I

    return v0
.end method

.method public oJ(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 6
    :cond_0
    :try_start_0
    const-string v0, "ceiling_time"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->tB:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7
    const-string v0, "ceiling_ratio"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->ex:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8
    const-string v0, "expand_ratio"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->Pfn:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 9
    const-string v0, "back_type"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->ba:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 10
    const-string v0, "boc_return_type"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->cFZ:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    const-string v0, "pre_render_status"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->so:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    const-string v0, "pre_render_use_gecko"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->jFA:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 13
    const-string v0, "pre_render_add_type"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->kkU:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 14
    const-string v1, "InteractionParams"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public oJ(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->kkU:I

    return-void
.end method

.method public oJ(Z)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 3
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->so:I

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    return v2

    .line 4
    :cond_2
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->so:I

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v2
.end method

.method public so()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->cFZ:I

    return v0
.end method

.method public so(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->cFZ:I

    return-void
.end method

.method public tB()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->so:I

    return v0
.end method

.method public tB(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->so:I

    return-void
.end method
