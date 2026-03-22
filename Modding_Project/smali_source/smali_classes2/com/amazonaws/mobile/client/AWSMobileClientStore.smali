.class final Lcom/amazonaws/mobile/client/AWSMobileClientStore;
.super Ljava/lang/Object;
.source "AWSMobileClientStore.java"

# interfaces
.implements Lcom/amazonaws/mobile/client/KeyValueStore;


# instance fields
.field private final a:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

.field private final b:Ljava/util/concurrent/locks/ReadWriteLock;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 5
    .line 6
    iget-object v1, p1, Lcom/amazonaws/mobile/client/AWSMobileClient;->f:Landroid/content/Context;

    .line 7
    .line 8
    const-string v2, "com.amazonaws.mobile.client"

    .line 9
    .line 10
    iget-boolean p1, p1, Lcom/amazonaws/mobile/client/AWSMobileClient;->z:Z

    .line 11
    .line 12
    invoke-direct {v0, v1, v2, p1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->a:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 16
    .line 17
    new-instance p1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->a:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->o(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    iget-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 27
    .line 28
    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 33
    .line 34
    .line 35
    throw p1
.end method

.method public b(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/String;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->a:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 31
    .line 32
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v2, v1, v3}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->o(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :goto_1
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 61
    .line 62
    .line 63
    throw p1
.end method

.method public varargs c([Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    array-length v1, p1

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    if-ge v2, v1, :cond_0

    .line 18
    .line 19
    aget-object v3, p1, v2

    .line 20
    .line 21
    iget-object v4, p0, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->a:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 22
    .line 23
    invoke-virtual {v4, v3}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 42
    .line 43
    .line 44
    return-object v0

    .line 45
    :goto_1
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 52
    .line 53
    .line 54
    throw p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->a:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 23
    .line 24
    .line 25
    return-object p1

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClientStore;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 34
    .line 35
    .line 36
    throw p1
.end method
