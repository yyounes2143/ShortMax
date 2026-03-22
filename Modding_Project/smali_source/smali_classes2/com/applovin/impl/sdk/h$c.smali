.class Lcom/applovin/impl/sdk/h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/h;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/sdk/h$c;->a:Lcom/applovin/impl/sdk/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/sdk/h;Lcom/applovin/impl/sdk/h$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/h$c;-><init>(Lcom/applovin/impl/sdk/h;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/sdk/h$c;->a:Lcom/applovin/impl/sdk/h;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/applovin/impl/sdk/h;->a(Lcom/applovin/impl/sdk/h;)Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lcom/applovin/impl/sdk/h$b;->c:Lcom/applovin/impl/sdk/h$b;

    .line 12
    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    iget-object v2, p0, Lcom/applovin/impl/sdk/h$c;->a:Lcom/applovin/impl/sdk/h;

    .line 21
    .line 22
    invoke-static {v2}, Lcom/applovin/impl/sdk/h;->b(Lcom/applovin/impl/sdk/h;)Ljava/util/concurrent/atomic/AtomicLong;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    sub-long/2addr v0, v2

    .line 31
    const-wide/16 v2, 0x0

    .line 32
    .line 33
    cmp-long v2, v0, v2

    .line 34
    .line 35
    if-ltz v2, :cond_2

    .line 36
    .line 37
    iget-object v2, p0, Lcom/applovin/impl/sdk/h$c;->a:Lcom/applovin/impl/sdk/h;

    .line 38
    .line 39
    invoke-static {v2}, Lcom/applovin/impl/sdk/h;->e(Lcom/applovin/impl/sdk/h;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    cmp-long v0, v0, v2

    .line 44
    .line 45
    if-lez v0, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/h$c;->a:Lcom/applovin/impl/sdk/h;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/applovin/impl/sdk/h;->h(Lcom/applovin/impl/sdk/h;)Landroid/os/Handler;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/applovin/impl/sdk/h$c;->a:Lcom/applovin/impl/sdk/h;

    .line 55
    .line 56
    invoke-static {v1}, Lcom/applovin/impl/sdk/h;->g(Lcom/applovin/impl/sdk/h;)J

    .line 57
    .line 58
    .line 59
    move-result-wide v1

    .line 60
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    .line 62
    .line 63
    goto/16 :goto_3

    .line 64
    .line 65
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/h$c;->a:Lcom/applovin/impl/sdk/h;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/applovin/impl/sdk/h;->a(Lcom/applovin/impl/sdk/h;)Ljava/util/concurrent/atomic/AtomicReference;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sget-object v1, Lcom/applovin/impl/sdk/h$b;->a:Lcom/applovin/impl/sdk/h$b;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/applovin/impl/sdk/h$c;->a:Lcom/applovin/impl/sdk/h;

    .line 77
    .line 78
    invoke-static {v0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->unregisterReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;)V

    .line 79
    .line 80
    .line 81
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    array-length v1, v0

    .line 94
    if-lez v1, :cond_3

    .line 95
    .line 96
    const/4 v1, 0x0

    .line 97
    aget-object v0, v0, v1

    .line 98
    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v2, "."

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    goto :goto_1

    .line 128
    :cond_3
    const-string v0, "None"

    .line 129
    .line 130
    :goto_1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 131
    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 133
    .line 134
    .line 135
    move-result-wide v2

    .line 136
    invoke-static {}, Lcom/applovin/impl/sdk/k;->n()J

    .line 137
    .line 138
    .line 139
    move-result-wide v4

    .line 140
    sub-long/2addr v2, v4

    .line 141
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 142
    .line 143
    .line 144
    move-result-wide v1

    .line 145
    new-instance v3, Ljava/util/HashMap;

    .line 146
    .line 147
    const/4 v4, 0x3

    .line 148
    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 149
    .line 150
    .line 151
    const-string/jumbo v4, "top_main_method"

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lcom/applovin/impl/sdk/h$c;->a:Lcom/applovin/impl/sdk/h;

    .line 158
    .line 159
    invoke-static {v0}, Lcom/applovin/impl/sdk/h;->f(Lcom/applovin/impl/sdk/h;)Lcom/applovin/impl/sdk/k;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->A0()Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_4

    .line 168
    .line 169
    const-string v0, "non_first_session"

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_4
    const-string v0, "first_session"

    .line 173
    .line 174
    :goto_2
    const-string v4, "source"

    .line 175
    .line 176
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    const-string v4, "seconds_since_app_launch="

    .line 185
    .line 186
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    const-string v1, "details"

    .line 197
    .line 198
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    iget-object v0, p0, Lcom/applovin/impl/sdk/h$c;->a:Lcom/applovin/impl/sdk/h;

    .line 202
    .line 203
    invoke-static {v0}, Lcom/applovin/impl/sdk/h;->f(Lcom/applovin/impl/sdk/h;)Lcom/applovin/impl/sdk/k;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    sget-object v1, Lcom/applovin/impl/c2;->r0:Lcom/applovin/impl/c2;

    .line 212
    .line 213
    invoke-virtual {v0, v1, v3}, Lcom/applovin/impl/d2;->d(Lcom/applovin/impl/c2;Ljava/util/Map;)V

    .line 214
    .line 215
    .line 216
    :goto_3
    return-void
.end method
