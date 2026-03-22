.class public Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;
.super Ljava/lang/Object;
.source "ThreadCPU.java"


# static fields
.field private static final INDEX_S_TIME:I = 0xd

.field private static final INDEX_U_TIME:I = 0xc

.field private static final MEDIA_LOAD_TAG:Ljava/lang/String; = "MediaLoad"

.field private static final PROC_PATH:Ljava/lang/String; = "/proc/self/stat"

.field private static final TAG:Ljava/lang/String; = "ThreadCPU"

.field private static final TASK_PATH_PREFIX:Ljava/lang/String; = "/proc/self/task/"

.field private static final TASK_PATH_SUFFIX:Ljava/lang/String; = "/stat"

.field public static gNativeThreadInterface:Lcom/ss/ttvideoengine/NativeThreadInterface; = null

.field private static final kClockTicksMs:I = 0xa

.field public static sCpuRefreshFix:Z = false

.field public static sUseNativeThread:Z = false


# instance fields
.field private final mCpuMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMdlCpuOverZero:I

.field private mNativeTids:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSingleThreads:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStaticThreads:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private total:Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;


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
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mCpuMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mStaticThreads:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mSingleThreads:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mNativeTids:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->total:Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mMdlCpuOverZero:I

    .line 22
    .line 23
    return-void
.end method

