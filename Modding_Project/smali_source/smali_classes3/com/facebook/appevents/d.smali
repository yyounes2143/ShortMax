.class public final Lcom/facebook/appevents/d;
.super Ljava/lang/Object;
.source "AppEventDiskStore.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/d$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lcom/facebook/appevents/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/appevents/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/appevents/d;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/facebook/appevents/d;->a:Lcom/facebook/appevents/d;

    .line 7
    .line 8
    const-class v0, Lcom/facebook/appevents/d;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/facebook/appevents/d;->b:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final declared-synchronized a()Lcom/facebook/appevents/PersistedEvents;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-class v0, Lcom/facebook/appevents/d;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, La2/h;->b()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/facebook/v;->l()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    const/4 v2, 0x0

    .line 12
    :try_start_1
    const-string v3, "AppEventsLogger.persistedevents"

    .line 13
    .line 14
    invoke-virtual {v1, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const-string v4, "context.openFileInput(PERSISTED_EVENTS_FILENAME)"

    .line 19
    .line 20
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v4, Lcom/facebook/appevents/d$a;

    .line 24
    .line 25
    new-instance v5, Ljava/io/BufferedInputStream;

    .line 26
    .line 27
    invoke-direct {v5, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v4, v5}, Lcom/facebook/appevents/d$a;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 31
    .line 32
    .line 33
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const-string v5, "null cannot be cast to non-null type com.facebook.appevents.PersistedEvents"

    .line 38
    .line 39
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    check-cast v3, Lcom/facebook/appevents/PersistedEvents;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 43
    .line 44
    :try_start_3
    invoke-static {v4}, Lcom/facebook/internal/u0;->j(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 45
    .line 46
    .line 47
    :try_start_4
    const-string v2, "AppEventsLogger.persistedevents"

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception v1

    .line 58
    goto/16 :goto_7

    .line 59
    .line 60
    :catch_0
    move-exception v1

    .line 61
    :try_start_5
    sget-object v2, Lcom/facebook/appevents/d;->b:Ljava/lang/String;

    .line 62
    .line 63
    const-string v4, "Got unexpected exception when removing events file: "

    .line 64
    .line 65
    invoke-static {v2, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 66
    .line 67
    .line 68
    :goto_0
    move-object v2, v3

    .line 69
    goto :goto_6

    .line 70
    :catchall_1
    move-exception v2

    .line 71
    goto :goto_3

    .line 72
    :catch_1
    move-exception v3

    .line 73
    goto :goto_1

    .line 74
    :catchall_2
    move-exception v3

    .line 75
    move-object v4, v2

    .line 76
    move-object v2, v3

    .line 77
    goto :goto_3

    .line 78
    :catch_2
    move-exception v3

    .line 79
    move-object v4, v2

    .line 80
    goto :goto_1

    .line 81
    :catch_3
    move-object v4, v2

    .line 82
    goto :goto_5

    .line 83
    :goto_1
    :try_start_6
    sget-object v5, Lcom/facebook/appevents/d;->b:Ljava/lang/String;

    .line 84
    .line 85
    const-string v6, "Got unexpected exception while reading events: "

    .line 86
    .line 87
    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 88
    .line 89
    .line 90
    :try_start_7
    invoke-static {v4}, Lcom/facebook/internal/u0;->j(Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 91
    .line 92
    .line 93
    :try_start_8
    const-string v3, "AppEventsLogger.persistedevents"

    .line 94
    .line 95
    invoke-virtual {v1, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 100
    .line 101
    .line 102
    goto :goto_6

    .line 103
    :catch_4
    move-exception v1

    .line 104
    :try_start_9
    sget-object v3, Lcom/facebook/appevents/d;->b:Ljava/lang/String;

    .line 105
    .line 106
    const-string v4, "Got unexpected exception when removing events file: "

    .line 107
    .line 108
    :goto_2
    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    .line 110
    .line 111
    goto :goto_6

    .line 112
    :goto_3
    invoke-static {v4}, Lcom/facebook/internal/u0;->j(Ljava/io/Closeable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 113
    .line 114
    .line 115
    :try_start_a
    const-string v3, "AppEventsLogger.persistedevents"

    .line 116
    .line 117
    invoke-virtual {v1, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 122
    .line 123
    .line 124
    goto :goto_4

    .line 125
    :catch_5
    move-exception v1

    .line 126
    :try_start_b
    sget-object v3, Lcom/facebook/appevents/d;->b:Ljava/lang/String;

    .line 127
    .line 128
    const-string v4, "Got unexpected exception when removing events file: "

    .line 129
    .line 130
    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .line 132
    .line 133
    :goto_4
    throw v2

    .line 134
    :catch_6
    :goto_5
    invoke-static {v4}, Lcom/facebook/internal/u0;->j(Ljava/io/Closeable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 135
    .line 136
    .line 137
    :try_start_c
    const-string v3, "AppEventsLogger.persistedevents"

    .line 138
    .line 139
    invoke-virtual {v1, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 144
    .line 145
    .line 146
    goto :goto_6

    .line 147
    :catch_7
    move-exception v1

    .line 148
    :try_start_d
    sget-object v3, Lcom/facebook/appevents/d;->b:Ljava/lang/String;

    .line 149
    .line 150
    const-string v4, "Got unexpected exception when removing events file: "

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :goto_6
    if-nez v2, :cond_0

    .line 154
    .line 155
    new-instance v2, Lcom/facebook/appevents/PersistedEvents;

    .line 156
    .line 157
    invoke-direct {v2}, Lcom/facebook/appevents/PersistedEvents;-><init>()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 158
    .line 159
    .line 160
    :cond_0
    monitor-exit v0

    .line 161
    return-object v2

    .line 162
    :goto_7
    :try_start_e
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 163
    throw v1
.end method

.method public static final b(Lcom/facebook/appevents/PersistedEvents;)V
    .locals 6
    .param p0    # Lcom/facebook/appevents/PersistedEvents;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "AppEventsLogger.persistedevents"

    .line 2
    .line 3
    invoke-static {}, Lcom/facebook/v;->l()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_0
    new-instance v3, Ljava/io/ObjectOutputStream;

    .line 9
    .line 10
    new-instance v4, Ljava/io/BufferedOutputStream;

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    invoke-virtual {v1, v0, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v3, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    .line 22
    .line 23
    :try_start_1
    invoke-virtual {v3, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    .line 26
    invoke-static {v3}, Lcom/facebook/internal/u0;->j(Ljava/io/Closeable;)V

    .line 27
    .line 28
    .line 29
    goto :goto_2

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    move-object v2, v3

    .line 32
    goto :goto_0

    .line 33
    :catchall_1
    move-exception p0

    .line 34
    :goto_0
    :try_start_2
    sget-object v3, Lcom/facebook/appevents/d;->b:Ljava/lang/String;

    .line 35
    .line 36
    const-string v4, "Got unexpected exception while persisting events: "

    .line 37
    .line 38
    invoke-static {v3, v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 39
    .line 40
    .line 41
    :try_start_3
    invoke-virtual {v1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catchall_2
    move-exception p0

    .line 50
    goto :goto_3

    .line 51
    :catch_0
    :goto_1
    invoke-static {v2}, Lcom/facebook/internal/u0;->j(Ljava/io/Closeable;)V

    .line 52
    .line 53
    .line 54
    :goto_2
    return-void

    .line 55
    :goto_3
    invoke-static {v2}, Lcom/facebook/internal/u0;->j(Ljava/io/Closeable;)V

    .line 56
    .line 57
    .line 58
    throw p0
.end method
