.class public Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;
.super Ljava/lang/Object;
.source "ContextDataAggregator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator$InstanceHolder;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/cognito/clientcontext/datacollection/DataCollector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-direct {p0}, Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;->a:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;-><init>()V

    return-void
.end method

.method private b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/cognito/clientcontext/datacollection/DataCollector;",
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
    new-instance v1, Lcom/amazonaws/cognito/clientcontext/datacollection/ApplicationDataCollector;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/amazonaws/cognito/clientcontext/datacollection/ApplicationDataCollector;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/amazonaws/cognito/clientcontext/datacollection/BuildDataCollector;

    .line 15
    .line 16
    invoke-direct {v1}, Lcom/amazonaws/cognito/clientcontext/datacollection/BuildDataCollector;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    new-instance v1, Lcom/amazonaws/cognito/clientcontext/datacollection/DeviceDataCollector;

    .line 23
    .line 24
    invoke-direct {v1}, Lcom/amazonaws/cognito/clientcontext/datacollection/DeviceDataCollector;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public static c()Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;
    .locals 1

    .line 1
    invoke-static {}, Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator$InstanceHolder;->a()Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private d(Ljava/util/Map;)V
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

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/util/Map$Entry;

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/amazonaws/cognito/clientcontext/datacollection/DataCollector;

    .line 23
    .line 24
    invoke-virtual {v2, p1}, Lcom/amazonaws/cognito/clientcontext/datacollection/DataCollector;->a(Landroid/content/Context;)Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-direct {p0, v0}, Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;->d(Ljava/util/Map;)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method
