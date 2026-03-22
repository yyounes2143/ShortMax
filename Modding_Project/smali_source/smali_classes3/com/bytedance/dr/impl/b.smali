.class public final Lcom/bytedance/dr/impl/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/dr/OaidApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/dr/impl/b$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Huawei"

    .line 2
    .line 3
    return-object v0
.end method

.method public getOaid(Landroid/content/Context;)Lcom/bytedance/dr/OaidApi$a;
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    new-instance v0, Lcom/bytedance/dr/impl/b$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/dr/impl/b$a;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    const-string v4, "pps_oaid"

    .line 13
    .line 14
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    const-string v5, "pps_track_limit"

    .line 23
    .line 24
    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-nez v5, :cond_0

    .line 33
    .line 34
    iput-object v3, v0, Lcom/bytedance/dr/OaidApi$a;->a:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    iput-boolean v3, v0, Lcom/bytedance/dr/OaidApi$a;->b:Z

    .line 41
    .line 42
    const-wide v3, 0x2f08517f88L

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    iput-wide v3, v0, Lcom/bytedance/dr/impl/b$a;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    goto/16 :goto_5

    .line 50
    .line 51
    :catchall_0
    move-exception v3

    .line 52
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    new-array v5, v2, [Ljava/lang/Object;

    .line 57
    .line 58
    const-string v6, "getOaid failed"

    .line 59
    .line 60
    invoke-interface {v4, v1, v6, v3, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    iget-object v3, p0, Lcom/bytedance/dr/impl/b;->a:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    const/4 v4, 0x0

    .line 70
    if-eqz v3, :cond_1

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_1
    new-instance v3, Landroid/content/Intent;

    .line 74
    .line 75
    const-string v5, "com.uodis.opendevice.OPENIDS_SERVICE"

    .line 76
    .line 77
    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v5, p0, Lcom/bytedance/dr/impl/b;->a:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    new-instance v5, Lcom/bytedance/bdtracker/n5;

    .line 87
    .line 88
    new-instance v6, Lcom/bytedance/dr/impl/a;

    .line 89
    .line 90
    invoke-direct {v6, p0}, Lcom/bytedance/dr/impl/a;-><init>(Lcom/bytedance/dr/impl/b;)V

    .line 91
    .line 92
    .line 93
    invoke-direct {v5, p1, v3, v6}, Lcom/bytedance/bdtracker/n5;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/bdtracker/n5$b;)V

    .line 94
    .line 95
    .line 96
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    if-ne v3, v6, :cond_2

    .line 105
    .line 106
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    new-array v5, v2, [Ljava/lang/Object;

    .line 111
    .line 112
    const-string v6, "can\'t run in ui thread"

    .line 113
    .line 114
    invoke-interface {v3, v1, v6, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_2
    :try_start_1
    new-instance v3, Lcom/bytedance/bdtracker/n5$a;

    .line 119
    .line 120
    iget-object v6, v5, Lcom/bytedance/bdtracker/n5;->a:Ljava/util/concurrent/CountDownLatch;

    .line 121
    .line 122
    iget-object v7, v5, Lcom/bytedance/bdtracker/n5;->c:Lcom/bytedance/bdtracker/n5$b;

    .line 123
    .line 124
    invoke-direct {v3, v5, v6, v7}, Lcom/bytedance/bdtracker/n5$a;-><init>(Lcom/bytedance/bdtracker/n5;Ljava/util/concurrent/CountDownLatch;Lcom/bytedance/bdtracker/n5$b;)V

    .line 125
    .line 126
    .line 127
    iget-object v6, v5, Lcom/bytedance/bdtracker/n5;->d:Landroid/content/Context;

    .line 128
    .line 129
    iget-object v7, v5, Lcom/bytedance/bdtracker/n5;->b:Landroid/content/Intent;

    .line 130
    .line 131
    invoke-virtual {v6, v7, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 132
    .line 133
    .line 134
    iget-object v6, v5, Lcom/bytedance/bdtracker/n5;->a:Ljava/util/concurrent/CountDownLatch;

    .line 135
    .line 136
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 137
    .line 138
    .line 139
    :try_start_2
    iget-object v6, v5, Lcom/bytedance/bdtracker/n5;->c:Lcom/bytedance/bdtracker/n5$b;

    .line 140
    .line 141
    iget-object v7, v3, Lcom/bytedance/bdtracker/n5$a;->c:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 142
    .line 143
    check-cast v6, Lcom/bytedance/dr/impl/a;

    .line 144
    .line 145
    :try_start_3
    invoke-virtual {v6, v7}, Lcom/bytedance/dr/impl/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 149
    :goto_0
    invoke-virtual {v5, v3}, Lcom/bytedance/bdtracker/n5;->a(Lcom/bytedance/bdtracker/n5$a;)V

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :catchall_1
    move-exception v6

    .line 154
    goto :goto_1

    .line 155
    :catchall_2
    move-exception v3

    .line 156
    move-object v6, v3

    .line 157
    move-object v3, v4

    .line 158
    :goto_1
    :try_start_4
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 159
    .line 160
    .line 161
    move-result-object v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 162
    const-string v8, "blockFetchResult failed"

    .line 163
    .line 164
    :try_start_5
    new-array v9, v2, [Ljava/lang/Object;

    .line 165
    .line 166
    invoke-interface {v7, v1, v8, v6, v9}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 167
    .line 168
    .line 169
    goto :goto_0

    .line 170
    :goto_2
    check-cast v4, Landroid/util/Pair;

    .line 171
    .line 172
    :goto_3
    if-eqz v4, :cond_4

    .line 173
    .line 174
    iget-object v3, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v3, Ljava/lang/String;

    .line 177
    .line 178
    iput-object v3, v0, Lcom/bytedance/dr/OaidApi$a;->a:Ljava/lang/String;

    .line 179
    .line 180
    iget-object v3, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v3, Ljava/lang/Boolean;

    .line 183
    .line 184
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    iput-boolean v3, v0, Lcom/bytedance/dr/OaidApi$a;->b:Z

    .line 189
    .line 190
    iget-object v3, p0, Lcom/bytedance/dr/impl/b;->a:Ljava/lang/String;

    .line 191
    .line 192
    :try_start_6
    invoke-static {p1, v3, v2}, Lcom/bytedance/bdtracker/u4;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    if-eqz p1, :cond_3

    .line 197
    .line 198
    iget v2, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :catchall_3
    move-exception p1

    .line 202
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    new-array v4, v2, [Ljava/lang/Object;

    .line 207
    .line 208
    const-string v5, "getHwIdVersionCode failed"

    .line 209
    .line 210
    invoke-interface {v3, v1, v5, p1, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    :cond_3
    :goto_4
    int-to-long v1, v2

    .line 214
    iput-wide v1, v0, Lcom/bytedance/dr/impl/b$a;->c:J

    .line 215
    .line 216
    :cond_4
    :goto_5
    return-object v0

    .line 217
    :catchall_4
    move-exception p1

    .line 218
    invoke-virtual {v5, v3}, Lcom/bytedance/bdtracker/n5;->a(Lcom/bytedance/bdtracker/n5$a;)V

    .line 219
    .line 220
    .line 221
    throw p1
.end method

.method public support(Landroid/content/Context;)Z
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_1

    .line 5
    :cond_0
    const-string v0, "com.huawei.hwid"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/bytedance/bdtracker/u4;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    :goto_0
    iput-object v0, p0, Lcom/bytedance/dr/impl/b;->a:Ljava/lang/String;

    .line 15
    .line 16
    move p1, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    const-string v0, "com.huawei.hwid.tv"

    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/bytedance/bdtracker/u4;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    const-string v0, "com.huawei.hms"

    .line 28
    .line 29
    iput-object v0, p0, Lcom/bytedance/dr/impl/b;->a:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {p1, v0}, Lcom/bytedance/bdtracker/u4;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    :goto_1
    return p1
.end method
