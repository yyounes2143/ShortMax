.class public final Lzb/f;
.super Ljava/lang/Object;
.source "ApiHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lzb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static c:I

.field private static d:J

.field private static final e:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final f:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final g:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lzb/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lzb/f;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lzb/f;->a:Lzb/f;

    .line 7
    .line 8
    const-string v0, "https://cdn-v2.shorttv.live"

    .line 9
    .line 10
    const-string v1, "https://cdn-v2.shorttv.app"

    .line 11
    .line 12
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lzb/f;->b:Ljava/util/List;

    .line 21
    .line 22
    const-wide/16 v0, -0x1

    .line 23
    .line 24
    sput-wide v0, Lzb/f;->d:J

    .line 25
    .line 26
    new-instance v0, Ljava/lang/Object;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lzb/f;->e:Ljava/lang/Object;

    .line 32
    .line 33
    new-instance v0, Lzb/c;

    .line 34
    .line 35
    invoke-direct {v0}, Lzb/c;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sput-object v0, Lzb/f;->f:Lms/i;

    .line 43
    .line 44
    new-instance v0, Lzb/d;

    .line 45
    .line 46
    invoke-direct {v0}, Lzb/d;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lzb/f;->g:Lms/i;

    .line 54
    .line 55
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

.method public static synthetic a()Lfu/d0;
    .locals 1

    .line 1
    invoke-static {}, Lzb/f;->j()Lfu/d0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lzb/f;->i(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c()Lokhttp3/OkHttpClient;
    .locals 1

    .line 1
    invoke-static {}, Lzb/f;->h()Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final h()Lokhttp3/OkHttpClient;
    .locals 5

    .line 1
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor;

    .line 2
    .line 3
    new-instance v1, Lzb/e;

    .line 4
    .line 5
    invoke-direct {v1}, Lzb/e;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BASIC:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->d(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 14
    .line 15
    .line 16
    new-instance v1, Lgc/d;

    .line 17
    .line 18
    new-instance v2, Lzb/f$a;

    .line 19
    .line 20
    invoke-direct {v2}, Lzb/f$a;-><init>()V

    .line 21
    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x2

    .line 25
    invoke-direct {v1, v2, v3, v4, v3}, Lgc/d;-><init>(Lhc/a;Lgc/b;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 26
    .line 27
    .line 28
    new-instance v2, Lokhttp3/OkHttpClient$Builder;

    .line 29
    .line 30
    invoke-direct {v2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 31
    .line 32
    .line 33
    sget-object v3, Lzb/b;->c:Lzb/b$a;

    .line 34
    .line 35
    invoke-virtual {v3}, Lzb/b$a;->a()Lokhttp3/EventListener$Factory;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient$Builder;->l(Lokhttp3/EventListener$Factory;)Lokhttp3/OkHttpClient$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    new-instance v3, Lzb/g;

    .line 44
    .line 45
    invoke-direct {v3}, Lzb/g;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient$Builder;->a(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient$Builder;->a(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->a(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 61
    .line 62
    const-wide/16 v2, 0x14

    .line 63
    .line 64
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->f(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-wide/16 v2, 0x3c

    .line 69
    .line 70
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->V(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->Y(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    new-instance v1, Lyb/c;

    .line 79
    .line 80
    invoke-direct {v1}, Lyb/c;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->j(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->c()Lokhttp3/OkHttpClient;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    return-object v0
.end method

.method private static final i(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lbc/e;->a:Lbc/e$a;

    .line 2
    .line 3
    invoke-static {}, Lcom/jiuzhou/cdn/CdnHelper;->j()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "httpLog: "

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {v0, v1, p0}, Lbc/e$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private static final j()Lfu/d0;
    .locals 2

    .line 1
    new-instance v0, Lfu/d0$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lfu/d0$b;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "https://cdn-v2.shorttv.live"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lfu/d0$b;->c(Ljava/lang/String;)Lfu/d0$b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lzb/f;->a:Lzb/f;

    .line 13
    .line 14
    invoke-virtual {v1}, Lzb/f;->f()Lokhttp3/OkHttpClient;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lfu/d0$b;->g(Lokhttp3/OkHttpClient;)Lfu/d0$b;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {}, Lhu/a;->f()Lhu/a;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lfu/d0$b;->b(Lfu/h$a;)Lfu/d0$b;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lfu/d0$b;->e()Lfu/d0;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0
.end method


# virtual methods
.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lzb/f;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()I
    .locals 2

    .line 1
    sget v0, Lzb/f;->c:I

    .line 2
    .line 3
    sget-object v1, Lzb/f;->b:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    sput v0, Lzb/f;->c:I

    .line 13
    .line 14
    :cond_0
    sget v0, Lzb/f;->c:I

    .line 15
    .line 16
    return v0
.end method

.method public final f()Lokhttp3/OkHttpClient;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lzb/f;->f:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lokhttp3/OkHttpClient;

    .line 8
    .line 9
    return-object v0
.end method

.method public final g()Lfu/d0;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lzb/f;->g:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getValue(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Lfu/d0;

    .line 13
    .line 14
    return-object v0
.end method

.method public final k()V
    .locals 8

    .line 1
    sget-object v0, Lzb/f;->e:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lbc/c;->a:Lbc/c;

    .line 5
    .line 6
    invoke-virtual {v1}, Lbc/c;->e()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    sget-wide v4, Lzb/f;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    sub-long v4, v2, v4

    .line 13
    .line 14
    const-wide/16 v6, 0x7530

    .line 15
    .line 16
    cmp-long v4, v4, v6

    .line 17
    .line 18
    if-gez v4, :cond_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lbc/c;->f()Z

    .line 23
    .line 24
    .line 25
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :cond_1
    :try_start_2
    sput-wide v2, Lzb/f;->d:J

    .line 31
    .line 32
    sget-object v1, Lzb/f;->a:Lzb/f;

    .line 33
    .line 34
    invoke-virtual {v1}, Lzb/f;->e()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    sget-object v3, Lzb/f;->b:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-lt v2, v3, :cond_2

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    sput v2, Lzb/f;->c:I

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v1

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    invoke-virtual {v1}, Lzb/f;->e()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    sput v2, Lzb/f;->c:I

    .line 61
    .line 62
    :goto_0
    sget-object v2, Lbc/e;->a:Lbc/e$a;

    .line 63
    .line 64
    const-string v3, "ApiHelper"

    .line 65
    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v5, "updateApiUrlIndex -> "

    .line 72
    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Lzb/f;->e()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v2, v3, v1}, Lbc/e$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    .line 92
    monitor-exit v0

    .line 93
    return-void

    .line 94
    :goto_1
    monitor-exit v0

    .line 95
    throw v1
.end method
