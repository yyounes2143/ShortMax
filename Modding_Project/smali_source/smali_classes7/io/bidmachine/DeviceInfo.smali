.class public Lio/bidmachine/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/DeviceInfo$a;,
        Lio/bidmachine/DeviceInfo$d;,
        Lio/bidmachine/DeviceInfo$b;,
        Lio/bidmachine/DeviceInfo$c;
    }
.end annotation


# static fields
.field private static final OS_NAME:Ljava/lang/String; = "android"

.field private static volatile instance:Lio/bidmachine/DeviceInfo;


# instance fields
.field private final audio:Lio/bidmachine/DeviceInfo$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final cache:Lio/bidmachine/w3;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final cpu:Lio/bidmachine/DeviceInfo$b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final gpu:Lio/bidmachine/DeviceInfo$c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private hwv:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private isRooted:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final isTablet:Z

.field public final manufacturer:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final model:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final osName:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final osVersion:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final phoneCarrier:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final phoneMCCMNC:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final ram:Lio/bidmachine/DeviceInfo$d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final screenDensity:F

.field public final screenDpi:I

.field private totalDiskSpaceInMB:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/bidmachine/DeviceInfo$a;

    .line 5
    .line 6
    invoke-direct {v0}, Lio/bidmachine/DeviceInfo$a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/bidmachine/DeviceInfo;->audio:Lio/bidmachine/DeviceInfo$a;

    .line 10
    .line 11
    new-instance v0, Lio/bidmachine/DeviceInfo$d;

    .line 12
    .line 13
    invoke-direct {v0}, Lio/bidmachine/DeviceInfo$d;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lio/bidmachine/DeviceInfo;->ram:Lio/bidmachine/DeviceInfo$d;

    .line 17
    .line 18
    new-instance v0, Lio/bidmachine/w3;

    .line 19
    .line 20
    invoke-direct {v0}, Lio/bidmachine/w3;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lio/bidmachine/DeviceInfo;->cache:Lio/bidmachine/w3;

    .line 24
    .line 25
    new-instance v1, Lio/bidmachine/DeviceInfo$b;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Lio/bidmachine/DeviceInfo$b;-><init>(Lio/bidmachine/w3;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lio/bidmachine/DeviceInfo;->cpu:Lio/bidmachine/DeviceInfo$b;

    .line 31
    .line 32
    new-instance v1, Lio/bidmachine/DeviceInfo$c;

    .line 33
    .line 34
    invoke-direct {v1, v0}, Lio/bidmachine/DeviceInfo$c;-><init>(Lio/bidmachine/w3;)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lio/bidmachine/DeviceInfo;->gpu:Lio/bidmachine/DeviceInfo$c;

    .line 38
    .line 39
    const-string v0, "android"

    .line 40
    .line 41
    iput-object v0, p0, Lio/bidmachine/DeviceInfo;->osName:Ljava/lang/String;

    .line 42
    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 44
    .line 45
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lio/bidmachine/DeviceInfo;->osVersion:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {}, Lyq/b;->b()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lio/bidmachine/DeviceInfo;->manufacturer:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {}, Lyq/b;->c()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Lio/bidmachine/DeviceInfo;->model:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {p1}, Lfr/c;->l(Landroid/content/Context;)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    iput v0, p0, Lio/bidmachine/DeviceInfo;->screenDpi:I

    .line 68
    .line 69
    invoke-static {p1}, Lyq/b;->g(Landroid/content/Context;)F

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    iput v0, p0, Lio/bidmachine/DeviceInfo;->screenDensity:F

    .line 74
    .line 75
    invoke-static {p1}, Lyq/b;->h(Landroid/content/Context;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    iput-boolean v0, p0, Lio/bidmachine/DeviceInfo;->isTablet:Z

    .line 80
    .line 81
    invoke-static {p1}, Lyq/b;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iput-object v0, p0, Lio/bidmachine/DeviceInfo;->phoneMCCMNC:Ljava/lang/String;

    .line 86
    .line 87
    invoke-static {p1}, Lyq/b;->f(Landroid/content/Context;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iput-object p1, p0, Lio/bidmachine/DeviceInfo;->phoneCarrier:Ljava/lang/String;

    .line 92
    .line 93
    return-void
.end method

.method private getKernelVersionThroughProcVersion()Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    .line 3
    .line 4
    const-string v2, "/proc/version"

    .line 5
    .line 6
    const-string v3, "r"

    .line 7
    .line 8
    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    .line 10
    .line 11
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    invoke-static {v1}, Lio/bidmachine/core/g;->j(Ljava/io/Closeable;)V

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_1
    move-exception v1

    .line 22
    move-object v4, v1

    .line 23
    move-object v1, v0

    .line 24
    move-object v0, v4

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-object v1, v0

    .line 27
    goto :goto_1

    .line 28
    :goto_0
    invoke-static {v1}, Lio/bidmachine/core/g;->j(Ljava/io/Closeable;)V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    :catch_1
    :goto_1
    invoke-static {v1}, Lio/bidmachine/core/g;->j(Ljava/io/Closeable;)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

.method private getKernelVersionThroughUName()Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v2, "uname -a"

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 9
    .line 10
    .line 11
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 12
    :try_start_1
    new-instance v2, Ljava/io/InputStreamReader;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 19
    .line 20
    .line 21
    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    .line 22
    .line 23
    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 24
    .line 25
    .line 26
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 30
    invoke-static {v3}, Lio/bidmachine/core/g;->j(Ljava/io/Closeable;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v2}, Lio/bidmachine/core/g;->j(Ljava/io/Closeable;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 37
    .line 38
    .line 39
    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_1

    .line 42
    :catchall_1
    move-exception v3

    .line 43
    move-object v4, v3

    .line 44
    move-object v3, v0

    .line 45
    move-object v0, v4

    .line 46
    goto :goto_1

    .line 47
    :catch_0
    move-object v3, v0

    .line 48
    goto :goto_2

    .line 49
    :catchall_2
    move-exception v2

    .line 50
    move-object v3, v0

    .line 51
    move-object v0, v2

    .line 52
    move-object v2, v3

    .line 53
    goto :goto_1

    .line 54
    :catch_1
    move-object v2, v0

    .line 55
    :goto_0
    move-object v3, v2

    .line 56
    goto :goto_2

    .line 57
    :catchall_3
    move-exception v1

    .line 58
    move-object v2, v0

    .line 59
    move-object v3, v2

    .line 60
    move-object v0, v1

    .line 61
    move-object v1, v3

    .line 62
    goto :goto_1

    .line 63
    :catch_2
    move-object v1, v0

    .line 64
    move-object v2, v1

    .line 65
    goto :goto_0

    .line 66
    :goto_1
    invoke-static {v3}, Lio/bidmachine/core/g;->j(Ljava/io/Closeable;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v2}, Lio/bidmachine/core/g;->j(Ljava/io/Closeable;)V

    .line 70
    .line 71
    .line 72
    if-eqz v1, :cond_0

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 75
    .line 76
    .line 77
    :cond_0
    throw v0

    .line 78
    :catch_3
    :goto_2
    invoke-static {v3}, Lio/bidmachine/core/g;->j(Ljava/io/Closeable;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v2}, Lio/bidmachine/core/g;->j(Ljava/io/Closeable;)V

    .line 82
    .line 83
    .line 84
    if-eqz v1, :cond_1

    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 87
    .line 88
    .line 89
    :cond_1
    return-object v0
.end method

.method public static obtain(Landroid/content/Context;)Lio/bidmachine/DeviceInfo;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/DeviceInfo;->instance:Lio/bidmachine/DeviceInfo;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v1, Lio/bidmachine/DeviceInfo;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    sget-object v0, Lio/bidmachine/DeviceInfo;->instance:Lio/bidmachine/DeviceInfo;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lio/bidmachine/DeviceInfo;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lio/bidmachine/DeviceInfo;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lio/bidmachine/DeviceInfo;->instance:Lio/bidmachine/DeviceInfo;

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
    monitor-exit v1

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0

    .line 26
    :cond_1
    :goto_2
    return-object v0
.end method


# virtual methods
.method getAudio()Lio/bidmachine/DeviceInfo$a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo;->audio:Lio/bidmachine/DeviceInfo$a;

    .line 2
    .line 3
    return-object v0
.end method

.method getAvailableDiskSpaceInMB()Ljava/lang/Long;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lio/bidmachine/core/g;->J()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance v1, Landroid/os/StatFs;

    .line 10
    .line 11
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    mul-long/2addr v2, v4

    .line 31
    const-wide/32 v4, 0x100000

    .line 32
    .line 33
    .line 34
    div-long/2addr v2, v4

    .line 35
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :catch_0
    return-object v0
.end method

.method getCpu()Lio/bidmachine/DeviceInfo$b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo;->cpu:Lio/bidmachine/DeviceInfo$b;

    .line 2
    .line 3
    return-object v0
.end method

.method getGpu()Lio/bidmachine/DeviceInfo$c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo;->gpu:Lio/bidmachine/DeviceInfo$c;

    .line 2
    .line 3
    return-object v0
.end method

.method getHWV()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo;->hwv:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-direct {p0}, Lio/bidmachine/DeviceInfo;->getKernelVersionThroughProcVersion()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    iput-object v0, p0, Lio/bidmachine/DeviceInfo;->hwv:Ljava/lang/String;

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_1
    invoke-direct {p0}, Lio/bidmachine/DeviceInfo;->getKernelVersionThroughUName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lio/bidmachine/DeviceInfo;->hwv:Ljava/lang/String;

    .line 24
    .line 25
    return-object v0
.end method

.method getRam()Lio/bidmachine/DeviceInfo$d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo;->ram:Lio/bidmachine/DeviceInfo$d;

    .line 2
    .line 3
    return-object v0
.end method

.method getTotalDiskSpaceInMB()Ljava/lang/Long;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo;->totalDiskSpaceInMB:Ljava/lang/Long;

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
    :try_start_0
    invoke-static {}, Lio/bidmachine/core/g;->J()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_1
    new-instance v1, Landroid/os/StatFs;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCountLong()J

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    mul-long/2addr v2, v4

    .line 36
    const-wide/32 v4, 0x100000

    .line 37
    .line 38
    .line 39
    div-long/2addr v2, v4

    .line 40
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iput-object v1, p0, Lio/bidmachine/DeviceInfo;->totalDiskSpaceInMB:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    return-object v1

    .line 47
    :catch_0
    return-object v0
.end method

.method isDeviceRooted()Z
    .locals 10

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo;->isRooted:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    :try_start_0
    const-string v2, "/sbin/su"

    .line 13
    .line 14
    const-string v3, "/system/bin/su"

    .line 15
    .line 16
    const-string v4, "/system/xbin/su"

    .line 17
    .line 18
    const-string v5, "/data/local/xbin/su"

    .line 19
    .line 20
    const-string v6, "/data/local/bin/su"

    .line 21
    .line 22
    const-string v7, "/system/sd/xbin/su"

    .line 23
    .line 24
    const-string v8, "/system/bin/failsafe/su"

    .line 25
    .line 26
    const-string v9, "/data/local/su"

    .line 27
    .line 28
    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    move v3, v1

    .line 33
    :goto_0
    const/16 v4, 0x8

    .line 34
    .line 35
    if-ge v3, v4, :cond_2

    .line 36
    .line 37
    aget-object v4, v2, v3

    .line 38
    .line 39
    new-instance v5, Ljava/io/File;

    .line 40
    .line 41
    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 51
    .line 52
    iput-object v2, p0, Lio/bidmachine/DeviceInfo;->isRooted:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    return v0

    .line 55
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    :cond_2
    const/4 v2, 0x0

    .line 59
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    const-string v4, "/system/xbin/which"

    .line 64
    .line 65
    const-string v5, "su"

    .line 66
    .line 67
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    new-instance v3, Ljava/io/BufferedReader;

    .line 76
    .line 77
    new-instance v4, Ljava/io/InputStreamReader;

    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 84
    .line 85
    .line 86
    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    if-eqz v3, :cond_3

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    move v0, v1

    .line 97
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    iput-object v3, p0, Lio/bidmachine/DeviceInfo;->isRooted:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 104
    .line 105
    .line 106
    return v0

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    if-eqz v2, :cond_4

    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 111
    .line 112
    .line 113
    :cond_4
    throw v0

    .line 114
    :catch_1
    if-eqz v2, :cond_5

    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 117
    .line 118
    .line 119
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 120
    .line 121
    iput-object v0, p0, Lio/bidmachine/DeviceInfo;->isRooted:Ljava/lang/Boolean;

    .line 122
    .line 123
    return v1
.end method

.method updateHwInfo(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo;->cpu:Lio/bidmachine/DeviceInfo$b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/DeviceInfo$b;->f(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/DeviceInfo;->gpu:Lio/bidmachine/DeviceInfo$c;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lio/bidmachine/DeviceInfo$c;->j(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lio/bidmachine/DeviceInfo;->ram:Lio/bidmachine/DeviceInfo$d;

    .line 12
    .line 13
    invoke-virtual {p1}, Lio/bidmachine/DeviceInfo$d;->e()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
