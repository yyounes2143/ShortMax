.class public Lcom/bytedance/adsdk/ZYk/WcQ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private Pfn:I

.field private ZYk:I

.field private ba:I

.field private cFZ:I

.field private ex:I

.field private final oJ:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private so:I

.field private tB:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-lez p1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/bytedance/adsdk/ZYk/WcQ;->tB:I

    .line 7
    .line 8
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    const/high16 v0, 0x3f400000    # 0.75f

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {p1, v2, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/bytedance/adsdk/ZYk/WcQ;->oJ:Ljava/util/LinkedHashMap;

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string v0, "maxSize <= 0"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method

.method private tB(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/adsdk/ZYk/WcQ;->ZYk(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "Negative size: "

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p1, "="

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0
.end method


# virtual methods
.method protected ZYk(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method protected ZYk(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final oJ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/WcQ;->oJ:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget p1, p0, Lcom/bytedance/adsdk/ZYk/WcQ;->cFZ:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/bytedance/adsdk/ZYk/WcQ;->cFZ:I

    .line 4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 5
    :cond_0
    iget v0, p0, Lcom/bytedance/adsdk/ZYk/WcQ;->so:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/adsdk/ZYk/WcQ;->so:I

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ZYk/WcQ;->ZYk(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 8
    :cond_1
    monitor-enter p0

    .line 9
    :try_start_1
    iget v1, p0, Lcom/bytedance/adsdk/ZYk/WcQ;->Pfn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bytedance/adsdk/ZYk/WcQ;->Pfn:I

    .line 10
    iget-object v1, p0, Lcom/bytedance/adsdk/ZYk/WcQ;->oJ:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 11
    iget-object v2, p0, Lcom/bytedance/adsdk/ZYk/WcQ;->oJ:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    .line 12
    :cond_2
    iget v2, p0, Lcom/bytedance/adsdk/ZYk/WcQ;->ZYk:I

    invoke-direct {p0, p1, v0}, Lcom/bytedance/adsdk/ZYk/WcQ;->tB(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    iput v2, p0, Lcom/bytedance/adsdk/ZYk/WcQ;->ZYk:I

    .line 13
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_3

    return-object v1

    .line 14
    :cond_3
    iget p1, p0, Lcom/bytedance/adsdk/ZYk/WcQ;->tB:I

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ZYk/WcQ;->oJ(I)V

    return-object v0

    .line 15
    :goto_1
    monitor-exit p0

    throw p1

    .line 16
    :goto_2
    monitor-exit p0

    throw p1

    .line 17
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final oJ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 18
    monitor-enter p0

    .line 19
    :try_start_0
    iget v0, p0, Lcom/bytedance/adsdk/ZYk/WcQ;->ex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/adsdk/ZYk/WcQ;->ex:I

    .line 20
    iget v0, p0, Lcom/bytedance/adsdk/ZYk/WcQ;->ZYk:I

    invoke-direct {p0, p1, p2}, Lcom/bytedance/adsdk/ZYk/WcQ;->tB(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/adsdk/ZYk/WcQ;->ZYk:I

    .line 21
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/WcQ;->oJ:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 22
    iget v0, p0, Lcom/bytedance/adsdk/ZYk/WcQ;->ZYk:I

    invoke-direct {p0, p1, p2}, Lcom/bytedance/adsdk/ZYk/WcQ;->tB(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/bytedance/adsdk/ZYk/WcQ;->ZYk:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    iget p1, p0, Lcom/bytedance/adsdk/ZYk/WcQ;->tB:I

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ZYk/WcQ;->oJ(I)V

    return-object p2

    .line 25
    :goto_1
    monitor-exit p0

    throw p1

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key == null || value == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public oJ(I)V
    .locals 3

    .line 27
    :goto_0
    monitor-enter p0

    .line 28
    :try_start_0
    iget v0, p0, Lcom/bytedance/adsdk/ZYk/WcQ;->ZYk:I

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/WcQ;->oJ:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/bytedance/adsdk/ZYk/WcQ;->ZYk:I

    if-nez v0, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 29
    :cond_0
    :goto_1
    iget v0, p0, Lcom/bytedance/adsdk/ZYk/WcQ;->ZYk:I

    if-le v0, p1, :cond_2

    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/WcQ;->oJ:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/WcQ;->oJ:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 31
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 32
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 33
    iget-object v2, p0, Lcom/bytedance/adsdk/ZYk/WcQ;->oJ:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget v2, p0, Lcom/bytedance/adsdk/ZYk/WcQ;->ZYk:I

    invoke-direct {p0, v1, v0}, Lcom/bytedance/adsdk/ZYk/WcQ;->tB(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/bytedance/adsdk/ZYk/WcQ;->ZYk:I

    .line 35
    iget v0, p0, Lcom/bytedance/adsdk/ZYk/WcQ;->ba:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/adsdk/ZYk/WcQ;->ba:I

    .line 36
    monitor-exit p0

    goto :goto_0

    .line 37
    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    .line 38
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/bytedance/adsdk/ZYk/WcQ;->cFZ:I

    .line 3
    .line 4
    iget v1, p0, Lcom/bytedance/adsdk/ZYk/WcQ;->so:I

    .line 5
    .line 6
    add-int/2addr v1, v0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    mul-int/lit8 v0, v0, 0x64

    .line 10
    .line 11
    div-int/2addr v0, v1

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 17
    .line 18
    const-string v2, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    .line 19
    .line 20
    iget v3, p0, Lcom/bytedance/adsdk/ZYk/WcQ;->tB:I

    .line 21
    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iget v4, p0, Lcom/bytedance/adsdk/ZYk/WcQ;->cFZ:I

    .line 27
    .line 28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    iget v5, p0, Lcom/bytedance/adsdk/ZYk/WcQ;->so:I

    .line 33
    .line 34
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    filled-new-array {v3, v4, v5, v0}, [Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    .line 51
    return-object v0

    .line 52
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    throw v0
.end method
