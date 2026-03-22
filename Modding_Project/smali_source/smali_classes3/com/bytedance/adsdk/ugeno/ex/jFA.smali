.class public Lcom/bytedance/adsdk/ugeno/ex/jFA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/ex/dLZ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/ugeno/ex/jFA$oJ;
    }
.end annotation


# instance fields
.field private Pfn:Z

.field private ZYk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ugeno/ex/ex/tB;",
            ">;>;"
        }
    .end annotation
.end field

.field private ba:Z

.field private ex:Lcom/bytedance/adsdk/ugeno/core/Pfn;

.field private oJ:Lcom/bytedance/adsdk/ugeno/ex/jFA$oJ;

.field private tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Lcom/bytedance/adsdk/ugeno/ex/jFA$oJ;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/ex/jFA;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/ex/jFA;->oJ:Lcom/bytedance/adsdk/ugeno/ex/jFA$oJ;

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    iget-object p1, p2, Lcom/bytedance/adsdk/ugeno/ex/jFA$oJ;->oJ:Ljava/util/Map;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/ex/jFA;->ZYk:Ljava/util/Map;

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public static oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/ex/jFA;
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 52
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-gtz p1, :cond_1

    return-object v0

    .line 54
    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 55
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 56
    new-instance v3, Lcom/bytedance/adsdk/ugeno/ex/jFA$oJ;

    invoke-direct {v3, p1, v2}, Lcom/bytedance/adsdk/ugeno/ex/jFA$oJ;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    const/4 p1, 0x0

    .line 57
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_5

    .line 58
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 59
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->dLZ()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 60
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->BTZ()Lorg/json/JSONObject;

    move-result-object v5

    .line 61
    invoke-static {v4, p0, v2, v5}, Lcom/bytedance/adsdk/ugeno/ex/ex/tB$oJ;->oJ(Landroid/content/Context;Lcom/bytedance/adsdk/ugeno/ZYk/tB;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/bytedance/adsdk/ugeno/ex/ex/tB;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 62
    iget-object v4, v3, Lcom/bytedance/adsdk/ugeno/ex/jFA$oJ;->oJ:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ex()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 63
    iget-object v4, v3, Lcom/bytedance/adsdk/ugeno/ex/jFA$oJ;->oJ:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ex()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_2

    .line 64
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 65
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v5, v3, Lcom/bytedance/adsdk/ugeno/ex/jFA$oJ;->oJ:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ex()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 67
    :cond_2
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 68
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v5, v3, Lcom/bytedance/adsdk/ugeno/ex/jFA$oJ;->oJ:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ex()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :goto_1
    iget-object v4, v3, Lcom/bytedance/adsdk/ugeno/ex/jFA$oJ;->ZYk:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->Pfn()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 72
    :cond_5
    new-instance p1, Lcom/bytedance/adsdk/ugeno/ex/jFA;

    invoke-direct {p1, p0, v3}, Lcom/bytedance/adsdk/ugeno/ex/jFA;-><init>(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Lcom/bytedance/adsdk/ugeno/ex/jFA$oJ;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_6
    :goto_2
    return-object v0
.end method

.method private oJ(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ugeno/ex/ba$oJ;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 37
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 38
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/ugeno/ex/ba$oJ;

    if-eqz v0, :cond_1

    .line 39
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ex/jFA;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    invoke-static {v1, p1, v0}, Lcom/bytedance/adsdk/ugeno/ex/ZYk/oJ$oJ;->oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/ex/ba$oJ;)Lcom/bytedance/adsdk/ugeno/ex/ZYk/oJ;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/ex/ZYk/oJ;->oJ()V

    .line 41
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/ex/ZYk/oJ;->ZYk()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public Pfn()V
    .locals 3

    .line 1
    const-string v0, "timer"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/ugeno/ex/jFA;->oJ(Ljava/lang/String;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v1, p0}, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->oJ(Lcom/bytedance/adsdk/ugeno/ex/dLZ;)V

    .line 35
    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    new-array v2, v2, [Ljava/lang/Object;

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->oJ([Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    :goto_1
    return-void
.end method

.method public ZYk(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/ex/ex/tB;
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/jFA;->oJ:Lcom/bytedance/adsdk/ugeno/ex/jFA$oJ;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/jFA;->oJ:Lcom/bytedance/adsdk/ugeno/ex/jFA$oJ;

    iget-object v0, v0, Lcom/bytedance/adsdk/ugeno/ex/jFA$oJ;->ZYk:Ljava/util/Map;

    if-nez v0, :cond_1

    return-object v1

    .line 8
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public ZYk()V
    .locals 3

    .line 1
    const-string v0, "twist"

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/ugeno/ex/jFA;->oJ(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1, p0}, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->oJ(Lcom/bytedance/adsdk/ugeno/ex/dLZ;)V

    const/4 v2, 0x0

    .line 5
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->oJ([Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public ex()V
    .locals 3

    .line 1
    const-string v0, "animateState"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/ugeno/ex/jFA;->oJ(Ljava/lang/String;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v1, p0}, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->oJ(Lcom/bytedance/adsdk/ugeno/ex/dLZ;)V

    .line 35
    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    new-array v2, v2, [Ljava/lang/Object;

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->oJ([Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    :goto_1
    return-void
.end method

.method public oJ(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ugeno/ex/ex/tB;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/jFA;->ZYk:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/jFA;->ZYk:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public oJ()V
    .locals 3

    .line 2
    const-string v0, "shake"

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/ugeno/ex/jFA;->oJ(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1, p0}, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->oJ(Lcom/bytedance/adsdk/ugeno/ex/dLZ;)V

    const/4 v2, 0x0

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->oJ([Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/ugeno/ZYk/tB;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ugeno/ex/ba$oJ;",
            ">;)V"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/jFA;->ex:Lcom/bytedance/adsdk/ugeno/core/Pfn;

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/adsdk/ugeno/core/Pfn;->oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Ljava/lang/String;Ljava/util/List;)V

    .line 50
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/bytedance/adsdk/ugeno/ex/jFA;->oJ(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/adsdk/ugeno/core/Pfn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/ex/jFA;->ex:Lcom/bytedance/adsdk/ugeno/core/Pfn;

    return-void
.end method

.method public varargs oJ(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ugeno/ex/jFA;->ZYk(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/ex/ex/tB;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p1, p0}, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->oJ(Lcom/bytedance/adsdk/ugeno/ex/dLZ;)V

    .line 47
    invoke-virtual {p1, p2}, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->oJ([Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public oJ(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 7
    const-string v0, "touchStart"

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/ugeno/ex/jFA;->oJ(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;

    .line 10
    instance-of v3, v2, Lcom/bytedance/adsdk/ugeno/ex/ex/BTZ;

    if-eqz v3, :cond_0

    .line 11
    invoke-virtual {v2, p0}, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->oJ(Lcom/bytedance/adsdk/ugeno/ex/dLZ;)V

    .line 12
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->oJ([Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_1
    const-string v1, "touchEnd"

    invoke-virtual {p0, v1}, Lcom/bytedance/adsdk/ugeno/ex/jFA;->oJ(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 14
    const-string v2, "tap"

    invoke-virtual {p0, v2}, Lcom/bytedance/adsdk/ugeno/ex/jFA;->oJ(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 15
    const-string v3, "slide"

    invoke-virtual {p0, v3}, Lcom/bytedance/adsdk/ugeno/ex/jFA;->oJ(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v0, :cond_3

    .line 16
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;

    .line 18
    instance-of v4, v1, Lcom/bytedance/adsdk/ugeno/ex/ex/dLZ;

    if-eqz v4, :cond_2

    .line 19
    invoke-virtual {v1, p0}, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->oJ(Lcom/bytedance/adsdk/ugeno/ex/dLZ;)V

    .line 20
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->oJ([Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/ex/jFA;->ba:Z

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    .line 21
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    if-eqz v3, :cond_c

    .line 22
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    .line 23
    :cond_5
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/ex/jFA;->ba:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    if-eqz v2, :cond_8

    .line 24
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 25
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;

    .line 26
    instance-of v4, v2, Lcom/bytedance/adsdk/ugeno/ex/ex/jFA;

    if-eqz v4, :cond_7

    .line 27
    invoke-virtual {v2, p0}, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->oJ(Lcom/bytedance/adsdk/ugeno/ex/dLZ;)V

    .line 28
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->oJ([Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/bytedance/adsdk/ugeno/ex/jFA;->Pfn:Z

    goto :goto_2

    .line 29
    :cond_8
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/ex/jFA;->Pfn:Z

    if-eqz v0, :cond_9

    return v1

    :cond_9
    if-eqz v3, :cond_b

    .line 30
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 31
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;

    .line 32
    instance-of v2, v1, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;

    if-eqz v2, :cond_a

    .line 33
    invoke-virtual {v1, p0}, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->oJ(Lcom/bytedance/adsdk/ugeno/ex/dLZ;)V

    .line 34
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->oJ([Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 35
    :cond_b
    iget-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/ex/jFA;->Pfn:Z

    return p1

    .line 36
    :cond_c
    :goto_3
    iget-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/ex/jFA;->ba:Z

    return p1
.end method

.method public tB()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/jFA;->oJ:Lcom/bytedance/adsdk/ugeno/ex/jFA$oJ;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, v0, Lcom/bytedance/adsdk/ugeno/ex/jFA$oJ;->oJ:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/util/Map$Entry;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/util/List;

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;

    .line 59
    .line 60
    instance-of v3, v2, Lcom/bytedance/adsdk/ugeno/ex/ex/ex;

    .line 61
    .line 62
    if-eqz v3, :cond_2

    .line 63
    .line 64
    invoke-virtual {v2, p0}, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->oJ(Lcom/bytedance/adsdk/ugeno/ex/dLZ;)V

    .line 65
    .line 66
    .line 67
    const/4 v3, 0x0

    .line 68
    new-array v3, v3, [Ljava/lang/Object;

    .line 69
    .line 70
    invoke-virtual {v2, v3}, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->oJ([Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    return-void
.end method
