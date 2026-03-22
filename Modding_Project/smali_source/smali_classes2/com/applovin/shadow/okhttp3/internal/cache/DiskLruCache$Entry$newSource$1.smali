.class public final Lcom/applovin/shadow/okhttp3/internal/cache/DiskLruCache$Entry$newSource$1;
.super Lcom/applovin/shadow/okio/ForwardingSource;
.source "DiskLruCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/shadow/okhttp3/internal/cache/DiskLruCache$Entry;->newSource(I)Lcom/applovin/shadow/okio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private closed:Z

.field final synthetic this$0:Lcom/applovin/shadow/okhttp3/internal/cache/DiskLruCache;

.field final synthetic this$1:Lcom/applovin/shadow/okhttp3/internal/cache/DiskLruCache$Entry;


# direct methods
.method constructor <init>(Lcom/applovin/shadow/okio/Source;Lcom/applovin/shadow/okhttp3/internal/cache/DiskLruCache;Lcom/applovin/shadow/okhttp3/internal/cache/DiskLruCache$Entry;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/applovin/shadow/okhttp3/internal/cache/DiskLruCache$Entry$newSource$1;->this$0:Lcom/applovin/shadow/okhttp3/internal/cache/DiskLruCache;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/applovin/shadow/okhttp3/internal/cache/DiskLruCache$Entry$newSource$1;->this$1:Lcom/applovin/shadow/okhttp3/internal/cache/DiskLruCache$Entry;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/applovin/shadow/okio/ForwardingSource;-><init>(Lcom/applovin/shadow/okio/Source;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/applovin/shadow/okio/ForwardingSource;->close()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/applovin/shadow/okhttp3/internal/cache/DiskLruCache$Entry$newSource$1;->closed:Z

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/applovin/shadow/okhttp3/internal/cache/DiskLruCache$Entry$newSource$1;->closed:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/cache/DiskLruCache$Entry$newSource$1;->this$0:Lcom/applovin/shadow/okhttp3/internal/cache/DiskLruCache;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/applovin/shadow/okhttp3/internal/cache/DiskLruCache$Entry$newSource$1;->this$1:Lcom/applovin/shadow/okhttp3/internal/cache/DiskLruCache$Entry;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    invoke-virtual {v1}, Lcom/applovin/shadow/okhttp3/internal/cache/DiskLruCache$Entry;->getLockingSourceCount$okhttp()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    add-int/lit8 v2, v2, -0x1

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/applovin/shadow/okhttp3/internal/cache/DiskLruCache$Entry;->setLockingSourceCount$okhttp(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/applovin/shadow/okhttp3/internal/cache/DiskLruCache$Entry;->getLockingSourceCount$okhttp()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/applovin/shadow/okhttp3/internal/cache/DiskLruCache$Entry;->getZombie$okhttp()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/applovin/shadow/okhttp3/internal/cache/DiskLruCache;->removeEntry$okhttp(Lcom/applovin/shadow/okhttp3/internal/cache/DiskLruCache$Entry;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v1

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    monitor-exit v0

    .line 46
    goto :goto_2

    .line 47
    :goto_1
    monitor-exit v0

    .line 48
    throw v1

    .line 49
    :cond_1
    :goto_2
    return-void
.end method
