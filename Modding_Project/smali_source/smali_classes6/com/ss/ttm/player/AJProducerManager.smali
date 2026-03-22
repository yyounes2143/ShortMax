.class public Lcom/ss/ttm/player/AJProducerManager;
.super Ljava/lang/Object;
.source "AJProducerManager.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x13
.end annotation

.annotation build Lcom/ss/ttm/player/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;,
        Lcom/ss/ttm/player/AJProducerManager$ImageReaderListenerWrapper;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_CACHE_SIZE:I = 0x2

.field public static final DEFAULT_MAX_IMAGE:I = 0x2

.field public static final IMAGEREADER_STATUS:I = 0x1

.field public static final IMAGEREADER_STATUS_CLOSE:I = 0x1

.field public static final IMAGEREADER_STATUS_OPEN:I = 0x2

.field private static MaxImages:I = 0x2

.field public static final NATIVE_WINDOW_API_CPU:I = 0x2

.field public static final NATIVE_WINDOW_API_EGL:I = 0x1

.field public static final NATIVE_WINDOW_API_MEDIA:I = 0x3

.field public static final NATIVE_WINDOW_API_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AJProducerManager"

.field private static mFreeIRProducerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;",
            ">;"
        }
    .end annotation
.end field

.field private static mIRLWrapperMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/ss/ttm/player/AJProducerManager$ImageReaderListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private static mUsingIRProducerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/ss/ttm/player/AJProducerManager;->mIRLWrapperMap:Ljava/util/HashMap;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/ss/ttm/player/AJProducerManager;->mFreeIRProducerList:Ljava/util/ArrayList;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/ss/ttm/player/AJProducerManager;->mUsingIRProducerList:Ljava/util/ArrayList;

    .line 21
    .line 22
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

.method static synthetic access$200(Landroid/media/ImageReader$OnImageAvailableListener;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/ss/ttm/player/AJProducerManager;->notifyImageReaderStatus(Landroid/media/ImageReader$OnImageAvailableListener;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static declared-synchronized getAvailableSurface(JII)Landroid/view/Surface;
    .locals 5
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    const-class p3, Lcom/ss/ttm/player/AJProducerManager;

    .line 2
    .line 3
    monitor-enter p3

    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long v0, p0, v0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    monitor-exit p3

    .line 12
    return-object v1

    .line 13
    :cond_0
    :try_start_0
    sget-object v0, Lcom/ss/ttm/player/AJProducerManager;->mIRLWrapperMap:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/ss/ttm/player/AJProducerManager$ImageReaderListenerWrapper;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    const-string p2, "AJProducerManager"

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v2, "no listener,playerId:"

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p2, p0}, Lcom/ss/ttm/utils/AVLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    monitor-exit p3

    .line 50
    return-object v1

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    :cond_1
    :try_start_1
    sget-object v1, Lcom/ss/ttm/player/AJProducerManager;->mUsingIRProducerList:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;

    .line 71
    .line 72
    invoke-static {v2}, Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;->access$000(Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;)J

    .line 73
    .line 74
    .line 75
    move-result-wide v3

    .line 76
    cmp-long v3, v3, p0

    .line 77
    .line 78
    if-nez v3, :cond_2

    .line 79
    .line 80
    invoke-static {v2}, Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;->access$100(Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;)I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-ne v3, p2, :cond_2

    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;->getSurface()Landroid/view/Surface;

    .line 87
    .line 88
    .line 89
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    monitor-exit p3

    .line 91
    return-object p0

    .line 92
    :cond_3
    :try_start_2
    sget-object v1, Lcom/ss/ttm/player/AJProducerManager;->mFreeIRProducerList:Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-eqz v2, :cond_7

    .line 103
    .line 104
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    check-cast v2, Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;

    .line 109
    .line 110
    const/4 v3, 0x2

    .line 111
    if-ne p2, v3, :cond_5

    .line 112
    .line 113
    invoke-static {v2}, Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;->access$100(Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;)I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-eq v4, v3, :cond_6

    .line 118
    .line 119
    :cond_5
    if-eq p2, v3, :cond_4

    .line 120
    .line 121
    invoke-static {v2}, Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;->access$100(Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;)I

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    if-eq v4, v3, :cond_4

    .line 126
    .line 127
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 128
    .line 129
    .line 130
    invoke-static {v2, p0, p1}, Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;->access$002(Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;J)J

    .line 131
    .line 132
    .line 133
    sget-object p0, Lcom/ss/ttm/player/AJProducerManager;->mUsingIRProducerList:Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    iget-object p0, v0, Lcom/ss/ttm/player/AJProducerManager$ImageReaderListenerWrapper;->listener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 139
    .line 140
    iget-object p1, v0, Lcom/ss/ttm/player/AJProducerManager$ImageReaderListenerWrapper;->handler:Landroid/os/Handler;

    .line 141
    .line 142
    invoke-virtual {v2, p0, p1}, Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2}, Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;->getSurface()Landroid/view/Surface;

    .line 146
    .line 147
    .line 148
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    monitor-exit p3

    .line 150
    return-object p0

    .line 151
    :cond_7
    :try_start_3
    new-instance v1, Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;

    .line 152
    .line 153
    sget v2, Lcom/ss/ttm/player/AJProducerManager;->MaxImages:I

    .line 154
    .line 155
    invoke-direct {v1, p0, p1, v2, p2}, Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;-><init>(JII)V

    .line 156
    .line 157
    .line 158
    sget-object p0, Lcom/ss/ttm/player/AJProducerManager;->mUsingIRProducerList:Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    iget-object p0, v0, Lcom/ss/ttm/player/AJProducerManager$ImageReaderListenerWrapper;->listener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 164
    .line 165
    iget-object p1, v0, Lcom/ss/ttm/player/AJProducerManager$ImageReaderListenerWrapper;->handler:Landroid/os/Handler;

    .line 166
    .line 167
    invoke-virtual {v1, p0, p1}, Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1}, Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;->getSurface()Landroid/view/Surface;

    .line 171
    .line 172
    .line 173
    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 174
    monitor-exit p3

    .line 175
    return-object p0

    .line 176
    :goto_0
    :try_start_4
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 177
    throw p0
