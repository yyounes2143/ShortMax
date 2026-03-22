.class public Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;
.super Ljava/lang/Object;
.source "InitializationNotificationCenter.java"

# interfaces
.implements Lcom/unity3d/services/core/configuration/IInitializationNotificationCenter;


# static fields
.field private static instance:Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;


# instance fields
.field private _sdkListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/unity3d/services/core/configuration/IInitializationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;->_sdkListeners:Ljava/util/HashMap;

    .line 10
    .line 11
    return-void
.end method

.method public static getInstance()Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;
    .locals 1

    .line 1
    sget-object v0, Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;->instance:Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;->instance:Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;->instance:Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;

    .line 13
    .line 14
    return-object v0
.end method

.method private removeListener(Ljava/lang/Integer;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;->_sdkListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/unity3d/services/core/configuration/IInitializationListener;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;->_sdkListeners:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;->_sdkListeners:Ljava/util/HashMap;

    .line 7
    .line 8
    new-instance v2, Ljava/lang/Integer;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p1
.end method

.method public removeListener(Lcom/unity3d/services/core/configuration/IInitializationListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;->_sdkListeners:Ljava/util/HashMap;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v1}, Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;->removeListener(Ljava/lang/Integer;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 3
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public triggerOnSdkInitializationFailed(Ljava/lang/String;Lcom/unity3d/services/core/configuration/ErrorState;I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;->_sdkListeners:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v2, "SDK Failed to Initialize due to "

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;->_sdkListeners:Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    move-object v5, v3

    .line 50
    check-cast v5, Ljava/util/Map$Entry;

    .line 51
    .line 52
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    if-eqz v3, :cond_0

    .line 57
    .line 58
    new-instance v9, Lcom/unity3d/services/core/configuration/InitializationNotificationCenter$2;

    .line 59
    .line 60
    move-object v3, v9

    .line 61
    move-object v4, p0

    .line 62
    move-object v6, p1

    .line 63
    move-object v7, p2

    .line 64
    move v8, p3

    .line 65
    invoke-direct/range {v3 .. v8}, Lcom/unity3d/services/core/configuration/InitializationNotificationCenter$2;-><init>(Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;Ljava/util/Map$Entry;Ljava/lang/String;Lcom/unity3d/services/core/configuration/ErrorState;I)V

    .line 66
    .line 67
    .line 68
    invoke-static {v9}, Lcom/unity3d/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    goto :goto_2

    .line 74
    :cond_0
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Ljava/lang/Integer;

    .line 79
    .line 80
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    if-eqz p2, :cond_2

    .line 93
    .line 94
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    check-cast p2, Ljava/lang/Integer;

    .line 99
    .line 100
    iget-object p3, p0, Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;->_sdkListeners:Ljava/util/HashMap;

    .line 101
    .line 102
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    monitor-exit v0

    .line 107
    return-void

    .line 108
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    throw p1
.end method

.method public triggerOnSdkInitialized()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;->_sdkListeners:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;->_sdkListeners:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

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
    if-eqz v4, :cond_0

    .line 36
    .line 37
    new-instance v4, Lcom/unity3d/services/core/configuration/InitializationNotificationCenter$1;

    .line 38
    .line 39
    invoke-direct {v4, p0, v3}, Lcom/unity3d/services/core/configuration/InitializationNotificationCenter$1;-><init>(Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;Ljava/util/Map$Entry;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v4}, Lcom/unity3d/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception v1

    .line 47
    goto :goto_2

    .line 48
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Ljava/lang/Integer;

    .line 53
    .line 54
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Ljava/lang/Integer;

    .line 73
    .line 74
    iget-object v3, p0, Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;->_sdkListeners:Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    monitor-exit v0

    .line 81
    return-void

    .line 82
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    throw v1
.end method
