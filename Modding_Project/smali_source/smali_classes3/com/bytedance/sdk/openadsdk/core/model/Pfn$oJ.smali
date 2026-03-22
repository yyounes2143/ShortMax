.class public Lcom/bytedance/sdk/openadsdk/core/model/Pfn$oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/model/Pfn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "oJ"
.end annotation


# instance fields
.field private final ZYk:Ljava/lang/String;

.field private ex:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/kkU;",
            ">;"
        }
    .end annotation
.end field

.field private final oJ:Ljava/lang/String;

.field private tB:Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "vast_url"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Pfn$oJ;->oJ:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "vast_content"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Pfn$oJ;->ZYk:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "videoTrackers"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    .line 29
    .line 30
    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Pfn$oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oJ(Lorg/json/JSONObject;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    const-string v0, "viewabilityVendor"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/kkU;->oJ(Lorg/json/JSONArray;)Ljava/util/HashSet;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Pfn$oJ;->ex:Ljava/util/Set;

    .line 51
    .line 52
    :cond_1
    return-void
.end method


# virtual methods
.method public Pfn()Lorg/json/JSONObject;
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
    const-string v1, "vast_url"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/Pfn$oJ;->oJ:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "vast_content"

    .line 14
    .line 15
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/Pfn$oJ;->ZYk:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Pfn$oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    const-string v2, "videoTrackers"

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oJ()Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Pfn$oJ;->ex:Ljava/util/Set;

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    new-instance v1, Lorg/json/JSONArray;

    .line 38
    .line 39
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/Pfn$oJ;->ex:Ljava/util/Set;

    .line 43
    .line 44
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/dLZ/kkU;

    .line 59
    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/dLZ/kkU;->ex()Lorg/json/JSONObject;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    const-string v2, "viewabilityVendor"

    .line 71
    .line 72
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    .line 74
    .line 75
    :cond_3
    return-object v0
.end method

.method public ZYk()Ljava/util/Set;
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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Pfn$oJ;->ex:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public ex()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Pfn$oJ;->ZYk:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Pfn$oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    return-object v0
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Pfn$oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    return-void
.end method

.method public oJ(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/kkU;",
            ">;)V"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Pfn$oJ;->ex:Ljava/util/Set;

    return-void
.end method

.method public tB()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Pfn$oJ;->oJ:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
