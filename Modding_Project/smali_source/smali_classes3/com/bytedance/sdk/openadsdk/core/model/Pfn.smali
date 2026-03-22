.class public Lcom/bytedance/sdk/openadsdk/core/model/Pfn;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/model/Pfn$oJ;
    }
.end annotation


# instance fields
.field private ZYk:Lcom/bytedance/sdk/openadsdk/core/model/ex;

.field private oJ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/sdk/openadsdk/core/model/Pfn$oJ;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-ge v0, v1, :cond_2

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/model/Pfn$oJ;

    .line 19
    .line 20
    invoke-direct {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/model/Pfn$oJ;-><init>(Lorg/json/JSONObject;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Pfn;->oJ:Ljava/util/ArrayList;

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    new-instance v1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Pfn;->oJ:Ljava/util/ArrayList;

    .line 33
    .line 34
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Pfn;->oJ:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Xe()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->qnr()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Dc()I

    move-result p0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x5

    if-eq p0, v1, :cond_3

    const/16 v1, 0xf

    if-eq p0, v1, :cond_3

    const/16 v1, 0x32

    if-ne p0, v1, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    return v0
.end method


# virtual methods
.method public ZYk()Lorg/json/JSONArray;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Pfn;->oJ:Ljava/util/ArrayList;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/model/Pfn$oJ;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Pfn$oJ;->Pfn()Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    :cond_0
    return-object v0
.end method

.method public ex()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Pfn;->oJ:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

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

.method public oJ()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/sdk/openadsdk/core/model/Pfn$oJ;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Pfn;->oJ:Ljava/util/ArrayList;

    return-object v0
.end method

.method public tB()Lcom/bytedance/sdk/openadsdk/core/model/ex;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Pfn;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/ex;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/ex;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/ex;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Pfn;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/ex;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Pfn;->oJ:Ljava/util/ArrayList;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_0
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
    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/model/Pfn$oJ;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Pfn$oJ;->oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Pfn$oJ;->ZYk()Ljava/util/Set;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/Pfn;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/ex;

    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/ex;->oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    if-eqz v1, :cond_0

    .line 52
    .line 53
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/Pfn;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/ex;

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/ex;->ZYk()Ljava/util/Set;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Pfn;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/ex;

    .line 64
    .line 65
    return-object v0
.end method
