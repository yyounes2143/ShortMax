.class public Lab/g;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final b:Ljava/util/concurrent/ExecutorService;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcb/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/lang/Object;


# instance fields
.field private a:Lya/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "GRS_RequestController-Task"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/huawei/hms/framework/common/ExecutorsUtils;->newCachedThreadPool(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lab/g;->b:Ljava/util/concurrent/ExecutorService;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    const/16 v1, 0x10

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lab/g;->c:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lab/g;->d:Ljava/lang/Object;

    .line 24
    .line 25
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

.method static synthetic b()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    sget-object v0, Lab/g;->b:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic c(Lab/g;)Lya/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lab/g;->a:Lya/a;

    .line 2
    .line 3
    return-object p0
.end method

.method private d(Lab/d;Lxa/b;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    const-string v0, "RequestController"

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, "GrsResponse is null"

    .line 8
    .line 9
    invoke-static {v0, p1}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p2}, Lxa/b;->a()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v1, "GrsResponse is not null"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p2, p1}, Lxa/b;->a(Lab/d;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic e(Lab/g;Lab/d;Lxa/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lab/g;->d(Lab/d;Lxa/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcb/c;Ljava/lang/String;Lya/c;I)Lab/d;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "request to server with service name is: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "RequestController"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/huawei/hms/framework/common/Logger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcb/c;->c()Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1}, Lcb/c;->a()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-virtual {v0, v2, v2, v1}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getGrsParasKey(ZZLandroid/content/Context;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v2, "request spUrlKey: "

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v2, "RequestController"

    .line 54
    .line 55
    invoke-static {v2, v1}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    sget-object v1, Lab/g;->d:Ljava/lang/Object;

    .line 59
    .line 60
    monitor-enter v1

    .line 61
    :try_start_0
    invoke-virtual {p1}, Lcb/c;->a()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static {v2}, Lcom/huawei/hms/framework/common/NetworkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    const/4 v3, 0x0

    .line 70
    if-nez v2, :cond_0

    .line 71
    .line 72
    monitor-exit v1

    .line 73
    return-object v3

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    goto/16 :goto_b

    .line 76
    .line 77
    :cond_0
    invoke-static {v0}, Ldb/d;->a(Ljava/lang/String;)Ldb/d$a;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    sget-object v4, Lab/g;->c:Ljava/util/Map;

    .line 82
    .line 83
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    check-cast v5, Lcb/b;

    .line 88
    .line 89
    if-eqz v5, :cond_2

    .line 90
    .line 91
    invoke-virtual {v5}, Lcb/b;->b()Z

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    if-nez v6, :cond_1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {v5}, Lcb/b;->a()Ljava/util/concurrent/Future;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    goto :goto_2

    .line 103
    :cond_2
    :goto_0
    if-eqz v2, :cond_4

    .line 104
    .line 105
    invoke-virtual {v2}, Ldb/d$a;->a()Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-nez v2, :cond_3

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_3
    monitor-exit v1

    .line 113
    return-object v3

    .line 114
    :cond_4
    :goto_1
    const-string v2, "RequestController"

    .line 115
    .line 116
    const-string v5, "hitGrsRequestBean == null or request block is released."

    .line 117
    .line 118
    invoke-static {v2, v5}, Lcom/huawei/hms/framework/common/Logger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    sget-object v2, Lab/g;->b:Ljava/util/concurrent/ExecutorService;

    .line 122
    .line 123
    new-instance v5, Lab/g$a;

    .line 124
    .line 125
    invoke-direct {v5, p0, p1, p2, p3}, Lab/g$a;-><init>(Lab/g;Lcb/c;Ljava/lang/String;Lya/c;)V

    .line 126
    .line 127
    .line 128
    invoke-interface {v2, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    new-instance p3, Lcb/b;

    .line 133
    .line 134
    invoke-direct {p3, p2}, Lcb/b;-><init>(Ljava/util/concurrent/Future;)V

    .line 135
    .line 136
    .line 137
    invoke-interface {v4, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    const/4 p3, -0x1

    .line 142
    if-eq p4, p3, :cond_5

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_5
    invoke-virtual {p1}, Lcb/c;->a()Landroid/content/Context;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-static {p1}, Lbb/a;->a(Landroid/content/Context;)Lcb/d;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    if-eqz p1, :cond_6

    .line 154
    .line 155
    invoke-virtual {p1}, Lcb/d;->f()I

    .line 156
    .line 157
    .line 158
    move-result p4

    .line 159
    goto :goto_3

    .line 160
    :cond_6
    const/16 p4, 0xa

    .line 161
    .line 162
    :goto_3
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    const-string p3, "RequestController"

    .line 171
    .line 172
    const-string v0, "use grsQueryTimeout %d"

    .line 173
    .line 174
    invoke-static {p3, v0, p1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    int-to-long p3, p4

    .line 178
    :try_start_1
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 179
    .line 180
    invoke-interface {p2, p3, p4, p1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    check-cast p1, Lab/d;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 185
    .line 186
    return-object p1

    .line 187
    :catch_0
    move-exception p1

    .line 188
    goto :goto_4

    .line 189
    :catch_1
    move-exception p1

    .line 190
    goto :goto_6

    .line 191
    :catch_2
    move-exception p1

    .line 192
    goto :goto_7

    .line 193
    :catch_3
    move-exception p1

    .line 194
    goto :goto_8

    .line 195
    :catch_4
    move-exception p1

    .line 196
    goto :goto_9

    .line 197
    :goto_4
    const-string p2, "RequestController"

    .line 198
    .line 199
    const-string p3, "when check result, find Other Exception, check others"

    .line 200
    .line 201
    :goto_5
    invoke-static {p2, p3, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    .line 203
    .line 204
    goto :goto_a

    .line 205
    :goto_6
    const-string p2, "RequestController"

    .line 206
    .line 207
    const-string p3, "when check result, find TimeoutException, check others"

    .line 208
    .line 209
    goto :goto_5

    .line 210
    :goto_7
    const-string p2, "RequestController"

    .line 211
    .line 212
    const-string p3, "when check result, find InterruptedException, check others"

    .line 213
    .line 214
    goto :goto_5

    .line 215
    :goto_8
    const-string p2, "RequestController"

    .line 216
    .line 217
    const-string p3, "when check result, find ExecutionException, check others"

    .line 218
    .line 219
    goto :goto_5

    .line 220
    :goto_9
    const-string p2, "RequestController"

    .line 221
    .line 222
    const-string p3, "when check result, find CancellationException, check others"

    .line 223
    .line 224
    goto :goto_5

    .line 225
    :goto_a
    return-object v3

    .line 226
    :goto_b
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 227
    throw p1
.end method

.method public f(Lcb/c;Lxa/b;Ljava/lang/String;Lya/c;I)V
    .locals 9

    .line 1
    sget-object v0, Lab/g;->b:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    new-instance v8, Lab/g$b;

    .line 4
    .line 5
    move-object v1, v8

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p1

    .line 8
    move-object v4, p3

    .line 9
    move-object v5, p4

    .line 10
    move v6, p5

    .line 11
    move-object v7, p2

    .line 12
    invoke-direct/range {v1 .. v7}, Lab/g$b;-><init>(Lab/g;Lcb/c;Ljava/lang/String;Lya/c;ILxa/b;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lab/g;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lab/g;->c:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method public h(Lya/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lab/g;->a:Lya/a;

    .line 2
    .line 3
    return-void
.end method
