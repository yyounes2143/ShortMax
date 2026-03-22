.class public Lcom/ss/mediakit/net/AVMDLHTTPNetwork;
.super Lcom/ss/mediakit/net/AVMDLNetClient;
.source "AVMDLHTTPNetwork.java"


# static fields
.field private static final HTTP_TIME_OUT:I = 0xa

.field public static final JSON:Lokhttp3/MediaType;

.field private static mClient:Lokhttp3/OkHttpClient;


# instance fields
.field private mCall:Lokhttp3/Call;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "application/json"

    .line 2
    .line 3
    invoke-static {v0}, Lokhttp3/MediaType;->g(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/ss/mediakit/net/AVMDLHTTPNetwork;->JSON:Lokhttp3/MediaType;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/mediakit/net/AVMDLNetClient;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/mediakit/net/AVMDLHTTPNetwork;->mCall:Lokhttp3/Call;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/ss/mediakit/net/AVMDLHTTPNetwork;->mCall:Lokhttp3/Call;

    .line 12
    .line 13
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public startTask(Ljava/lang/String;Ljava/util/Map;Lcom/ss/mediakit/net/AVMDLNetClient$CompletionListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ss/mediakit/net/AVMDLNetClient$CompletionListener;",
            ")V"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/ss/mediakit/net/AVMDLHTTPNetwork;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/ss/mediakit/net/AVMDLHTTPNetwork;->mClient:Lokhttp3/OkHttpClient;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->z()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    .line 4
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->f(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->Y(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->V(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->c()Lokhttp3/OkHttpClient;

    move-result-object v1

    sput-object v1, Lcom/ss/mediakit/net/AVMDLHTTPNetwork;->mClient:Lokhttp3/OkHttpClient;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 8
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->k(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 10
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 11
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 12
    invoke-virtual {p1, v1, v2}, Lokhttp3/Request$Builder;->e(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->b()Lokhttp3/Request;

    move-result-object p1

    .line 14
    sget-object p2, Lcom/ss/mediakit/net/AVMDLHTTPNetwork;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->a(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/mediakit/net/AVMDLHTTPNetwork;->mCall:Lokhttp3/Call;

    .line 15
    new-instance p2, Lcom/ss/mediakit/net/AVMDLHTTPNetwork$1;

    invoke-direct {p2, p0, p3}, Lcom/ss/mediakit/net/AVMDLHTTPNetwork$1;-><init>(Lcom/ss/mediakit/net/AVMDLHTTPNetwork;Lcom/ss/mediakit/net/AVMDLNetClient$CompletionListener;)V

    invoke-interface {p1, p2}, Lokhttp3/Call;->o0(Lokhttp3/Callback;)V

    return-void

    .line 16
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public startTask(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;ILcom/ss/mediakit/net/AVMDLNetClient$CompletionListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "I",
            "Lcom/ss/mediakit/net/AVMDLNetClient$CompletionListener;",
            ")V"
        }
    .end annotation

    .line 17
    const-class v0, Lcom/ss/mediakit/net/AVMDLHTTPNetwork;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lcom/ss/mediakit/net/AVMDLHTTPNetwork;->mClient:Lokhttp3/OkHttpClient;

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->z()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    .line 20
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->f(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 21
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->Y(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 22
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->V(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->c()Lokhttp3/OkHttpClient;

    move-result-object v1

    sput-object v1, Lcom/ss/mediakit/net/AVMDLHTTPNetwork;->mClient:Lokhttp3/OkHttpClient;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 24
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->k(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 26
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 27
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 28
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 29
    invoke-virtual {p1, v1, v2}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    if-ne p4, p2, :cond_2

    .line 30
    sget-object p2, Lcom/ss/mediakit/net/AVMDLHTTPNetwork;->JSON:Lokhttp3/MediaType;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p2

    .line 31
    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->h(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 32
    :cond_2
    sget-object p2, Lcom/ss/mediakit/net/AVMDLHTTPNetwork;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->b()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->a(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/mediakit/net/AVMDLHTTPNetwork;->mCall:Lokhttp3/Call;

    .line 33
    new-instance p2, Lcom/ss/mediakit/net/AVMDLHTTPNetwork$2;

    invoke-direct {p2, p0, p5}, Lcom/ss/mediakit/net/AVMDLHTTPNetwork$2;-><init>(Lcom/ss/mediakit/net/AVMDLHTTPNetwork;Lcom/ss/mediakit/net/AVMDLNetClient$CompletionListener;)V

    invoke-interface {p1, p2}, Lokhttp3/Call;->o0(Lokhttp3/Callback;)V

    return-void

    .line 34
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
