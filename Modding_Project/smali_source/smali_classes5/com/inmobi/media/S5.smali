.class public final Lcom/inmobi/media/S5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/N2;


# static fields
.field public static final a:Lcom/inmobi/media/S5;

.field public static final b:Lcom/inmobi/commons/core/configs/CrashConfig;

.field public static final c:Lcom/inmobi/media/H3;

.field public static final d:Lcom/inmobi/media/E6;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Lcom/inmobi/media/S5;

    .line 3
    .line 4
    invoke-direct {v1}, Lcom/inmobi/media/S5;-><init>()V

    .line 5
    .line 6
    .line 7
    sput-object v1, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 8
    .line 9
    sget-object v2, Lcom/inmobi/media/O2;->a:Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    invoke-static {}, Lcom/inmobi/media/Uc;->b()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "crashReporting"

    .line 16
    .line 17
    invoke-static {v3, v2, v1}, Lcom/inmobi/media/M2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "null cannot be cast to non-null type com.inmobi.commons.core.configs.CrashConfig"

    .line 22
    .line 23
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    check-cast v1, Lcom/inmobi/commons/core/configs/CrashConfig;

    .line 27
    .line 28
    sput-object v1, Lcom/inmobi/media/S5;->b:Lcom/inmobi/commons/core/configs/CrashConfig;

    .line 29
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    new-instance v4, Lcom/inmobi/media/E6;

    .line 35
    .line 36
    invoke-direct {v4, v1}, Lcom/inmobi/media/E6;-><init>(Lcom/inmobi/commons/core/configs/CrashConfig;)V

    .line 37
    .line 38
    .line 39
    sput-object v4, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    .line 40
    .line 41
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    if-eqz v4, :cond_0

    .line 46
    .line 47
    new-instance v5, Lcom/inmobi/media/H3;

    .line 48
    .line 49
    invoke-static {}, Lcom/inmobi/media/Uc;->f()Lcom/inmobi/media/H7;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-direct {v5, v4, v1, v6}, Lcom/inmobi/media/H3;-><init>(Landroid/content/Context;Lcom/inmobi/commons/core/configs/CrashConfig;Lcom/inmobi/media/H7;)V

    .line 54
    .line 55
    .line 56
    sput-object v5, Lcom/inmobi/media/S5;->c:Lcom/inmobi/media/H3;

    .line 57
    .line 58
    :cond_0
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/CrashConfig;->getCrashConfig()Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;->getReportSessionInfo()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    const-string v4, "type"

    .line 67
    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    sget-object v1, Lcom/inmobi/media/o3;->d:Lcom/inmobi/media/o3;

    .line 71
    .line 72
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-static {}, Lcom/inmobi/media/V5;->a()Lcom/inmobi/media/C6;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    if-nez v5, :cond_1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    iget-object v1, v1, Lcom/inmobi/media/q3;->a:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v5, v1, v2, v3, v0}, Lcom/inmobi/media/C6;->a(Ljava/lang/String;JZ)V

    .line 85
    .line 86
    .line 87
    :goto_0
    invoke-static {}, Lcom/inmobi/media/V5;->a()Lcom/inmobi/media/C6;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    if-nez v6, :cond_2

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    const/4 v10, 0x4

    .line 95
    const/4 v11, 0x0

    .line 96
    const-string v7, "s-cnt"

    .line 97
    .line 98
    const/4 v8, 0x0

    .line 99
    const/4 v9, 0x0

    .line 100
    invoke-static/range {v6 .. v11}, Lcom/inmobi/media/C6;->a(Lcom/inmobi/media/C6;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    :cond_3
    :goto_1
    sget-object v1, Lcom/inmobi/media/ea;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/CrashConfig;->getCrashConfig()Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;->getReportOOMInfo()Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-nez v1, :cond_4

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_4
    const/4 v1, 0x2

    .line 117
    new-array v1, v1, [Lcom/inmobi/media/q3;

    .line 118
    .line 119
    sget-object v5, Lcom/inmobi/media/p3;->d:Lcom/inmobi/media/p3;

    .line 120
    .line 121
    const/4 v6, 0x0

    .line 122
    aput-object v5, v1, v6

    .line 123
    .line 124
    sget-object v5, Lcom/inmobi/media/n3;->d:Lcom/inmobi/media/n3;

    .line 125
    .line 126
    aput-object v5, v1, v0

    .line 127
    .line 128
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    if-eqz v5, :cond_6

    .line 141
    .line 142
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    check-cast v5, Lcom/inmobi/media/q3;

    .line 147
    .line 148
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-static {}, Lcom/inmobi/media/V5;->a()Lcom/inmobi/media/C6;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    if-nez v6, :cond_5

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_5
    iget-object v5, v5, Lcom/inmobi/media/q3;->a:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {v6, v5, v2, v3, v0}, Lcom/inmobi/media/C6;->a(Ljava/lang/String;JZ)V

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_6
    :goto_3
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

.method public static a(Lorg/json/JSONObject;ZJ)V
    .locals 7

    const-string v0, "payload"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/inmobi/media/S5;->b:Lcom/inmobi/commons/core/configs/CrashConfig;

    .line 2
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig;->getCrashConfig()Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;->getReportSessionInfo()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    sget-object p1, Lcom/inmobi/media/o3;->d:Lcom/inmobi/media/o3;

    .line 4
    const-string v0, "crashType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/inmobi/media/V5;->a()Lcom/inmobi/media/C6;

    move-result-object v0

    const-string v1, "key"

    if-nez v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    iget-object v2, p1, Lcom/inmobi/media/q3;->a:Ljava/lang/String;

    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v3, v0, Lcom/inmobi/media/C6;->a:Landroid/content/SharedPreferences;

    const-wide/16 v4, 0x0

    invoke-interface {v3, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 9
    iget-object v6, p1, Lcom/inmobi/media/q3;->b:Ljava/lang/String;

    cmp-long v4, v2, v4

    const/4 v5, 0x1

    if-nez v4, :cond_3

    .line 10
    invoke-virtual {v0, v6, p2, p3, v5}, Lcom/inmobi/media/C6;->a(Ljava/lang/String;JZ)V

    goto :goto_0

    :cond_3
    sub-long/2addr p2, v2

    .line 11
    invoke-virtual {v0, v6, p2, p3, v5}, Lcom/inmobi/media/C6;->a(Ljava/lang/String;JZ)V

    .line 12
    :goto_0
    invoke-static {p1}, Lcom/inmobi/media/V5;->a(Lcom/inmobi/media/q3;)J

    move-result-wide p1

    const-string p3, "crashFreeSessionLength"

    invoke-virtual {p0, p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 13
    invoke-static {}, Lcom/inmobi/media/V5;->a()Lcom/inmobi/media/C6;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    .line 14
    const-string p3, "s-cnt"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object p1, p1, Lcom/inmobi/media/C6;->a:Landroid/content/SharedPreferences;

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 16
    :cond_4
    const-string p1, "crashFreeSessionCount"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 17
    sget-object v0, Lcom/inmobi/media/S5;->b:Lcom/inmobi/commons/core/configs/CrashConfig;

    .line 18
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig;->getCrashConfig()Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;->getReportSessionInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    invoke-static {}, Lcom/inmobi/media/V5;->a()Lcom/inmobi/media/C6;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    const-string v0, "key"

    const-string v2, "s-cnt"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, v1, Lcom/inmobi/media/C6;->a:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 22
    const-string v2, "s-cnt"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/inmobi/media/C6;->a(Lcom/inmobi/media/C6;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 23
    :cond_1
    :goto_0
    sget-object v0, Lcom/inmobi/media/S5;->c:Lcom/inmobi/media/H3;

    if-eqz v0, :cond_2

    .line 24
    iget-object v0, v0, Lcom/inmobi/media/H3;->c:Ljava/util/List;

    .line 25
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/G3;

    .line 26
    invoke-virtual {v1}, Lcom/inmobi/media/G3;->a()V

    goto :goto_1

    .line 27
    :cond_2
    sget-object v0, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {v0}, Lcom/inmobi/media/E6;->c()V

    return-void
.end method

.method public final a(Lcom/inmobi/commons/core/configs/Config;)V
    .locals 6

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    instance-of v1, p1, Lcom/inmobi/commons/core/configs/CrashConfig;

    if-eqz v1, :cond_1

    .line 29
    sget-object v1, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    check-cast p1, Lcom/inmobi/commons/core/configs/CrashConfig;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    const-string v2, "crashConfig"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, v1, Lcom/inmobi/media/E6;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    .line 32
    iget-object v3, v1, Lcom/inmobi/media/E6;->c:Lcom/inmobi/media/U5;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, v3, Lcom/inmobi/media/U5;->a:Lcom/inmobi/media/Pc;

    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/CrashConfig;->getCrashConfig()Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;->getSamplingPercent()D

    move-result-wide v4

    .line 35
    iput-wide v4, v0, Lcom/inmobi/media/Pc;->a:D

    .line 36
    iget-object v0, v3, Lcom/inmobi/media/U5;->b:Lcom/inmobi/media/Pc;

    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/CrashConfig;->getCatchConfig()Lcom/inmobi/commons/core/configs/CrashConfig$CatchConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/commons/core/configs/CrashConfig$CatchConfig;->getSamplingPercent()D

    move-result-wide v4

    .line 37
    iput-wide v4, v0, Lcom/inmobi/media/Pc;->a:D

    .line 38
    iget-object v0, v3, Lcom/inmobi/media/U5;->c:Lcom/inmobi/media/Pc;

    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/CrashConfig;->getANRConfig()Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;->getWatchdog()Lcom/inmobi/commons/core/configs/CrashConfig$WatchDogConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/commons/core/configs/CrashConfig$WatchDogConfig;->getSamplingPercent()D

    move-result-wide v4

    .line 39
    iput-wide v4, v0, Lcom/inmobi/media/Pc;->a:D

    .line 40
    iget-object v0, v3, Lcom/inmobi/media/U5;->d:Lcom/inmobi/media/Pc;

    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/CrashConfig;->getANRConfig()Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;->getAppExitReason()Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;->getSamplingPercent()D

    move-result-wide v3

    .line 41
    iput-wide v3, v0, Lcom/inmobi/media/Pc;->a:D

    .line 42
    iget-object v0, v1, Lcom/inmobi/media/E6;->b:Lcom/inmobi/media/t4;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/CrashConfig;->getEventConfig()Lcom/inmobi/media/q4;

    move-result-object v1

    .line 43
    const-string v3, "eventConfig"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-object v1, v0, Lcom/inmobi/media/t4;->i:Lcom/inmobi/media/q4;

    .line 45
    :cond_0
    sget-object v0, Lcom/inmobi/media/S5;->c:Lcom/inmobi/media/H3;

    if-eqz v0, :cond_1

    .line 46
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object p1, v0, Lcom/inmobi/media/H3;->a:Lcom/inmobi/commons/core/configs/CrashConfig;

    :cond_1
    return-void
.end method
