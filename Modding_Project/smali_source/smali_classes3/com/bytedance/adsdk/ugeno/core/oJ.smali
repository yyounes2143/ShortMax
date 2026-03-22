.class public Lcom/bytedance/adsdk/ugeno/core/oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/ugeno/core/oJ$oJ;
    }
.end annotation


# instance fields
.field private Pfn:J

.field private ZYk:F

.field private ba:Ljava/lang/String;

.field private ex:J

.field private oJ:Ljava/lang/String;

.field private tB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ugeno/core/oJ$oJ;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static oJ(Ljava/lang/Object;Lorg/json/JSONObject;)D
    .locals 3

    .line 29
    instance-of v0, p0, Ljava/lang/String;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 30
    check-cast p0, Ljava/lang/String;

    .line 31
    invoke-static {p0, p1}, Lcom/bytedance/adsdk/ugeno/tB/ZYk;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1, v2}, Lcom/bytedance/adsdk/ugeno/cFZ/tB;->oJ(Ljava/lang/String;D)D

    move-result-wide p0

    return-wide p0

    .line 32
    :cond_0
    instance-of p1, p0, Ljava/lang/Double;

    if-eqz p1, :cond_1

    .line 33
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0

    .line 34
    :cond_1
    instance-of p1, p0, Ljava/lang/Long;

    if-eqz p1, :cond_2

    .line 35
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0

    .line 36
    :cond_2
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    .line 37
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0

    :cond_3
    return-wide v1
.end method

.method public static oJ(Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/ZYk/tB;)Lcom/bytedance/adsdk/ugeno/core/oJ;
    .locals 2

    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 7
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {v0, p1}, Lcom/bytedance/adsdk/ugeno/core/oJ;->oJ(Lorg/json/JSONObject;Lcom/bytedance/adsdk/ugeno/ZYk/tB;)Lcom/bytedance/adsdk/ugeno/core/oJ;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1
.end method

.method public static oJ(Lorg/json/JSONObject;Lcom/bytedance/adsdk/ugeno/ZYk/tB;)Lcom/bytedance/adsdk/ugeno/core/oJ;
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-static {p0, v0, p1}, Lcom/bytedance/adsdk/ugeno/core/oJ;->oJ(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/adsdk/ugeno/ZYk/tB;)Lcom/bytedance/adsdk/ugeno/core/oJ;

    move-result-object p0

    return-object p0
.end method

.method public static oJ(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/adsdk/ugeno/ZYk/tB;)Lcom/bytedance/adsdk/ugeno/core/oJ;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 10
    :cond_0
    new-instance v0, Lcom/bytedance/adsdk/ugeno/core/oJ;

    invoke-direct {v0}, Lcom/bytedance/adsdk/ugeno/core/oJ;-><init>()V

    .line 11
    const-string v1, "ordering"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/core/oJ;->oJ(Ljava/lang/String;)V

    .line 12
    const-string v1, "loop"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13
    const-string v2, "infinite"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/high16 v1, -0x40800000    # -1.0f

    .line 14
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/core/oJ;->oJ(F)V

    goto :goto_0

    .line 15
    :cond_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/core/oJ;->oJ(F)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/core/oJ;->oJ(F)V

    .line 17
    :goto_0
    const-string v1, "duration"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/bytedance/adsdk/ugeno/core/oJ;->oJ(J)V

    .line 18
    const-string v1, "startDelay"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->BTZ()Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/bytedance/adsdk/ugeno/tB/ZYk;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-static {v1, v2, v3}, Lcom/bytedance/adsdk/ugeno/cFZ/tB;->oJ(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/adsdk/ugeno/core/oJ;->ZYk(J)V

    .line 20
    const-string v1, "loopMode"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/core/oJ;->ZYk(Ljava/lang/String;)V

    .line 21
    const-string v1, "animators"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 23
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 24
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz p1, :cond_2

    .line 25
    invoke-static {p1, v3}, Lcom/bytedance/adsdk/ugeno/cFZ/ZYk;->oJ(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 26
    :cond_2
    invoke-static {v3, p2}, Lcom/bytedance/adsdk/ugeno/core/oJ$oJ;->oJ(Lorg/json/JSONObject;Lcom/bytedance/adsdk/ugeno/ZYk/tB;)Lcom/bytedance/adsdk/ugeno/core/oJ$oJ;

    move-result-object v3

    .line 27
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 28
    :cond_3
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/core/oJ;->oJ(Ljava/util/List;)V

    :cond_4
    return-object v0
.end method


# virtual methods
.method public Pfn()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/adsdk/ugeno/core/oJ;->Pfn:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public ZYk()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/core/oJ;->ZYk:F

    return v0
.end method

.method public ZYk(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/bytedance/adsdk/ugeno/core/oJ;->Pfn:J

    return-void
.end method

.method public ZYk(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/oJ;->ba:Ljava/lang/String;

    return-void
.end method

.method public ba()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/oJ;->ba:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public ex()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/adsdk/ugeno/core/oJ;->ex:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public oJ()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/oJ;->oJ:Ljava/lang/String;

    return-object v0
.end method

.method public oJ(F)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/core/oJ;->ZYk:F

    return-void
.end method

.method public oJ(J)V
    .locals 0

    .line 5
    iput-wide p1, p0, Lcom/bytedance/adsdk/ugeno/core/oJ;->ex:J

    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/oJ;->oJ:Ljava/lang/String;

    return-void
.end method

.method public oJ(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ugeno/core/oJ$oJ;",
            ">;)V"
        }
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/oJ;->tB:Ljava/util/List;

    return-void
.end method

.method public tB()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ugeno/core/oJ$oJ;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/oJ;->tB:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method
