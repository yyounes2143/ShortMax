.class public final Laf/i;
.super Ljava/lang/Object;
.source "SessionManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Laf/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static d:J

.field private static e:Z

.field private static f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static g:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Laf/i;

    .line 2
    .line 3
    invoke-direct {v0}, Laf/i;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Laf/i;->a:Laf/i;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Laf/i;->b:Ljava/lang/Object;

    .line 14
    .line 15
    const-wide/16 v0, -0x1

    .line 16
    .line 17
    sput-wide v0, Laf/i;->d:J

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    sput-boolean v0, Laf/i;->e:Z

    .line 21
    .line 22
    new-instance v0, Ljava/lang/Object;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Laf/i;->g:Ljava/lang/Object;

    .line 28
    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final b()Lkotlin/Triple;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Triple<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Laf/i;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Laf/i;->c:Ljava/lang/String;

    .line 5
    .line 6
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 7
    .line 8
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    if-nez v6, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-wide v6, Laf/i;->d:J

    .line 24
    .line 25
    const-wide/16 v8, -0x1

    .line 26
    .line 27
    cmp-long v10, v6, v8

    .line 28
    .line 29
    if-eqz v10, :cond_1

    .line 30
    .line 31
    sub-long/2addr v2, v6

    .line 32
    const-wide/32 v6, 0xdbba0

    .line 33
    .line 34
    .line 35
    cmp-long v2, v2, v6

    .line 36
    .line 37
    if-ltz v2, :cond_1

    .line 38
    .line 39
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 40
    .line 41
    const-string v3, "SessionManager"

    .line 42
    .line 43
    new-instance v6, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v7, "sessionId("

    .line 49
    .line 50
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ") timeout"

    .line 57
    .line 58
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v2, v3, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    sput-wide v8, Laf/i;->d:J

    .line 69
    .line 70
    const/4 v1, 0x0

    .line 71
    :cond_1
    move v2, v4

    .line 72
    goto :goto_1

    .line 73
    :catchall_0
    move-exception v1

    .line 74
    goto/16 :goto_2

    .line 75
    .line 76
    :cond_2
    :goto_0
    move v2, v5

    .line 77
    :goto_1
    if-eqz v1, :cond_3

    .line 78
    .line 79
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-nez v3, :cond_4

    .line 84
    .line 85
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 91
    .line 92
    .line 93
    move-result-wide v3

    .line 94
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const/16 v3, 0x5f

    .line 98
    .line 99
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    sget-object v3, Laf/i;->a:Laf/i;

    .line 103
    .line 104
    invoke-direct {v3}, Laf/i;->c()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    sget-object v3, Lud/b;->a:Lud/b;

    .line 116
    .line 117
    invoke-virtual {v3}, Lud/b;->E1()I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    add-int/2addr v4, v5

    .line 122
    invoke-virtual {v3, v4}, Lud/b;->R4(I)V

    .line 123
    .line 124
    .line 125
    move v4, v5

    .line 126
    :cond_4
    sget-object v3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 127
    .line 128
    const-string v5, "SessionManager"

    .line 129
    .line 130
    new-instance v6, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string v7, "createSessionId -> firstCreate("

    .line 136
    .line 137
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v7, ") createNew("

    .line 144
    .line 145
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v7, ") sessionId("

    .line 152
    .line 153
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v7, ") sessionCount("

    .line 160
    .line 161
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    sget-object v7, Laf/i;->a:Laf/i;

    .line 165
    .line 166
    invoke-direct {v7}, Laf/i;->d()I

    .line 167
    .line 168
    .line 169
    move-result v7

    .line 170
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const/16 v7, 0x29

    .line 174
    .line 175
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    invoke-virtual {v3, v5, v6}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    new-instance v3, Lkotlin/Triple;

    .line 186
    .line 187
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    invoke-direct {v3, v2, v4, v1}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    .line 197
    .line 198
    monitor-exit v0

    .line 199
    return-object v3

    .line 200
    :goto_2
    monitor-exit v0

    .line 201
    throw v1
.end method

.method private final c()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Laf/i;->f:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->h()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_1
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_3

    .line 24
    .line 25
    :cond_2
    sget-object v0, Lhk/c;->a:Lhk/c;

    .line 26
    .line 27
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string/jumbo v2, "toString(...)"

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lhk/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :cond_3
    sput-object v0, Laf/i;->f:Ljava/lang/String;

    .line 46
    .line 47
    return-object v0
.end method

