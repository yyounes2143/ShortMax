.class public final Lcom/ss/ttm/player/TTPlayerConfiger;
.super Ljava/lang/Object;
.source "TTPlayerConfiger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttm/player/TTPlayerConfiger$StringValue;,
        Lcom/ss/ttm/player/TTPlayerConfiger$LongValue;,
        Lcom/ss/ttm/player/TTPlayerConfiger$IntValue;,
        Lcom/ss/ttm/player/TTPlayerConfiger$Value;
    }
.end annotation


# static fields
.field private static APP_PATH:Ljava/lang/String; = null

.field private static CRASH_FILE_NAME:Ljava/lang/String; = "ttplayer_crash.log"

.field private static CRASH_FILE_PATH:Ljava/lang/String; = null

.field public static final DEBUG:Z = false

.field public static final DEFAULT_POOL_STACK_SIZE:I = 0x20

.field public static final DEFAULT_VC2_DEC_POOL_SIZE:I = 0x2

.field public static final DEFAULT_VC2_STACK_SIZE_VALUE:I = 0x20000

.field public static final DEFAULT_VC2_THREAD_PRIORITY_VALUE:I = 0x500000

.field public static final FALSE:I = 0x0

.field public static IS_PRINT_INFO:Z = false

.field public static final IS_TIME_OUT_COUNT:I = 0x3

.field private static final KEYS:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/ss/ttm/player/TTPlayerConfiger$Value;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_IS_AUDIOTRACK_POOL_SIZE:I = 0x2f

.field public static final KEY_IS_BATTERY_INFO:I = 0x17

.field public static final KEY_IS_BUSINESS_TYPE:I = 0x21

.field public static final KEY_IS_CHECK_LIB:I = 0x3

.field public static final KEY_IS_CHECK_TTPLAYER_MODEL:I = 0x0

.field public static final KEY_IS_CRASHED:I = 0x7

.field public static final KEY_IS_CRASH_FILE_NAME:I = 0x11

.field public static final KEY_IS_CRASH_PATH:I = 0x13

.field public static final KEY_IS_DEBUG_MODEL:I = 0x6

.field public static final KEY_IS_ENABLE_GLOBAL_MUTE_FEATURE:I = 0x1f

.field public static final KEY_IS_ENABLE_THREAD2_POOL:I = 0x2d

.field public static final KEY_IS_ENABLE_VC2_DEC_POOL:I = 0x29

.field public static final KEY_IS_ENABLE_VC2_THREAD_PRIORITY:I = 0x22

.field public static final KEY_IS_ENABLE_VC2_THREAD_PRIORITY_LITE:I = 0x24

.field public static final KEY_IS_EXO_PLAYER_ON:I = 0x1a

.field public static final KEY_IS_FALLBACK_EXO_FIRST:I = 0x1b

.field public static final KEY_IS_FORBID_CREATED_OS_PLAYER:I = 0xb

.field public static final KEY_IS_FOREGROUND:I = 0x15

.field public static final KEY_IS_FREEDOM_PLAYER_ON:I = 0x25

.field public static final KEY_IS_GET_VC2_DEC_POOL_SIZE:I = 0x2a

.field public static final KEY_IS_GLOBAL_MUTE:I = 0x20

.field public static final KEY_IS_GLOBAL_QOS_LOOPER:I = 0x2c

.field public static final KEY_IS_IPTTPLAYER_ON:I = 0x2

.field public static final KEY_IS_LOG_FILE_DIR:I = 0x14

.field public static final KEY_IS_MEDIA_CODEC_USING_CODEC2:I = 0x30

.field public static final KEY_IS_ON_SCREEN:I = 0x16

.field public static final KEY_IS_OPEN_DEVICE_FAIL:I = 0x8

.field public static final KEY_IS_PLAYER_CREATION_CONFIG:I = 0x2b

.field public static final KEY_IS_PORT_VERSION:I = 0x12

.field public static final KEY_IS_PRINT_INFO:I = 0x5

.field public static final KEY_IS_SDK_VERSION:I = 0xd

