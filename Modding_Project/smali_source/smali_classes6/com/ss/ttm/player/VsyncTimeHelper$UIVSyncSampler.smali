.class final Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;
.super Ljava/lang/Object;
.source "VsyncTimeHelper.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttm/player/VsyncTimeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UIVSyncSampler"
.end annotation


# static fields
.field private static final BUNDLE_TIMESTAMP:Ljava/lang/String; = "time"

.field private static final BUNDLE_VSYNC_DURATION:Ljava/lang/String; = "vsync"

.field private static final INSTANCE:Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;

.field private static final MSG_ADD_OBSERVER:I = 0x0

.field private static final MSG_REMOVE_OBSERVER:I = 0x1

.field private static final MSG_UPDATE_VSYNC_DURATION:I = 0x4

.field private static final MSG_VSYNC_COMING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "UIVSyncSampler"


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private choreographer:Landroid/view/Choreographer;

.field private final choreographerOwnerThread:Landroid/os/HandlerThread;

.field private currentUIFps:I

.field private final handler:Landroid/os/Handler;

.field public volatile lastSampledVsyncTimeNs:J

.field private lowestUIFps:I

.field private final mainHandler:Landroid/os/Handler;

.field private observerCount:I

.field public volatile sampledVsyncTimeNs:J

.field public volatile skipedFrameCount:I

.field private uiVsyncDurationNs:J

