.class public final Lcom/startshorts/androidplayer/manager/api/base/m;
.super Lokhttp3/EventListener;
.source "ApiEventListener.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/api/base/m$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final g:Lcom/startshorts/androidplayer/manager/api/base/m$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final h:Lokhttp3/EventListener$Factory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final c:J

.field private final d:Lokhttp3/HttpUrl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:J

.field private final f:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/api/base/m$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/api/base/m$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/api/base/m;->g:Lcom/startshorts/androidplayer/manager/api/base/m$b;

    .line 8
    .line 9
    new-instance v0, Lcom/startshorts/androidplayer/manager/api/base/m$a;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/api/base/m$a;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/startshorts/androidplayer/manager/api/base/m;->h:Lokhttp3/EventListener$Factory;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(JLokhttp3/HttpUrl;J)V
    .locals 1
    .param p3    # Lokhttp3/HttpUrl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "url"

    .line 2
    .line 3
    .line 4
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lokhttp3/EventListener;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-wide p1, p0, Lcom/startshorts/androidplayer/manager/api/base/m;->c:J

    .line 11
    .line 12
    iput-object p3, p0, Lcom/startshorts/androidplayer/manager/api/base/m;->d:Lokhttp3/HttpUrl;

    .line 13
    .line 14
    iput-wide p4, p0, Lcom/startshorts/androidplayer/manager/api/base/m;->e:J

    .line 15
    .line 16
    new-instance p1, Lcom/startshorts/androidplayer/manager/api/base/l;

    .line 17
    .line 18
    invoke-direct {p1}, Lcom/startshorts/androidplayer/manager/api/base/l;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/api/base/m;->f:Lms/i;

    .line 26
    .line 27
    return-void
.end method

.method public static synthetic D()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/api/base/m;->G()Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic E()Lokhttp3/EventListener$Factory;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/base/m;->h:Lokhttp3/EventListener$Factory;

    .line 2
    .line 3
    return-object v0
.end method