.field public static final KEY_IS_SDK_VERSION_INFO:I = 0xf

.field public static final KEY_IS_SDK_VERSION_NAME:I = 0xe

.field public static final KEY_IS_SKIP_LOAD_SSL:I = 0x1c

.field public static final KEY_IS_SKIP_LOAD_STL:I = 0x1e

.field public static final KEY_IS_START_SERVICE:I = 0x10

.field public static final KEY_IS_STOP_SERVICE:I = 0xc

.field public static final KEY_IS_THREAD2_POOL_SIZE:I = 0x2e

.field public static final KEY_IS_THREAD_POOL_STACK_SIZE:I = 0x19

.field public static final KEY_IS_THREAD_V2:I = 0x26

.field public static final KEY_IS_THROW_CRASH:I = 0x4

.field public static final KEY_IS_TIMEOUT_COUNT:I = 0xa

.field public static final KEY_IS_TTPLAYER_ON:I = 0x1

.field public static final KEY_IS_USED_THREAD_POOL:I = 0x18

.field public static final KEY_IS_USE_BETA_PLAYER:I = 0x1d

.field public static final KEY_IS_VC2_STACK_SIZE_OPT:I = 0x27

.field public static final KEY_IS_VC2_STACK_SIZE_VALUE:I = 0x28

.field public static final KEY_IS_VC2_THREAD_PRIORITY_VALUE:I = 0x23

.field private static LIBRARY_DIR:Ljava/lang/String; = null

.field private static PLAYER_LIBRARY_NAME:Ljava/lang/String; = "libttmplayer.so"

.field private static final PORT_VERSION:I = 0x2

.field public static final TAG:Ljava/lang/String; = "ttplayer"

.field public static final TRUE:I = 0x1

.field private static TTPLAYER_FILE_CACHE_DIR:Ljava/lang/String; = null

.field private static final VERSION:I = 0x1

.field private static final VERSION_INFO:Ljava/lang/String; = "version code:1,name:999.999.999.9default sdk info 2016-12-05"