.field private vsyncSampleCount:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->INSTANCE:Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide v0, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->sampledVsyncTimeNs:J

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->lastSampledVsyncTimeNs:J

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->skipedFrameCount:I

    .line 15
    .line 16
    new-instance v0, Landroid/os/HandlerThread;

    .line 17
    .line 18
    const-string v1, "Vsync:Handler"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->choreographerOwnerThread:Landroid/os/HandlerThread;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 26
    .line 27
    .line 28
    new-instance v1, Landroid/os/Handler;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->handler:Landroid/os/Handler;

    .line 38
    .line 39
    new-instance v0, Landroid/os/Bundle;

    .line 40
    .line 41
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->bundle:Landroid/os/Bundle;

    .line 45
    .line 46
    new-instance v0, Landroid/os/Handler;

    .line 47
    .line 48
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->mainHandler:Landroid/os/Handler;

    .line 56
    .line 57
    new-instance v1, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler$1;

    .line 58
    .line 59
    invoke-direct {v1, p0}, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler$1;-><init>(Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->currentUIFps:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$100(Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->lowestUIFps:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$300(Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;)Landroid/view/Choreographer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->choreographer:Landroid/view/Choreographer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$302(Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;Landroid/view/Choreographer;)Landroid/view/Choreographer;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->choreographer:Landroid/view/Choreographer;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$400(Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->observerCount:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$500()Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->INSTANCE:Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;

    .line 2
    .line 3
    return-object v0
.end method

.method private addObserverInternal()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->observerCount:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->observerCount:I

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "add observer cnt = "

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget v2, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->observerCount:I

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v2, "UIVSyncSampler"

    .line 27
    .line 28
    invoke-static {v2, v0}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget v0, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->observerCount:I

    .line 32
    .line 33
    if-ne v0, v1, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->choreographer:Landroid/view/Choreographer;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->INSTANCE:Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;

    .line 2
    .line 3
    return-object v0
.end method

.method private recordUIFps(J)V
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->uiVsyncDurationNs:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-wide v0, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->vsyncSampleCount:J

    .line 11
    .line 12
    const-wide/16 v4, 0x1

    .line 13
    .line 14
    add-long/2addr v0, v4

    .line 15
    iput-wide v0, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->vsyncSampleCount:J

    .line 16
    .line 17
    iput-wide p1, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->sampledVsyncTimeNs:J

    .line 18
    .line 19
    iget-wide p1, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->lastSampledVsyncTimeNs:J

    .line 20
    .line 21
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    cmp-long p1, p1, v0

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    iget-wide p1, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->sampledVsyncTimeNs:J

    .line 31
    .line 32
    iput-wide p1, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->lastSampledVsyncTimeNs:J

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    iget-wide p1, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->sampledVsyncTimeNs:J

    .line 36
    .line 37
    iget-wide v4, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->lastSampledVsyncTimeNs:J

    .line 38
    .line 39
    sub-long/2addr p1, v4

    .line 40
    cmp-long v4, p1, v2

    .line 41
    .line 42
    const-string v5, "UIVSyncSampler"

    .line 43
    .line 44
    if-gtz v4, :cond_2

    .line 45
    .line 46
    const-string/jumbo p1, "vsync abnormal reset"

    .line 47
    .line 48
    .line 49
    invoke-static {v5, p1}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iput-wide v0, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->lastSampledVsyncTimeNs:J

    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    iget-wide v0, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->uiVsyncDurationNs:J

    .line 56
    .line 57
    sub-long v6, p1, v0

    .line 58
    .line 59
    cmp-long v2, v6, v2

    .line 60
    .line 61
    if-lez v2, :cond_3

    .line 62
    .line 63
    sub-long v2, p1, v0

    .line 64
    .line 65
    long-to-float v2, v2

    .line 66
    long-to-float v0, v0

    .line 67
    div-float/2addr v2, v0

    .line 68
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    goto :goto_0

    .line 73
    :cond_3
    const/4 v0, 0x0

    .line 74
    :goto_0
    iget v1, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->skipedFrameCount:I

    .line 75
    .line 76
    add-int/2addr v1, v0

    .line 77
    iput v1, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->skipedFrameCount:I

    .line 78
    .line 79
    const-wide/32 v1, 0x3b9aca00

    .line 80
    .line 81
    .line 82
    div-long/2addr v1, p1

    .line 83
    long-to-int v1, v1

    .line 84
    iput v1, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->currentUIFps:I

    .line 85
    .line 86
    iget v2, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->lowestUIFps:I

    .line 87
    .line 88
    if-nez v2, :cond_4

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_4
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    :goto_1
    iput v1, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->lowestUIFps:I

    .line 96
    .line 97
    iget-wide v1, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->sampledVsyncTimeNs:J

    .line 98
    .line 99
    iput-wide v1, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->lastSampledVsyncTimeNs:J

    .line 100
    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string/jumbo v2, "vsync diff = "

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    long-to-float p1, p1

    .line 113
    const p2, 0x358637bd    # 1.0E-6f

    .line 114
    .line 115
    .line 116
    mul-float/2addr p1, p2

    .line 117
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string p1, ", skipped frame = "

    .line 121
    .line 122
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string p1, ", total = "

    .line 129
    .line 130
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    iget p1, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->skipedFrameCount:I

    .line 134
    .line 135
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string p1, ", fps = "

    .line 139
    .line 140
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    iget p1, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->currentUIFps:I

    .line 144
    .line 145
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string p1, ", lowest fps = "

    .line 149
    .line 150
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    iget p1, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->lowestUIFps:I

    .line 154
    .line 155
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-static {v5, p1}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    return-void
.end method

.method private removeObserverInternal()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->observerCount:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->observerCount:I

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "remove observer cnt = "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget v1, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->observerCount:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "UIVSyncSampler"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget v0, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->observerCount:I

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->choreographer:Landroid/view/Choreographer;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 40
    .line 41
    .line 42
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    iput-wide v0, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->sampledVsyncTimeNs:J

    .line 48
    .line 49
    iput-wide v0, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->lastSampledVsyncTimeNs:J

    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->skipedFrameCount:I

    .line 53
    .line 54
    iput v0, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->currentUIFps:I

    .line 55
    .line 56
    iput v0, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->lowestUIFps:I

    .line 57
    .line 58
    const-wide/16 v0, 0x0

    .line 59
    .line 60
    iput-wide v0, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->vsyncSampleCount:J

    .line 61
    .line 62
    :cond_0
    return-void
.end method

.method private updateUIVsyncDurationNs(J)V
    .locals 2

    .line 1
    iput-wide p1, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->uiVsyncDurationNs:J

    .line 2
    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string p2, "refresh rate = "

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-wide v0, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->uiVsyncDurationNs:J

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string p2, "UIVSyncSampler"

    .line 23
    .line 24
    invoke-static {p2, p1}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public addObserver()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public doFrame(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->bundle:Landroid/os/Bundle;

    .line 9
    .line 10
    const-string/jumbo v2, "time"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->bundle:Landroid/os/Bundle;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->choreographer:Landroid/view/Choreographer;

    .line 25
    .line 26
    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    if-eq v0, v1, :cond_2

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    if-eq v0, v2, :cond_1

    .line 10
    .line 11
    const/4 v2, 0x4

    .line 12
    if-eq v0, v2, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    return p1

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string/jumbo v0, "vsync"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    invoke-direct {p0, v2, v3}, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->updateUIVsyncDurationNs(J)V

    .line 28
    .line 29
    .line 30
    return v1

    .line 31
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string/jumbo v0, "time"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    invoke-direct {p0, v2, v3}, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->recordUIFps(J)V

    .line 43
    .line 44
    .line 45
    return v1

    .line 46
    :cond_2
    invoke-direct {p0}, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->removeObserverInternal()V

    .line 47
    .line 48
    .line 49
    return v1

    .line 50
    :cond_3
    invoke-direct {p0}, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->addObserverInternal()V

    .line 51
    .line 52
    .line 53
    return v1
.end method

.method public removeObserver()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public updateVsyncDuration(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->bundle:Landroid/os/Bundle;

    .line 2
    .line 3
    const-string/jumbo v1, "vsync"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->handler:Landroid/os/Handler;

    .line 10
    .line 11
    const/4 p2, 0x4

    .line 12
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p2, p0, Lcom/ss/ttm/player/VsyncTimeHelper$UIVSyncSampler;->bundle:Landroid/os/Bundle;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 22
    .line 23
    .line 24
    return-void
.end method
