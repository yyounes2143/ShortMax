.class public final Lcom/startshorts/androidplayer/bean/api/ApiConfig;
.super Ljava/lang/Object;
.source "ApiConfig.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private baseUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private cache:Lokhttp3/Cache;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private callAdapterFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfu/e$a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private connectTimeout:J

.field private connectionPool:Lokhttp3/ConnectionPool;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private converterFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfu/h$a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private dns:Lokhttp3/Dns;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isAttributionService:Z

.field private networkInterceptor:Lokhttp3/Interceptor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private okHttpEventListener:Lokhttp3/EventListener$Factory;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private okHttpInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private readTimeout:J

.field private writeTimeout:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->connectTimeout:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->readTimeout:J

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->writeTimeout:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final addCallAdapter(Lfu/e$a;)Lcom/startshorts/androidplayer/bean/api/ApiConfig;
    .locals 1
    .param p1    # Lfu/e$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "factory"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->callAdapterFactories:Ljava/util/List;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->callAdapterFactories:Ljava/util/List;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->callAdapterFactories:Ljava/util/List;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    :cond_1
    return-object p0
.end method

.method public final addConverter(Lfu/h$a;)Lcom/startshorts/androidplayer/bean/api/ApiConfig;
    .locals 1
    .param p1    # Lfu/h$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "factory"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->converterFactories:Ljava/util/List;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->converterFactories:Ljava/util/List;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->converterFactories:Ljava/util/List;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    :cond_1
    return-object p0
.end method

.method public final addOkHttpInterceptor(Lokhttp3/Interceptor;)Lcom/startshorts/androidplayer/bean/api/ApiConfig;
    .locals 1
    .param p1    # Lokhttp3/Interceptor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->okHttpInterceptors:Ljava/util/List;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->okHttpInterceptors:Ljava/util/List;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->okHttpInterceptors:Ljava/util/List;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    :cond_1
    return-object p0
.end method

.method public final getBaseUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->baseUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCache()Lokhttp3/Cache;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->cache:Lokhttp3/Cache;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCallAdapterFactories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfu/e$a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->callAdapterFactories:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getConnectTimeout()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->connectTimeout:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getConnectionPool()Lokhttp3/ConnectionPool;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->connectionPool:Lokhttp3/ConnectionPool;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getConverterFactories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfu/h$a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->converterFactories:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDns()Lokhttp3/Dns;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->dns:Lokhttp3/Dns;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNetworkInterceptor()Lokhttp3/Interceptor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->networkInterceptor:Lokhttp3/Interceptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOkHttpEventListener()Lokhttp3/EventListener$Factory;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->okHttpEventListener:Lokhttp3/EventListener$Factory;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOkHttpInterceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->okHttpInterceptors:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getReadTimeout()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->readTimeout:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getWriteTimeout()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->writeTimeout:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final isAttributionService()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->isAttributionService:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setAttributionService(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->isAttributionService:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setBaseUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->baseUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setCache(Lokhttp3/Cache;)V
    .locals 0
    .param p1    # Lokhttp3/Cache;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->cache:Lokhttp3/Cache;

    .line 2
    .line 3
    return-void
.end method

.method public final setConnectTimeout(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->connectTimeout:J

    .line 2
    .line 3
    return-void
.end method

.method public final setConnectionPool(Lokhttp3/ConnectionPool;)V
    .locals 0
    .param p1    # Lokhttp3/ConnectionPool;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->connectionPool:Lokhttp3/ConnectionPool;

    .line 2
    .line 3
    return-void
.end method

.method public final setDns(Lokhttp3/Dns;)V
    .locals 0
    .param p1    # Lokhttp3/Dns;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->dns:Lokhttp3/Dns;

    .line 2
    .line 3
    return-void
.end method

.method public final setNetworkInterceptor(Lokhttp3/Interceptor;)V
    .locals 0
    .param p1    # Lokhttp3/Interceptor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->networkInterceptor:Lokhttp3/Interceptor;

    .line 2
    .line 3
    return-void
.end method

.method public final setOkHttpEventListener(Lokhttp3/EventListener$Factory;)V
    .locals 0
    .param p1    # Lokhttp3/EventListener$Factory;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->okHttpEventListener:Lokhttp3/EventListener$Factory;

    .line 2
    .line 3
    return-void
.end method

.method public final setReadTimeout(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->readTimeout:J

    .line 2
    .line 3
    return-void
.end method

.method public final setWriteTimeout(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->writeTimeout:J

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ApiConfig(baseUrl="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->baseUrl:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", connectTimeout="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->connectTimeout:J

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", readTimeout="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->readTimeout:J

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", writeTimeout="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->writeTimeout:J

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", okHttpEventListener="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->okHttpEventListener:Lokhttp3/EventListener$Factory;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", okHttpInterceptors="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->okHttpInterceptors:Ljava/util/List;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", networkInterceptor="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->networkInterceptor:Lokhttp3/Interceptor;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", converterFactories="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->converterFactories:Ljava/util/List;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", callAdapterFactories="

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->callAdapterFactories:Ljava/util/List;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", connectionPool="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->connectionPool:Lokhttp3/ConnectionPool;

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ", dns="

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->dns:Lokhttp3/Dns;

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const/16 v1, 0x29

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    return-object v0
.end method
