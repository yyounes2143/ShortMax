.class public final Lcom/applovin/shadow/okhttp3/Cache$CacheResponseBody$1;
.super Lcom/applovin/shadow/okio/ForwardingSource;
.source "Cache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/shadow/okhttp3/Cache$CacheResponseBody;-><init>(Lcom/applovin/shadow/okhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applovin/shadow/okhttp3/Cache$CacheResponseBody;


# direct methods
.method constructor <init>(Lcom/applovin/shadow/okio/Source;Lcom/applovin/shadow/okhttp3/Cache$CacheResponseBody;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/applovin/shadow/okhttp3/Cache$CacheResponseBody$1;->this$0:Lcom/applovin/shadow/okhttp3/Cache$CacheResponseBody;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/applovin/shadow/okio/ForwardingSource;-><init>(Lcom/applovin/shadow/okio/Source;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/Cache$CacheResponseBody$1;->this$0:Lcom/applovin/shadow/okhttp3/Cache$CacheResponseBody;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/applovin/shadow/okhttp3/Cache$CacheResponseBody;->getSnapshot()Lcom/applovin/shadow/okhttp3/internal/cache/DiskLruCache$Snapshot;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/applovin/shadow/okhttp3/internal/cache/DiskLruCache$Snapshot;->close()V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lcom/applovin/shadow/okio/ForwardingSource;->close()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
