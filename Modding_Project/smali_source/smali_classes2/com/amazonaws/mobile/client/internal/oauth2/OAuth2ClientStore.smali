.class Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;
.super Ljava/lang/Object;
.source "OAuth2Client.java"


# instance fields
.field private final a:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

.field b:Ljava/util/concurrent/locks/ReadWriteLock;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->b:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 10
    .line 11
    new-instance v0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->c:Landroid/content/Context;

    .line 14
    .line 15
    const-string v2, "com.amazonaws.mobile.client.oauth2"

    .line 16
    .line 17
    iget-boolean p1, p1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->e:Z

    .line 18
    .line 19
    invoke-direct {v0, v1, v2, p1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->a:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->b:Ljava/util/concurrent/locks/ReadWriteLock;

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
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->a:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

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
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->b:Ljava/util/concurrent/locks/ReadWriteLock;

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
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->b:Ljava/util/concurrent/locks/ReadWriteLock;

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

.method public b(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->a:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->r(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
