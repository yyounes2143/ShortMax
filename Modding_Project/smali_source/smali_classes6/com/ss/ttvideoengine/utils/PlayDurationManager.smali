.class public Lcom/ss/ttvideoengine/utils/PlayDurationManager;
.super Ljava/lang/Object;
.source "PlayDurationManager.java"

# interfaces
.implements Lcom/ss/ttvideoengine/utils/IPlayDurationManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayDurationManager"


# instance fields
.field private final mHeadsetMonitor:Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;

.field private final mHeadsetStateChangedListener:Lcom/ss/ttvideoengine/log/HeadsetStateMonitor$HeadsetStateChangedListener;

.field private volatile mIsPlaying:Z

.field private final mTotalPlayDuration:Lcom/ss/ttvideoengine/utils/PlayDuration;

.field private final mWiredPlayDuration:Lcom/ss/ttvideoengine/utils/PlayDuration;

.field private final mWirelessPlayDuration:Lcom/ss/ttvideoengine/utils/PlayDuration;


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/ss/ttvideoengine/utils/PlayDurationManager$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/ss/ttvideoengine/utils/PlayDurationManager$1;-><init>(Lcom/ss/ttvideoengine/utils/PlayDurationManager;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/utils/PlayDurationManager;->mHeadsetStateChangedListener:Lcom/ss/ttvideoengine/log/HeadsetStateMonitor$HeadsetStateChangedListener;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/ss/ttvideoengine/utils/PlayDurationManager;->mHeadsetMonitor:Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;

    .line 12
    .line 13
    new-instance v1, Lcom/ss/ttvideoengine/utils/PlayDuration;

    .line 14
    .line 15
    invoke-direct {v1}, Lcom/ss/ttvideoengine/utils/PlayDuration;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/ss/ttvideoengine/utils/PlayDurationManager;->mTotalPlayDuration:Lcom/ss/ttvideoengine/utils/PlayDuration;

    .line 19
    .line 20
    new-instance v1, Lcom/ss/ttvideoengine/utils/PlayDuration;

    .line 21
    .line 22
    invoke-direct {v1}, Lcom/ss/ttvideoengine/utils/PlayDuration;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/ss/ttvideoengine/utils/PlayDurationManager;->mWiredPlayDuration:Lcom/ss/ttvideoengine/utils/PlayDuration;

    .line 26
    .line 27
    new-instance v1, Lcom/ss/ttvideoengine/utils/PlayDuration;

    .line 28
    .line 29
    invoke-direct {v1}, Lcom/ss/ttvideoengine/utils/PlayDuration;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/ss/ttvideoengine/utils/PlayDurationManager;->mWirelessPlayDuration:Lcom/ss/ttvideoengine/utils/PlayDuration;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->addStateChangedListener(Lcom/ss/ttvideoengine/log/HeadsetStateMonitor$HeadsetStateChangedListener;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/ss/ttvideoengine/utils/PlayDurationManager;)Lcom/ss/ttvideoengine/utils/PlayDuration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/utils/PlayDurationManager;->mWiredPlayDuration:Lcom/ss/ttvideoengine/utils/PlayDuration;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/ss/ttvideoengine/utils/PlayDurationManager;)Lcom/ss/ttvideoengine/utils/PlayDuration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/utils/PlayDurationManager;->mWirelessPlayDuration:Lcom/ss/ttvideoengine/utils/PlayDuration;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/ss/ttvideoengine/utils/PlayDurationManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/ttvideoengine/utils/PlayDurationManager;->mIsPlaying:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/utils/PlayDurationManager;->mTotalPlayDuration:Lcom/ss/ttvideoengine/utils/PlayDuration;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/utils/PlayDuration;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/ss/ttvideoengine/utils/PlayDurationManager;->mWiredPlayDuration:Lcom/ss/ttvideoengine/utils/PlayDuration;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/utils/PlayDuration;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/ss/ttvideoengine/utils/PlayDurationManager;->mWirelessPlayDuration:Lcom/ss/ttvideoengine/utils/PlayDuration;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/utils/PlayDuration;->clear()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public getPlayedDuration()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/utils/PlayDurationManager;->mTotalPlayDuration:Lcom/ss/ttvideoengine/utils/PlayDuration;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/utils/PlayDuration;->getPlayedDuration()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getWiredPlayedDuration()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/utils/PlayDurationManager;->mWiredPlayDuration:Lcom/ss/ttvideoengine/utils/PlayDuration;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/utils/PlayDuration;->getPlayedDuration()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-long v0, v0

    .line 8
    return-wide v0
.end method

