.class public abstract Lcom/bytedance/applog/log/AbstractAppLogLogger;
.super Ljava/lang/Object;
.source "AbstractAppLogLogger.java"

# interfaces
.implements Lcom/bytedance/applog/log/IAppLogLogger;


# static fields
.field private static final CHAR_PLACEHOLDER:C = ' '

.field private static final loggerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/applog/log/IAppLogLogger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appId:Ljava/lang/String;

.field private final loggerTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bytedance/applog/log/AbstractAppLogLogger;->loggerMap:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/applog/log/AbstractAppLogLogger;->loggerTags:Ljava/util/List;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "logger@"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static getLogger(Ljava/lang/String;)Lcom/bytedance/applog/log/IAppLogLogger;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/applog/log/AbstractAppLogLogger;->loggerMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/bytedance/applog/log/IAppLogLogger;

    .line 8
    .line 9
    return-object p0
.end method

.method private toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string p1, ""

    .line 9
    .line 10
    :goto_0
    return-object p1
.end method


# virtual methods
.method protected varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_4

    .line 7
    .line 8
    array-length v1, p2

    .line 9
    if-eqz v1, :cond_4

    .line 10
    .line 11
    const-string v1, "{}"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto :goto_3

    .line 20
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x0

    .line 25
    move v3, v2

    .line 26
    :goto_0
    if-ge v2, v1, :cond_5

    .line 27
    .line 28
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    add-int/lit8 v5, v1, -0x1

    .line 33
    .line 34
    if-ge v2, v5, :cond_1

    .line 35
    .line 36
    add-int/lit8 v5, v2, 0x1

    .line 37
    .line 38
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/16 v5, 0x20

    .line 44
    .line 45
    :goto_1
    const/16 v6, 0x7b

    .line 46
    .line 47
    if-ne v4, v6, :cond_3

    .line 48
    .line 49
    const/16 v6, 0x7d

    .line 50
    .line 51
    if-ne v5, v6, :cond_3

    .line 52
    .line 53
    array-length v4, p2

    .line 54
    if-ge v3, v4, :cond_2

    .line 55
    .line 56
    add-int/lit8 v4, v3, 0x1

    .line 57
    .line 58
    aget-object v3, p2, v3

    .line 59
    .line 60
    invoke-direct {p0, v3}, Lcom/bytedance/applog/log/AbstractAppLogLogger;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    move v3, v4

    .line 68
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    :goto_3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :catchall_0
    return-object p1
.end method

.method protected getTags(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/bytedance/applog/log/AbstractAppLogLogger;->loggerTags:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/bytedance/applog/log/AbstractAppLogLogger;->loggerTags:Ljava/util/List;

    .line 24
    .line 25
    return-object p1
.end method

.method protected varargs process(IILjava/util/List;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/bytedance/applog/log/LogProcessorHolder;->noAnyProcessor()Z

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
    invoke-static {}, Lcom/bytedance/applog/log/LogInfo;->builder()Lcom/bytedance/applog/log/LogInfoBuilder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/bytedance/applog/log/AbstractAppLogLogger;->appId:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/bytedance/applog/log/LogInfoBuilder;->appId(Ljava/lang/String;)Lcom/bytedance/applog/log/LogInfoBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p1}, Lcom/bytedance/applog/log/LogInfoBuilder;->category(I)Lcom/bytedance/applog/log/LogInfoBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, p2}, Lcom/bytedance/applog/log/LogInfoBuilder;->level(I)Lcom/bytedance/applog/log/LogInfoBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p1, p2}, Lcom/bytedance/applog/log/LogInfoBuilder;->thread(Ljava/lang/String;)Lcom/bytedance/applog/log/LogInfoBuilder;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1, p4}, Lcom/bytedance/applog/log/LogInfoBuilder;->throwable(Ljava/lang/Throwable;)Lcom/bytedance/applog/log/LogInfoBuilder;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0, p3}, Lcom/bytedance/applog/log/AbstractAppLogLogger;->getTags(Ljava/util/List;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p1, p2}, Lcom/bytedance/applog/log/LogInfoBuilder;->tags(Ljava/util/List;)Lcom/bytedance/applog/log/LogInfoBuilder;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p0, p5, p6}, Lcom/bytedance/applog/log/AbstractAppLogLogger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p1, p2}, Lcom/bytedance/applog/log/LogInfoBuilder;->message(Ljava/lang/String;)Lcom/bytedance/applog/log/LogInfoBuilder;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lcom/bytedance/applog/log/LogInfoBuilder;->build()Lcom/bytedance/applog/log/LogInfo;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p1}, Lcom/bytedance/applog/log/LogProcessorHolder;->commonProcess(Lcom/bytedance/applog/log/LogInfo;)V

    .line 63
    .line 64
    .line 65
    iget-object p2, p0, Lcom/bytedance/applog/log/AbstractAppLogLogger;->appId:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {p2}, Lcom/bytedance/applog/log/LogProcessorHolder;->getAppProcessor(Ljava/lang/String;)Lcom/bytedance/applog/log/ILogProcessor;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    if-eqz p2, :cond_1

    .line 72
    .line 73
    invoke-interface {p2, p1}, Lcom/bytedance/applog/log/ILogProcessor;->onLog(Lcom/bytedance/applog/log/LogInfo;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/log/AbstractAppLogLogger;->appId:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v0, Lcom/bytedance/applog/log/AbstractAppLogLogger;->loggerMap:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    const-string v0, "Current logger bind to appId {}"

    .line 9
    .line 10
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p0, v0, p1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
