.class public final Lcom/startshorts/androidplayer/manager/api/base/k;
.super Ljava/lang/Object;
.source "ApiClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/api/base/k$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/manager/api/base/k;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static b:J

.field private static final c:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static d:Lcom/startshorts/androidplayer/manager/api/base/k$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static e:Lcom/startshorts/androidplayer/manager/api/base/k$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/api/base/k;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/api/base/k;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/manager/api/base/k;->a:Lcom/startshorts/androidplayer/manager/api/base/k;

    .line 7
    .line 8
    const-wide/16 v1, -0x1

    .line 9
    .line 10
    sput-wide v1, Lcom/startshorts/androidplayer/manager/api/base/k;->b:J

    .line 11
    .line 12
    new-instance v1, Ljava/lang/Object;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/startshorts/androidplayer/manager/api/base/k;->c:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/api/base/k;->f()Lcom/startshorts/androidplayer/manager/api/base/k$a;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sput-object v1, Lcom/startshorts/androidplayer/manager/api/base/k;->d:Lcom/startshorts/androidplayer/manager/api/base/k$a;

    .line 24
    .line 25
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/api/base/k;->c()Lcom/startshorts/androidplayer/manager/api/base/k$a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/startshorts/androidplayer/manager/api/base/k;->e:Lcom/startshorts/androidplayer/manager/api/base/k$a;

    .line 30
    .line 31
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

