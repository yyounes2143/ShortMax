.class public abstract Lcom/bytedance/bdtracker/c0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:I

.field public volatile b:Z

.field public c:J

.field public d:Z

.field public final e:Lcom/bytedance/bdtracker/e0;

.field public final f:Lcom/bytedance/bdtracker/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/e0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 1
    iget-object p1, p1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 2
    iput-object p1, p0, Lcom/bytedance/bdtracker/c0;->f:Lcom/bytedance/bdtracker/d;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/bdtracker/e0;J)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 4
    iget-object p1, p1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 5
    iput-object p1, p0, Lcom/bytedance/bdtracker/c0;->f:Lcom/bytedance/bdtracker/d;

    .line 6
    iput-wide p2, p0, Lcom/bytedance/bdtracker/c0;->c:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 6

    .line 1
    const-string v0, "failed"

    .line 2
    .line 3
    const-string v1, "The worker:{} worked:{}."

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/c0;->b()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    cmp-long v4, v2, v4

    .line 14
    .line 15
    if-gtz v4, :cond_2

    .line 16
    .line 17
    iget-object v2, p0, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 18
    .line 19
    iget-object v2, v2, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/c0;->d()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-string v4, "The worker:{} start to work..."

    .line 32
    .line 33
    invoke-interface {v2, v4, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/c0;->c()Z

    .line 38
    .line 39
    .line 40
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v4

    .line 45
    iput-wide v4, p0, Lcom/bytedance/bdtracker/c0;->c:J

    .line 46
    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    :goto_0
    iput v2, p0, Lcom/bytedance/bdtracker/c0;->a:I

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    iget v2, p0, Lcom/bytedance/bdtracker/c0;->a:I

    .line 53
    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :goto_1
    iget-object v2, p0, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 58
    .line 59
    iget-object v2, v2, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 60
    .line 61
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/c0;->d()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    if-eqz v3, :cond_1

    .line 68
    .line 69
    const-string v0, "success"

    .line 70
    .line 71
    :cond_1
    filled-new-array {v4, v0}, [Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {v2, v1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :catchall_0
    move-exception v3

    .line 80
    :try_start_1
    iget-object v4, p0, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 81
    .line 82
    iget-object v4, v4, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 83
    .line 84
    iget-object v4, v4, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    .line 86
    const-string v5, "Work do failed."

    .line 87
    .line 88
    :try_start_2
    new-array v2, v2, [Ljava/lang/Object;

    .line 89
    .line 90
    invoke-interface {v4, v5, v3, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 91
    .line 92
    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 94
    .line 95
    .line 96
    move-result-wide v2

    .line 97
    iput-wide v2, p0, Lcom/bytedance/bdtracker/c0;->c:J

    .line 98
    .line 99
    iget v2, p0, Lcom/bytedance/bdtracker/c0;->a:I

    .line 100
    .line 101
    add-int/lit8 v2, v2, 0x1

    .line 102
    .line 103
    iput v2, p0, Lcom/bytedance/bdtracker/c0;->a:I

    .line 104
    .line 105
    iget-object v2, p0, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 106
    .line 107
    iget-object v2, v2, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 108
    .line 109
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/c0;->d()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    filled-new-array {v3, v0}, [Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-interface {v2, v1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    :goto_2
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/c0;->b()J

    .line 123
    .line 124
    .line 125
    move-result-wide v2

    .line 126
    goto :goto_3

    .line 127
    :catchall_1
    move-exception v2

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 129
    .line 130
    .line 131
    move-result-wide v3

    .line 132
    iput-wide v3, p0, Lcom/bytedance/bdtracker/c0;->c:J

    .line 133
    .line 134
    iget v3, p0, Lcom/bytedance/bdtracker/c0;->a:I

    .line 135
    .line 136
    add-int/lit8 v3, v3, 0x1

    .line 137
    .line 138
    iput v3, p0, Lcom/bytedance/bdtracker/c0;->a:I

    .line 139
    .line 140
    iget-object v3, p0, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 141
    .line 142
    iget-object v3, v3, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 143
    .line 144
    iget-object v3, v3, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/c0;->d()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    filled-new-array {v4, v0}, [Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-interface {v3, v1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    throw v2

    .line 158
    :cond_2
    :goto_3
    return-wide v2
.end method

.method public final b()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/c0;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/e0;->b()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v2, p0, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/bytedance/bdtracker/e0;->n:Lcom/bytedance/bdtracker/j0;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/bytedance/bdtracker/j0;->c()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-static {v0, v2}, Lcom/bytedance/bdtracker/t4;->b(Landroid/content/Context;Z)Lcom/bytedance/bdtracker/t4$a;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/t4$a;->a()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/bytedance/bdtracker/c0;->e:Lcom/bytedance/bdtracker/e0;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 37
    .line 38
    new-array v1, v1, [Ljava/lang/Object;

    .line 39
    .line 40
    const-string v2, "Check work time is not net available."

    .line 41
    .line 42
    invoke-interface {v0, v2, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    const-wide/16 v2, 0x1388

    .line 50
    .line 51
    :goto_0
    add-long/2addr v0, v2

    .line 52
    goto :goto_2

    .line 53
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/bdtracker/c0;->b:Z

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    const-wide/16 v2, 0x0

    .line 58
    .line 59
    iput-wide v2, p0, Lcom/bytedance/bdtracker/c0;->c:J

    .line 60
    .line 61
    iput-boolean v1, p0, Lcom/bytedance/bdtracker/c0;->b:Z

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    iget v0, p0, Lcom/bytedance/bdtracker/c0;->a:I

    .line 65
    .line 66
    if-lez v0, :cond_2

    .line 67
    .line 68
    add-int/lit8 v0, v0, -0x1

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/c0;->e()[J

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    array-length v2, v1

    .line 75
    rem-int/2addr v0, v2

    .line 76
    aget-wide v2, v1, v0

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/c0;->g()J

    .line 80
    .line 81
    .line 82
    move-result-wide v2

    .line 83
    :goto_1
    iget-wide v0, p0, Lcom/bytedance/bdtracker/c0;->c:J

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :goto_2
    return-wide v0
.end method

.method public abstract c()Z
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()[J
.end method

.method public abstract f()Z
.end method

.method public abstract g()J
.end method
