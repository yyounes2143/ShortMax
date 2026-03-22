.class public final Landroidx/work/impl/workers/DiagnosticsWorker;
.super Landroidx/work/Worker;
.source "DiagnosticsWorker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/WorkerParameters;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "parameters"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroidx/work/impl/WorkManagerImpl;->getInstance(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "getInstance(applicationContext)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string/jumbo v1, "workManager.workDatabase"

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->workNameDao()Landroidx/work/impl/model/WorkNameDao;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->workTagDao()Landroidx/work/impl/model/WorkTagDao;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->systemIdInfoDao()Landroidx/work/impl/model/SystemIdInfoDao;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 41
    .line 42
    .line 43
    move-result-wide v4

    .line 44
    sget-object v6, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 45
    .line 46
    const-wide/16 v7, 0x1

    .line 47
    .line 48
    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 49
    .line 50
    .line 51
    move-result-wide v6

    .line 52
    sub-long/2addr v4, v6

    .line 53
    invoke-interface {v1, v4, v5}, Landroidx/work/impl/model/WorkSpecDao;->getRecentlyCompletedWork(J)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-interface {v1}, Landroidx/work/impl/model/WorkSpecDao;->getRunningWork()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    const/16 v6, 0xc8

    .line 62
    .line 63
    invoke-interface {v1, v6}, Landroidx/work/impl/model/WorkSpecDao;->getAllEligibleWorkSpecsForScheduling(I)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    move-object v6, v4

    .line 68
    check-cast v6, Ljava/util/Collection;

    .line 69
    .line 70
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-nez v6, :cond_0

    .line 75
    .line 76
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-static {}, Landroidx/work/impl/workers/DiagnosticsWorkerKt;->access$getTAG$p()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    const-string v8, "Recently completed work:\n\n"

    .line 85
    .line 86
    invoke-virtual {v6, v7, v8}, Landroidx/work/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-static {}, Landroidx/work/impl/workers/DiagnosticsWorkerKt;->access$getTAG$p()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    invoke-static {v2, v3, v0, v4}, Landroidx/work/impl/workers/DiagnosticsWorkerKt;->access$workSpecRows(Landroidx/work/impl/model/WorkNameDao;Landroidx/work/impl/model/WorkTagDao;Landroidx/work/impl/model/SystemIdInfoDao;Ljava/util/List;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {v6, v7, v4}, Landroidx/work/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_0
    move-object v4, v5

    .line 105
    check-cast v4, Ljava/util/Collection;

    .line 106
    .line 107
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-nez v4, :cond_1

    .line 112
    .line 113
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-static {}, Landroidx/work/impl/workers/DiagnosticsWorkerKt;->access$getTAG$p()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    const-string v7, "Running work:\n\n"

    .line 122
    .line 123
    invoke-virtual {v4, v6, v7}, Landroidx/work/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-static {}, Landroidx/work/impl/workers/DiagnosticsWorkerKt;->access$getTAG$p()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    invoke-static {v2, v3, v0, v5}, Landroidx/work/impl/workers/DiagnosticsWorkerKt;->access$workSpecRows(Landroidx/work/impl/model/WorkNameDao;Landroidx/work/impl/model/WorkTagDao;Landroidx/work/impl/model/SystemIdInfoDao;Ljava/util/List;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-virtual {v4, v6, v5}, Landroidx/work/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :cond_1
    move-object v4, v1

    .line 142
    check-cast v4, Ljava/util/Collection;

    .line 143
    .line 144
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    if-nez v4, :cond_2

    .line 149
    .line 150
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-static {}, Landroidx/work/impl/workers/DiagnosticsWorkerKt;->access$getTAG$p()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    const-string v6, "Enqueued work:\n\n"

    .line 159
    .line 160
    invoke-virtual {v4, v5, v6}, Landroidx/work/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-static {}, Landroidx/work/impl/workers/DiagnosticsWorkerKt;->access$getTAG$p()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    invoke-static {v2, v3, v0, v1}, Landroidx/work/impl/workers/DiagnosticsWorkerKt;->access$workSpecRows(Landroidx/work/impl/model/WorkNameDao;Landroidx/work/impl/model/WorkTagDao;Landroidx/work/impl/model/SystemIdInfoDao;Ljava/util/List;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v4, v5, v0}, Landroidx/work/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    :cond_2
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    const-string v1, "success()"

    .line 183
    .line 184
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    return-object v0
.end method