.method private final F()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/api/base/m;->f:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final G()Ljava/text/SimpleDateFormat;
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 4
    .line 5
    .line 6
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method private final H(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "callId("

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-wide v3, p0, Lcom/startshorts/androidplayer/manager/api/base/m;->c:J

    .line 18
    .line 19
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v3, ") path("

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/api/base/m;->d:Lokhttp3/HttpUrl;

    .line 28
    .line 29
    invoke-virtual {v3}, Lokhttp3/HttpUrl;->d()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v3, ") startTime("

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/api/base/m;->F()Ljava/text/SimpleDateFormat;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    iget-wide v4, p0, Lcom/startshorts/androidplayer/manager/api/base/m;->e:J

    .line 46
    .line 47
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v3, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v3, ") endTime("

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/api/base/m;->F()Ljava/text/SimpleDateFormat;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v3, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v3, ") elapseTime("

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-wide v3, p0, Lcom/startshorts/androidplayer/manager/api/base/m;->e:J

    .line 84
    .line 85
    sub-long/2addr v0, v3

    .line 86
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v0, "ms) result("

    .line 90
    .line 91
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v0, ") msg("

    .line 98
    .line 99
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const/16 p2, 0x29

    .line 106
    .line 107
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    const-string/jumbo v0, "success"

    .line 115
    .line 116
    .line 117
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    const-string v0, "ApiEventListener"

    .line 122
    .line 123
    if-eqz p1, :cond_0

    .line 124
    .line 125
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 126
    .line 127
    invoke-virtual {p1, v0, p2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_0
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 132
    .line 133
    invoke-virtual {p1, v0, p2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :goto_0
    return-void
.end method

.method static synthetic I(Lcom/startshorts/androidplayer/manager/api/base/m;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const-string p2, ""

    .line 6
    .line 7
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/api/base/m;->H(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final J(Ljavax/net/ssl/SSLException;)V
    .locals 8

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/b;->x()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-object v1, Lcom/startshorts/androidplayer/manager/api/base/p;->a:Lcom/startshorts/androidplayer/manager/api/base/p$a;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/api/base/p$a;->a()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ge v0, v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/api/base/p$a;->a()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 43
    :goto_0
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 44
    .line 45
    new-instance v3, Landroid/os/Bundle;

    .line 46
    .line 47
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 48
    .line 49
    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/api/base/m;->d:Lokhttp3/HttpUrl;

    .line 53
    .line 54
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->i()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :cond_1
    const-string v2, "domain"

    .line 59
    .line 60
    invoke-virtual {v3, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/api/base/m;->d:Lokhttp3/HttpUrl;

    .line 64
    .line 65
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->d()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v2, "path"

    .line 70
    .line 71
    invoke-virtual {v3, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string v0, "errorMessage"

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->l()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    const-string v0, "region"

    .line 90
    .line 91
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 95
    .line 96
    const/4 v6, 0x4

    .line 97
    const/4 v7, 0x0

    .line 98
    const-string/jumbo v2, "ssl_fail"

    .line 99
    .line 100
    .line 101
    const-wide/16 v4, 0x0

    .line 102
    .line 103
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method private final K(Ljava/io/IOException;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/base/p;->a:Lcom/startshorts/androidplayer/manager/api/base/p$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/api/base/p$a;->i()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lqe/a;->a:Lqe/a;

    .line 10
    .line 11
    invoke-virtual {v0}, Lqe/a;->h()Lcom/startshorts/androidplayer/bean/configure/FeatureController;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->getDynamicDomainEnable()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    instance-of v0, p1, Ljava/net/UnknownHostException;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    sget-object v0, Lud/a;->a:Lud/a;

    .line 27
    .line 28
    invoke-virtual {v0}, Lud/a;->t()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v0, v1

    .line 34
    :goto_0
    if-eqz v0, :cond_1

    .line 35
    .line 36
    :try_start_0
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/base/k;->a:Lcom/startshorts/androidplayer/manager/api/base/k;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/api/base/m;->d:Lokhttp3/HttpUrl;

    .line 39
    .line 40
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->d()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v0, v2, p1, v1}, Lcom/startshorts/androidplayer/manager/api/base/k;->k(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catch_0
    move-exception p1

    .line 53
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string/jumbo v2, "updateApiUrlIndex exception -> "

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const-string v1, "ApiEventListener"

    .line 78
    .line 79
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public d(Lokhttp3/Call;)V
    .locals 2
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lokhttp3/EventListener;->d(Lokhttp3/Call;)V

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Lokhttp3/Call;->isCanceled()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const-string p1, "canceled"

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string/jumbo p1, "success"

    .line 19
    .line 20
    .line 21
    :goto_0
    const/4 v0, 0x2

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-static {p0, p1, v1, v0, v1}, Lcom/startshorts/androidplayer/manager/api/base/m;->I(Lcom/startshorts/androidplayer/manager/api/base/m;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public e(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 4
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "ioe"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->e(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "failed"

    .line 19
    .line 20
    invoke-direct {p0, v0, p1}, Lcom/startshorts/androidplayer/manager/api/base/m;->H(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    instance-of p1, p2, Ljava/net/UnknownHostException;

    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    instance-of p1, p2, Ljava/net/SocketException;

    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    instance-of p1, p2, Ljavax/net/ssl/SSLException;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    :cond_0
    sget-object p1, Lud/a;->a:Lud/a;

    .line 36
    .line 37
    invoke-virtual {p1}, Lud/a;->t()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->b0()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    instance-of p1, p2, Ljavax/net/ssl/SSLException;

    .line 52
    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    const/4 v0, 0x2

    .line 62
    const/4 v1, 0x0

    .line 63
    const-string v2, "Chain validation failed"

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    invoke-static {p1, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-nez p1, :cond_1

    .line 71
    .line 72
    move-object p1, p2

    .line 73
    check-cast p1, Ljavax/net/ssl/SSLException;

    .line 74
    .line 75
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/api/base/m;->J(Ljavax/net/ssl/SSLException;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    invoke-direct {p0, p2}, Lcom/startshorts/androidplayer/manager/api/base/m;->K(Ljava/io/IOException;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    return-void
.end method

.method public i(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V
    .locals 1
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/net/InetSocketAddress;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/net/Proxy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lokhttp3/Protocol;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "inetSocketAddress"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "proxy"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "ioe"

    .line 17
    .line 18
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-super/range {p0 .. p5}, Lokhttp3/EventListener;->i(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    const/4 p2, 0x2

    .line 26
    const-string p3, "connect_failed"

    .line 27
    .line 28
    invoke-static {p0, p3, p1, p2, p1}, Lcom/startshorts/androidplayer/manager/api/base/m;->I(Lcom/startshorts/androidplayer/manager/api/base/m;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
