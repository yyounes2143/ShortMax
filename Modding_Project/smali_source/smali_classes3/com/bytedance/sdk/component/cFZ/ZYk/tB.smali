.class public abstract Lcom/bytedance/sdk/component/cFZ/ZYk/tB;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field Pfn:Ljava/lang/String;

.field ba:I

.field protected final cFZ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected ex:Ljava/lang/String;

.field protected jFA:Z

.field protected so:Ljava/lang/String;

.field protected tB:Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ex:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->cFZ:Ljava/util/Map;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->so:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->jFA:Z

    .line 18
    .line 19
    iput-object p1, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->tB:Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;

    .line 20
    .line 21
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->tB(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public ZYk()V
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ex:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->tB:Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;

    if-nez v0, :cond_0

    goto :goto_3

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;->oJ()Lcom/bytedance/sdk/component/ZYk/oJ/ex;

    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ZYk/oJ/ex;->tB()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/ZYk/oJ/ZYk;

    .line 7
    iget-object v3, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ex:Ljava/lang/String;

    invoke-interface {v2}, Lcom/bytedance/sdk/component/ZYk/oJ/ZYk;->oJ()Lcom/bytedance/sdk/component/ZYk/oJ/BTZ;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ;->oJ()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-interface {v2}, Lcom/bytedance/sdk/component/ZYk/oJ/ZYk;->tB()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ZYk/oJ/ex;->ex()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/ZYk/oJ/ZYk;

    .line 10
    iget-object v3, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ex:Ljava/lang/String;

    invoke-interface {v2}, Lcom/bytedance/sdk/component/ZYk/oJ/ZYk;->oJ()Lcom/bytedance/sdk/component/ZYk/oJ/BTZ;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ;->oJ()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    invoke-interface {v2}, Lcom/bytedance/sdk/component/ZYk/oJ/ZYk;->tB()V

    goto :goto_1

    .line 12
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_2
    monitor-exit v0

    throw v1

    :cond_5
    :goto_3
    return-void
.end method

.method public ZYk(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->so:Ljava/lang/String;

    return-void
.end method

.method public ZYk(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->cFZ:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public ex()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->so:Ljava/lang/String;

    return-object v0
.end method

.method public ex(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    iget-object v1, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->cFZ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public oJ(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ba:I

    return-void
.end method

.method protected oJ(Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->cFZ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->cFZ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    .line 8
    const-string v1, ""

    .line 9
    :cond_2
    invoke-virtual {p1, v2, v1}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->ZYk(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->Pfn:Ljava/lang/String;

    return-void
.end method

.method public tB()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ex:Ljava/lang/String;

    return-object v0
.end method

.method public tB(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ex:Ljava/lang/String;

    return-void
.end method