.field private static final VERSION_NAME:Ljava/lang/String; = "999.999.999.9"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->KEYS:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    const/16 v0, 0xd

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-static {v0, v1}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(II)V

    .line 12
    .line 13
    .line 14
    const/16 v0, 0xe

    .line 15
    .line 16
    const-string v2, "999.999.999.9"

    .line 17
    .line 18
    invoke-static {v0, v2}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/16 v0, 0xf

    .line 22
    .line 23
    const-string/jumbo v2, "version code:1,name:999.999.999.9default sdk info 2016-12-05"

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v2}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-static {v0, v0}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(IZ)V

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v1}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(IZ)V

    .line 34
    .line 35
    .line 36
    const/4 v2, 0x2

    .line 37
    invoke-static {v2, v1}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(IZ)V

    .line 38
    .line 39
    .line 40
    const/4 v3, 0x3

    .line 41
    invoke-static {v3, v0}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(IZ)V

    .line 42
    .line 43
    .line 44
    const/4 v3, 0x4

    .line 45
    invoke-static {v3, v0}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(IZ)V

    .line 46
    .line 47
    .line 48
    const/4 v3, 0x5

    .line 49
    invoke-static {v3, v0}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(IZ)V

    .line 50
    .line 51
    .line 52
    const/4 v3, 0x6

    .line 53
    invoke-static {v3, v0}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(IZ)V

    .line 54
    .line 55
    .line 56
    const/4 v3, 0x7

    .line 57
    invoke-static {v3, v0}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(IZ)V

    .line 58
    .line 59
    .line 60
    const/16 v3, 0x8

    .line 61
    .line 62
    invoke-static {v3, v0}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(IZ)V

    .line 63
    .line 64
    .line 65
    const/16 v3, 0xa

    .line 66
    .line 67
    invoke-static {v3, v0}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(II)V

    .line 68
    .line 69
    .line 70
    const/16 v3, 0xb

    .line 71
    .line 72
    invoke-static {v3, v0}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(IZ)V

    .line 73
    .line 74
    .line 75
    const/16 v3, 0x12

    .line 76
    .line 77
    invoke-static {v3, v2}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(II)V

    .line 78
    .line 79
    .line 80
    const/16 v3, 0x19

    .line 81
    .line 82
    const/16 v4, 0x20

    .line 83
    .line 84
    invoke-static {v3, v4}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(II)V

    .line 85
    .line 86
    .line 87
    const/16 v3, 0x22

    .line 88
    .line 89
    invoke-static {v3, v0}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(II)V

    .line 90
    .line 91
    .line 92
    const/16 v3, 0x23

    .line 93
    .line 94
    const/high16 v4, 0x500000

    .line 95
    .line 96
    invoke-static {v3, v4}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(II)V

    .line 97
    .line 98
    .line 99
    const/16 v3, 0x24

    .line 100
    .line 101
    invoke-static {v3, v0}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(II)V

    .line 102
    .line 103
    .line 104
    const/16 v3, 0x27

    .line 105
    .line 106
    invoke-static {v3, v0}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(II)V

    .line 107
    .line 108
    .line 109
    const/16 v3, 0x28

    .line 110
    .line 111
    const/high16 v4, 0x20000

    .line 112
    .line 113
    invoke-static {v3, v4}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(II)V

    .line 114
    .line 115
    .line 116
    const/16 v3, 0x29

    .line 117
    .line 118
    invoke-static {v3, v0}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(II)V

    .line 119
    .line 120
    .line 121
    const/16 v3, 0x2a

    .line 122
    .line 123
    invoke-static {v3, v2}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(II)V

    .line 124
    .line 125
    .line 126
    const/16 v2, 0x2f

    .line 127
    .line 128
    invoke-static {v2, v1}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(II)V

    .line 129
    .line 130
    .line 131
    const/16 v1, 0x30

    .line 132
    .line 133
    invoke-static {v1, v0}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(II)V

    .line 134
    .line 135
    .line 136
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