.method public static synthetic a(Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->lambda$refreshForVV$1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->lambda$refresh$0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->lambda$refreshStaticThreads$2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private getMultiCpuTime(Ljava/lang/String;Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;Ljava/lang/String;)Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;
    .locals 6

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    new-instance p2, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;

    .line 4
    .line 5
    invoke-direct {p2}, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->parseTime(Ljava/lang/String;)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    const-wide/16 v2, -0x1

    .line 13
    .line 14
    cmp-long p1, v0, v2

    .line 15
    .line 16
    if-eqz p1, :cond_3

    .line 17
    .line 18
    iget-object p1, p2, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->mMutiThreadUsage:Ljava/util/HashMap;

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    iget-object p1, p2, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->mMutiThreadUsage:Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    check-cast p1, Ljava/lang/Long;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    sub-long v2, v0, v2

    .line 43
    .line 44
    const-wide/16 v4, 0x0

    .line 45
    .line 46
    cmp-long p1, v2, v4

    .line 47
    .line 48
    if-lez p1, :cond_1

    .line 49
    .line 50
    iget p1, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mMdlCpuOverZero:I

    .line 51
    .line 52
    add-int/lit8 p1, p1, 0x1

    .line 53
    .line 54
    iput p1, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mMdlCpuOverZero:I

    .line 55
    .line 56
    :cond_1
    iget-object p1, p2, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->mMutiThreadUsage:Ljava/util/HashMap;

    .line 57
    .line 58
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {p1, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    :cond_2
    iget-wide v2, p2, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->cpuTime:J

    .line 66
    .line 67
    add-long/2addr v2, v0

    .line 68
    iput-wide v2, p2, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->cpuTime:J

    .line 69
    .line 70
    :cond_3
    return-object p2
.end method

.method private getSingleCpuTime(Ljava/lang/String;Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;)Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;
    .locals 9

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    new-instance p2, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;

    .line 4
    .line 5
    invoke-direct {p2}, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-boolean v0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->sUseNativeThread:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    sget-object v0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->gNativeThreadInterface:Lcom/ss/ttvideoengine/NativeThreadInterface;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    :try_start_0
    iget-object p1, p2, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->pid:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/NativeThreadInterface;->getThreadCpuUsage(I)F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput p1, p2, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->cpuUsage:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->parseTime(Ljava/lang/String;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    iget-wide v4, p2, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->currentTime:J

    .line 38
    .line 39
    const-wide/16 v6, 0x0

    .line 40
    .line 41
    cmp-long p1, v4, v6

    .line 42
    .line 43
    const/high16 v6, -0x40800000    # -1.0f

    .line 44
    .line 45
    if-eqz p1, :cond_3

    .line 46
    .line 47
    const-wide/16 v7, -0x1

    .line 48
    .line 49
    cmp-long p1, v0, v7

    .line 50
    .line 51
    if-nez p1, :cond_2

    .line 52
    .line 53
    iput v6, p2, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->cpuUsage:F

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    iget-wide v6, p2, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->cpuTime:J

    .line 57
    .line 58
    sub-long v6, v0, v6

    .line 59
    .line 60
    long-to-float p1, v6

    .line 61
    sub-long v4, v2, v4

    .line 62
    .line 63
    long-to-float v4, v4

    .line 64
    div-float/2addr p1, v4

    .line 65
    iput p1, p2, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->cpuUsage:F

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    iput v6, p2, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->cpuUsage:F

    .line 69
    .line 70
    :goto_0
    iput-wide v0, p2, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->cpuTime:J

    .line 71
    .line 72
    iput-wide v2, p2, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->currentTime:J

    .line 73
    .line 74
    :catch_0
    :goto_1
    return-object p2
.end method

.method private synthetic lambda$refresh$0()V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->sUseNativeThread:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->gNativeThreadInterface:Lcom/ss/ttvideoengine/NativeThreadInterface;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mNativeTids:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/ss/ttvideoengine/NativeThreadInterface;->carethreadList(Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    move v1, v0

    .line 16
    :goto_0
    iget-object v2, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mStaticThreads:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-ge v1, v2, :cond_3

    .line 23
    .line 24
    iget-object v2, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mStaticThreads:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;

    .line 31
    .line 32
    sget-boolean v3, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->sCpuRefreshFix:Z

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget v3, v2, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->type:I

    .line 40
    .line 41
    const/4 v4, 0x2

    .line 42
    if-ne v3, v4, :cond_2

    .line 43
    .line 44
    iget-object v3, v2, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->pids:Ljava/util/HashSet;

    .line 45
    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-lez v3, :cond_2

    .line 53
    .line 54
    iget-object v3, v2, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->pidName:Ljava/lang/String;

    .line 55
    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    const-string v4, "MediaLoad"

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_2

    .line 65
    .line 66
    iget v3, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mMdlCpuOverZero:I

    .line 67
    .line 68
    int-to-double v3, v3

    .line 69
    iget-object v5, v2, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->pids:Ljava/util/HashSet;

    .line 70
    .line 71
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    int-to-double v5, v5

    .line 76
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 77
    .line 78
    mul-double/2addr v5, v7

    .line 79
    div-double/2addr v3, v5

    .line 80
    double-to-float v3, v3

    .line 81
    iget-object v4, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mCpuMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 82
    .line 83
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    const-string v5, "mdl_cpu_rate"

    .line 88
    .line 89
    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    :cond_2
    invoke-direct {p0, v2}, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->refreshInternal(Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;)V

    .line 93
    .line 94
    .line 95
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mSingleThreads:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-ge v0, v1, :cond_4

    .line 105
    .line 106
    iget-object v1, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mSingleThreads:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 107
    .line 108
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    check-cast v1, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;

    .line 113
    .line 114
    invoke-direct {p0, v1}, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->refreshInternal(Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;)V

    .line 115
    .line 116
    .line 117
    add-int/lit8 v0, v0, 0x1

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_4
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->total:Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;

    .line 121
    .line 122
    if-eqz v0, :cond_5

    .line 123
    .line 124
    sget-boolean v1, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->sCpuRefreshFix:Z

    .line 125
    .line 126
    if-eqz v1, :cond_5

    .line 127
    .line 128
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->getProcInfo(Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;)Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;

    .line 129
    .line 130
    .line 131
    :cond_5
    return-void
.end method

.method private synthetic lambda$refreshForVV$1()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mSingleThreads:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mSingleThreads:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;

    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->refreshInternal(Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method private synthetic lambda$refreshStaticThreads$2()V
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "/proc/"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, "/task/"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    array-length v1, v0

    .line 45
    const/4 v2, 0x0

    .line 46
    :goto_0
    if-ge v2, v1, :cond_1

    .line 47
    .line 48
    aget-object v3, v0, v2

    .line 49
    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v3, "/stat"

    .line 63
    .line 64
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {p0, v3}, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->readFile(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 79
    if-nez v4, :cond_0

    .line 80
    .line 81
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->parseStat(Ljava/lang/String;)[Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {p0, v3}, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->transStaticThread([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    .line 87
    .line 88
    :catchall_0
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catchall_1
    :cond_1
    return-void
.end method

.method private refreshCpu(Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;)Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->total:Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    sget-boolean v1, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->sCpuRefreshFix:Z

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->getProcInfo(Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;)Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;

    .line 14
    .line 15
    .line 16
    :cond_1
    iget v0, p1, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->type:I

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-ne v0, v1, :cond_2

    .line 20
    .line 21
    iget-object v0, p1, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->pid:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p0, v0, p1}, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->getSingleThreadInfoByID(Ljava/lang/String;Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;)Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    const/4 v1, 0x2

    .line 28
    if-ne v0, v1, :cond_6

    .line 29
    .line 30
    iget-object v0, p1, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->pids:Ljava/util/HashSet;

    .line 31
    .line 32
    if-nez v0, :cond_3

    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_3
    const-wide/16 v0, 0x0

    .line 36
    .line 37
    iput-wide v0, p1, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->cpuTime:J

    .line 38
    .line 39
    iget-wide v2, p1, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->currentTime:J

    .line 40
    .line 41
    cmp-long v2, v2, v0

    .line 42
    .line 43
    if-nez v2, :cond_4

    .line 44
    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    iput-wide v2, p1, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->currentTime:J

    .line 50
    .line 51
    :cond_4
    iget-object v2, p1, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->pids:Ljava/util/HashSet;

    .line 52
    .line 53
    invoke-virtual {p0, v2, p1}, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->getMultiThreadInfoByID(Ljava/util/HashSet;Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;)Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;

    .line 54
    .line 55
    .line 56
    iget-wide v2, p1, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->cpuTimeStart:J

    .line 57
    .line 58
    cmp-long v0, v2, v0

    .line 59
    .line 60
    if-nez v0, :cond_5

    .line 61
    .line 62
    iget-wide v0, p1, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->cpuTime:J

    .line 63
    .line 64
    iput-wide v0, p1, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->cpuTimeStart:J

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_5
    iget-wide v0, p1, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->cpuTime:J

    .line 68
    .line 69
    sub-long/2addr v0, v2

    .line 70
    long-to-float v0, v0

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 72
    .line 73
    .line 74
    move-result-wide v1

    .line 75
    iget-wide v3, p1, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->currentTime:J

    .line 76
    .line 77
    sub-long/2addr v1, v3

    .line 78
    long-to-float v1, v1

    .line 79
    div-float/2addr v0, v1

    .line 80
    iput v0, p1, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->cpuUsage:F

    .line 81
    .line 82
    :cond_6
    :goto_0
    return-object p1
.end method

.method private refreshForVV()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mSingleThreads:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mSingleThreads:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-lez v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mSingleThreads:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;

    .line 29
    .line 30
    iget-wide v0, v0, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->cpuTime:J

    .line 31
    .line 32
    const-wide/16 v2, -0x1

    .line 33
    .line 34
    cmp-long v0, v0, v2

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    new-instance v0, Lcom/ss/ttvideoengine/playermetrcis/c;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/ss/ttvideoengine/playermetrcis/c;-><init>(Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->addExecuteTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private refreshInternal(Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->refreshCpu(Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;)Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_4

    .line 5
    .line 6
    iget-object v0, p1, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->pidName:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    const-string v1, "-"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p1, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->pidName:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-lez v0, :cond_0

    .line 25
    .line 26
    iget-object v1, p1, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->pidName:Ljava/lang/String;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object v0, p1, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->pidName:Ljava/lang/String;

    .line 45
    .line 46
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    .line 53
    .line 54
    sget-boolean v1, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->sCpuRefreshFix:Z

    .line 55
    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    iget p1, p1, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->cpuUsage:F

    .line 59
    .line 60
    const/high16 v1, -0x40800000    # -1.0f

    .line 61
    .line 62
    cmpl-float v1, p1, v1

    .line 63
    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    iget-object v1, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mCpuMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 67
    .line 68
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    iget-object v1, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mCpuMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 77
    .line 78
    iget p1, p1, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->cpuUsage:F

    .line 79
    .line 80
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method protected getMultiThreadInfoByID(Ljava/util/HashSet;Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;)Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;",
            ")",
            "Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    new-instance p2, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;

    .line 4
    .line 5
    invoke-direct {p2}, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mMdlCpuOverZero:I

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/String;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v2, "/proc/self/task/"

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v2, "/stat"

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->readFile(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    invoke-direct {p0, v1, p2, v0}, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->getMultiCpuTime(Ljava/lang/String;Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;Ljava/lang/String;)Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    return-object p2
.end method

.method public getPlayerThreads()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mCpuMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method protected getProcInfo(Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;)Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;
    .locals 3

    .line 1
    sget-boolean v0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->sUseNativeThread:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->gNativeThreadInterface:Lcom/ss/ttvideoengine/NativeThreadInterface;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0, p1}, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->getSingleCpuTime(Ljava/lang/String;Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;)Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v0, "/proc/self/stat"

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->readFile(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p0, v0, p1}, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->getSingleCpuTime(Ljava/lang/String;Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;)Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;

    .line 21
    .line 22
    .line 23
    :goto_0
    iget v0, p1, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->cpuUsage:F

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    cmpl-float v1, v0, v1

    .line 27
    .line 28
    if-lez v1, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mCpuMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    .line 32
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v2, "proc"

    .line 37
    .line 38
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    :cond_1
    return-object p1
.end method

.method protected getSingleThreadInfoByID(Ljava/lang/String;Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;)Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    new-instance p2, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;

    .line 4
    .line 5
    invoke-direct {p2}, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    if-nez p1, :cond_1

    .line 9
    .line 10
    return-object p2

    .line 11
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "/proc/self/task/"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p1, "/stat"

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->readFile(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->getSingleCpuTime(Ljava/lang/String;Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;)Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;

    .line 38
    .line 39
    .line 40
    return-object p2
.end method

.method protected initProc(Ljava/lang/String;I)V
    .locals 1

    .line 1
    new-instance p2, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;

    .line 2
    .line 3
    invoke-direct {p2}, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p2, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->pidName:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string v0, "MediaLoad"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x2

    .line 19
    iput p1, p2, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->type:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x1

    .line 23
    iput p1, p2, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->type:I

    .line 24
    .line 25
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mStaticThreads:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method initThreadMonitor(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mStaticThreads:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    .line 12
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mSingleThreads:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 18
    .line 19
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mNativeTids:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    .line 26
    new-instance v1, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;

    .line 27
    .line 28
    invoke-direct {v1}, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v2, "proc"

    .line 32
    .line 33
    iput-object v2, v1, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->pidName:Ljava/lang/String;

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    iput v2, v1, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->type:I

    .line 37
    .line 38
    iput-object v1, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->total:Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;

    .line 39
    .line 40
    new-instance v1, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;

    .line 41
    .line 42
    invoke-direct {v1}, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v3, "self"

    .line 46
    .line 47
    iput-object v3, v1, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->pidName:Ljava/lang/String;

    .line 48
    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v4, ""

    .line 62
    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    iput-object v3, v1, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->pid:Ljava/lang/String;

    .line 71
    .line 72
    iput v2, v1, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->type:I

    .line 73
    .line 74
    iget-object v3, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mStaticThreads:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 75
    .line 76
    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-ge v0, v1, :cond_1

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Ljava/lang/String;

    .line 90
    .line 91
    add-int/lit8 v0, v0, 0x1

    .line 92
    .line 93
    invoke-virtual {p0, v1, v0}, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->initProc(Ljava/lang/String;I)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    return v2
.end method

.method protected parseStat(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    move-object v3, v0

    .line 8
    move v2, v1

    .line 9
    move v4, v2

    .line 10
    :goto_0
    array-length v5, p1

    .line 11
    if-ge v2, v5, :cond_3

    .line 12
    .line 13
    aget-char v5, p1, v2

    .line 14
    .line 15
    const/16 v6, 0x20

    .line 16
    .line 17
    if-ne v5, v6, :cond_0

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    new-instance v3, Ljava/lang/String;

    .line 22
    .line 23
    invoke-direct {v3, p1, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 24
    .line 25
    .line 26
    :cond_0
    const/16 v6, 0x28

    .line 27
    .line 28
    if-ne v5, v6, :cond_1

    .line 29
    .line 30
    add-int/lit8 v4, v2, 0x1

    .line 31
    .line 32
    :cond_1
    const/16 v6, 0x29

    .line 33
    .line 34
    if-ne v5, v6, :cond_2

    .line 35
    .line 36
    new-instance v0, Ljava/lang/String;

    .line 37
    .line 38
    sub-int/2addr v2, v4

    .line 39
    invoke-direct {v0, p1, v4, v2}, Ljava/lang/String;-><init>([CII)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    :goto_1
    filled-new-array {v3, v0}, [Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    return-object p1
.end method

.method protected parseTime(Ljava/lang/String;)J
    .locals 10

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    if-eqz p1, :cond_7

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    goto :goto_3

    .line 12
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    move-object v7, v2

    .line 19
    move v4, v3

    .line 20
    move v5, v4

    .line 21
    move v6, v5

    .line 22
    :goto_0
    array-length v8, p1

    .line 23
    if-ge v3, v8, :cond_5

    .line 24
    .line 25
    aget-char v8, p1, v3

    .line 26
    .line 27
    const/16 v9, 0x20

    .line 28
    .line 29
    if-ne v8, v9, :cond_3

    .line 30
    .line 31
    const/16 v9, 0xc

    .line 32
    .line 33
    if-ne v4, v9, :cond_1

    .line 34
    .line 35
    new-instance v7, Ljava/lang/String;

    .line 36
    .line 37
    sub-int v9, v3, v5

    .line 38
    .line 39
    invoke-direct {v7, p1, v5, v9}, Ljava/lang/String;-><init>([CII)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/16 v9, 0xd

    .line 44
    .line 45
    if-ne v4, v9, :cond_2

    .line 46
    .line 47
    new-instance v2, Ljava/lang/String;

    .line 48
    .line 49
    sub-int/2addr v3, v5

    .line 50
    invoke-direct {v2, p1, v5, v3}, Ljava/lang/String;-><init>([CII)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    :goto_1
    if-eqz v6, :cond_3

    .line 55
    .line 56
    add-int/lit8 v4, v4, 0x1

    .line 57
    .line 58
    add-int/lit8 v5, v3, 0x1

    .line 59
    .line 60
    :cond_3
    const/16 v9, 0x29

    .line 61
    .line 62
    if-ne v8, v9, :cond_4

    .line 63
    .line 64
    const/4 v6, 0x1

    .line 65
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_5
    :goto_2
    if-eqz v7, :cond_7

    .line 69
    .line 70
    if-nez v2, :cond_6

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_6
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    add-int/2addr p1, v0

    .line 82
    mul-int/lit8 p1, p1, 0xa

    .line 83
    .line 84
    int-to-long v0, p1

    .line 85
    :catchall_0
    :cond_7
    :goto_3
    return-wide v0
.end method

.method protected readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 3
    .line 4
    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5
    .line 6
    .line 7
    :try_start_1
    new-instance p1, Ljava/io/BufferedInputStream;

    .line 8
    .line 9
    invoke-direct {p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    .line 11
    .line 12
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const/16 v2, 0x400

    .line 18
    .line 19
    new-array v2, v2, [B

    .line 20
    .line 21
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/4 v4, -0x1

    .line 26
    if-eq v3, v4, :cond_0

    .line 27
    .line 28
    new-instance v4, Ljava/lang/String;

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    invoke-direct {v4, v2, v5, v3}, Ljava/lang/String;-><init>([BII)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto :goto_6

    .line 40
    :catch_0
    move-object v0, p1

    .line 41
    goto :goto_3

    .line 42
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    :try_start_3
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catch_1
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    .line 53
    .line 54
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :catch_2
    move-exception p1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    .line 61
    .line 62
    :goto_2
    return-object v0

    .line 63
    :catchall_1
    move-exception p1

    .line 64
    move-object v6, v0

    .line 65
    move-object v0, p1

    .line 66
    move-object p1, v6

    .line 67
    goto :goto_6

    .line 68
    :catchall_2
    move-exception p1

    .line 69
    move-object v1, v0

    .line 70
    move-object v0, p1

    .line 71
    move-object p1, v1

    .line 72
    goto :goto_6

    .line 73
    :catch_3
    move-object v1, v0

    .line 74
    :catch_4
    :goto_3
    :try_start_5
    const-string p1, ""
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 75
    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 79
    .line 80
    .line 81
    goto :goto_4

    .line 82
    :catch_5
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    .line 85
    .line 86
    :cond_1
    :goto_4
    if-eqz v1, :cond_2

    .line 87
    .line 88
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 89
    .line 90
    .line 91
    goto :goto_5

    .line 92
    :catch_6
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 94
    .line 95
    .line 96
    :cond_2
    :goto_5
    return-object p1

    .line 97
    :goto_6
    if-eqz p1, :cond_3

    .line 98
    .line 99
    :try_start_8
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 100
    .line 101
    .line 102
    goto :goto_7

    .line 103
    :catch_7
    move-exception p1

    .line 104
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 105
    .line 106
    .line 107
    :cond_3
    :goto_7
    if-eqz v1, :cond_4

    .line 108
    .line 109
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 110
    .line 111
    .line 112
    goto :goto_8

    .line 113
    :catch_8
    move-exception p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 115
    .line 116
    .line 117
    :cond_4
    :goto_8
    throw v0
.end method

.method public refresh()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/playermetrcis/d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/ss/ttvideoengine/playermetrcis/d;-><init>(Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->addExecuteTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public refreshSingleThreads(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

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
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mSingleThreads:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    const-string v0, "=|;"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mSingleThreads:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mNativeTids:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    :goto_0
    array-length v1, p1

    .line 31
    const/4 v2, 0x1

    .line 32
    sub-int/2addr v1, v2

    .line 33
    if-ge v0, v1, :cond_3

    .line 34
    .line 35
    new-instance v1, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;

    .line 36
    .line 37
    invoke-direct {v1}, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;-><init>()V

    .line 38
    .line 39
    .line 40
    iput v2, v1, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->type:I

    .line 41
    .line 42
    aget-object v2, p1, v0

    .line 43
    .line 44
    iput-object v2, v1, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->pidName:Ljava/lang/String;

    .line 45
    .line 46
    add-int/lit8 v2, v0, 0x1

    .line 47
    .line 48
    aget-object v3, p1, v2

    .line 49
    .line 50
    iput-object v3, v1, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->pid:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v3, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mSingleThreads:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 53
    .line 54
    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    sget-boolean v1, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->sUseNativeThread:Z

    .line 58
    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mNativeTids:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 62
    .line 63
    aget-object v2, p1, v2

    .line 64
    .line 65
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    :catch_0
    :cond_2
    add-int/lit8 v0, v0, 0x2

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    return-void
.end method

.method public refreshStaticThreads()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/playermetrcis/e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/ss/ttvideoengine/playermetrcis/e;-><init>(Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->addExecuteTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public refreshWhenBegin()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->refreshForVV()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public refreshWhenEnd()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->refreshForVV()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected transMulti([Ljava/lang/String;I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mStaticThreads:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->pids:Ljava/util/HashSet;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mStaticThreads:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;

    .line 20
    .line 21
    new-instance v1, Ljava/util/HashSet;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, v0, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->pids:Ljava/util/HashSet;

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mStaticThreads:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 29
    .line 30
    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->mMutiThreadUsage:Ljava/util/HashMap;

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mStaticThreads:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 41
    .line 42
    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;

    .line 47
    .line 48
    new-instance v1, Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v1, v0, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->mMutiThreadUsage:Ljava/util/HashMap;

    .line 54
    .line 55
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mStaticThreads:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 56
    .line 57
    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->pids:Ljava/util/HashSet;

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mStaticThreads:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 68
    .line 69
    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    check-cast p2, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;

    .line 74
    .line 75
    iget-object p2, p2, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->pids:Ljava/util/HashSet;

    .line 76
    .line 77
    if-eqz p2, :cond_2

    .line 78
    .line 79
    const/4 v0, 0x0

    .line 80
    aget-object v1, p1, v0

    .line 81
    .line 82
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_2

    .line 87
    .line 88
    aget-object p1, p1, v0

    .line 89
    .line 90
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    :cond_2
    const/4 p1, 0x1

    .line 94
    return p1
.end method

.method transStaticThread([Ljava/lang/String;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mStaticThreads:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    add-int/2addr v2, v0

    .line 10
    if-ge v1, v2, :cond_2

    .line 11
    .line 12
    array-length v2, p1

    .line 13
    const/4 v3, 0x2

    .line 14
    if-ne v2, v3, :cond_1

    .line 15
    .line 16
    aget-object v2, p1, v0

    .line 17
    .line 18
    iget-object v4, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mStaticThreads:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    .line 20
    invoke-virtual {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;

    .line 25
    .line 26
    iget-object v4, v4, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->pidName:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mStaticThreads:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;

    .line 41
    .line 42
    iget v0, v0, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->type:I

    .line 43
    .line 44
    if-ne v0, v3, :cond_0

    .line 45
    .line 46
    invoke-virtual {p0, p1, v1}, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->transMulti([Ljava/lang/String;I)Z

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadCPU;->mStaticThreads:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->reset()V

    .line 59
    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    aget-object p1, p1, v1

    .line 63
    .line 64
    iput-object p1, v0, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->pid:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 67
    .line 68
    .line 69
    move-result-wide v1

    .line 70
    iput-wide v1, v0, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->currentTime:J

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    :goto_1
    return-void
.end method
