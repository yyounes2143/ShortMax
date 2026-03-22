.class Lcom/ss/ttvideoengine/portrait/NetworkPortraitData$MyTimerTask;
.super Ljava/util/TimerTask;
.source "NetworkPortraitData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;


# direct methods
.method private constructor <init>(Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData$MyTimerTask;->this$0:Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;Lcom/ss/ttvideoengine/portrait/NetworkPortraitData$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData$MyTimerTask;-><init>(Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData$MyTimerTask;->this$0:Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->getNetworkRTTLevel()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData$MyTimerTask;->this$0:Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->getNetworkRTTMS()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {}, Lcom/ss/ttvideoengine/TTNetWorkListener;->getInstance()Lcom/ss/ttvideoengine/TTNetWorkListener;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/TTNetWorkListener;->getSignalStrength()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    monitor-enter p0

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData$MyTimerTask;->this$0:Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;

    .line 23
    .line 24
    invoke-static {v3}, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->access$100(Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    iget-object v4, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData$MyTimerTask;->this$0:Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;

    .line 33
    .line 34
    invoke-static {v4}, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->access$200(Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-lt v3, v4, :cond_0

    .line 39
    .line 40
    iget-object v3, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData$MyTimerTask;->this$0:Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;

    .line 41
    .line 42
    invoke-static {v3}, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->access$100(Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const/4 v4, 0x0

    .line 47
    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    iget-object v3, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData$MyTimerTask;->this$0:Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;

    .line 51
    .line 52
    invoke-static {v3}, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->access$300(Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    iget-object v3, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData$MyTimerTask;->this$0:Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;

    .line 60
    .line 61
    invoke-static {v3}, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->access$400(Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    goto :goto_1

    .line 71
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData$MyTimerTask;->this$0:Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;

    .line 72
    .line 73
    invoke-static {v3}, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->access$100(Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData$MyTimerTask;->this$0:Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->access$300(Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;)Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData$MyTimerTask;->this$0:Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;

    .line 98
    .line 99
    invoke-static {v0}, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->access$400(Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;)Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    monitor-exit p0

    .line 107
    return-void

    .line 108
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    throw v0
.end method
