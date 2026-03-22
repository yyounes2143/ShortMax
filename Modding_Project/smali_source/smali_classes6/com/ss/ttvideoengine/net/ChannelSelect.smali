.class public Lcom/ss/ttvideoengine/net/ChannelSelect;
.super Ljava/lang/Object;
.source "ChannelSelect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;
    }
.end annotation


# static fields
.field private static volatile sInstance:Lcom/ss/ttvideoengine/net/ChannelSelect;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final mChannelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelSelected:Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/net/ChannelSelect;->mChannelMap:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method

.method public static getInstance()Lcom/ss/ttvideoengine/net/ChannelSelect;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/net/ChannelSelect;->sInstance:Lcom/ss/ttvideoengine/net/ChannelSelect;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/ss/ttvideoengine/net/ChannelSelect;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/ss/ttvideoengine/net/ChannelSelect;->sInstance:Lcom/ss/ttvideoengine/net/ChannelSelect;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/ss/ttvideoengine/net/ChannelSelect;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/ss/ttvideoengine/net/ChannelSelect;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/ss/ttvideoengine/net/ChannelSelect;->sInstance:Lcom/ss/ttvideoengine/net/ChannelSelect;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/ss/ttvideoengine/net/ChannelSelect;->sInstance:Lcom/ss/ttvideoengine/net/ChannelSelect;

    .line 27
    .line 28
    return-object v0
.end method


# virtual methods
.method public groupByApiVersionLocked(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;",
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
    const-class v1, Lcom/ss/ttvideoengine/net/ChannelSelect;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/ss/ttvideoengine/net/ChannelSelect;->mChannelMap:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Ljava/util/Map$Entry;

    .line 30
    .line 31
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;

    .line 36
    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    invoke-static {v4}, Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;->access$100(Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;)I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-ne v4, p1, :cond_0

    .line 44
    .line 45
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    monitor-exit v1

    .line 56
    return-object v0

    .line 57
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p1
.end method

.method public selectNext(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const-class v0, Lcom/ss/ttvideoengine/net/ChannelSelect;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/net/ChannelSelect;->groupByApiVersionLocked(I)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-object v2

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_2

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/net/ChannelSelect;->mChannelSelected:Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;

    .line 29
    .line 30
    iput-object v1, p0, Lcom/ss/ttvideoengine/net/ChannelSelect;->mChannelSelected:Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;

    .line 31
    .line 32
    :cond_1
    if-nez p2, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Lcom/ss/ttvideoengine/net/ChannelSelect;->mChannelSelected:Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;->access$000(Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    monitor-exit v0

    .line 41
    return-object p1

    .line 42
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    add-int/lit8 v1, v1, -0x1

    .line 47
    .line 48
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;

    .line 53
    .line 54
    invoke-static {v1}, Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;->access$000(Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;

    .line 69
    .line 70
    invoke-static {v1}, Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;->access$000(Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    :cond_3
    if-nez v2, :cond_5

    .line 75
    .line 76
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    add-int/lit8 v1, v1, -0x1

    .line 81
    .line 82
    if-ge v3, v1, :cond_5

    .line 83
    .line 84
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;

    .line 89
    .line 90
    invoke-static {v1}, Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;->access$000(Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_4

    .line 99
    .line 100
    add-int/lit8 v3, v3, 0x1

    .line 101
    .line 102
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    check-cast p1, Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;

    .line 107
    .line 108
    invoke-static {p1}, Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;->access$000(Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    goto :goto_1

    .line 113
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_5
    :goto_1
    if-nez v2, :cond_6

    .line 117
    .line 118
    iget-object p1, p0, Lcom/ss/ttvideoengine/net/ChannelSelect;->mChannelSelected:Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;

    .line 119
    .line 120
    invoke-static {p1}, Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;->access$000(Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    :cond_6
    monitor-exit v0

    .line 125
    return-object v2

    .line 126
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    throw p1
.end method

.method public setChannelSelected(ILjava/lang/String;)V
    .locals 3

    .line 1
    const-class v0, Lcom/ss/ttvideoengine/net/ChannelSelect;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    :try_start_0
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/net/ChannelSelect;->mChannelSelected:Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :cond_1
    invoke-static {v1}, Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;->access$000(Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :cond_2
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/net/ChannelSelect;->groupByApiVersionLocked(I)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_4

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;

    .line 47
    .line 48
    invoke-static {v1}, Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;->access$000(Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_3

    .line 57
    .line 58
    iput-object v1, p0, Lcom/ss/ttvideoengine/net/ChannelSelect;->mChannelSelected:Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;

    .line 59
    .line 60
    :cond_4
    monitor-exit v0

    .line 61
    return-void

    .line 62
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p1
.end method

.method public setHostList(ILorg/json/JSONArray;)V
    .locals 5

    .line 1
    invoke-static {p2}, Lcom/ss/ttvideoengine/utils/TTHelper;->isEmpty(Lorg/json/JSONArray;)Z

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
    const-class v0, Lcom/ss/ttvideoengine/net/ChannelSelect;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/net/ChannelSelect;->mChannelMap:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ge v1, v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object v3, p0, Lcom/ss/ttvideoengine/net/ChannelSelect;->mChannelMap:Ljava/util/Map;

    .line 28
    .line 29
    new-instance v4, Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;

    .line 30
    .line 31
    invoke-direct {v4, p1, v2}, Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;-><init>(ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/net/ChannelSelect;->mChannelSelected:Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    iget-object p2, p0, Lcom/ss/ttvideoengine/net/ChannelSelect;->mChannelMap:Ljava/util/Map;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;->access$000(Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;

    .line 57
    .line 58
    if-nez p1, :cond_2

    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/ss/ttvideoengine/net/ChannelSelect;->mChannelSelected:Lcom/ss/ttvideoengine/net/ChannelSelect$Channel;

    .line 62
    .line 63
    :cond_2
    monitor-exit v0

    .line 64
    return-void

    .line 65
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p1
.end method
