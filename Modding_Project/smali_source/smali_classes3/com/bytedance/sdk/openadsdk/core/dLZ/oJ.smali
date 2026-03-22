.class public Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private BTZ:Ljava/lang/String;

.field private Pfn:Ljava/lang/String;

.field ZYk:Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk;

.field private ba:Ljava/lang/String;

.field private cFZ:Ljava/lang/String;

.field private dLZ:Ljava/lang/String;

.field private ex:Ljava/lang/String;

.field private jFA:I

.field private kkU:I

.field final oJ:Lcom/bytedance/sdk/openadsdk/core/model/ex;

.field private so:D

.field tB:Lcom/bytedance/sdk/openadsdk/core/dLZ/tB;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/ex;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/ex;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/ex;

    .line 10
    .line 11
    const-string v0, "VAST_ACTION_BUTTON"

    .line 12
    .line 13
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->dLZ:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method private awB()Lorg/json/JSONArray;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/ex;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/ex;->ZYk()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    .line 12
    .line 13
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/dLZ/kkU;

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/kkU;->ex()Lorg/json/JSONObject;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    return-object v1
.end method

.method public static oJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 8
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;-><init>()V

    .line 9
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/ex;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/ex;->oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    move-result-object v1

    if-nez v1, :cond_1

    .line 10
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;-><init>()V

    .line 11
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/ex;

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/model/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;)V

    .line 12
    :cond_1
    const-string v2, "videoTrackers"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oJ(Lorg/json/JSONObject;)V

    .line 13
    const-string v1, "vastIcon"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk;->oJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk;

    .line 14
    const-string v1, "endCard"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB;->ZYk(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/dLZ/tB;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/dLZ/tB;

    .line 15
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->ex:Ljava/lang/String;

    .line 16
    const-string v1, "description"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->Pfn:Ljava/lang/String;

    .line 17
    const-string v1, "clickThroughUrl"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->ba:Ljava/lang/String;

    .line 18
    const-string v1, "videoUrl"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->cFZ:Ljava/lang/String;

    .line 19
    const-string v1, "videDuration"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->so:D

    .line 20
    const-string v1, "videoWidth"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->jFA:I

    .line 21
    const-string v1, "videoHeight"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->jFA:I

    .line 22
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/ex;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/ex;->ZYk()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_2

    .line 23
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 24
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/ex;

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/model/ex;->oJ(Ljava/util/Set;)V

    .line 25
    :cond_2
    const-string v2, "viewabilityVendor"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/kkU;->oJ(Lorg/json/JSONArray;)Ljava/util/HashSet;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method


# virtual methods
.method public BTZ()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->kkU:I

    .line 2
    .line 3
    return v0
.end method

.method public Pfn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->Pfn:Ljava/lang/String;

    return-object v0
.end method

.method public Pfn(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->dLZ:Ljava/lang/String;

    return-void
.end method

.method public PiB()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/kkU;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/ex;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/ex;->ZYk()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public WcQ()Lcom/bytedance/sdk/openadsdk/core/model/ex;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/ex;

    .line 2
    .line 3
    return-object v0
.end method

.method public ZYk()Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk;

    return-object v0
.end method

.method public ZYk(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->kkU:I

    return-void
.end method

.method public ZYk(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->Pfn:Ljava/lang/String;

    return-void
.end method

.method public ba()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->ba:Ljava/lang/String;

    return-object v0
.end method

.method public ba(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->BTZ:Ljava/lang/String;

    return-void
.end method

.method public cFZ()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->cFZ:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public dLZ()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->jFA:I

    .line 2
    .line 3
    return v0
.end method

.method public ex()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->ex:Ljava/lang/String;

    return-object v0
.end method

.method public ex(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->cFZ:Ljava/lang/String;

    return-void
.end method

.method public jFA()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->ba:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->BTZ:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->BTZ:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->BTZ:Ljava/lang/String;

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->dLZ:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 20
    .line 21
    .line 22
    const-string v2, "VAST_ICON"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_2

    .line 29
    .line 30
    const-string v2, "VAST_END_CARD"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/dLZ/tB;

    .line 40
    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB;->so:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_3

    .line 50
    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/dLZ/tB;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB;->so:Ljava/lang/String;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk;

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB;->so:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_3

    .line 67
    .line 68
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB;->so:Ljava/lang/String;

    .line 71
    .line 72
    :cond_3
    :goto_0
    const-string v1, "VAST_ACTION_BUTTON"

    .line 73
    .line 74
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->dLZ:Ljava/lang/String;

    .line 75
    .line 76
    return-object v0
.end method

.method public kkU()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/ex;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/ex;->oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string v2, "videoTrackers"

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oJ()Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const-string v2, "vastIcon"

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk;->oJ()Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/dLZ/tB;

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    const-string v2, "endCard"

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB;->oJ()Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    .line 48
    .line 49
    :cond_2
    const-string v1, "title"

    .line 50
    .line 51
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->ex:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    .line 55
    .line 56
    const-string v1, "description"

    .line 57
    .line 58
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->Pfn:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    .line 62
    .line 63
    const-string v1, "clickThroughUrl"

    .line 64
    .line 65
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->ba:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    .line 69
    .line 70
    const-string v1, "videoUrl"

    .line 71
    .line 72
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->cFZ:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    .line 76
    .line 77
    const-string v1, "videDuration"

    .line 78
    .line 79
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->so:D

    .line 80
    .line 81
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 82
    .line 83
    .line 84
    const-string v1, "videoWidth"

    .line 85
    .line 86
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->jFA:I

    .line 87
    .line 88
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 89
    .line 90
    .line 91
    const-string v1, "videoHeight"

    .line 92
    .line 93
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->kkU:I

    .line 94
    .line 95
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 96
    .line 97
    .line 98
    const-string v1, "viewabilityVendor"

    .line 99
    .line 100
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->awB()Lorg/json/JSONArray;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    .line 106
    .line 107
    return-object v0
.end method

.method public oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/ex;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/ex;->oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    move-result-object v0

    return-object v0
.end method

.method public oJ(D)V
    .locals 0

    .line 7
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->so:D

    return-void
.end method

.method public oJ(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->jFA:I

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->cFZ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB;->oJ(Ljava/lang/String;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk;

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/dLZ/tB;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->cFZ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB;->oJ(Ljava/lang/String;)V

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/dLZ/tB;

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/ex;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/model/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk;

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/dLZ/tB;

    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    :cond_1
    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->ex:Ljava/lang/String;

    return-void
.end method

.method public oJ(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/kkU;",
            ">;)V"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/ex;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/model/ex;->ZYk(Ljava/util/Set;)V

    return-void
.end method

.method public so()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->so:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public tB()Lcom/bytedance/sdk/openadsdk/core/dLZ/tB;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/dLZ/tB;

    return-object v0
.end method

.method public tB(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->ba:Ljava/lang/String;

    return-void
.end method