.method public static synthetic a(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/api/base/k;->e(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/api/base/k;->h(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final c()Lcom/startshorts/androidplayer/manager/api/base/k$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/base/p;->a:Lcom/startshorts/androidplayer/manager/api/base/p$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/api/base/p$a;->c()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/api/base/k;->d(Ljava/lang/String;)Lcom/startshorts/androidplayer/manager/api/base/k$a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private final d(Ljava/lang/String;)Lcom/startshorts/androidplayer/manager/api/base/k$a;
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "API url -> "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "ApiClient"

    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/base/RetrofitFactory;->a:Lcom/startshorts/androidplayer/manager/api/base/RetrofitFactory;

    .line 26
    .line 27
    new-instance v1, Lcom/startshorts/androidplayer/bean/api/ApiConfig;

    .line 28
    .line 29
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->setBaseUrl(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-wide/16 v2, 0x5dc0

    .line 36
    .line 37
    invoke-virtual {v1, v2, v3}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->setConnectTimeout(J)V

    .line 38
    .line 39
    .line 40
    const-wide/16 v2, 0x7530

    .line 41
    .line 42
    invoke-virtual {v1, v2, v3}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->setWriteTimeout(J)V

    .line 43
    .line 44
    .line 45
    const-wide/16 v2, 0x4e20

    .line 46
    .line 47
    invoke-virtual {v1, v2, v3}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->setReadTimeout(J)V

    .line 48
    .line 49
    .line 50
    const/4 p1, 0x1

    .line 51
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->setAttributionService(Z)V

    .line 52
    .line 53
    .line 54
    sget-object p1, Lid/a;->a:Lid/a;

    .line 55
    .line 56
    invoke-virtual {p1}, Lid/a;->c()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_0

    .line 61
    .line 62
    new-instance p1, Lokhttp3/logging/HttpLoggingInterceptor;

    .line 63
    .line 64
    new-instance v2, Lcom/startshorts/androidplayer/manager/api/base/i;

    .line 65
    .line 66
    invoke-direct {v2}, Lcom/startshorts/androidplayer/manager/api/base/i;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-direct {p1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V

    .line 70
    .line 71
    .line 72
    sget-object v2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 73
    .line 74
    invoke-virtual {p1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;->b(Lokhttp3/logging/HttpLoggingInterceptor$Level;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->setNetworkInterceptor(Lokhttp3/Interceptor;)V

    .line 78
    .line 79
    .line 80
    :cond_0
    new-instance p1, Lcom/startshorts/androidplayer/manager/api/base/o;

    .line 81
    .line 82
    invoke-direct {p1}, Lcom/startshorts/androidplayer/manager/api/base/o;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->addOkHttpInterceptor(Lokhttp3/Interceptor;)Lcom/startshorts/androidplayer/bean/api/ApiConfig;

    .line 86
    .line 87
    .line 88
    sget-object p1, Lcom/startshorts/androidplayer/manager/api/base/m;->g:Lcom/startshorts/androidplayer/manager/api/base/m$b;

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/api/base/m$b;->a()Lokhttp3/EventListener$Factory;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->setOkHttpEventListener(Lokhttp3/EventListener$Factory;)V

    .line 95
    .line 96
    .line 97
    new-instance p1, Lokhttp3/ConnectionPool;

    .line 98
    .line 99
    const-wide/16 v2, 0x5

    .line 100
    .line 101
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 102
    .line 103
    const/16 v5, 0xf

    .line 104
    .line 105
    invoke-direct {p1, v5, v2, v3, v4}, Lokhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->setConnectionPool(Lokhttp3/ConnectionPool;)V

    .line 109
    .line 110
    .line 111
    invoke-static {}, Lhu/a;->f()Lhu/a;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    const-string v2, "create(...)"

    .line 116
    .line 117
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->addConverter(Lfu/h$a;)Lcom/startshorts/androidplayer/bean/api/ApiConfig;

    .line 121
    .line 122
    .line 123
    invoke-static {}, Liu/k;->f()Liu/k;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->addConverter(Lfu/h$a;)Lcom/startshorts/androidplayer/bean/api/ApiConfig;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    new-instance v3, Lcom/startshorts/androidplayer/manager/api/base/t;

    .line 135
    .line 136
    invoke-direct {v3}, Lcom/startshorts/androidplayer/manager/api/base/t;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v3}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->addConverter(Lfu/h$a;)Lcom/startshorts/androidplayer/bean/api/ApiConfig;

    .line 140
    .line 141
    .line 142
    invoke-static {}, Lretrofit2/adapter/rxjava/f;->d()Lretrofit2/adapter/rxjava/f;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->addCallAdapter(Lfu/e$a;)Lcom/startshorts/androidplayer/bean/api/ApiConfig;

    .line 150
    .line 151
    .line 152
    new-instance p1, Lee/d;

    .line 153
    .line 154
    invoke-direct {p1}, Lee/d;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->setDns(Lokhttp3/Dns;)V

    .line 158
    .line 159
    .line 160
    new-instance p1, Lokhttp3/Cache;

    .line 161
    .line 162
    new-instance v2, Ljava/io/File;

    .line 163
    .line 164
    sget-object v3, Lfk/u;->a:Lfk/u;

    .line 165
    .line 166
    invoke-virtual {v3}, Lfk/u;->b()Landroid/content/Context;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    const-string v4, "http-cache"

    .line 175
    .line 176
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    const-wide/32 v3, 0xa00000

    .line 180
    .line 181
    .line 182
    invoke-direct {p1, v2, v3, v4}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->setCache(Lokhttp3/Cache;)V

    .line 186
    .line 187
    .line 188
    const-class p1, Lcom/startshorts/androidplayer/manager/api/base/k$a;

    .line 189
    .line 190
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/manager/api/base/RetrofitFactory;->c(Lcom/startshorts/androidplayer/bean/api/ApiConfig;Ljava/lang/Class;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    check-cast p1, Lcom/startshorts/androidplayer/manager/api/base/k$a;

    .line 195
    .line 196
    return-object p1
.end method

.method private static final e(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "Attribution "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string v1, "HttpLoggingInterceptor"

    .line 26
    .line 27
    invoke-virtual {v0, v1, p0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private final f()Lcom/startshorts/androidplayer/manager/api/base/k$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/base/p;->a:Lcom/startshorts/androidplayer/manager/api/base/p$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/api/base/p$a;->c()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/api/base/k;->g(Ljava/lang/String;)Lcom/startshorts/androidplayer/manager/api/base/k$a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private final g(Ljava/lang/String;)Lcom/startshorts/androidplayer/manager/api/base/k$a;
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "API url -> "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "ApiClient"

    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/base/RetrofitFactory;->a:Lcom/startshorts/androidplayer/manager/api/base/RetrofitFactory;

    .line 26
    .line 27
    new-instance v1, Lcom/startshorts/androidplayer/bean/api/ApiConfig;

    .line 28
    .line 29
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->setBaseUrl(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-wide/16 v2, 0x5dc0

    .line 36
    .line 37
    invoke-virtual {v1, v2, v3}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->setConnectTimeout(J)V

    .line 38
    .line 39
    .line 40
    const-wide/16 v2, 0x7530

    .line 41
    .line 42
    invoke-virtual {v1, v2, v3}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->setWriteTimeout(J)V

    .line 43
    .line 44
    .line 45
    const-wide/16 v2, 0x4e20

    .line 46
    .line 47
    invoke-virtual {v1, v2, v3}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->setReadTimeout(J)V

    .line 48
    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->setAttributionService(Z)V

    .line 52
    .line 53
    .line 54
    sget-object p1, Lid/a;->a:Lid/a;

    .line 55
    .line 56
    invoke-virtual {p1}, Lid/a;->c()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_0

    .line 61
    .line 62
    new-instance p1, Lokhttp3/logging/HttpLoggingInterceptor;

    .line 63
    .line 64
    new-instance v2, Lcom/startshorts/androidplayer/manager/api/base/j;

    .line 65
    .line 66
    invoke-direct {v2}, Lcom/startshorts/androidplayer/manager/api/base/j;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-direct {p1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V

    .line 70
    .line 71
    .line 72
    sget-object v2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 73
    .line 74
    invoke-virtual {p1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;->b(Lokhttp3/logging/HttpLoggingInterceptor$Level;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->setNetworkInterceptor(Lokhttp3/Interceptor;)V

    .line 78
    .line 79
    .line 80
    :cond_0
    new-instance p1, Lcom/startshorts/androidplayer/manager/api/base/o;

    .line 81
    .line 82
    invoke-direct {p1}, Lcom/startshorts/androidplayer/manager/api/base/o;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->addOkHttpInterceptor(Lokhttp3/Interceptor;)Lcom/startshorts/androidplayer/bean/api/ApiConfig;

    .line 86
    .line 87
    .line 88
    sget-object p1, Lcom/startshorts/androidplayer/manager/api/base/m;->g:Lcom/startshorts/androidplayer/manager/api/base/m$b;

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/api/base/m$b;->a()Lokhttp3/EventListener$Factory;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->setOkHttpEventListener(Lokhttp3/EventListener$Factory;)V

    .line 95
    .line 96
    .line 97
    new-instance p1, Lokhttp3/ConnectionPool;

    .line 98
    .line 99
    const-wide/16 v2, 0x5

    .line 100
    .line 101
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 102
    .line 103
    const/16 v5, 0xf

    .line 104
    .line 105
    invoke-direct {p1, v5, v2, v3, v4}, Lokhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->setConnectionPool(Lokhttp3/ConnectionPool;)V

    .line 109
    .line 110
    .line 111
    invoke-static {}, Lhu/a;->f()Lhu/a;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    const-string v2, "create(...)"

    .line 116
    .line 117
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->addConverter(Lfu/h$a;)Lcom/startshorts/androidplayer/bean/api/ApiConfig;

    .line 121
    .line 122
    .line 123
    invoke-static {}, Liu/k;->f()Liu/k;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->addConverter(Lfu/h$a;)Lcom/startshorts/androidplayer/bean/api/ApiConfig;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    new-instance v3, Lcom/startshorts/androidplayer/manager/api/base/t;

    .line 135
    .line 136
    invoke-direct {v3}, Lcom/startshorts/androidplayer/manager/api/base/t;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v3}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->addConverter(Lfu/h$a;)Lcom/startshorts/androidplayer/bean/api/ApiConfig;

    .line 140
    .line 141
    .line 142
    invoke-static {}, Lretrofit2/adapter/rxjava/f;->d()Lretrofit2/adapter/rxjava/f;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->addCallAdapter(Lfu/e$a;)Lcom/startshorts/androidplayer/bean/api/ApiConfig;

    .line 150
    .line 151
    .line 152
    new-instance p1, Lee/d;

    .line 153
    .line 154
    invoke-direct {p1}, Lee/d;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->setDns(Lokhttp3/Dns;)V

    .line 158
    .line 159
    .line 160
    new-instance p1, Lokhttp3/Cache;

    .line 161
    .line 162
    new-instance v2, Ljava/io/File;

    .line 163
    .line 164
    sget-object v3, Lfk/u;->a:Lfk/u;

    .line 165
    .line 166
    invoke-virtual {v3}, Lfk/u;->b()Landroid/content/Context;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    const-string v4, "http-cache"

    .line 175
    .line 176
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    const-wide/32 v3, 0xa00000

    .line 180
    .line 181
    .line 182
    invoke-direct {p1, v2, v3, v4}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/api/ApiConfig;->setCache(Lokhttp3/Cache;)V

    .line 186
    .line 187
    .line 188
    const-class p1, Lcom/startshorts/androidplayer/manager/api/base/k$a;

    .line 189
    .line 190
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/manager/api/base/RetrofitFactory;->c(Lcom/startshorts/androidplayer/bean/api/ApiConfig;Ljava/lang/Class;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    check-cast p1, Lcom/startshorts/androidplayer/manager/api/base/k$a;

    .line 195
    .line 196
    return-object p1
.end method

.method private static final h(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    const-string v1, "HttpLoggingInterceptor"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final i()Lcom/startshorts/androidplayer/manager/api/base/k$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/base/k;->e:Lcom/startshorts/androidplayer/manager/api/base/k$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Lcom/startshorts/androidplayer/manager/api/base/k$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/base/k;->d:Lcom/startshorts/androidplayer/manager/api/base/k$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/base/k;->c:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    sget-wide v4, Lcom/startshorts/androidplayer/manager/api/base/k;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    sub-long v4, v2, v4

    .line 18
    .line 19
    const-wide/32 v6, 0xea60

    .line 20
    .line 21
    .line 22
    cmp-long v4, v4, v6

    .line 23
    .line 24
    if-gez v4, :cond_0

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->f0()Z

    .line 29
    .line 30
    .line 31
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :cond_1
    :try_start_2
    sput-wide v2, Lcom/startshorts/androidplayer/manager/api/base/k;->b:J

    .line 37
    .line 38
    sget-object v1, Lud/b;->a:Lud/b;

    .line 39
    .line 40
    invoke-virtual {v1}, Lud/b;->x()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const/16 v3, 0x29

    .line 45
    .line 46
    if-eqz p3, :cond_2

    .line 47
    .line 48
    sget-object p3, Lcom/startshorts/androidplayer/manager/api/base/p;->a:Lcom/startshorts/androidplayer/manager/api/base/p$a;

    .line 49
    .line 50
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/manager/api/base/p$a;->a()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-ge v2, v4, :cond_2

    .line 59
    .line 60
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/manager/api/base/p$a;->a()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    check-cast p3, Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    invoke-virtual {p3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v5, "cannot connect to("

    .line 88
    .line 89
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string p1, ") oldDomain("

    .line 96
    .line 97
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string p1, ") errMsg("

    .line 104
    .line 105
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 119
    .line 120
    const-string v4, "ApiClient"

    .line 121
    .line 122
    invoke-virtual {p2, v4, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :catchall_0
    move-exception p1

    .line 127
    goto :goto_2

    .line 128
    :cond_2
    const/4 p3, 0x0

    .line 129
    move-object p1, p3

    .line 130
    :goto_0
    add-int/lit8 v2, v2, 0x1

    .line 131
    .line 132
    sget-object p2, Lcom/startshorts/androidplayer/manager/api/base/p;->a:Lcom/startshorts/androidplayer/manager/api/base/p$a;

    .line 133
    .line 134
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/manager/api/base/p$a;->a()Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-lt v2, v4, :cond_3

    .line 143
    .line 144
    const/4 v2, 0x0

    .line 145
    :cond_3
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/manager/api/base/p$a;->a()Ljava/util/List;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    check-cast p2, Ljava/lang/String;

    .line 154
    .line 155
    sget-object v4, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 156
    .line 157
    const-string v5, "ApiClient"

    .line 158
    .line 159
    new-instance v6, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    const-string v7, "change api url to("

    .line 165
    .line 166
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-virtual {v4, v5, v3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    if-eqz p1, :cond_5

    .line 183
    .line 184
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    if-nez v3, :cond_4

    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_4
    sget-object v4, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 192
    .line 193
    const-string v5, "change_api_domain"

    .line 194
    .line 195
    new-instance v6, Landroid/os/Bundle;

    .line 196
    .line 197
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 198
    .line 199
    .line 200
    const-string v3, "err_msg"

    .line 201
    .line 202
    invoke-virtual {v6, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    const-string p1, "old_domain"

    .line 206
    .line 207
    invoke-virtual {v6, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    const-string p1, "new_domain"

    .line 211
    .line 212
    invoke-virtual {v6, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 216
    .line 217
    const/4 v9, 0x4

    .line 218
    const/4 v10, 0x0

    .line 219
    const-wide/16 v7, 0x0

    .line 220
    .line 221
    invoke-static/range {v4 .. v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    :cond_5
    :goto_1
    invoke-virtual {v1, v2}, Lud/b;->H2(I)V

    .line 225
    .line 226
    .line 227
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    .line 229
    monitor-exit v0

    .line 230
    return-void

    .line 231
    :goto_2
    monitor-exit v0

    .line 232
    throw p1
.end method
