.class public final Lcom/inmobi/media/H3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile a:Lcom/inmobi/commons/core/configs/CrashConfig;

.field public final b:Lcom/inmobi/media/H7;

.field public final c:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/commons/core/configs/CrashConfig;Lcom/inmobi/media/H7;)V
    .locals 6

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "crashConfig"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "eventBus"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lcom/inmobi/media/H3;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    .line 20
    .line 21
    iput-object p3, p0, Lcom/inmobi/media/H3;->b:Lcom/inmobi/media/H7;

    .line 22
    .line 23
    new-instance p2, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-static {p2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    const-string p3, "synchronizedList(...)"

    .line 33
    .line 34
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iput-object p2, p0, Lcom/inmobi/media/H3;->c:Ljava/util/List;

    .line 38
    .line 39
    iget-object p3, p0, Lcom/inmobi/media/H3;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    .line 40
    .line 41
    invoke-virtual {p3}, Lcom/inmobi/commons/core/configs/CrashConfig;->getCrashConfig()Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    invoke-virtual {p3}, Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;->getEnabled()Z

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    if-eqz p3, :cond_0

    .line 50
    .line 51
    new-instance p3, Lcom/inmobi/media/l3;

    .line 52
    .line 53
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-direct {p3, v0, p0}, Lcom/inmobi/media/l3;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/inmobi/media/H3;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    :cond_0
    iget-object p3, p0, Lcom/inmobi/media/H3;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    .line 64
    .line 65
    invoke-virtual {p3}, Lcom/inmobi/commons/core/configs/CrashConfig;->getANRConfig()Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    invoke-virtual {p3}, Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;->getAppExitReason()Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    invoke-virtual {p3}, Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;->getEnabled()Z

    .line 74
    .line 75
    .line 76
    move-result p3

    .line 77
    if-eqz p3, :cond_1

    .line 78
    .line 79
    sget-object p3, Lcom/inmobi/media/L3;->a:Lcom/inmobi/media/L3;

    .line 80
    .line 81
    invoke-virtual {p3}, Lcom/inmobi/media/L3;->z()Z

    .line 82
    .line 83
    .line 84
    move-result p3

    .line 85
    if-eqz p3, :cond_1

    .line 86
    .line 87
    new-instance p3, Lcom/inmobi/media/c1;

    .line 88
    .line 89
    iget-object v0, p0, Lcom/inmobi/media/H3;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig;->getANRConfig()Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;->getAppExitReason()Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;->getIncidentWaitInterval()J

    .line 100
    .line 101
    .line 102
    move-result-wide v3

    .line 103
    iget-object v0, p0, Lcom/inmobi/media/H3;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig;->getANRConfig()Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;->getAppExitReason()Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;->getMaxNumberOfLines()I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    move-object v0, p3

    .line 118
    move-object v1, p1

    .line 119
    move-object v2, p0

    .line 120
    invoke-direct/range {v0 .. v5}, Lcom/inmobi/media/c1;-><init>(Landroid/content/Context;Lcom/inmobi/media/H3;JI)V

    .line 121
    .line 122
    .line 123
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    :cond_1
    iget-object p1, p0, Lcom/inmobi/media/H3;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/CrashConfig;->getANRConfig()Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;->getWatchdog()Lcom/inmobi/commons/core/configs/CrashConfig$WatchDogConfig;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/CrashConfig$WatchDogConfig;->getEnabled()Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-eqz p1, :cond_2

    .line 141
    .line 142
    new-instance p1, Lcom/inmobi/media/b;

    .line 143
    .line 144
    iget-object p3, p0, Lcom/inmobi/media/H3;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    .line 145
    .line 146
    invoke-virtual {p3}, Lcom/inmobi/commons/core/configs/CrashConfig;->getANRConfig()Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;

    .line 147
    .line 148
    .line 149
    move-result-object p3

    .line 150
    invoke-virtual {p3}, Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;->getWatchdog()Lcom/inmobi/commons/core/configs/CrashConfig$WatchDogConfig;

    .line 151
    .line 152
    .line 153
    move-result-object p3

    .line 154
    invoke-virtual {p3}, Lcom/inmobi/commons/core/configs/CrashConfig$WatchDogConfig;->getInterval()J

    .line 155
    .line 156
    .line 157
    move-result-wide v0

    .line 158
    invoke-direct {p1, v0, v1, p0}, Lcom/inmobi/media/b;-><init>(JLcom/inmobi/media/H3;)V

    .line 159
    .line 160
    .line 161
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/T5;)V
    .locals 5

    .line 1
    const-string v0, "incidentEvent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lcom/inmobi/media/d1;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/inmobi/media/H3;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig;->getANRConfig()Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;->getAppExitReason()Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;->getEnabled()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const/16 v0, 0x98

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    instance-of v0, p1, Lcom/inmobi/media/m3;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/inmobi/media/H3;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig;->getCrashConfig()Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;->getEnabled()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    const/16 v0, 0x96

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    instance-of v0, p1, Lcom/inmobi/media/mf;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    iget-object v0, p0, Lcom/inmobi/media/H3;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig;->getANRConfig()Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;->getWatchdog()Lcom/inmobi/commons/core/configs/CrashConfig$WatchDogConfig;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig$WatchDogConfig;->getEnabled()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    const/16 v0, 0x97

    .line 69
    .line 70
    :goto_0
    iget-object v1, p0, Lcom/inmobi/media/H3;->b:Lcom/inmobi/media/H7;

    .line 71
    .line 72
    new-instance v2, Lcom/inmobi/media/d2;

    .line 73
    .line 74
    iget-object v3, p1, Lcom/inmobi/media/U1;->a:Ljava/lang/String;

    .line 75
    .line 76
    const-string v4, "data"

    .line 77
    .line 78
    invoke-static {v4, p1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {p1}, Lkotlin/collections/p0;->f(Lkotlin/Pair;)Ljava/util/Map;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-direct {v2, v0, v3, p1}, Lcom/inmobi/media/d2;-><init>(ILjava/lang/String;Ljava/util/Map;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2}, Lcom/inmobi/media/H7;->b(Lcom/inmobi/media/d2;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    return-void
.end method