.end method

.method private static notifyImageReaderStatus(Landroid/media/ImageReader$OnImageAvailableListener;I)V
    .locals 3

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "setIntOption"

    .line 8
    .line 9
    .line 10
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 11
    .line 12
    filled-new-array {v2, v2}, [Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    filled-new-array {v1, p1}, [Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    :catch_0
    :cond_0
    return-void
.end method

.method public static declared-synchronized releaseSurface(JI)V
    .locals 5
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    const-class v0, Lcom/ss/ttm/player/AJProducerManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/ss/ttm/player/AJProducerManager;->mUsingIRProducerList:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;

    .line 21
    .line 22
    invoke-static {v2}, Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;->access$000(Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    cmp-long v3, v3, p0

    .line 27
    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    invoke-static {v2}, Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;->access$100(Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-ne v3, p2, :cond_0

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 37
    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-virtual {v2, v3, v3}, Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 41
    .line 42
    .line 43
    const-wide/16 v3, 0x0

    .line 44
    .line 45
    invoke-static {v2, v3, v4}, Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;->access$002(Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;J)J

    .line 46
    .line 47
    .line 48
    sget-object v3, Lcom/ss/ttm/player/AJProducerManager;->mFreeIRProducerList:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    const/4 v4, 0x2

    .line 55
    if-lt v3, v4, :cond_1

    .line 56
    .line 57
    sget-object v3, Lcom/ss/ttm/player/AJProducerManager;->mFreeIRProducerList:Ljava/util/ArrayList;

    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;

    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;->release()V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto :goto_2

    .line 72
    :cond_1
    :goto_1
    sget-object v3, Lcom/ss/ttm/player/AJProducerManager;->mFreeIRProducerList:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    monitor-exit v0

    .line 79
    return-void

    .line 80
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    throw p0
.end method

.method public static setMaxImages(I)V
    .locals 0

    .line 1
    if-gtz p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x2

    .line 4
    :cond_0
    sput p0, Lcom/ss/ttm/player/AJProducerManager;->MaxImages:I

    .line 5
    .line 6
    return-void
.end method

.method public static declared-synchronized setOnImageAvailableListener(JLandroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    .locals 5

    .line 1
    const-class v0, Lcom/ss/ttm/player/AJProducerManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "AJProducerManager"

    .line 5
    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v3, "setOnImageAvailableListener,playerId:"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v3, ",listener:"

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v3, ",handler:"

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v1, v2}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    const-wide/16 v1, 0x0

    .line 44
    .line 45
    cmp-long v1, p0, v1

    .line 46
    .line 47
    if-nez v1, :cond_0

    .line 48
    .line 49
    monitor-exit v0

    .line 50
    return-void

    .line 51
    :cond_0
    if-nez p2, :cond_1

    .line 52
    .line 53
    :try_start_1
    sget-object v1, Lcom/ss/ttm/player/AJProducerManager;->mIRLWrapperMap:Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_2

    .line 65
    :cond_1
    sget-object v1, Lcom/ss/ttm/player/AJProducerManager;->mIRLWrapperMap:Ljava/util/HashMap;

    .line 66
    .line 67
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    new-instance v3, Lcom/ss/ttm/player/AJProducerManager$ImageReaderListenerWrapper;

    .line 72
    .line 73
    invoke-direct {v3, p2, p3}, Lcom/ss/ttm/player/AJProducerManager$ImageReaderListenerWrapper;-><init>(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    :goto_0
    sget-object v1, Lcom/ss/ttm/player/AJProducerManager;->mUsingIRProducerList:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_3

    .line 90
    .line 91
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;

    .line 96
    .line 97
    invoke-static {v2}, Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;->access$000(Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;)J

    .line 98
    .line 99
    .line 100
    move-result-wide v3

    .line 101
    cmp-long v3, v3, p0

    .line 102
    .line 103
    if-nez v3, :cond_2

    .line 104
    .line 105
    invoke-virtual {v2, p2, p3}, Lcom/ss/ttm/player/AJProducerManager$AJImageReaderProducer;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    monitor-exit v0

    .line 110
    return-void

    .line 111
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    throw p0
.end method
