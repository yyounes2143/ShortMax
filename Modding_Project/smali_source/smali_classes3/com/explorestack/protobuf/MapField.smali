.class public Lcom/explorestack/protobuf/MapField;
.super Ljava/lang/Object;
.source "MapField.java"

# interfaces
.implements Lcom/explorestack/protobuf/d1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/MapField$c;,
        Lcom/explorestack/protobuf/MapField$b;,
        Lcom/explorestack/protobuf/MapField$a;,
        Lcom/explorestack/protobuf/MapField$StorageMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/d1;"
    }
.end annotation


# instance fields
.field private volatile a:Z

.field private volatile b:Lcom/explorestack/protobuf/MapField$StorageMode;

.field private c:Lcom/explorestack/protobuf/MapField$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapField$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/explorestack/protobuf/MapField$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapField$a<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/explorestack/protobuf/MapField$a;Lcom/explorestack/protobuf/MapField$StorageMode;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/MapField$a<",
            "TK;TV;>;",
            "Lcom/explorestack/protobuf/MapField$StorageMode;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/explorestack/protobuf/MapField;->e:Lcom/explorestack/protobuf/MapField$a;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/explorestack/protobuf/MapField;->a:Z

    .line 4
    iput-object p2, p0, Lcom/explorestack/protobuf/MapField;->b:Lcom/explorestack/protobuf/MapField$StorageMode;

    .line 5
    new-instance p1, Lcom/explorestack/protobuf/MapField$c;

    invoke-direct {p1, p0, p3}, Lcom/explorestack/protobuf/MapField$c;-><init>(Lcom/explorestack/protobuf/d1;Ljava/util/Map;)V

    iput-object p1, p0, Lcom/explorestack/protobuf/MapField;->c:Lcom/explorestack/protobuf/MapField$c;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/explorestack/protobuf/MapField;->d:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/s0;Lcom/explorestack/protobuf/MapField$StorageMode;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/s0<",
            "TK;TV;>;",
            "Lcom/explorestack/protobuf/MapField$StorageMode;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/explorestack/protobuf/MapField$b;

    invoke-direct {v0, p1}, Lcom/explorestack/protobuf/MapField$b;-><init>(Lcom/explorestack/protobuf/s0;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/explorestack/protobuf/MapField;-><init>(Lcom/explorestack/protobuf/MapField$a;Lcom/explorestack/protobuf/MapField$StorageMode;Ljava/util/Map;)V

    return-void
.end method

.method private b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/explorestack/protobuf/Message;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->e:Lcom/explorestack/protobuf/MapField$a;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/MapField$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method private c(Ljava/util/List;)Lcom/explorestack/protobuf/MapField$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Message;",
            ">;)",
            "Lcom/explorestack/protobuf/MapField$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/explorestack/protobuf/Message;

    .line 21
    .line 22
    invoke-direct {p0, v1, v0}, Lcom/explorestack/protobuf/MapField;->e(Lcom/explorestack/protobuf/Message;Ljava/util/Map;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p1, Lcom/explorestack/protobuf/MapField$c;

    .line 27
    .line 28
    invoke-direct {p1, p0, v0}, Lcom/explorestack/protobuf/MapField$c;-><init>(Lcom/explorestack/protobuf/d1;Ljava/util/Map;)V

    .line 29
    .line 30
    .line 31
    return-object p1
.end method

.method private d(Lcom/explorestack/protobuf/MapField$c;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/MapField$c<",
            "TK;TV;>;)",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Message;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/MapField$c;->entrySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/util/Map$Entry;

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-direct {p0, v2, v1}, Lcom/explorestack/protobuf/MapField;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    return-object v0
.end method

.method private e(Lcom/explorestack/protobuf/Message;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Message;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->e:Lcom/explorestack/protobuf/MapField$a;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/MapField$a;->b(Lcom/explorestack/protobuf/Message;Ljava/util/Map;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static g(Lcom/explorestack/protobuf/s0;)Lcom/explorestack/protobuf/MapField;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/s0<",
            "TK;TV;>;)",
            "Lcom/explorestack/protobuf/MapField<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/MapField;

    .line 2
    .line 3
    sget-object v1, Lcom/explorestack/protobuf/MapField$StorageMode;->MAP:Lcom/explorestack/protobuf/MapField$StorageMode;

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v0, p0, v1, v2}, Lcom/explorestack/protobuf/MapField;-><init>(Lcom/explorestack/protobuf/s0;Lcom/explorestack/protobuf/MapField$StorageMode;Ljava/util/Map;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static p(Lcom/explorestack/protobuf/s0;)Lcom/explorestack/protobuf/MapField;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/s0<",
            "TK;TV;>;)",
            "Lcom/explorestack/protobuf/MapField<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/MapField;

    .line 2
    .line 3
    sget-object v1, Lcom/explorestack/protobuf/MapField$StorageMode;->MAP:Lcom/explorestack/protobuf/MapField$StorageMode;

    .line 4
    .line 5
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, v1, v2}, Lcom/explorestack/protobuf/MapField;-><init>(Lcom/explorestack/protobuf/s0;Lcom/explorestack/protobuf/MapField$StorageMode;Ljava/util/Map;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/MapField$c;

    .line 2
    .line 3
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/MapField$c;-><init>(Lcom/explorestack/protobuf/d1;Ljava/util/Map;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/explorestack/protobuf/MapField;->c:Lcom/explorestack/protobuf/MapField$c;

    .line 12
    .line 13
    sget-object v0, Lcom/explorestack/protobuf/MapField$StorageMode;->MAP:Lcom/explorestack/protobuf/MapField$StorageMode;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/explorestack/protobuf/MapField;->b:Lcom/explorestack/protobuf/MapField$StorageMode;

    .line 16
    .line 17
    return-void
.end method

.method public ensureMutable()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapField;->m()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/explorestack/protobuf/MapField;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    check-cast p1, Lcom/explorestack/protobuf/MapField;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapField;->i()Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1}, Lcom/explorestack/protobuf/MapField;->i()Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {v0, p1}, Lcom/explorestack/protobuf/MapFieldLite;->q(Ljava/util/Map;Ljava/util/Map;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public f()Lcom/explorestack/protobuf/MapField;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapField<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/MapField;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/explorestack/protobuf/MapField;->e:Lcom/explorestack/protobuf/MapField$a;

    .line 4
    .line 5
    sget-object v2, Lcom/explorestack/protobuf/MapField$StorageMode;->MAP:Lcom/explorestack/protobuf/MapField$StorageMode;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapField;->i()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-static {v3}, Lcom/explorestack/protobuf/MapFieldLite;->i(Ljava/util/Map;)Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/MapField;-><init>(Lcom/explorestack/protobuf/MapField$a;Lcom/explorestack/protobuf/MapField$StorageMode;Ljava/util/Map;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method h()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Message;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->b:Lcom/explorestack/protobuf/MapField$StorageMode;

    .line 2
    .line 3
    sget-object v1, Lcom/explorestack/protobuf/MapField$StorageMode;->MAP:Lcom/explorestack/protobuf/MapField$StorageMode;

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->b:Lcom/explorestack/protobuf/MapField$StorageMode;

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->c:Lcom/explorestack/protobuf/MapField$c;

    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/MapField;->d(Lcom/explorestack/protobuf/MapField$c;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/explorestack/protobuf/MapField;->d:Ljava/util/List;

    .line 19
    .line 20
    sget-object v0, Lcom/explorestack/protobuf/MapField$StorageMode;->BOTH:Lcom/explorestack/protobuf/MapField$StorageMode;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/explorestack/protobuf/MapField;->b:Lcom/explorestack/protobuf/MapField$StorageMode;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit p0

    .line 28
    goto :goto_2

    .line 29
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw v0

    .line 31
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->d:Ljava/util/List;

    .line 32
    .line 33
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapField;->i()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/explorestack/protobuf/MapFieldLite;->b(Ljava/util/Map;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public i()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->b:Lcom/explorestack/protobuf/MapField$StorageMode;

    .line 2
    .line 3
    sget-object v1, Lcom/explorestack/protobuf/MapField$StorageMode;->LIST:Lcom/explorestack/protobuf/MapField$StorageMode;

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->b:Lcom/explorestack/protobuf/MapField$StorageMode;

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->d:Ljava/util/List;

    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/MapField;->c(Ljava/util/List;)Lcom/explorestack/protobuf/MapField$c;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/explorestack/protobuf/MapField;->c:Lcom/explorestack/protobuf/MapField$c;

    .line 19
    .line 20
    sget-object v0, Lcom/explorestack/protobuf/MapField$StorageMode;->BOTH:Lcom/explorestack/protobuf/MapField$StorageMode;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/explorestack/protobuf/MapField;->b:Lcom/explorestack/protobuf/MapField$StorageMode;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit p0

    .line 28
    goto :goto_2

    .line 29
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw v0

    .line 31
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->c:Lcom/explorestack/protobuf/MapField$c;

    .line 32
    .line 33
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method

.method j()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->e:Lcom/explorestack/protobuf/MapField$a;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/explorestack/protobuf/MapField$a;->c()Lcom/explorestack/protobuf/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method k()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Message;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->b:Lcom/explorestack/protobuf/MapField$StorageMode;

    .line 2
    .line 3
    sget-object v1, Lcom/explorestack/protobuf/MapField$StorageMode;->LIST:Lcom/explorestack/protobuf/MapField$StorageMode;

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->b:Lcom/explorestack/protobuf/MapField$StorageMode;

    .line 8
    .line 9
    sget-object v2, Lcom/explorestack/protobuf/MapField$StorageMode;->MAP:Lcom/explorestack/protobuf/MapField$StorageMode;

    .line 10
    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->c:Lcom/explorestack/protobuf/MapField$c;

    .line 14
    .line 15
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/MapField;->d(Lcom/explorestack/protobuf/MapField$c;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/explorestack/protobuf/MapField;->d:Ljava/util/List;

    .line 20
    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/explorestack/protobuf/MapField;->c:Lcom/explorestack/protobuf/MapField$c;

    .line 23
    .line 24
    iput-object v1, p0, Lcom/explorestack/protobuf/MapField;->b:Lcom/explorestack/protobuf/MapField$StorageMode;

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->d:Ljava/util/List;

    .line 27
    .line 28
    return-object v0
.end method

.method public l()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->b:Lcom/explorestack/protobuf/MapField$StorageMode;

    .line 2
    .line 3
    sget-object v1, Lcom/explorestack/protobuf/MapField$StorageMode;->MAP:Lcom/explorestack/protobuf/MapField$StorageMode;

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->b:Lcom/explorestack/protobuf/MapField$StorageMode;

    .line 8
    .line 9
    sget-object v2, Lcom/explorestack/protobuf/MapField$StorageMode;->LIST:Lcom/explorestack/protobuf/MapField$StorageMode;

    .line 10
    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->d:Ljava/util/List;

    .line 14
    .line 15
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/MapField;->c(Ljava/util/List;)Lcom/explorestack/protobuf/MapField$c;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/explorestack/protobuf/MapField;->c:Lcom/explorestack/protobuf/MapField$c;

    .line 20
    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/explorestack/protobuf/MapField;->d:Ljava/util/List;

    .line 23
    .line 24
    iput-object v1, p0, Lcom/explorestack/protobuf/MapField;->b:Lcom/explorestack/protobuf/MapField$StorageMode;

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField;->c:Lcom/explorestack/protobuf/MapField$c;

    .line 27
    .line 28
    return-object v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/explorestack/protobuf/MapField;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public n()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/explorestack/protobuf/MapField;->a:Z

    .line 3
    .line 4
    return-void
.end method

.method public o(Lcom/explorestack/protobuf/MapField;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/MapField<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/MapField;->l()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/MapField;->i()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/explorestack/protobuf/MapFieldLite;->i(Ljava/util/Map;)Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