.method public getWirelessPlayedDuration(Landroid/content/Context;)J
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/ss/ttvideoengine/utils/PlayDurationManager;->mWirelessPlayDuration:Lcom/ss/ttvideoengine/utils/PlayDuration;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/utils/PlayDuration;->getPlayedDuration()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    int-to-long v0, p1

    .line 8
    return-wide v0
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/utils/PlayDurationManager;->mHeadsetMonitor:Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/ss/ttvideoengine/utils/PlayDurationManager;->mHeadsetStateChangedListener:Lcom/ss/ttvideoengine/log/HeadsetStateMonitor$HeadsetStateChangedListener;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->removeStateChangedListener(Lcom/ss/ttvideoengine/log/HeadsetStateMonitor$HeadsetStateChangedListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/utils/PlayDurationManager;->mTotalPlayDuration:Lcom/ss/ttvideoengine/utils/PlayDuration;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/utils/PlayDuration;->reset()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/ss/ttvideoengine/utils/PlayDurationManager;->mWiredPlayDuration:Lcom/ss/ttvideoengine/utils/PlayDuration;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/utils/PlayDuration;->reset()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/ss/ttvideoengine/utils/PlayDurationManager;->mWirelessPlayDuration:Lcom/ss/ttvideoengine/utils/PlayDuration;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/utils/PlayDuration;->reset()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/utils/PlayDurationManager;->mIsPlaying:Z

    .line 2
    .line 3
    const-string v1, "PlayDurationManager"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "Already started"

    .line 8
    .line 9
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/utils/PlayDurationManager;->mIsPlaying:Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/ss/ttvideoengine/utils/PlayDurationManager;->mTotalPlayDuration:Lcom/ss/ttvideoengine/utils/PlayDuration;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/utils/PlayDuration;->start()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/ss/ttvideoengine/utils/PlayDurationManager;->mHeadsetMonitor:Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->isWiredConnected()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/ss/ttvideoengine/utils/PlayDurationManager;->mWiredPlayDuration:Lcom/ss/ttvideoengine/utils/PlayDuration;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/utils/PlayDuration;->start()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/utils/PlayDurationManager;->mHeadsetMonitor:Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->isWirelessConnected()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    iget-object v0, p0, Lcom/ss/ttvideoengine/utils/PlayDurationManager;->mWirelessPlayDuration:Lcom/ss/ttvideoengine/utils/PlayDuration;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/utils/PlayDuration;->start()V

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_0
    const-string/jumbo v0, "start play"

    .line 49
    .line 50
    .line 51
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public stop()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/utils/PlayDurationManager;->mIsPlaying:Z

    .line 2
    .line 3
    const-string v1, "PlayDurationManager"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "Already stopped"

    .line 8
    .line 9
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/utils/PlayDurationManager;->mIsPlaying:Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/ss/ttvideoengine/utils/PlayDurationManager;->mTotalPlayDuration:Lcom/ss/ttvideoengine/utils/PlayDuration;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/utils/PlayDuration;->stop()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/ss/ttvideoengine/utils/PlayDurationManager;->mHeadsetMonitor:Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->isWiredConnected()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/ss/ttvideoengine/utils/PlayDurationManager;->mWiredPlayDuration:Lcom/ss/ttvideoengine/utils/PlayDuration;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/utils/PlayDuration;->stop()V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/utils/PlayDurationManager;->mHeadsetMonitor:Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->isWirelessConnected()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lcom/ss/ttvideoengine/utils/PlayDurationManager;->mWirelessPlayDuration:Lcom/ss/ttvideoengine/utils/PlayDuration;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/utils/PlayDuration;->stop()V

    .line 45
    .line 46
    .line 47
    :cond_2
    iget-object v0, p0, Lcom/ss/ttvideoengine/utils/PlayDurationManager;->mTotalPlayDuration:Lcom/ss/ttvideoengine/utils/PlayDuration;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/utils/PlayDuration;->getPlayedDuration()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v2, p0, Lcom/ss/ttvideoengine/utils/PlayDurationManager;->mWiredPlayDuration:Lcom/ss/ttvideoengine/utils/PlayDuration;

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/utils/PlayDuration;->getPlayedDuration()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    iget-object v3, p0, Lcom/ss/ttvideoengine/utils/PlayDurationManager;->mWirelessPlayDuration:Lcom/ss/ttvideoengine/utils/PlayDuration;

    .line 68
    .line 69
    invoke-virtual {v3}, Lcom/ss/ttvideoengine/utils/PlayDuration;->getPlayedDuration()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const-string/jumbo v2, "stop: play duration: %s, wiredDuration: %s, wirelessDuration: %s"

    .line 82
    .line 83
    .line 84
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method
