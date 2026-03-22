.class public final Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
.super Ljava/lang/Object;
.source "LocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;,
        Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final MSG_EXEC_PENDING_BROADCASTS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LocalBroadcastManager"

.field private static mInstance:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private final mActions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAppContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPendingBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/BroadcastReceiver;",
            "Ljava/util/ArrayList<",
            "Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
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
    iput-object v0, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    .line 24
    .line 25
    iput-object p1, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    .line 26
    .line 27
    new-instance v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$1;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {v0, p0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$1;-><init>(Landroidx/localbroadcastmanager/content/LocalBroadcastManager;Landroid/os/Looper;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    .line 37
    .line 38
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mInstance:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-direct {v1, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mInstance:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    sget-object p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mInstance:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-object p0

    .line 26
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method


# virtual methods
.method executePendingBroadcasts()V
    .locals 10

    .line 1
    :cond_0
    iget-object v0, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-gtz v1, :cond_1

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    goto :goto_2

    .line 16
    :cond_1
    new-array v2, v1, [Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;

    .line 17
    .line 18
    iget-object v3, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    iget-object v3, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 26
    .line 27
    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    const/4 v0, 0x0

    .line 30
    move v3, v0

    .line 31
    :goto_0
    if-ge v3, v1, :cond_0

    .line 32
    .line 33
    aget-object v4, v2, v3

    .line 34
    .line 35
    iget-object v5, v4, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    move v6, v0

    .line 42
    :goto_1
    if-ge v6, v5, :cond_3

    .line 43
    .line 44
    iget-object v7, v4, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    check-cast v7, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;

    .line 51
    .line 52
    iget-boolean v8, v7, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->dead:Z

    .line 53
    .line 54
    if-nez v8, :cond_2

    .line 55
    .line 56
    iget-object v7, v7, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    .line 57
    .line 58
    iget-object v8, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    .line 59
    .line 60
    iget-object v9, v4, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;->intent:Landroid/content/Intent;

    .line 61
    .line 62
    invoke-virtual {v7, v8, v9}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    throw v1
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 6
    .param p1    # Landroid/content/BroadcastReceiver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/IntentFilter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;

    .line 5
    .line 6
    invoke-direct {v1, p2, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Ljava/util/ArrayList;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    new-instance v2, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iget-object v4, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    :goto_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    :goto_1
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-ge p1, v2, :cond_2

    .line 42
    .line 43
    invoke-virtual {p2, p1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iget-object v4, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Ljava/util/ArrayList;

    .line 54
    .line 55
    if-nez v4, :cond_1

    .line 56
    .line 57
    new-instance v4, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    .line 61
    .line 62
    iget-object v5, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    .line 63
    .line 64
    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    :cond_1
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    add-int/lit8 p1, p1, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    monitor-exit v0

    .line 74
    return-void

    .line 75
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p1
.end method

.method public sendBroadcast(Landroid/content/Intent;)Z
    .locals 21
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v10

    .line 12
    iget-object v3, v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v0, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v11

    .line 22
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object v12

    .line 26
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v13

    .line 30
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object v14

    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    and-int/lit8 v3, v3, 0x8

    .line 39
    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    const/16 v16, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/16 v16, 0x0

    .line 46
    .line 47
    :goto_0
    if-eqz v16, :cond_1

    .line 48
    .line 49
    const-string v3, "LocalBroadcastManager"

    .line 50
    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v5, "Resolving type "

    .line 57
    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v5, " scheme "

    .line 65
    .line 66
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v5, " of intent "

    .line 73
    .line 74
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    goto/16 :goto_8

    .line 90
    .line 91
    :cond_1
    :goto_1
    iget-object v3, v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    .line 92
    .line 93
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    move-object v8, v3

    .line 102
    check-cast v8, Ljava/util/ArrayList;

    .line 103
    .line 104
    if-eqz v8, :cond_11

    .line 105
    .line 106
    if-eqz v16, :cond_2

    .line 107
    .line 108
    const-string v3, "LocalBroadcastManager"

    .line 109
    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string v5, "Action list: "

    .line 116
    .line 117
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    :cond_2
    const/4 v3, 0x0

    .line 131
    move-object v7, v3

    .line 132
    const/4 v6, 0x0

    .line 133
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    if-ge v6, v3, :cond_e

    .line 138
    .line 139
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    move-object v5, v3

    .line 144
    check-cast v5, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;

    .line 145
    .line 146
    if-eqz v16, :cond_3

    .line 147
    .line 148
    const-string v3, "LocalBroadcastManager"

    .line 149
    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    const-string v9, "Matching against filter "

    .line 156
    .line 157
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    iget-object v9, v5, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    .line 161
    .line 162
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    :cond_3
    iget-boolean v3, v5, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    .line 173
    .line 174
    if-eqz v3, :cond_5

    .line 175
    .line 176
    if-eqz v16, :cond_4

    .line 177
    .line 178
    const-string v3, "LocalBroadcastManager"

    .line 179
    .line 180
    const-string v4, "  Filter\'s target already added"

    .line 181
    .line 182
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    :cond_4
    move/from16 v17, v6

    .line 186
    .line 187
    move-object/from16 v19, v8

    .line 188
    .line 189
    move-object/from16 v18, v10

    .line 190
    .line 191
    move-object/from16 v20, v11

    .line 192
    .line 193
    const/4 v11, 0x1

    .line 194
    move-object v10, v7

    .line 195
    goto/16 :goto_5

    .line 196
    .line 197
    :cond_5
    iget-object v3, v5, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    .line 198
    .line 199
    const-string v9, "LocalBroadcastManager"

    .line 200
    .line 201
    move-object v4, v10

    .line 202
    move-object v15, v5

    .line 203
    move-object v5, v11

    .line 204
    move/from16 v17, v6

    .line 205
    .line 206
    move-object v6, v13

    .line 207
    move-object/from16 v18, v10

    .line 208
    .line 209
    move-object v10, v7

    .line 210
    move-object v7, v12

    .line 211
    move-object/from16 v19, v8

    .line 212
    .line 213
    move-object v8, v14

    .line 214
    move-object/from16 v20, v11

    .line 215
    .line 216
    const/4 v11, 0x1

    .line 217
    invoke-virtual/range {v3 .. v9}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    if-ltz v3, :cond_8

    .line 222
    .line 223
    if-eqz v16, :cond_6

    .line 224
    .line 225
    const-string v4, "LocalBroadcastManager"

    .line 226
    .line 227
    new-instance v5, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .line 231
    .line 232
    const-string v6, "  Filter matched!  match=0x"

    .line 233
    .line 234
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    :cond_6
    if-nez v10, :cond_7

    .line 252
    .line 253
    new-instance v7, Ljava/util/ArrayList;

    .line 254
    .line 255
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .line 257
    .line 258
    goto :goto_3

    .line 259
    :cond_7
    move-object v7, v10

    .line 260
    :goto_3
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    iput-boolean v11, v15, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    .line 264
    .line 265
    goto :goto_6

    .line 266
    :cond_8
    if-eqz v16, :cond_d

    .line 267
    .line 268
    const/4 v4, -0x4

    .line 269
    if-eq v3, v4, :cond_c

    .line 270
    .line 271
    const/4 v4, -0x3

    .line 272
    if-eq v3, v4, :cond_b

    .line 273
    .line 274
    const/4 v4, -0x2

    .line 275
    if-eq v3, v4, :cond_a

    .line 276
    .line 277
    const/4 v4, -0x1

    .line 278
    if-eq v3, v4, :cond_9

    .line 279
    .line 280
    const-string/jumbo v3, "unknown reason"

    .line 281
    .line 282
    .line 283
    goto :goto_4

    .line 284
    :cond_9
    const-string/jumbo v3, "type"

    .line 285
    .line 286
    .line 287
    goto :goto_4

    .line 288
    :cond_a
    const-string v3, "data"

    .line 289
    .line 290
    goto :goto_4

    .line 291
    :cond_b
    const-string v3, "action"

    .line 292
    .line 293
    goto :goto_4

    .line 294
    :cond_c
    const-string v3, "category"

    .line 295
    .line 296
    :goto_4
    const-string v4, "LocalBroadcastManager"

    .line 297
    .line 298
    new-instance v5, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .line 302
    .line 303
    const-string v6, "  Filter did not match: "

    .line 304
    .line 305
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .line 317
    .line 318
    :cond_d
    :goto_5
    move-object v7, v10

    .line 319
    :goto_6
    add-int/lit8 v6, v17, 0x1

    .line 320
    .line 321
    move-object/from16 v10, v18

    .line 322
    .line 323
    move-object/from16 v8, v19

    .line 324
    .line 325
    move-object/from16 v11, v20

    .line 326
    .line 327
    goto/16 :goto_2

    .line 328
    .line 329
    :cond_e
    move-object v10, v7

    .line 330
    const/4 v11, 0x1

    .line 331
    if-eqz v10, :cond_11

    .line 332
    .line 333
    const/4 v3, 0x0

    .line 334
    :goto_7
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 335
    .line 336
    .line 337
    move-result v4

    .line 338
    if-ge v3, v4, :cond_f

    .line 339
    .line 340
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v4

    .line 344
    check-cast v4, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;

    .line 345
    .line 346
    const/4 v5, 0x0

    .line 347
    iput-boolean v5, v4, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    .line 348
    .line 349
    add-int/lit8 v3, v3, 0x1

    .line 350
    .line 351
    goto :goto_7

    .line 352
    :cond_f
    iget-object v3, v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    .line 353
    .line 354
    new-instance v4, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;

    .line 355
    .line 356
    invoke-direct {v4, v0, v10}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    iget-object v0, v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    .line 363
    .line 364
    invoke-virtual {v0, v11}, Landroid/os/Handler;->hasMessages(I)Z

    .line 365
    .line 366
    .line 367
    move-result v0

    .line 368
    if-nez v0, :cond_10

    .line 369
    .line 370
    iget-object v0, v1, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    .line 371
    .line 372
    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 373
    .line 374
    .line 375
    :cond_10
    monitor-exit v2

    .line 376
    return v11

    .line 377
    :cond_11
    monitor-exit v2

    .line 378
    const/4 v0, 0x0

    .line 379
    return v0

    .line 380
    :goto_8
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    throw v0
.end method

.method public sendBroadcastSync(Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->executePendingBroadcasts()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 11
    .param p1    # Landroid/content/BroadcastReceiver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_3

    .line 18
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x1

    .line 23
    sub-int/2addr v2, v3

    .line 24
    :goto_0
    if-ltz v2, :cond_5

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;

    .line 31
    .line 32
    iput-boolean v3, v4, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->dead:Z

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    :goto_1
    iget-object v6, v4, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    .line 36
    .line 37
    invoke-virtual {v6}, Landroid/content/IntentFilter;->countActions()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-ge v5, v6, :cond_4

    .line 42
    .line 43
    iget-object v6, v4, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    .line 44
    .line 45
    invoke-virtual {v6, v5}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    iget-object v7, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    .line 50
    .line 51
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    check-cast v7, Ljava/util/ArrayList;

    .line 56
    .line 57
    if-eqz v7, :cond_3

    .line 58
    .line 59
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    sub-int/2addr v8, v3

    .line 64
    :goto_2
    if-ltz v8, :cond_2

    .line 65
    .line 66
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    check-cast v9, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;

    .line 71
    .line 72
    iget-object v10, v9, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    .line 73
    .line 74
    if-ne v10, p1, :cond_1

    .line 75
    .line 76
    iput-boolean v3, v9, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->dead:Z

    .line 77
    .line 78
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    :cond_1
    add-int/lit8 v8, v8, -0x1

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    if-gtz v7, :cond_3

    .line 89
    .line 90
    iget-object v7, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    .line 91
    .line 92
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_4
    add-int/lit8 v2, v2, -0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_5
    monitor-exit v0

    .line 102
    return-void

    .line 103
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    throw p1
.end method
