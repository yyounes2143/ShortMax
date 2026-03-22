.class public Lcom/bytedance/sdk/openadsdk/core/model/oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field private Pfn:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field private ZYk:I

.field private ba:Lcom/bytedance/sdk/openadsdk/core/model/jr;

.field private cFZ:Lorg/json/JSONObject;

.field private dLZ:Ljava/lang/String;

.field private ex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/model/cY;",
            ">;"
        }
    .end annotation
.end field

.field private jFA:I

.field private kkU:Lcom/bytedance/sdk/openadsdk/core/model/Id;

.field private oJ:Ljava/lang/String;

.field private volatile so:Z

.field private tB:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->cFZ:Lorg/json/JSONObject;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->so:Z

    .line 20
    .line 21
    return-void
.end method

.method public static ZYk(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/oJ;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 6
    :cond_0
    :try_start_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;-><init>()V

    .line 7
    const-string v2, "loop_config"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 8
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Id;->oJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/Id;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/Id;)V

    .line 9
    const-string v2, "multi_ad_style"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ZYk(I)V

    .line 10
    const-string v2, "creatives"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 12
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 13
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5, v0, v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/HL;Lcom/bytedance/sdk/openadsdk/core/model/oJ;I)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 14
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->oJ(Ljava/util/List;)V

    .line 16
    :cond_3
    const-string v2, "request_id"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->oJ(Ljava/lang/String;)V

    .line 17
    const-string v2, "multi_ad_config"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 18
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 19
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/jr;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/model/jr;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/jr;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    return-object v1

    .line 20
    :goto_2
    const-string v1, "AdInfo"

    const-string v2, "fromJson: "

    invoke-static {v1, v2, p0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/model/oJ;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/model/cY;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 11
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 12
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 14
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->PQw()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 15
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->PQw()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p0

    if-eqz p0, :cond_3

    return-object v1

    :cond_3
    return-object v0
.end method


# virtual methods
.method public BTZ()Lcom/bytedance/sdk/openadsdk/core/model/jr;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/model/jr;

    .line 2
    .line 3
    return-object v0
.end method

.method public Pfn()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public PiB()Lorg/json/JSONObject;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->cFZ()Lcom/bytedance/sdk/openadsdk/core/model/Id;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string v2, "loop_config"

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Id;->dLZ()Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->BTZ()Lcom/bytedance/sdk/openadsdk/core/model/jr;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    const-string v2, "multi_ad_config"

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/jr;->si()Lorg/json/JSONObject;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex:Ljava/util/List;

    .line 40
    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-lez v1, :cond_3

    .line 48
    .line 49
    new-instance v1, Lorg/json/JSONArray;

    .line 50
    .line 51
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 52
    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    :goto_1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-ge v2, v3, :cond_2

    .line 62
    .line 63
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex:Ljava/util/List;

    .line 64
    .line 65
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 70
    .line 71
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->mf()Lorg/json/JSONObject;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 76
    .line 77
    .line 78
    add-int/lit8 v2, v2, 0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    const-string v2, "creatives"

    .line 82
    .line 83
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    .line 85
    .line 86
    :cond_3
    const-string v1, "multi_ad_style"

    .line 87
    .line 88
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->jFA:I

    .line 89
    .line 90
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 91
    .line 92
    .line 93
    const-string v1, "request_id"

    .line 94
    .line 95
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->oJ:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .line 99
    .line 100
    return-object v0

    .line 101
    :goto_2
    const-string v1, "AdInfo"

    .line 102
    .line 103
    const-string v2, "toJsonObj: "

    .line 104
    .line 105
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    const/4 v0, 0x0

    .line 109
    return-object v0
.end method

.method public WcQ()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->dLZ:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public ZYk()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ba()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->iPr()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public ZYk(I)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->jFA:I

    return-void
.end method

.method public ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->Pfn:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    return-void
.end method

.method public ZYk(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->tB:Ljava/lang/String;

    return-void
.end method

.method public awB()Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->Pfn:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    return-object v0
.end method

.method public ba()Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex:Ljava/util/List;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return-object v0
.end method

.method public cFZ()Lcom/bytedance/sdk/openadsdk/core/model/Id;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->kkU:Lcom/bytedance/sdk/openadsdk/core/model/Id;

    .line 2
    .line 3
    return-object v0
.end method

.method public dLZ()Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    return-object v0
.end method

.method public ex()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/model/cY;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public jFA()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->so:Z

    .line 3
    .line 4
    return-void
.end method

.method public kkU()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->jFA:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public oJ()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->cFZ:Lorg/json/JSONObject;

    return-object v0
.end method

.method public oJ(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ZYk:I

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/model/Id;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->kkU:Lcom/bytedance/sdk/openadsdk/core/model/Id;

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-nez v0, :cond_0

    .line 7
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    :cond_0
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/model/jr;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/model/jr;

    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->oJ:Ljava/lang/String;

    return-void
.end method

.method public oJ(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/model/cY;",
            ">;)V"
        }
    .end annotation

    .line 8
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex:Ljava/util/List;

    .line 9
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->BTZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    :cond_0
    return-void
.end method

.method public oJ(Lorg/json/JSONObject;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->cFZ:Lorg/json/JSONObject;

    return-void
.end method

.method public so()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->so:Z

    .line 2
    .line 3
    return v0
.end method

.method public tB()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ZYk:I

    return v0
.end method

.method public tB(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->dLZ:Ljava/lang/String;

    return-void
.end method
