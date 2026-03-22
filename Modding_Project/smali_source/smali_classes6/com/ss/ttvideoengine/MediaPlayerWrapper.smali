.class public Lcom/ss/ttvideoengine/MediaPlayerWrapper;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"

# interfaces
.implements Lcom/ss/ttm/player/MediaPlayer;


# static fields
.field private static final EXO_PLAYER_CLIENT_CLASS_NAME:Ljava/lang/String; = "com.ss.ttexo.ExoPlayerClient"

.field private static final OWN_LITE_PLAYER_CLASS_NAME:Ljava/lang/String; = "com.ss.ttmplayer.player.TTPlayerClient"

.field private static final OWN_PLAYER_CLASS_NAME:Ljava/lang/String; = "com.ss.ttm.player.TTPlayerClient"

.field private static final OWN_PLUGIN_PLAYER_CLASS_NAME:Ljava/lang/String; = "com.ss.ttmplugin.player.TTPlayerClient"

.field private static final OWN_PLUGIN_PLAYER_VERSION_CLASS_NAME:Ljava/lang/String; = "com.ss.ttmplugin.player.TTVersion"

.field public static final TAG:Ljava/lang/String; = "MediaPlayerWrapper"

.field private static final sErrorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private static sHasLoadPlayerClass:Z


# instance fields
.field private mClient:Lcom/ss/ttm/player/MediaPlayerClient;

.field private mExceptionStr:Ljava/lang/String;

