.class public Lcom/huawei/hms/framework/network/grs/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final i:Ljava/lang/String; = "c"

.field private static final j:Ljava/util/concurrent/ExecutorService;

.field private static k:J


# instance fields
.field private a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

.field private b:Landroid/content/Context;

.field private c:Lab/g;

.field private d:Lya/a;

.field private e:Lya/c;

.field private f:Lya/c;

.field private g:Lxa/a;

.field private h:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "GRS_GrsClient-Init"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/huawei/hms/framework/common/ExecutorsUtils;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/huawei/hms/framework/network/grs/a;->j:Ljava/util/concurrent/ExecutorService;

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    sput-wide v0, Lcom/huawei/hms/framework/network/grs/a;->k:J

    .line 12
    .line 13
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/a;->h:Ljava/util/concurrent/FutureTask;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/a;->b:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/huawei/hms/framework/network/grs/a;->j(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V

    iget-object p1, p0, Lcom/huawei/hms/framework/network/grs/a;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a;->b:Landroid/content/Context;

    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/huawei/hms/framework/network/grs/a$a;

    invoke-direct {v2, p0, v0, p1}, Lcom/huawei/hms/framework/network/grs/a$a;-><init>(Lcom/huawei/hms/framework/network/grs/a;Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v1, p0, Lcom/huawei/hms/framework/network/grs/a;->h:Ljava/util/concurrent/FutureTask;

    sget-object v0, Lcom/huawei/hms/framework/network/grs/a;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/huawei/hms/framework/network/grs/a;->i:Ljava/lang/String;

    invoke-static {}, Ldb/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getRegCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getSerCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getIssueCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getQueryTimeout()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "GrsClient Instance is init, GRS SDK version: %s, GrsBaseInfoParam: app_name=%s, reg_country=%s, ser_country=%s, issue_country=%s ,queryTimeout=%d"

    invoke-static {v0, p2, p1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/a;->h:Ljava/util/concurrent/FutureTask;

    invoke-direct {p0, p1}, Lcom/huawei/hms/framework/network/grs/a;->j(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V

    return-void
.end method

.method static synthetic a(J)J
    .locals 0

    .line 1
    sput-wide p0, Lcom/huawei/hms/framework/network/grs/a;->k:J

    .line 2
    .line 3
    return-wide p0
.end method

.method static synthetic b(Lcom/huawei/hms/framework/network/grs/a;)Lab/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/framework/network/grs/a;->c:Lab/g;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/huawei/hms/framework/network/grs/a;Lab/g;)Lab/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/a;->c:Lab/g;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic f(Lcom/huawei/hms/framework/network/grs/a;Lxa/a;)Lxa/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/a;->g:Lxa/a;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic g(Lcom/huawei/hms/framework/network/grs/a;Lya/a;)Lya/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/a;->d:Lya/a;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic h(Lcom/huawei/hms/framework/network/grs/a;Lya/c;)Lya/c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/a;->e:Lya/c;

    .line 2
    .line 3
    return-object p1
.end method

.method private j(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->clone()Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/a;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    sget-object v1, Lcom/huawei/hms/framework/network/grs/a;->i:Ljava/lang/String;

    .line 10
    .line 11
    const-string v2, "GrsClient catch CloneNotSupportedException"

    .line 12
    .line 13
    invoke-static {v1, v2, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->copy()Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/a;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method static synthetic k(Lcom/huawei/hms/framework/network/grs/a;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/huawei/hms/framework/network/grs/a;->n(Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private n(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_4

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/String;

    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Lcom/huawei/hms/framework/network/grs/a;->b:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v3, "time"

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/a;->e:Lya/c;

    .line 61
    .line 62
    const-string v3, ""

    .line 63
    .line 64
    invoke-virtual {v2, v1, v3}, Lya/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    const-wide/16 v4, 0x0

    .line 73
    .line 74
    if-nez v3, :cond_2

    .line 75
    .line 76
    const-string v3, "\\d+"

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_2

    .line 83
    .line 84
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 85
    .line 86
    .line 87
    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    goto :goto_1

    .line 89
    :catch_0
    move-exception v2

    .line 90
    sget-object v3, Lcom/huawei/hms/framework/network/grs/a;->i:Ljava/lang/String;

    .line 91
    .line 92
    const-string v6, "convert expire time from String to Long catch NumberFormatException."

    .line 93
    .line 94
    invoke-static {v3, v6, v2}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    add-int/lit8 v2, v2, -0x4

    .line 102
    .line 103
    const/4 v3, 0x0

    .line 104
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v6, "ETag"

    .line 117
    .line 118
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-direct {p0, v4, v5}, Lcom/huawei/hms/framework/network/grs/a;->s(J)Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-eqz v4, :cond_3

    .line 130
    .line 131
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-eqz v4, :cond_3

    .line 136
    .line 137
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-nez v4, :cond_1

    .line 142
    .line 143
    :cond_3
    sget-object v4, Lcom/huawei/hms/framework/network/grs/a;->i:Ljava/lang/String;

    .line 144
    .line 145
    new-instance v5, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string v6, "init interface auto clear some invalid sp\'s data: "

    .line 151
    .line 152
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    invoke-static {v4, v5}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    iget-object v4, p0, Lcom/huawei/hms/framework/network/grs/a;->e:Lya/c;

    .line 166
    .line 167
    invoke-virtual {v4, v2}, Lya/c;->d(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/a;->e:Lya/c;

    .line 171
    .line 172
    invoke-virtual {v2, v1}, Lya/c;->d(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/a;->e:Lya/c;

    .line 176
    .line 177
    invoke-virtual {v1, v3}, Lya/c;->d(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    goto/16 :goto_0

    .line 181
    .line 182
    :cond_4
    return-void

    .line 183
    :cond_5
    :goto_2
    sget-object p1, Lcom/huawei/hms/framework/network/grs/a;->i:Ljava/lang/String;

    .line 184
    .line 185
    const-string v0, "sp\'s content is empty."

    .line 186
    .line 187
    invoke-static {p1, v0}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    return-void
.end method

.method static synthetic p(Lcom/huawei/hms/framework/network/grs/a;)Lya/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/framework/network/grs/a;->e:Lya/c;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic q(Lcom/huawei/hms/framework/network/grs/a;Lya/c;)Lya/c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/a;->f:Lya/c;

    .line 2
    .line 3
    return-object p1
.end method

.method private s(J)Z
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sub-long/2addr v0, p1

    .line 6
    const-wide/32 p1, 0x240c8400

    .line 7
    .line 8
    .line 9
    cmp-long p1, v0, p1

    .line 10
    .line 11
    if-gtz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method static synthetic t()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hms/framework/network/grs/a;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic u(Lcom/huawei/hms/framework/network/grs/a;)Lya/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/framework/network/grs/a;->f:Lya/c;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic v()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/huawei/hms/framework/network/grs/a;->k:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic w(Lcom/huawei/hms/framework/network/grs/a;)Lya/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/framework/network/grs/a;->d:Lya/a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic x(Lcom/huawei/hms/framework/network/grs/a;)Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/framework/network/grs/a;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method private y()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a;->h:Ljava/util/concurrent/FutureTask;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    .line 9
    const-wide/16 v3, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v3, v4, v2}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v1
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_4

    .line 22
    :catch_0
    move-exception v0

    .line 23
    goto :goto_0

    .line 24
    :catch_1
    move-exception v0

    .line 25
    goto :goto_2

    .line 26
    :catch_2
    move-exception v0

    .line 27
    goto :goto_3

    .line 28
    :goto_0
    sget-object v2, Lcom/huawei/hms/framework/network/grs/a;->i:Ljava/lang/String;

    .line 29
    .line 30
    const-string v3, "init compute task occur unknown Exception"

    .line 31
    .line 32
    :goto_1
    invoke-static {v2, v3, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    goto :goto_4

    .line 36
    :catch_3
    sget-object v0, Lcom/huawei/hms/framework/network/grs/a;->i:Ljava/lang/String;

    .line 37
    .line 38
    const-string v2, "init compute task timed out"

    .line 39
    .line 40
    invoke-static {v0, v2}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_4

    .line 44
    :goto_2
    sget-object v2, Lcom/huawei/hms/framework/network/grs/a;->i:Ljava/lang/String;

    .line 45
    .line 46
    const-string v3, "init compute task interrupted."

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :goto_3
    sget-object v2, Lcom/huawei/hms/framework/network/grs/a;->i:Ljava/lang/String;

    .line 50
    .line 51
    const-string v3, "init compute task failed."

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catch_4
    sget-object v0, Lcom/huawei/hms/framework/network/grs/a;->i:Ljava/lang/String;

    .line 55
    .line 56
    const-string v2, "init compute task canceled."

    .line 57
    .line 58
    invoke-static {v0, v2}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :goto_4
    return v1
.end method


# virtual methods
.method d(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/a;->y()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a;->g:Lxa/a;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/a;->b:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v0, p1, p2, v1, p3}, Lxa/a;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :cond_1
    return-object v1

    .line 27
    :cond_2
    :goto_0
    sget-object p1, Lcom/huawei/hms/framework/network/grs/a;->i:Ljava/lang/String;

    .line 28
    .line 29
    const-string p2, "invalid para!"

    .line 30
    .line 31
    invoke-static {p1, p2}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-object v1
.end method

.method e(Ljava/lang/String;I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/a;->y()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a;->g:Lxa/a;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/a;->b:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v0, p1, v1, p2}, Lxa/a;->f(Ljava/lang/String;Landroid/content/Context;I)Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_1
    new-instance p1, Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_2
    :goto_0
    sget-object p1, Lcom/huawei/hms/framework/network/grs/a;->i:Ljava/lang/String;

    .line 30
    .line 31
    const-string p2, "invalid para!"

    .line 32
    .line 33
    invoke-static {p1, p2}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    new-instance p1, Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 39
    .line 40
    .line 41
    return-object p1
.end method

.method i()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/a;->y()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/a;->b:Landroid/content/Context;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {v0, v2, v2, v1}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getGrsParasKey(ZZLandroid/content/Context;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/a;->e:Lya/c;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lya/c;->d(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/a;->e:Lya/c;

    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v3, "time"

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Lya/c;->d(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/a;->e:Lya/c;

    .line 45
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v3, "ETag"

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v1, v2}, Lya/c;->d(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/a;->c:Lab/g;

    .line 67
    .line 68
    invoke-virtual {v1, v0}, Lab/g;->g(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method l(Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;I)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/huawei/hms/framework/network/grs/a;->i:Ljava/lang/String;

    .line 4
    .line 5
    const-string p2, "IQueryUrlsCallBack is must not null for process continue."

    .line 6
    .line 7
    invoke-static {p1, p2}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    .line 12
    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/a;->y()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a;->g:Lxa/a;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/a;->b:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v0, p1, p2, v1, p3}, Lxa/a;->j(Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;Landroid/content/Context;I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    sget-object p1, Lcom/huawei/hms/framework/network/grs/a;->i:Ljava/lang/String;

    .line 33
    .line 34
    const-string p3, "grs init task has not completed."

    .line 35
    .line 36
    invoke-static {p1, p3}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    const/4 p1, -0x7

    .line 40
    invoke-interface {p2, p1}, Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;->onCallBackFail(I)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void

    .line 44
    :cond_3
    :goto_1
    const/4 p1, -0x6

    .line 45
    invoke-interface {p2, p1}, Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;->onCallBackFail(I)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method m(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/IQueryUrlCallBack;I)V
    .locals 7

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/huawei/hms/framework/network/grs/a;->i:Ljava/lang/String;

    .line 4
    .line 5
    const-string p2, "IQueryUrlCallBack is must not null for process continue."

    .line 6
    .line 7
    invoke-static {p1, p2}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    .line 12
    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    if-eqz p1, :cond_3

    .line 16
    .line 17
    if-nez p2, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/a;->y()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/a;->g:Lxa/a;

    .line 27
    .line 28
    iget-object v5, p0, Lcom/huawei/hms/framework/network/grs/a;->b:Landroid/content/Context;

    .line 29
    .line 30
    move-object v2, p1

    .line 31
    move-object v3, p2

    .line 32
    move-object v4, p3

    .line 33
    move v6, p4

    .line 34
    invoke-virtual/range {v1 .. v6}, Lxa/a;->k(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/IQueryUrlCallBack;Landroid/content/Context;I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    sget-object p1, Lcom/huawei/hms/framework/network/grs/a;->i:Ljava/lang/String;

    .line 39
    .line 40
    const-string p2, "grs init task has not completed."

    .line 41
    .line 42
    invoke-static {p1, p2}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    const/4 p1, -0x7

    .line 46
    invoke-interface {p3, p1}, Lcom/huawei/hms/framework/network/grs/IQueryUrlCallBack;->onCallBackFail(I)V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void

    .line 50
    :cond_3
    :goto_1
    const/4 p1, -0x6

    .line 51
    invoke-interface {p3, p1}, Lcom/huawei/hms/framework/network/grs/IQueryUrlCallBack;->onCallBackFail(I)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method o(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-class v2, Lcom/huawei/hms/framework/network/grs/a;

    .line 13
    .line 14
    if-eq v2, v1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    instance-of v1, p1, Lcom/huawei/hms/framework/network/grs/a;

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    check-cast p1, Lcom/huawei/hms/framework/network/grs/a;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/huawei/hms/framework/network/grs/a;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->compare(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    return p1

    .line 32
    :cond_2
    :goto_0
    return v0
.end method

.method r()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/a;->y()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/a;->b:Landroid/content/Context;

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/a;->d:Lya/a;

    .line 19
    .line 20
    invoke-virtual {v1, v0, v2}, Lya/a;->d(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    return v0

    .line 25
    :cond_2
    :goto_0
    return v1
.end method
