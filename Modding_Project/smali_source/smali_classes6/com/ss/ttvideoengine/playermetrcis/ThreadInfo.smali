.class public Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;
.super Ljava/lang/Object;
.source "ThreadInfo.java"


# static fields
.field public static final TYPE_MULTI_THREAD:I = 0x2

.field public static final TYPE_PROC:I = 0x0

.field public static final TYPE_SINGLE_THREAD:I = 0x1


# instance fields
.field public cpuTime:J

.field public cpuTimeStart:J

.field public cpuUsage:F

.field public currentTime:J

.field public mMutiThreadUsage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public pid:Ljava/lang/String;

.field public pidName:Ljava/lang/String;

.field public pids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->cpuTime:J

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->currentTime:J

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->cpuTimeStart:J

    .line 13
    .line 14
    const/high16 v0, -0x40800000    # -1.0f

    .line 15
    .line 16
    iput v0, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->cpuUsage:F

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput v0, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->type:I

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->currentTime:J

    .line 4
    .line 5
    iput-wide v0, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->cpuTimeStart:J

    .line 6
    .line 7
    const/high16 v2, -0x40800000    # -1.0f

    .line 8
    .line 9
    iput v2, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->cpuUsage:F

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->cpuTime:J

    .line 12
    .line 13
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ProcInfo{pidName=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->pidName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x27

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ", pid="

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->pid:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ", cpuTime="

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-wide v1, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->cpuTime:J

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, ", currentTime="

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-wide v1, p0, Lcom/ss/ttvideoengine/playermetrcis/ThreadInfo;->currentTime:J

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const/16 v1, 0x7d

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    return-object v0
.end method
