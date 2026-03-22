.class final Lcom/ss/ttvideoengine/utils/TimeService$1;
.super Ljava/lang/Object;
.source "TimeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/utils/TimeService;->updateTimeFromNTP(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/utils/TimeService$1;->val$context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/utils/SntpClient;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/ss/ttvideoengine/utils/SntpClient;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TimeService;->access$200()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/16 v2, 0x2710

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/ss/ttvideoengine/utils/SntpClient;->requestTime(Ljava/lang/String;I)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const-class v2, Lcom/ss/ttvideoengine/utils/TimeService;

    .line 17
    .line 18
    monitor-enter v2

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    :try_start_0
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TimeService;->access$300()Lcom/ss/ttvideoengine/utils/TimeService$TimeInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TimeService;->access$300()Lcom/ss/ttvideoengine/utils/TimeService$TimeInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/utils/SntpClient;->getNtpTime()J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    invoke-static {v1, v3, v4}, Lcom/ss/ttvideoengine/utils/TimeService$TimeInfo;->access$002(Lcom/ss/ttvideoengine/utils/TimeService$TimeInfo;J)J

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TimeService;->access$300()Lcom/ss/ttvideoengine/utils/TimeService$TimeInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/utils/SntpClient;->getNtpTimeReference()J

    .line 43
    .line 44
    .line 45
    move-result-wide v3

    .line 46
    invoke-static {v1, v3, v4}, Lcom/ss/ttvideoengine/utils/TimeService$TimeInfo;->access$102(Lcom/ss/ttvideoengine/utils/TimeService$TimeInfo;J)J

    .line 47
    .line 48
    .line 49
    const/4 v0, 0x2

    .line 50
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TimeService;->access$402(I)I

    .line 51
    .line 52
    .line 53
    const-string v0, "TimeService"

    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v3, "NTP updated time:"

    .line 61
    .line 62
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TimeService;->access$300()Lcom/ss/ttvideoengine/utils/TimeService$TimeInfo;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-static {v3}, Lcom/ss/ttvideoengine/utils/TimeService$TimeInfo;->access$000(Lcom/ss/ttvideoengine/utils/TimeService$TimeInfo;)J

    .line 70
    .line 71
    .line 72
    move-result-wide v3

    .line 73
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 74
    .line 75
    .line 76
    move-result-wide v5

    .line 77
    add-long/2addr v3, v5

    .line 78
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TimeService;->access$300()Lcom/ss/ttvideoengine/utils/TimeService$TimeInfo;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-static {v5}, Lcom/ss/ttvideoengine/utils/TimeService$TimeInfo;->access$100(Lcom/ss/ttvideoengine/utils/TimeService$TimeInfo;)J

    .line 83
    .line 84
    .line 85
    move-result-wide v5

    .line 86
    sub-long/2addr v3, v5

    .line 87
    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 88
    .line 89
    .line 90
    invoke-static {v3, v4, v5}, Lcom/ss/ttvideoengine/utils/TimeService;->longToStringWithFormat(JLjava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    .line 106
    goto :goto_1

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/utils/TimeService$1;->val$context:Landroid/content/Context;

    .line 108
    .line 109
    if-eqz v0, :cond_1

    .line 110
    .line 111
    invoke-static {v0}, Lcom/ss/ttvideoengine/net/NetUtils;->isNetAvailable(Landroid/content/Context;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_1

    .line 116
    .line 117
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TimeService;->access$508()I

    .line 118
    .line 119
    .line 120
    :cond_1
    const-string v0, "TimeService"

    .line 121
    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v3, "NTP update fail,error count:"

    .line 128
    .line 129
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TimeService;->access$500()I

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const/4 v0, 0x0

    .line 147
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TimeService;->access$402(I)I

    .line 148
    .line 149
    .line 150
    :cond_2
    :goto_0
    monitor-exit v2

    .line 151
    return-void

    .line 152
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    throw v0
.end method
