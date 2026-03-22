.class public Lcom/applovin/impl/b6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/b6$d;,
        Lcom/applovin/impl/b6$b;,
        Lcom/applovin/impl/b6$c;,
        Lcom/applovin/impl/b6$e;
    }
.end annotation


# static fields
.field private static final r:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/k;

.field private final b:Lcom/applovin/impl/sdk/o;

.field private final c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final i:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final j:Ljava/util/Map;

.field private k:Ljava/util/concurrent/ExecutorService;

.field private l:Ljava/util/concurrent/ExecutorService;

.field private final m:Ljava/util/List;

.field private final n:Ljava/lang/Object;

.field private o:Z

.field private p:Z

.field private final q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sput-object v0, Lcom/applovin/impl/b6;->r:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/applovin/impl/sdk/k;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/applovin/impl/b6;->j:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 v1, 0x5

    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/applovin/impl/b6;->m:Ljava/util/List;

    .line 18
    .line 19
    new-instance v0, Ljava/lang/Object;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/applovin/impl/b6;->n:Ljava/lang/Object;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/applovin/impl/b6;->a:Lcom/applovin/impl/sdk/k;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/applovin/impl/b6;->b:Lcom/applovin/impl/sdk/o;

    .line 33
    .line 34
    sget-object v0, Lcom/applovin/impl/v4;->R:Lcom/applovin/impl/v4;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/Boolean;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iput-boolean v0, p0, Lcom/applovin/impl/b6;->p:Z

    .line 47
    .line 48
    sget-object v0, Lcom/applovin/impl/v4;->G6:Lcom/applovin/impl/v4;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iput-boolean v0, p0, Lcom/applovin/impl/b6;->q:Z

    .line 61
    .line 62
    sget-object v0, Lcom/applovin/impl/v4;->M:Lcom/applovin/impl/v4;

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Ljava/lang/Integer;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    const-string v1, "auxiliary_operations"

    .line 75
    .line 76
    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/b6;->b(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Lcom/applovin/impl/b6;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 81
    .line 82
    sget-object v0, Lcom/applovin/impl/v4;->L:Lcom/applovin/impl/v4;

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Ljava/lang/Integer;

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    const-string v1, "shared_thread_pool"

    .line 95
    .line 96
    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/b6;->b(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iput-object v0, p0, Lcom/applovin/impl/b6;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 101
    .line 102
    sget-object v0, Lcom/applovin/impl/v4;->S:Lcom/applovin/impl/v4;

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Ljava/lang/Integer;

    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    const-string v1, "core"

    .line 115
    .line 116
    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/b6;->b(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iput-object v0, p0, Lcom/applovin/impl/b6;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 121
    .line 122
    sget-object v0, Lcom/applovin/impl/v4;->T:Lcom/applovin/impl/v4;

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Ljava/lang/Integer;

    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    const-string v1, "caching"

    .line 135
    .line 136
    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/b6;->b(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iput-object v0, p0, Lcom/applovin/impl/b6;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 141
    .line 142
    sget-object v0, Lcom/applovin/impl/v4;->U:Lcom/applovin/impl/v4;

    .line 143
    .line 144
    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, Ljava/lang/Integer;

    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    const-string v1, "mediation"

    .line 155
    .line 156
    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/b6;->b(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    iput-object v0, p0, Lcom/applovin/impl/b6;->h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 161
    .line 162
    sget-object v0, Lcom/applovin/impl/v4;->V:Lcom/applovin/impl/v4;

    .line 163
    .line 164
    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    check-cast v0, Ljava/lang/Integer;

    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    const-string/jumbo v1, "timeout"

    .line 175
    .line 176
    .line 177
    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/b6;->b(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    iput-object v0, p0, Lcom/applovin/impl/b6;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 182
    .line 183
    sget-object v0, Lcom/applovin/impl/v4;->W:Lcom/applovin/impl/v4;

    .line 184
    .line 185
    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    check-cast v0, Ljava/lang/Integer;

    .line 190
    .line 191
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    const-string v1, "other"

    .line 196
    .line 197
    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/b6;->b(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    iput-object v0, p0, Lcom/applovin/impl/b6;->i:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 202
    .line 203
    sget-object v0, Lcom/applovin/impl/v4;->I0:Lcom/applovin/impl/v4;

    .line 204
    .line 205
    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    check-cast v0, Ljava/lang/Boolean;

    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-eqz v0, :cond_0

    .line 216
    .line 217
    sget-object v0, Lcom/applovin/impl/v4;->J0:Lcom/applovin/impl/v4;

    .line 218
    .line 219
    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    check-cast v0, Ljava/lang/Boolean;

    .line 224
    .line 225
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-eqz v0, :cond_0

    .line 230
    .line 231
    sget-object v0, Lcom/applovin/impl/v4;->K0:Lcom/applovin/impl/v4;

    .line 232
    .line 233
    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    check-cast v0, Ljava/lang/Integer;

    .line 238
    .line 239
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    new-instance v1, Lcom/applovin/impl/b6$d;

    .line 244
    .line 245
    const-string v2, "com.applovin.sdk.caching.shared"

    .line 246
    .line 247
    invoke-direct {v1, p0, v2}, Lcom/applovin/impl/b6$d;-><init>(Lcom/applovin/impl/b6;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    iput-object v0, p0, Lcom/applovin/impl/b6;->k:Ljava/util/concurrent/ExecutorService;

    .line 255
    .line 256
    sget-object v0, Lcom/applovin/impl/v4;->L0:Lcom/applovin/impl/v4;

    .line 257
    .line 258
    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    check-cast p1, Ljava/lang/Integer;

    .line 263
    .line 264
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 265
    .line 266
    .line 267
    move-result p1

    .line 268
    new-instance v0, Lcom/applovin/impl/b6$d;

    .line 269
    .line 270
    const-string v1, "com.applovin.sdk.caching.html.shared"

    .line 271
    .line 272
    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/b6$d;-><init>(Lcom/applovin/impl/b6;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-static {p1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    iput-object p1, p0, Lcom/applovin/impl/b6;->l:Ljava/util/concurrent/ExecutorService;

    .line 280
    .line 281
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/b6;)Lcom/applovin/impl/sdk/k;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/applovin/impl/b6;->a:Lcom/applovin/impl/sdk/k;

    return-object p0
.end method

.method private a(Lcom/applovin/impl/b6$e;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1

    .line 40
    sget-object v0, Lcom/applovin/impl/b6$a;->a:[I

    iget-object p1, p1, Lcom/applovin/impl/b6$e;->e:Lcom/applovin/impl/b6$b;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 41
    iget-object p1, p0, Lcom/applovin/impl/b6;->i:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object p1

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/b6;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object p1

    .line 43
    :cond_1
    iget-object p1, p0, Lcom/applovin/impl/b6;->h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object p1

    .line 44
    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/b6;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object p1

    .line 45
    :cond_3
    iget-object p1, p0, Lcom/applovin/impl/b6;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object p1
.end method

.method private a(Lcom/applovin/impl/b6$e;JZ)V
    .locals 3

    .line 35
    iget-boolean v0, p0, Lcom/applovin/impl/b6;->p:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/applovin/impl/b6;->a(Lcom/applovin/impl/b6$e;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/b6;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_2

    if-eqz p4, :cond_1

    .line 36
    iget-object p4, p0, Lcom/applovin/impl/b6;->a:Lcom/applovin/impl/sdk/k;

    new-instance v1, Lcom/applovin/impl/u8;

    invoke-direct {v1, v0, p1}, Lcom/applovin/impl/u8;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Lcom/applovin/impl/b6$e;)V

    invoke-static {p2, p3, p4, v1}, Lcom/applovin/impl/g0;->a(JLcom/applovin/impl/sdk/k;Ljava/lang/Runnable;)Lcom/applovin/impl/g0;

    goto :goto_1

    .line 37
    :cond_1
    sget-object p4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1

    .line 38
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_1
    return-void
.end method

.method public static synthetic a(Lcom/applovin/impl/b6;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/b6;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    .line 20
    new-instance v0, Lcom/applovin/impl/p6;

    iget-object v1, p0, Lcom/applovin/impl/b6;->a:Lcom/applovin/impl/sdk/k;

    invoke-direct {v0, v1, p1, p2}, Lcom/applovin/impl/p6;-><init>(Lcom/applovin/impl/sdk/k;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/applovin/impl/b6;->a(Lcom/applovin/impl/g5;)V

    return-void
.end method

.method private static synthetic a(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Lcom/applovin/impl/b6$e;)V
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/b6;)Lcom/applovin/impl/sdk/o;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/applovin/impl/b6;->b:Lcom/applovin/impl/sdk/o;

    return-object p0
.end method

.method private b(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 2

    .line 16
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/applovin/impl/b6$d;

    invoke-direct {v1, p0, p1}, Lcom/applovin/impl/b6$d;-><init>(Lcom/applovin/impl/b6;Ljava/lang/String;)V

    invoke-direct {v0, p2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method public static synthetic b(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Lcom/applovin/impl/b6$e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/applovin/impl/b6;->a(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Lcom/applovin/impl/b6$e;)V

    return-void
.end method

.method private b(Lcom/applovin/impl/b6$e;)Z
    .locals 3

    .line 9
    iget-object v0, p1, Lcom/applovin/impl/b6$e;->d:Lcom/applovin/impl/g5;

    invoke-virtual {v0}, Lcom/applovin/impl/g5;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/b6;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-boolean v2, p0, Lcom/applovin/impl/b6;->o:Z

    if-eqz v2, :cond_1

    .line 12
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/b6;->m:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    .line 15
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/concurrent/ExecutorService;)Ljava/util/List;
    .locals 4

    .line 47
    const-string v0, "TaskManager"

    :try_start_0
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/b6;->b:Lcom/applovin/impl/sdk/o;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Awaiting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " tasks..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 48
    :cond_0
    :goto_0
    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 49
    :goto_1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/applovin/impl/b6;->b:Lcom/applovin/impl/sdk/o;

    const-string v1, "Awaiting tasks were interrupted"

    invoke-virtual {p2, v0, v1, p1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/util/concurrent/Executor;
    .locals 1

    .line 19
    new-instance v0, Lcom/applovin/impl/t8;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/t8;-><init>(Lcom/applovin/impl/b6;Ljava/lang/String;)V

    return-object v0
.end method

.method public a()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/applovin/impl/b6;->k:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 46
    new-instance v0, Lcom/applovin/impl/b6$d;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/b6$d;-><init>(Lcom/applovin/impl/b6;Ljava/lang/String;)V

    invoke-static {p2, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/applovin/impl/g5;)V
    .locals 4

    if-eqz p1, :cond_4

    .line 21
    iget-boolean v0, p0, Lcom/applovin/impl/b6;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/b6;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/b6;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 22
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/applovin/impl/k7;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 23
    new-instance v1, Lcom/applovin/impl/b6$e;

    iget-object v2, p0, Lcom/applovin/impl/b6;->a:Lcom/applovin/impl/sdk/k;

    sget-object v3, Lcom/applovin/impl/b6$b;->a:Lcom/applovin/impl/b6$b;

    invoke-direct {v1, v2, p1, v3}, Lcom/applovin/impl/b6$e;-><init>(Lcom/applovin/impl/sdk/k;Lcom/applovin/impl/g5;Lcom/applovin/impl/b6$b;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 24
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/b6;->a:Lcom/applovin/impl/sdk/k;

    sget-object v2, Lcom/applovin/impl/v4;->w:Lcom/applovin/impl/v4;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/applovin/impl/g5;->b(Ljava/lang/Thread;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 25
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 26
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 27
    :goto_1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/applovin/impl/b6;->b:Lcom/applovin/impl/sdk/o;

    invoke-virtual {p1}, Lcom/applovin/impl/g5;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Task failed execution"

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    :cond_2
    invoke-virtual {p1, v0}, Lcom/applovin/impl/g5;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void

    .line 29
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No task specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/applovin/impl/g5;Lcom/applovin/impl/b6$b;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/applovin/impl/b6;->a(Lcom/applovin/impl/g5;Lcom/applovin/impl/b6$b;J)V

    return-void
.end method

.method public a(Lcom/applovin/impl/g5;Lcom/applovin/impl/b6$b;J)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 5
    invoke-virtual/range {v0 .. v5}, Lcom/applovin/impl/b6;->a(Lcom/applovin/impl/g5;Lcom/applovin/impl/b6$b;JZ)V

    return-void
.end method

.method public a(Lcom/applovin/impl/g5;Lcom/applovin/impl/b6$b;JZ)V
    .locals 7

    if-eqz p1, :cond_4

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_3

    .line 6
    iget-boolean v0, p0, Lcom/applovin/impl/b6;->q:Z

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lcom/applovin/impl/b6$c;

    iget-object v2, p0, Lcom/applovin/impl/b6;->a:Lcom/applovin/impl/sdk/k;

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/applovin/impl/b6$c;-><init>(Lcom/applovin/impl/sdk/k;Lcom/applovin/impl/g5;Lcom/applovin/impl/b6$b;J)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lcom/applovin/impl/b6$e;

    iget-object v1, p0, Lcom/applovin/impl/b6;->a:Lcom/applovin/impl/sdk/k;

    invoke-direct {v0, v1, p1, p2}, Lcom/applovin/impl/b6$e;-><init>(Lcom/applovin/impl/sdk/k;Lcom/applovin/impl/g5;Lcom/applovin/impl/b6$b;)V

    .line 9
    :goto_0
    invoke-direct {p0, v0}, Lcom/applovin/impl/b6;->b(Lcom/applovin/impl/b6$e;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 10
    invoke-direct {p0, v0, p3, p4, p5}, Lcom/applovin/impl/b6;->a(Lcom/applovin/impl/b6$e;JZ)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/applovin/impl/b6;->b:Lcom/applovin/impl/sdk/o;

    invoke-virtual {p1}, Lcom/applovin/impl/g5;->c()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Task execution delayed until after init"

    invoke-virtual {p2, p1, p3}, Lcom/applovin/impl/sdk/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Invalid delay (millis) specified: "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No task specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/applovin/impl/g5;Lcom/applovin/impl/h3;)V
    .locals 3

    .line 30
    invoke-virtual {p2}, Lcom/applovin/impl/h3;->b()Ljava/lang/String;

    move-result-object p2

    .line 31
    iget-object v0, p0, Lcom/applovin/impl/b6;->j:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 32
    invoke-direct {p0, p2, v0}, Lcom/applovin/impl/b6;->b(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/applovin/impl/b6;->j:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_0
    new-instance p2, Lcom/applovin/impl/b6$e;

    iget-object v1, p0, Lcom/applovin/impl/b6;->a:Lcom/applovin/impl/sdk/k;

    sget-object v2, Lcom/applovin/impl/b6$b;->c:Lcom/applovin/impl/b6$b;

    invoke-direct {p2, v1, p1, v2}, Lcom/applovin/impl/b6$e;-><init>(Lcom/applovin/impl/sdk/k;Lcom/applovin/impl/g5;Lcom/applovin/impl/b6$b;)V

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public a(Ljava/lang/Runnable;Lcom/applovin/impl/b6$b;)V
    .locals 4

    .line 14
    iget-boolean v0, p0, Lcom/applovin/impl/b6;->p:Z

    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Lcom/applovin/impl/b6$e;

    iget-object v1, p0, Lcom/applovin/impl/b6;->a:Lcom/applovin/impl/sdk/k;

    new-instance v2, Lcom/applovin/impl/p6;

    const-string v3, "auxiliaryOperation"

    invoke-direct {v2, v1, v3, p1}, Lcom/applovin/impl/p6;-><init>(Lcom/applovin/impl/sdk/k;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-direct {v0, v1, v2, p2}, Lcom/applovin/impl/b6$e;-><init>(Lcom/applovin/impl/sdk/k;Lcom/applovin/impl/g5;Lcom/applovin/impl/b6$b;)V

    .line 16
    invoke-direct {p0, v0}, Lcom/applovin/impl/b6;->a(Lcom/applovin/impl/b6$e;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p1

    .line 17
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 18
    :cond_0
    iget-object p2, p0, Lcom/applovin/impl/b6;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_0
    return-void
.end method

.method public b()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/applovin/impl/b6;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/b6;->i:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/b6;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    :goto_0
    return-object v0
.end method

.method public b(Lcom/applovin/impl/g5;Lcom/applovin/impl/b6$b;J)Ljava/util/concurrent/ScheduledFuture;
    .locals 2

    .line 3
    iget-boolean v0, p0, Lcom/applovin/impl/b6;->p:Z

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/applovin/impl/b6$e;

    iget-object v1, p0, Lcom/applovin/impl/b6;->a:Lcom/applovin/impl/sdk/k;

    invoke-direct {v0, v1, p1, p2}, Lcom/applovin/impl/b6$e;-><init>(Lcom/applovin/impl/sdk/k;Lcom/applovin/impl/g5;Lcom/applovin/impl/b6$b;)V

    .line 5
    invoke-direct {p0, v0}, Lcom/applovin/impl/b6;->a(Lcom/applovin/impl/b6$e;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p2

    .line 6
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, p1, p3, p4, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/applovin/impl/b6;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, p1, p3, p4, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/b6;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/applovin/impl/b6;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcom/applovin/impl/b6;->r:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    :goto_0
    return-object v0
.end method

.method public d()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/b6;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/applovin/impl/b6;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/b6;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 9
    .line 10
    :goto_0
    return-object v0
.end method

.method public e()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/b6;->l:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/applovin/impl/b6;->a()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/applovin/impl/b6;->e()Ljava/util/concurrent/ExecutorService;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/b6;->o:Z

    .line 2
    .line 3
    return v0
.end method

.method public h()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/b6;->n:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/applovin/impl/b6;->o:Z

    .line 6
    .line 7
    iget-object v1, p0, Lcom/applovin/impl/b6;->m:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/applovin/impl/b6$e;

    .line 24
    .line 25
    iget-boolean v3, p0, Lcom/applovin/impl/b6;->q:Z

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    check-cast v2, Lcom/applovin/impl/b6$c;

    .line 30
    .line 31
    iget-object v3, v2, Lcom/applovin/impl/b6$e;->d:Lcom/applovin/impl/g5;

    .line 32
    .line 33
    iget-object v4, v2, Lcom/applovin/impl/b6$e;->e:Lcom/applovin/impl/b6$b;

    .line 34
    .line 35
    invoke-static {v2}, Lcom/applovin/impl/b6$c;->a(Lcom/applovin/impl/b6$c;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v5

    .line 39
    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/applovin/impl/b6;->a(Lcom/applovin/impl/g5;Lcom/applovin/impl/b6$b;J)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v1

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    iget-object v3, v2, Lcom/applovin/impl/b6$e;->d:Lcom/applovin/impl/g5;

    .line 46
    .line 47
    iget-object v2, v2, Lcom/applovin/impl/b6$e;->e:Lcom/applovin/impl/b6$b;

    .line 48
    .line 49
    invoke-virtual {p0, v3, v2}, Lcom/applovin/impl/b6;->a(Lcom/applovin/impl/g5;Lcom/applovin/impl/b6$b;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/b6;->m:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 56
    .line 57
    .line 58
    monitor-exit v0

    .line 59
    return-void

    .line 60
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw v1
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/b6;->n:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/applovin/impl/b6;->o:Z

    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw v1
.end method