.field private mHasException:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->sErrorList:Ljava/util/List;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    sput-boolean v0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->sHasLoadPlayerClass:Z

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mHasException:Z

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mExceptionStr:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public static create(Landroid/content/Context;ILjava/util/HashMap;)Lcom/ss/ttm/player/MediaPlayer;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/ss/ttm/player/MediaPlayer;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;

    invoke-direct {v0}, Lcom/ss/ttvideoengine/MediaPlayerWrapper;-><init>()V

    .line 2
    invoke-static {}, Lcom/ss/ttvideoengine/TTVideoEngineConfig;->getPlayerCreateErrorListener()Lcom/ss/ttvideoengine/PlayerCreateErrorListener;

    move-result-object v1

    .line 3
    const-class v2, Lcom/ss/ttvideoengine/MediaPlayerWrapper;

    monitor-enter v2

    const/16 v3, 0x1a

    const/16 v4, 0xb

    const/4 v5, 0x1

    if-eqz p2, :cond_0

    .line 4
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_0

    .line 5
    invoke-static {p0, v0}, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->createExoClient(Landroid/content/Context;Lcom/ss/ttvideoengine/MediaPlayerWrapper;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_6

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_0
    const/4 v6, 0x3

    const/16 v7, 0xa

    const/4 v8, 0x7

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-eqz p2, :cond_2

    const/16 v11, 0x64

    .line 6
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v5, :cond_2

    .line 7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-nez v11, :cond_2

    .line 8
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v5, :cond_1

    .line 9
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v5, :cond_1

    .line 10
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lt v7, v6, :cond_1

    .line 11
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_5

    .line 13
    const-string p1, "MediaPlayerWrapper"

    const-string v6, "crash or timeout, return."

    invoke-static {p1, v6}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 14
    :cond_2
    invoke-static {}, Lcom/ss/ttm/player/TTPlayerConfiger;->isOnTTPlayer()Z

    move-result v11

    if-nez v11, :cond_5

    .line 15
    invoke-static {v9, v10}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(IZ)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 16
    invoke-static {v8, v10}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(II)I

    move-result v8

    if-eq v8, v5, :cond_3

    .line 17
    invoke-static {v7, v10}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(II)I

    move-result v7

    if-lt v7, v6, :cond_4

    .line 18
    :cond_3
    invoke-static {v9, v10}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(IZ)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    .line 19
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_5

    .line 20
    const-string p1, "MediaPlayerWrapper"

    const-string v6, "not on ttplayer, return."

    invoke-static {p1, v6}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 21
    :cond_5
    :goto_0
    invoke-static {}, Lcom/ss/ttvideoengine/TTVideoEngine;->isForceUseLitePlayer()Z

    move-result v6

    if-nez v6, :cond_c

    .line 22
    invoke-static {}, Lcom/ss/ttvideoengine/TTVideoEngine;->isForceUsePluginPlayer()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_6

    .line 23
    :try_start_1
    const-string v6, "com.ss.ttmplugin.player.TTPlayerClient"

    const/16 v7, 0xc9

    invoke-static {v7, v6}, Lcom/ss/ttvideoengine/utils/TTHelper;->getClzUsingPluginLoader(ILjava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 24
    const-string v7, "create"

    const-class v8, Lcom/ss/ttm/player/MediaPlayer;

    const-class v9, Landroid/content/Context;

    filled-new-array {v8, v9}, [Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 25
    invoke-virtual {v7, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 26
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object v8

    .line 27
    invoke-virtual {v7, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ss/ttm/player/MediaPlayerClient;

    iput-object v6, v0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v6

    .line 28
    :try_start_2
    const-string v7, "MediaPlayerWrapper"

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iput-boolean v5, v0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mHasException:Z

    .line 30
    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mExceptionStr:Ljava/lang/String;

    .line 31
    sget-object v7, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->sErrorList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_6
    :goto_1
    iget-object v6, v0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_7

    goto/16 :goto_6

    :cond_7
    const/16 v6, 0xc8

    .line 33
    :try_start_3
    const-string v7, "com.ss.ttm.player.TTPlayerClient"

    invoke-static {v6, v7}, Lcom/ss/ttvideoengine/utils/TTHelper;->getClzUsingPluginLoader(ILjava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 34
    const-string v8, "create"

    const-class v9, Lcom/ss/ttm/player/MediaPlayer;

    const-class v10, Landroid/content/Context;

    const-class v11, Ljava/util/HashMap;

    filled-new-array {v9, v10, v11}, [Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 35
    invoke-virtual {v8, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 36
    filled-new-array {v0, p0, p2}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ss/ttm/player/MediaPlayerClient;

    iput-object v7, v0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 37
    sput-boolean v5, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->sHasLoadPlayerClass:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v7

    .line 38
    :try_start_4
    const-string v8, "MediaPlayerWrapper"

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iput-boolean v5, v0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mHasException:Z

    .line 40
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mExceptionStr:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mExceptionStr:Ljava/lang/String;

    .line 41
    instance-of v8, v7, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v8, :cond_8

    .line 42
    check-cast v7, Ljava/lang/reflect/InvocationTargetException;

    .line 43
    invoke-virtual {v7}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 44
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mExceptionStr:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mExceptionStr:Ljava/lang/String;

    .line 45
    sget-object v8, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->sErrorList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    const-string v8, "MediaPlayerWrapper"

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 47
    :cond_8
    sget-object v8, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->sErrorList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_9
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mExceptionStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mExceptionStr:Ljava/lang/String;

    .line 49
    :goto_3
    iget-object v7, v0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v7, :cond_c

    .line 50
    :try_start_5
    const-string v7, "com.ss.ttm.player.TTPlayerClient"

    invoke-static {v6, v7}, Lcom/ss/ttvideoengine/utils/TTHelper;->getClzUsingPluginLoader(ILjava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 51
    const-string v7, "create"

    const-class v8, Lcom/ss/ttm/player/MediaPlayer;

    const-class v9, Landroid/content/Context;

    filled-new-array {v8, v9}, [Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 52
    invoke-virtual {v7, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 53
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object v8

    .line 54
    invoke-virtual {v7, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ss/ttm/player/MediaPlayerClient;

    iput-object v6, v0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 55
    sput-boolean v5, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->sHasLoadPlayerClass:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v6

    .line 56
    :try_start_6
    const-string v7, "MediaPlayerWrapper"

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iput-boolean v5, v0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mHasException:Z

    .line 58
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mExceptionStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mExceptionStr:Ljava/lang/String;

    .line 59
    instance-of v7, v6, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v7, :cond_a

    .line 60
    check-cast v6, Ljava/lang/reflect/InvocationTargetException;

    .line 61
    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 62
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mExceptionStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mExceptionStr:Ljava/lang/String;

    .line 63
    sget-object v7, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->sErrorList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    const-string v7, "MediaPlayerWrapper"

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 65
    :cond_a
    sget-object v7, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->sErrorList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_b
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mExceptionStr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mExceptionStr:Ljava/lang/String;

    .line 67
    :cond_c
    :goto_5
    iget-object v6, v0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v6, :cond_e

    if-ne p1, v5, :cond_d

    goto :goto_6

    .line 68
    :cond_d
    :try_start_7
    const-string p1, "com.ss.ttmplayer.player.TTPlayerClient"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 69
    const-string v6, "create"

    const-class v7, Lcom/ss/ttm/player/MediaPlayer;

    const-class v8, Landroid/content/Context;

    filled-new-array {v7, v8}, [Ljava/lang/Class;

    move-result-object v7

    .line 70
    invoke-virtual {p1, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 71
    invoke-virtual {v6, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 72
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/ttm/player/MediaPlayerClient;

    iput-object p1, v0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception p1

    .line 73
    :try_start_8
    const-string v6, "MediaPlayerWrapper"

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iput-boolean v5, v0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mHasException:Z

    .line 75
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mExceptionStr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mExceptionStr:Ljava/lang/String;

    .line 76
    sget-object v6, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->sErrorList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_e
    :goto_6
    iget-boolean p1, v0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mHasException:Z

    if-eqz p1, :cond_f

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mExceptionStr:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",sHasLoadPlayerClass:"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->sHasLoadPlayerClass:Z

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mExceptionStr:Ljava/lang/String;

    .line 79
    :cond_f
    iget-object p1, v0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    if-nez p1, :cond_10

    if-eqz p2, :cond_10

    .line 80
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_10

    .line 81
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_10

    .line 82
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_10

    .line 83
    invoke-static {v0, p0}, Lcom/ss/ttm/player/OSPlayerClient;->create(Lcom/ss/ttm/player/MediaPlayer;Landroid/content/Context;)Lcom/ss/ttm/player/OSPlayerClient;

    move-result-object p1

    iput-object p1, v0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 84
    :cond_10
    iget-object p1, v0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    if-nez p1, :cond_11

    invoke-static {p2}, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->shouldFallbackExoPlayer(Ljava/util/HashMap;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 85
    invoke-static {p0, v0}, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->createExoClient(Landroid/content/Context;Lcom/ss/ttvideoengine/MediaPlayerWrapper;)Z

    .line 86
    :cond_11
    iget-object p1, v0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    if-nez p1, :cond_12

    .line 87
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_12

    .line 88
    invoke-static {v0, p0}, Lcom/ss/ttm/player/OSPlayerClient;->create(Lcom/ss/ttm/player/MediaPlayer;Landroid/content/Context;)Lcom/ss/ttm/player/OSPlayerClient;

    move-result-object p0

    iput-object p0, v0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 89
    :cond_12
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v1, :cond_13

    .line 90
    sget-object p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->sErrorList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_13

    .line 91
    invoke-interface {v1, p0}, Lcom/ss/ttvideoengine/PlayerCreateErrorListener;->onCreatePlayerFailed(Ljava/util/List;)V

    .line 92
    :cond_13
    sget-object p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->sErrorList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-object v0

    .line 93
    :goto_7
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw p0
.end method

.method private static createExoClient(Landroid/content/Context;Lcom/ss/ttvideoengine/MediaPlayerWrapper;)Z
    .locals 6

    .line 1
    const-string v0, "lite"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/FeatureManager;->hasPermission(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    :try_start_0
    const-string v2, "com.ss.ttexo.ExoPlayerClient"

    .line 13
    .line 14
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string v3, "create"

    .line 19
    .line 20
    const-class v4, Lcom/ss/ttm/player/MediaPlayer;

    .line 21
    .line 22
    const-class v5, Landroid/content/Context;

    .line 23
    .line 24
    filled-new-array {v4, v5}, [Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 33
    .line 34
    .line 35
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {v3, v2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Lcom/ss/ttm/player/MediaPlayerClient;

    .line 44
    .line 45
    iput-object p0, p1, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    move v1, v0

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    const-string v2, "MediaPlayerWrapper"

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-static {v2, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iput-boolean v0, p1, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mHasException:Z

    .line 60
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    iget-object v2, p1, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mExceptionStr:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iput-object v0, p1, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mExceptionStr:Ljava/lang/String;

    .line 83
    .line 84
    sget-object p1, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->sErrorList:Ljava/util/List;

    .line 85
    .line 86
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    :goto_0
    return v1
.end method

.method public static getDemuxerFactory(I)J
    .locals 5

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    const-string v2, "com.ss.ttm.player.TTPlayerClient"

    .line 4
    .line 5
    const/16 v3, 0xc8

    .line 6
    .line 7
    invoke-static {v3, v2}, Lcom/ss/ttvideoengine/utils/TTHelper;->getClzUsingPluginLoader(ILjava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "getDemuxerFactory"

    .line 12
    .line 13
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 14
    .line 15
    filled-new-array {v4}, [Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const/4 v4, 0x1

    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v3, v2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    if-nez p0, :cond_0

    .line 40
    .line 41
    return-wide v0

    .line 42
    :cond_0
    check-cast p0, Ljava/lang/Long;

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 45
    .line 46
    .line 47
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    return-wide v0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    return-wide v0
.end method

.method public static getPluginVersion()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "com.ss.ttmplugin.player.TTVersion"

    .line 2
    .line 3
    const/16 v1, 0xc9

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTHelper;->getClzUsingPluginLoader(ILjava/lang/String;)Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "VERSION_NAME"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->d(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    const-string v0, ""

    .line 30
    .line 31
    :goto_0
    return-object v0
.end method

.method public static setGlobalIntOptionForKey(II)V
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "com.ss.ttm.player.TTPlayerClient"

    .line 2
    .line 3
    const/16 v1, 0xc8

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTHelper;->getClzUsingPluginLoader(ILjava/lang/String;)Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string/jumbo v1, "setGlobalIntOptionForKey"

    .line 10
    .line 11
    .line 12
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 13
    .line 14
    filled-new-array {v2, v2}, [Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method private static shouldFallbackExoPlayer(Ljava/util/HashMap;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/TTVideoEngine;->isFallbackUseExoPlayer()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    const/16 v1, 0x1b

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {p0, v1}, Lcom/ss/ttvideoengine/utils/TTHelper;->nonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    const/4 v1, 0x1

    .line 44
    if-ne p0, v1, :cond_1

    .line 45
    .line 46
    move v0, v1

    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    return v0
.end method

.method public static tryLoadPlayerPlugin()Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->sHasLoadPlayerClass:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    :try_start_0
    const-string v0, "com.ss.ttm.player.TTPlayerClient"

    .line 8
    .line 9
    const/16 v2, 0xc8

    .line 10
    .line 11
    invoke-static {v2, v0}, Lcom/ss/ttvideoengine/utils/TTHelper;->getClzUsingPluginLoader(ILjava/lang/String;)Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    sput-boolean v1, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->sHasLoadPlayerClass:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    return v1

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->d(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    return v0
.end method


# virtual methods
.method public deselectTrack(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->deselectTrack(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/MediaPlayerClient;->getCurrentPosition()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getDataSource()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/MediaPlayerClient;->getDataSource()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/MediaPlayerClient;->getDuration()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getExceptionStr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mExceptionStr:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFloatOption(IF)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/MediaPlayerClient;->getFloatOption(IF)F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    return p2
.end method

.method public getIntOption(II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/MediaPlayerClient;->getIntOption(II)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    return p2
.end method

.method public getLongOption(IJ)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/ttm/player/MediaPlayerClient;->getLongOption(IJ)J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    return-wide p1

    .line 10
    :cond_0
    return-wide p2
.end method

.method public getObjectOption(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->getObjectOption(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public getPlayerClient()Lcom/ss/ttm/player/MediaPlayerClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlayerType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/MediaPlayerClient;->getType()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getSelectedTrack(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->getSelectedTrack(I)I

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    return p1
.end method

.method public getStringOption(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->getStringOption(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method

.method public getSubtitleContent(I)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->getSubtitleContent(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public getTrackInfo()[Lcom/ss/ttm/player/MediaPlayer$TrackInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/MediaPlayerClient;->getTrackInfo()[Lcom/ss/ttm/player/MediaPlayer$TrackInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/MediaPlayerClient;->getVideoHeight()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getVideoType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/MediaPlayerClient;->getVideoType()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/MediaPlayerClient;->getVideoWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public hasException()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mHasException:Z

    .line 2
    .line 3
    return v0
.end method

.method public isLooping()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/MediaPlayerClient;->isLooping()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public isMute()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/MediaPlayerClient;->isMute()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public isOSPlayer()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    instance-of v0, v0, Lcom/ss/ttm/player/OSPlayerClient;

    .line 4
    .line 5
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/MediaPlayerClient;->isPlaying()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public mouseEvent(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/ttm/player/MediaPlayerClient;->mouseEvent(III)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/MediaPlayerClient;->pause()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/MediaPlayerClient;->prepare()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public prepareAsync()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/MediaPlayerClient;->prepareAsync()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public prevClose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/MediaPlayerClient;->prevClose()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/MediaPlayerClient;->release()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public releaseAsync()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/MediaPlayerClient;->releaseAsync()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/MediaPlayerClient;->reset()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public rotateCamera(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/MediaPlayerClient;->rotateCamera(FF)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public seekTo(II)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/MediaPlayerClient;->seekTo(II)V

    return-void
.end method

.method public selectTrack(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->selectTrack(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setABRStrategy(Lcom/ss/ttm/player/ABRStrategy;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setABRStrategy(Lcom/ss/ttm/player/ABRStrategy;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setAIBarrageInfo(Lcom/ss/ttm/player/MaskInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setAIBarrageInfo(Lcom/ss/ttm/player/MaskInfo;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setAudioProcessor(Lcom/ss/ttm/player/AudioProcessor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setAudioProcessor(Lcom/ss/ttm/player/AudioProcessor;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setCacheFile(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/MediaPlayerClient;->setCacheFile(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/MediaPlayerClient;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/ttm/player/MediaPlayerClient;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setDataSource(Lcom/ss/ttm/player/IMediaDataSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setDataSource(Lcom/ss/ttm/player/IMediaDataSource;)V

    :cond_0
    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 8
    invoke-virtual/range {v0 .. v5}, Lcom/ss/ttm/player/MediaPlayerClient;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    :cond_0
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setDataSource(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setFloatOption(IF)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/MediaPlayerClient;->setFloatOption(IF)I

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    return p1
.end method

.method public setFrameMetadataListener(Lcom/ss/ttm/player/FrameMetadataListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setFrameMetadataListener(Lcom/ss/ttm/player/FrameMetadataListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setIntOption(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/MediaPlayerClient;->setIntOption(II)I

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setIsMute(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setIsMute(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setLoadControl(Lcom/ss/ttm/player/LoadControl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setLoadControl(Lcom/ss/ttm/player/LoadControl;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setLongOption(IJ)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/ttm/player/MediaPlayerClient;->setLongOption(IJ)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    int-to-long p1, p1

    .line 10
    return-wide p1

    .line 11
    :cond_0
    const-wide/16 p1, -0x1

    .line 12
    .line 13
    return-wide p1
.end method

.method public setLooping(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setLooping(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setMaskInfo(Lcom/ss/ttm/player/MaskInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setMaskInfo(Lcom/ss/ttm/player/MaskInfo;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setMediaTransport(Lcom/ss/ttm/player/MediaTransport;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setMediaTransport(Lcom/ss/ttm/player/MediaTransport;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setOnBufferingUpdateListener(Lcom/ss/ttm/player/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setOnBufferingUpdateListener(Lcom/ss/ttm/player/MediaPlayer$OnBufferingUpdateListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnCompletionListener(Lcom/ss/ttm/player/MediaPlayer$OnCompletionListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setOnCompletionListener(Lcom/ss/ttm/player/MediaPlayer$OnCompletionListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnErrorListener(Lcom/ss/ttm/player/MediaPlayer$OnErrorListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setOnErrorListener(Lcom/ss/ttm/player/MediaPlayer$OnErrorListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnExternInfoListener(Lcom/ss/ttm/player/MediaPlayer$OnExternInfoListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setOnExternInfoListener(Lcom/ss/ttm/player/MediaPlayer$OnExternInfoListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnInfoListener(Lcom/ss/ttm/player/MediaPlayer$OnInfoListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setOnInfoListener(Lcom/ss/ttm/player/MediaPlayer$OnInfoListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnLogListener(Lcom/ss/ttm/player/MediaPlayer$OnLogListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setOnLogListener(Lcom/ss/ttm/player/MediaPlayer$OnLogListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnPreparedListener(Lcom/ss/ttm/player/MediaPlayer$OnPreparedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setOnPreparedListener(Lcom/ss/ttm/player/MediaPlayer$OnPreparedListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnSARChangedListener(Lcom/ss/ttm/player/MediaPlayer$onSARChangedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setOnSARChangedListener(Lcom/ss/ttm/player/MediaPlayer$onSARChangedListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/ss/ttm/player/MediaPlayer$OnSeekCompleteListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setOnSeekCompleteListener(Lcom/ss/ttm/player/MediaPlayer$OnSeekCompleteListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/ss/ttm/player/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setOnVideoSizeChangedListener(Lcom/ss/ttm/player/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setPanoVideoControlModel(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setPanoVideoControlModel(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setPlaybackParams(Lcom/ss/ttm/player/PlaybackParams;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setPlaybackParams(Lcom/ss/ttm/player/PlaybackParams;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setScreenOnWhilePlaying(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setStringOption(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/MediaPlayerClient;->setStringOption(ILjava/lang/String;)I

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setSubInfo(Lcom/ss/ttm/player/SubInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setSubInfo(Lcom/ss/ttm/player/SubInfo;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 10
    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    :cond_1
    return-void

    .line 14
    :cond_2
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->setSurface(Landroid/view/Surface;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setSurfaceTimeOut(Landroid/view/Surface;I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 10
    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    :cond_1
    return-void

    .line 14
    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/MediaPlayerClient;->setSurfaceTimeOut(Landroid/view/Surface;I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setTraitObject(ILcom/ss/ttm/player/TraitObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/MediaPlayerClient;->setTraitObject(ILcom/ss/ttm/player/TraitObject;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/MediaPlayerClient;->setVolume(FF)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/MediaPlayerClient;->setWakeMode(Landroid/content/Context;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setupMediaCodec()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    const-string v0, "com.ss.ttm.player.TTPlayerClient"

    .line 7
    .line 8
    const/16 v1, 0xc8

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTHelper;->getClzUsingPluginLoader(ILjava/lang/String;)Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string/jumbo v1, "setupMediaCodec"

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    new-array v3, v2, [Ljava/lang/Class;

    .line 19
    .line 20
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 29
    .line 30
    new-array v2, v2, [Ljava/lang/Object;

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineInternalLog;->d(Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/MediaPlayerClient;->start()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttm/player/MediaPlayerClient;->stop()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public switchStream(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/MediaPlayerClient;->switchStream(II)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public takeScreenshot(Lcom/ss/ttm/player/MediaPlayer$OnScreenshotListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaPlayerWrapper;->mClient:Lcom/ss/ttm/player/MediaPlayerClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/MediaPlayerClient;->takeScreenshot(Lcom/ss/ttm/player/MediaPlayer$OnScreenshotListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