.method private final d()I
    .locals 1

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/b;->E1()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-object v0, Laf/i;->f:Ljava/lang/String;

    .line 3
    .line 4
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Laf/i;->c:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public final f()V
    .locals 13

    .line 1
    sget-object v0, Laf/i;->g:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Laf/i;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x1

    .line 11
    :try_start_1
    sput-boolean v1, Laf/i;->e:Z

    .line 12
    .line 13
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 14
    .line 15
    const-string v2, "SessionManager"

    .line 16
    .line 17
    const-string v3, "pause"

    .line 18
    .line 19
    invoke-virtual {v1, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    sput-wide v2, Laf/i;->d:J

    .line 29
    .line 30
    sget-object v2, Laf/i;->a:Laf/i;

    .line 31
    .line 32
    invoke-direct {v2}, Laf/i;->b()Lkotlin/Triple;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3}, Lkotlin/Triple;->f()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Ljava/lang/Boolean;

    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-nez v4, :cond_1

    .line 47
    .line 48
    invoke-virtual {v3}, Lkotlin/Triple;->g()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Ljava/lang/Boolean;

    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-nez v4, :cond_1

    .line 59
    .line 60
    const-string v4, "SessionManager"

    .line 61
    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v6, "session("

    .line 68
    .line 69
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Lkotlin/Triple;->h()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    check-cast v6, Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v6, ") -> pause"

    .line 82
    .line 83
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v1, v4, v5}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    sget-object v6, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 94
    .line 95
    const-string v7, "session"

    .line 96
    .line 97
    new-instance v8, Landroid/os/Bundle;

    .line 98
    .line 99
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v1, "session_id"

    .line 103
    .line 104
    invoke-virtual {v3}, Lkotlin/Triple;->h()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    check-cast v3, Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v8, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const-string v1, "session_number"

    .line 114
    .line 115
    invoke-direct {v2}, Laf/i;->d()I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    invoke-virtual {v8, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 120
    .line 121
    .line 122
    const-string/jumbo v1, "state"

    .line 123
    .line 124
    .line 125
    const-string v2, "pause"

    .line 126
    .line 127
    invoke-virtual {v8, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 131
    .line 132
    const/4 v11, 0x4

    .line 133
    const/4 v12, 0x0

    .line 134
    const-wide/16 v9, 0x0

    .line 135
    .line 136
    invoke-static/range {v6 .. v12}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :catchall_0
    move-exception v1

    .line 141
    goto :goto_1

    .line 142
    :cond_1
    :goto_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    .line 144
    monitor-exit v0

    .line 145
    return-void

    .line 146
    :goto_1
    monitor-exit v0

    .line 147
    throw v1
.end method

.method public final g()V
    .locals 13

    .line 1
    sget-object v0, Laf/i;->g:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Laf/i;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :try_start_1
    sput-boolean v1, Laf/i;->e:Z

    .line 12
    .line 13
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 14
    .line 15
    const-string v2, "SessionManager"

    .line 16
    .line 17
    const-string v3, "resume"

    .line 18
    .line 19
    invoke-virtual {v1, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v2, Laf/i;->a:Laf/i;

    .line 23
    .line 24
    invoke-direct {v2}, Laf/i;->b()Lkotlin/Triple;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const-wide/16 v4, -0x1

    .line 29
    .line 30
    sput-wide v4, Laf/i;->d:J

    .line 31
    .line 32
    invoke-virtual {v3}, Lkotlin/Triple;->f()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_1

    .line 43
    .line 44
    const-string v4, "SessionManager"

    .line 45
    .line 46
    new-instance v5, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v6, "session("

    .line 52
    .line 53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Lkotlin/Triple;->h()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    check-cast v6, Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v6, ") -> start"

    .line 66
    .line 67
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {v1, v4, v5}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    sget-object v6, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 78
    .line 79
    const-string v7, "session"

    .line 80
    .line 81
    new-instance v8, Landroid/os/Bundle;

    .line 82
    .line 83
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v1, "session_id"

    .line 87
    .line 88
    invoke-virtual {v3}, Lkotlin/Triple;->h()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    check-cast v4, Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v8, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string v1, "session_number"

    .line 98
    .line 99
    invoke-direct {v2}, Laf/i;->d()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    invoke-virtual {v8, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 104
    .line 105
    .line 106
    const-string/jumbo v1, "state"

    .line 107
    .line 108
    .line 109
    const-string/jumbo v2, "start"

    .line 110
    .line 111
    .line 112
    invoke-virtual {v8, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 116
    .line 117
    const/4 v11, 0x4

    .line 118
    const/4 v12, 0x0

    .line 119
    const-wide/16 v9, 0x0

    .line 120
    .line 121
    invoke-static/range {v6 .. v12}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    goto/16 :goto_0

    .line 125
    .line 126
    :catchall_0
    move-exception v1

    .line 127
    goto/16 :goto_1

    .line 128
    .line 129
    :cond_1
    invoke-virtual {v3}, Lkotlin/Triple;->g()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    check-cast v4, Ljava/lang/Boolean;

    .line 134
    .line 135
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-eqz v4, :cond_2

    .line 140
    .line 141
    const-string v4, "SessionManager"

    .line 142
    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    const-string v6, "session("

    .line 149
    .line 150
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    sget-object v6, Laf/i;->c:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v6, ") -> end"

    .line 159
    .line 160
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    invoke-virtual {v1, v4, v5}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    sget-object v4, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 171
    .line 172
    const-string v7, "session"

    .line 173
    .line 174
    new-instance v8, Landroid/os/Bundle;

    .line 175
    .line 176
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 177
    .line 178
    .line 179
    const-string v5, "session_id"

    .line 180
    .line 181
    sget-object v6, Laf/i;->c:Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {v8, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    const-string v5, "session_number"

    .line 187
    .line 188
    invoke-direct {v2}, Laf/i;->d()I

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    add-int/lit8 v6, v6, -0x1

    .line 193
    .line 194
    invoke-virtual {v8, v5, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 195
    .line 196
    .line 197
    const-string/jumbo v5, "state"

    .line 198
    .line 199
    .line 200
    const-string v6, "end"

    .line 201
    .line 202
    invoke-virtual {v8, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 206
    .line 207
    const/4 v11, 0x4

    .line 208
    const/4 v12, 0x0

    .line 209
    const-wide/16 v9, 0x0

    .line 210
    .line 211
    move-object v6, v4

    .line 212
    invoke-static/range {v6 .. v12}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    const-string v5, "SessionManager"

    .line 216
    .line 217
    new-instance v6, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    const-string v7, "session("

    .line 223
    .line 224
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v3}, Lkotlin/Triple;->h()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v7

    .line 231
    check-cast v7, Ljava/lang/String;

    .line 232
    .line 233
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string v7, ") -> start"

    .line 237
    .line 238
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    invoke-virtual {v1, v5, v6}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    const-string v7, "session"

    .line 249
    .line 250
    new-instance v8, Landroid/os/Bundle;

    .line 251
    .line 252
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 253
    .line 254
    .line 255
    const-string v1, "session_id"

    .line 256
    .line 257
    invoke-virtual {v3}, Lkotlin/Triple;->h()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    check-cast v5, Ljava/lang/String;

    .line 262
    .line 263
    invoke-virtual {v8, v1, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    const-string v1, "session_number"

    .line 267
    .line 268
    invoke-direct {v2}, Laf/i;->d()I

    .line 269
    .line 270
    .line 271
    move-result v2

    .line 272
    invoke-virtual {v8, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 273
    .line 274
    .line 275
    const-string/jumbo v1, "state"

    .line 276
    .line 277
    .line 278
    const-string/jumbo v2, "start"

    .line 279
    .line 280
    .line 281
    invoke-virtual {v8, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    const/4 v11, 0x4

    .line 285
    const/4 v12, 0x0

    .line 286
    const-wide/16 v9, 0x0

    .line 287
    .line 288
    move-object v6, v4

    .line 289
    invoke-static/range {v6 .. v12}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    goto :goto_0

    .line 293
    :cond_2
    const-string v4, "SessionManager"

    .line 294
    .line 295
    new-instance v5, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .line 299
    .line 300
    const-string v6, "session("

    .line 301
    .line 302
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v3}, Lkotlin/Triple;->h()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v6

    .line 309
    check-cast v6, Ljava/lang/String;

    .line 310
    .line 311
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    const-string v6, ") -> resume"

    .line 315
    .line 316
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v5

    .line 323
    invoke-virtual {v1, v4, v5}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    sget-object v6, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 327
    .line 328
    const-string v7, "session"

    .line 329
    .line 330
    new-instance v8, Landroid/os/Bundle;

    .line 331
    .line 332
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 333
    .line 334
    .line 335
    const-string v1, "session_id"

    .line 336
    .line 337
    invoke-virtual {v3}, Lkotlin/Triple;->h()Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v4

    .line 341
    check-cast v4, Ljava/lang/String;

    .line 342
    .line 343
    invoke-virtual {v8, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    const-string v1, "session_number"

    .line 347
    .line 348
    invoke-direct {v2}, Laf/i;->d()I

    .line 349
    .line 350
    .line 351
    move-result v2

    .line 352
    invoke-virtual {v8, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 353
    .line 354
    .line 355
    const-string/jumbo v1, "state"

    .line 356
    .line 357
    .line 358
    const-string v2, "resume"

    .line 359
    .line 360
    invoke-virtual {v8, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 364
    .line 365
    const/4 v11, 0x4

    .line 366
    const/4 v12, 0x0

    .line 367
    const-wide/16 v9, 0x0

    .line 368
    .line 369
    invoke-static/range {v6 .. v12}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 370
    .line 371
    .line 372
    :goto_0
    invoke-virtual {v3}, Lkotlin/Triple;->h()Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    check-cast v1, Ljava/lang/String;

    .line 377
    .line 378
    sput-object v1, Laf/i;->c:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    .line 380
    monitor-exit v0

    .line 381
    return-void

    .line 382
    :goto_1
    monitor-exit v0

    .line 383
    throw v1
.end method
