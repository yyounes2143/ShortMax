.class public Lcom/ss/texturerender/TextureRenderLog;
.super Ljava/lang/Object;
.source "TextureRenderLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/texturerender/TextureRenderLog$OnLogListenerExt;,
        Lcom/ss/texturerender/TextureRenderLog$OnLogListener;
    }
.end annotation


# static fields
.field public static final LOG_DEBUG:I = 0x1

.field public static final LOG_ERROR:I = 0x6

.field public static final LOG_INFO:I = 0x2

.field public static final LOG_KILL:I = 0x4

.field public static final LOG_TRACK:I = 0x3

.field public static final LOG_VERBOSE:I = 0x0

.field public static final LOG_WARN:I = 0x5

.field private static mLogListener:Lcom/ss/texturerender/TextureRenderLog$OnLogListener;

.field private static mLogListenerExts:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/ss/texturerender/TextureRenderLog$OnLogListenerExt;",
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
    sput-object v0, Lcom/ss/texturerender/TextureRenderLog;->mLogListenerExts:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static d(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0, p0, p1, p2}, Lcom/ss/texturerender/TextureRenderLog;->log(IILjava/lang/String;Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static e(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-static {v0, p0, p1, p2}, Lcom/ss/texturerender/TextureRenderLog;->log(IILjava/lang/String;Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static i(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0, p0, p1, p2}, Lcom/ss/texturerender/TextureRenderLog;->log(IILjava/lang/String;Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static k(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {v0, p0, p1, p2}, Lcom/ss/texturerender/TextureRenderLog;->log(IILjava/lang/String;Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private static declared-synchronized log(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-class v0, Lcom/ss/texturerender/TextureRenderLog;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/ss/texturerender/TextureRenderLog;->mLogListenerExts:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    const/4 v2, -0x1

    .line 9
    if-ne p1, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/ss/texturerender/TextureRenderLog$OnLogListenerExt;

    .line 30
    .line 31
    invoke-static {p0, v1, p2, p3}, Lcom/ss/texturerender/TextureRenderLog;->notifyListener(ILcom/ss/texturerender/TextureRenderLog$OnLogListenerExt;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/ss/texturerender/TextureRenderLog$OnLogListenerExt;

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    invoke-static {p0, p1, p2, p3}, Lcom/ss/texturerender/TextureRenderLog;->notifyListener(ILcom/ss/texturerender/TextureRenderLog$OnLogListenerExt;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    sget-object p1, Lcom/ss/texturerender/TextureRenderLog;->mLogListenerExts:Ljava/util/concurrent/ConcurrentHashMap;

    .line 53
    .line 54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lcom/ss/texturerender/TextureRenderLog$OnLogListenerExt;

    .line 63
    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    invoke-static {p0, p1, p2, p3}, Lcom/ss/texturerender/TextureRenderLog;->notifyListener(ILcom/ss/texturerender/TextureRenderLog$OnLogListenerExt;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    sget-object p0, Lcom/ss/texturerender/TextureRenderLog;->mLogListener:Lcom/ss/texturerender/TextureRenderLog$OnLogListener;

    .line 70
    .line 71
    if-eqz p0, :cond_3

    .line 72
    .line 73
    invoke-interface {p0, p2, p3}, Lcom/ss/texturerender/TextureRenderLog$OnLogListener;->log(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    .line 76
    :cond_3
    monitor-exit v0

    .line 77
    return-void

    .line 78
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    throw p0
.end method

.method private static notifyListener(ILcom/ss/texturerender/TextureRenderLog$OnLogListenerExt;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :pswitch_0
    invoke-interface {p1, p2, p3}, Lcom/ss/texturerender/TextureRenderLog$OnLogListenerExt;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_1
    invoke-interface {p1, p2, p3}, Lcom/ss/texturerender/TextureRenderLog$OnLogListenerExt;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_2
    invoke-interface {p1, p2, p3}, Lcom/ss/texturerender/TextureRenderLog$OnLogListenerExt;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :pswitch_3
    invoke-interface {p1, p2, p3}, Lcom/ss/texturerender/TextureRenderLog$OnLogListenerExt;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :pswitch_4
    invoke-interface {p1, p2, p3}, Lcom/ss/texturerender/TextureRenderLog$OnLogListenerExt;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_5
    invoke-interface {p1, p2, p3}, Lcom/ss/texturerender/TextureRenderLog$OnLogListenerExt;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized setOnLogListener(Lcom/ss/texturerender/TextureRenderLog$OnLogListener;)V
    .locals 1

    .line 1
    const-class v0, Lcom/ss/texturerender/TextureRenderLog;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sput-object p0, Lcom/ss/texturerender/TextureRenderLog;->mLogListener:Lcom/ss/texturerender/TextureRenderLog$OnLogListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw p0
.end method

.method public static declared-synchronized setOnLogListenerExt(ILcom/ss/texturerender/TextureRenderLog$OnLogListenerExt;)V
    .locals 2

    .line 1
    const-class v0, Lcom/ss/texturerender/TextureRenderLog;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/ss/texturerender/TextureRenderLog;->mLogListenerExts:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {v1, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw p0
.end method

.method public static t(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0, p0, p1, p2}, Lcom/ss/texturerender/TextureRenderLog;->log(IILjava/lang/String;Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static w(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-static {v0, p0, p1, p2}, Lcom/ss/texturerender/TextureRenderLog;->log(IILjava/lang/String;Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