.method public static checkDebugTTPlayerLib()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    return v1

    .line 21
    :cond_1
    new-instance p1, Ljava/io/File;

    .line 22
    .line 23
    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    if-eqz p2, :cond_3

    .line 33
    .line 34
    new-instance p2, Ljava/io/File;

    .line 35
    .line 36
    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-nez p0, :cond_3

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-nez p0, :cond_3

    .line 62
    .line 63
    return v1

    .line 64
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 65
    :try_start_0
    new-instance p2, Ljava/io/FileInputStream;

    .line 66
    .line 67
    invoke-direct {p2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 68
    .line 69
    .line 70
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    .line 71
    .line 72
    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    .line 74
    .line 75
    const/16 p0, 0x400

    .line 76
    .line 77
    :try_start_2
    new-array p0, p0, [B

    .line 78
    .line 79
    :goto_1
    invoke-virtual {p2, p0}, Ljava/io/InputStream;->read([B)I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    const/4 v3, -0x1

    .line 84
    if-eq p1, v3, :cond_4

    .line 85
    .line 86
    invoke-virtual {v2, p0, v1, p1}, Ljava/io/OutputStream;->write([BII)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    goto :goto_4

    .line 92
    :catch_0
    move-object p0, v2

    .line 93
    goto :goto_8

    .line 94
    :catch_1
    move-object p0, v2

    .line 95
    goto :goto_c

    .line 96
    :cond_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 100
    .line 101
    .line 102
    if-eqz p3, :cond_5

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    .line 106
    .line 107
    :cond_5
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :catch_2
    move-exception p0

    .line 115
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 116
    .line 117
    .line 118
    :goto_2
    const/4 p0, 0x1

    .line 119
    return p0

    .line 120
    :catchall_1
    move-exception p1

    .line 121
    move-object v2, p0

    .line 122
    :goto_3
    move-object p0, p1

    .line 123
    goto :goto_4

    .line 124
    :catchall_2
    move-exception p1

    .line 125
    move-object p2, p0

    .line 126
    move-object v2, p2

    .line 127
    goto :goto_3

    .line 128
    :catch_3
    move-object p2, p0

    .line 129
    goto :goto_8

    .line 130
    :catch_4
    move-object p2, p0

    .line 131
    goto :goto_c

    .line 132
    :goto_4
    if-eqz v2, :cond_6

    .line 133
    .line 134
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 135
    .line 136
    .line 137
    goto :goto_5

    .line 138
    :catch_5
    move-exception p1

    .line 139
    goto :goto_6

    .line 140
    :cond_6
    :goto_5
    if-eqz p2, :cond_7

    .line 141
    .line 142
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 143
    .line 144
    .line 145
    goto :goto_7

    .line 146
    :goto_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 147
    .line 148
    .line 149
    :cond_7
    :goto_7
    throw p0

    .line 150
    :catch_6
    :goto_8
    if-eqz p0, :cond_8

    .line 151
    .line 152
    :try_start_5
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 153
    .line 154
    .line 155
    goto :goto_9

    .line 156
    :catch_7
    move-exception p0

    .line 157
    goto :goto_a

    .line 158
    :cond_8
    :goto_9
    if-eqz p2, :cond_9

    .line 159
    .line 160
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 161
    .line 162
    .line 163
    goto :goto_b

    .line 164
    :goto_a
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 165
    .line 166
    .line 167
    :cond_9
    :goto_b
    return v1

    .line 168
    :catch_8
    :goto_c
    if-eqz p0, :cond_a

    .line 169
    .line 170
    :try_start_6
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 171
    .line 172
    .line 173
    goto :goto_d

    .line 174
    :catch_9
    move-exception p0

    .line 175
    goto :goto_e

    .line 176
    :cond_a
    :goto_d
    if-eqz p2, :cond_b

    .line 177
    .line 178
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    .line 179
    .line 180
    .line 181
    goto :goto_f

    .line 182
    :goto_e
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 183
    .line 184
    .line 185
    :cond_b
    :goto_f
    return v1
.end method

.method public static final getAppCrashFilePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->CRASH_FILE_PATH:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lcom/ss/ttm/player/TTPlayerConfiger;->getAppCrashFileStorePath(Landroid/content/Context;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Ljava/io/File;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    new-instance p0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    sget-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    sget-char v0, Ljava/io/File;->separatorChar:C

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, "plugins"

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, "com.ss.ttm"

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, "data"

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v1, "files"

    .line 60
    .line 61
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    sget-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->CRASH_FILE_NAME:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0

    .line 77
    :cond_0
    invoke-static {}, Lcom/ss/ttm/player/TTPlayerConfiger;->isPrintInfo()Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-eqz p0, :cond_1

    .line 82
    .line 83
    new-instance p0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v0, "<TTPlayerConfigure.java,getAppCrashFileStorePath,278>carsh file path:"

    .line 89
    .line 90
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    sget-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->CRASH_FILE_PATH:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    const-string/jumbo v0, "ttplayer"

    .line 103
    .line 104
    .line 105
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    :cond_1
    sget-object p0, Lcom/ss/ttm/player/TTPlayerConfiger;->CRASH_FILE_PATH:Ljava/lang/String;

    .line 109
    .line 110
    return-object p0
.end method

.method public static final getAppCrashFilePath2(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    .line 20
    .line 21
    :cond_0
    sget-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->CRASH_FILE_PATH:Ljava/lang/String;

    .line 22
    .line 23
    const-string/jumbo v1, "ttplayer"

    .line 24
    .line 25
    .line 26
    if-nez v0, :cond_4

    .line 27
    .line 28
    sget-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    invoke-static {p0}, Lcom/ss/ttm/player/TTPlayerConfiger;->getAppFilesPath(Landroid/content/Context;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    sput-object p0, Lcom/ss/ttm/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    .line 37
    .line 38
    :cond_1
    invoke-static {}, Lcom/ss/ttm/player/TTPlayerConfiger;->isPrintInfo()Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    new-instance p0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v0, "<TTPlayerConfigure.java,getAppCrashFilePath2,211>app files path:"

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    sget-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    :cond_2
    sget-object p0, Lcom/ss/ttm/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    .line 67
    .line 68
    if-eqz p0, :cond_3

    .line 69
    .line 70
    new-instance p0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    sget-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    sget-char v0, Ljava/io/File;->separatorChar:C

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    sget-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->CRASH_FILE_NAME:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0

    .line 95
    :cond_3
    const/4 p0, 0x0

    .line 96
    return-object p0

    .line 97
    :cond_4
    invoke-static {}, Lcom/ss/ttm/player/TTPlayerConfiger;->isPrintInfo()Z

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    if-eqz p0, :cond_5

    .line 102
    .line 103
    new-instance p0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v0, "<TTPlayerConfigure.java,getAppCrashFileStorePath,195>carsh file path:"

    .line 109
    .line 110
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    sget-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->CRASH_FILE_PATH:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    :cond_5
    sget-object p0, Lcom/ss/ttm/player/TTPlayerConfiger;->CRASH_FILE_PATH:Ljava/lang/String;

    .line 126
    .line 127
    return-object p0
.end method

.method public static final getAppCrashFileStorePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    .line 20
    .line 21
    :cond_0
    sget-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->CRASH_FILE_PATH:Ljava/lang/String;

    .line 22
    .line 23
    const-string/jumbo v1, "ttplayer"

    .line 24
    .line 25
    .line 26
    if-nez v0, :cond_4

    .line 27
    .line 28
    sget-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    invoke-static {p0}, Lcom/ss/ttm/player/TTPlayerConfiger;->getAppFilesPath(Landroid/content/Context;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    sput-object p0, Lcom/ss/ttm/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    .line 37
    .line 38
    :cond_1
    invoke-static {}, Lcom/ss/ttm/player/TTPlayerConfiger;->isPrintInfo()Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    new-instance p0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v0, "<TTPlayerConfigure.java,getAppCrashFileStorePath,245>app files path:"

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    sget-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    :cond_2
    sget-object p0, Lcom/ss/ttm/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    .line 67
    .line 68
    if-eqz p0, :cond_3

    .line 69
    .line 70
    new-instance p0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    sget-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    sget-char v0, Ljava/io/File;->separatorChar:C

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    sget-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->CRASH_FILE_NAME:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0

    .line 95
    :cond_3
    const/4 p0, 0x0

    .line 96
    return-object p0

    .line 97
    :cond_4
    invoke-static {}, Lcom/ss/ttm/player/TTPlayerConfiger;->isPrintInfo()Z

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    if-eqz p0, :cond_5

    .line 102
    .line 103
    new-instance p0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v0, "<TTPlayerConfigure.java,getAppCrashFileStorePath,253>carsh file path:"

    .line 109
    .line 110
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    sget-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->CRASH_FILE_PATH:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    :cond_5
    sget-object p0, Lcom/ss/ttm/player/TTPlayerConfiger;->CRASH_FILE_PATH:Ljava/lang/String;

    .line 126
    .line 127
    return-object p0
.end method

.method public static final getAppFileCachePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    .line 20
    .line 21
    :cond_0
    sget-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->TTPLAYER_FILE_CACHE_DIR:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_1
    sget-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_2
    const/4 v0, 0x0

    .line 32
    if-nez p0, :cond_3

    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    sput-object p0, Lcom/ss/ttm/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    return-object p0

    .line 50
    :catch_0
    return-object v0
.end method

.method public static final getAppFilesPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    if-nez p0, :cond_1

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    sput-object p0, Lcom/ss/ttm/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    return-object p0

    .line 25
    :catch_0
    return-object v0
.end method

.method public static final getExternalStorageDirectoryCrashFilePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public static getPlayerLibraryPath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-static {v0}, Lcom/ss/ttm/player/TTPlayerConfiger;->getPlayerLibraryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPlayerLibraryPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_1

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/ss/ttm/player/TTPlayerConfiger;->getAppFilesPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/ss/ttm/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    .line 3
    :cond_1
    sget-object p0, Lcom/ss/ttm/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    if-nez p0, :cond_2

    sget-object p0, Lcom/ss/ttm/player/TTPlayerConfiger;->LIBRARY_DIR:Ljava/lang/String;

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Lcom/ss/ttm/player/TTPlayerConfiger;->LIBRARY_DIR:Ljava/lang/String;

    if-eqz p0, :cond_4

    .line 5
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->LIBRARY_DIR:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->PLAYER_LIBRARY_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ss/ttm/player/TTPlayerConfiger;->LIBRARY_DIR:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->PLAYER_LIBRARY_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->PLAYER_LIBRARY_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPlayerLibrarysDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->LIBRARY_DIR:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lcom/ss/ttm/player/TTPlayerConfiger;->getAppFilesPath(Landroid/content/Context;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    sget-char p0, Ljava/io/File;->separatorChar:C

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    sput-object p0, Lcom/ss/ttm/player/TTPlayerConfiger;->LIBRARY_DIR:Ljava/lang/String;

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_0
    sget-char p0, Ljava/io/File;->separatorChar:C

    .line 30
    .line 31
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    sget-object p0, Lcom/ss/ttm/player/TTPlayerConfiger;->LIBRARY_DIR:Ljava/lang/String;

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    sget-object v1, Lcom/ss/ttm/player/TTPlayerConfiger;->LIBRARY_DIR:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0
.end method

.method public static final getPlugerCrashFilePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->APP_PATH:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    sget-char v0, Ljava/io/File;->separatorChar:C

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "plugins"

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, "com.ss.ttm"

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, "data"

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, "files"

    .line 41
    .line 42
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    sget-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->CRASH_FILE_NAME:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method

.method public static final getValue(II)I
    .locals 1

    .line 8
    sget-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->KEYS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 9
    instance-of v0, p0, Lcom/ss/ttm/player/TTPlayerConfiger$IntValue;

    if-eqz v0, :cond_0

    .line 10
    check-cast p0, Lcom/ss/ttm/player/TTPlayerConfiger$IntValue;

    invoke-virtual {p0}, Lcom/ss/ttm/player/TTPlayerConfiger$IntValue;->getValue()I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public static final getValue(IJ)J
    .locals 1

    .line 11
    sget-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->KEYS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 12
    instance-of v0, p0, Lcom/ss/ttm/player/TTPlayerConfiger$LongValue;

    if-eqz v0, :cond_0

    .line 13
    check-cast p0, Lcom/ss/ttm/player/TTPlayerConfiger$LongValue;

    invoke-virtual {p0}, Lcom/ss/ttm/player/TTPlayerConfiger$LongValue;->getValue()J

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide p1
.end method

.method public static final getValue(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x11

    if-ne p0, v0, :cond_0

    .line 1
    sget-object p0, Lcom/ss/ttm/player/TTPlayerConfiger;->CRASH_FILE_NAME:Ljava/lang/String;

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->KEYS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/ttm/player/TTPlayerConfiger$Value;

    if-eqz p0, :cond_1

    .line 3
    instance-of v0, p0, Lcom/ss/ttm/player/TTPlayerConfiger$StringValue;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Lcom/ss/ttm/player/TTPlayerConfiger$StringValue;

    invoke-virtual {p0}, Lcom/ss/ttm/player/TTPlayerConfiger$StringValue;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public static final getValue(IZ)Z
    .locals 1

    .line 5
    sget-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->KEYS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 6
    instance-of v0, p0, Lcom/ss/ttm/player/TTPlayerConfiger$IntValue;

    if-eqz v0, :cond_1

    .line 7
    check-cast p0, Lcom/ss/ttm/player/TTPlayerConfiger$IntValue;

    invoke-virtual {p0}, Lcom/ss/ttm/player/TTPlayerConfiger$IntValue;->getValue()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method

.method public static final getVersion()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public static final isOnTTPlayer()Z
    .locals 4

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(II)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne v0, v2, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    invoke-static {v2, v1}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    const/16 v0, 0xb

    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(II)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-ne v0, v2, :cond_2

    .line 25
    .line 26
    return v2

    .line 27
    :cond_2
    const/4 v0, 0x7

    .line 28
    invoke-static {v0, v1}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(II)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eq v0, v2, :cond_5

    .line 33
    .line 34
    const/16 v0, 0x8

    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(II)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-ne v0, v2, :cond_3

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    const/16 v0, 0xa

    .line 44
    .line 45
    invoke-static {v0, v1}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(II)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/4 v3, 0x3

    .line 50
    if-lt v0, v3, :cond_4

    .line 51
    .line 52
    return v1

    .line 53
    :cond_4
    return v2

    .line 54
    :cond_5
    :goto_0
    return v1
.end method

.method public static isPrintInfo()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ss/ttm/player/TTPlayerConfiger;->IS_PRINT_INFO:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final moveFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, p1, p2, v0}, Lcom/ss/ttm/player/TTPlayerConfiger;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public static final setCrashFileName(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ss/ttm/player/TTPlayerConfiger;->CRASH_FILE_NAME:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final setCrashFilePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ss/ttm/player/TTPlayerConfiger;->CRASH_FILE_PATH:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final setLibraryName(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ss/ttm/player/TTPlayerConfiger;->PLAYER_LIBRARY_NAME:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final setLibrarysDir(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ss/ttm/player/TTPlayerConfiger;->LIBRARY_DIR:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final setValue(II)V
    .locals 3

    .line 2
    sget-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->KEYS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3
    instance-of v2, v1, Lcom/ss/ttm/player/TTPlayerConfiger$IntValue;

    if-eqz v2, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x6

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, v0}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(IZ)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 5
    :cond_0
    check-cast v1, Lcom/ss/ttm/player/TTPlayerConfiger$IntValue;

    .line 6
    invoke-virtual {v1, p1}, Lcom/ss/ttm/player/TTPlayerConfiger$IntValue;->setValue(I)V

    return-void

    .line 7
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_2
    new-instance v1, Lcom/ss/ttm/player/TTPlayerConfiger$IntValue;

    invoke-direct {v1, p0, p1}, Lcom/ss/ttm/player/TTPlayerConfiger$IntValue;-><init>(II)V

    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final setValue(IJ)V
    .locals 3

    .line 10
    sget-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->KEYS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 11
    instance-of v2, v1, Lcom/ss/ttm/player/TTPlayerConfiger$LongValue;

    if-eqz v2, :cond_0

    .line 12
    check-cast v1, Lcom/ss/ttm/player/TTPlayerConfiger$LongValue;

    .line 13
    invoke-virtual {v1, p1, p2}, Lcom/ss/ttm/player/TTPlayerConfiger$LongValue;->setValue(J)V

    return-void

    .line 14
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_1
    new-instance v1, Lcom/ss/ttm/player/TTPlayerConfiger$LongValue;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/ttm/player/TTPlayerConfiger$LongValue;-><init>(IJ)V

    .line 16
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final setValue(ILjava/lang/String;)V
    .locals 3

    .line 17
    sget-object v0, Lcom/ss/ttm/player/TTPlayerConfiger;->KEYS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 18
    instance-of v2, v1, Lcom/ss/ttm/player/TTPlayerConfiger$StringValue;

    if-eqz v2, :cond_0

    .line 19
    check-cast v1, Lcom/ss/ttm/player/TTPlayerConfiger$StringValue;

    .line 20
    invoke-virtual {v1, p1}, Lcom/ss/ttm/player/TTPlayerConfiger$StringValue;->setValue(Ljava/lang/String;)V

    return-void

    .line 21
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_1
    new-instance v1, Lcom/ss/ttm/player/TTPlayerConfiger$StringValue;

    invoke-direct {v1, p0, p1}, Lcom/ss/ttm/player/TTPlayerConfiger$StringValue;-><init>(ILjava/lang/String;)V

    .line 23
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final setValue(IZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(II)V

    return-void
.end method
