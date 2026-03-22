.class public Lhb/o;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static b:Lhb/o;

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lhb/o;->c:Ljava/util/Map;

    .line 7
    .line 8
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

.method public static a()Lhb/o;
    .locals 1

    .line 1
    invoke-static {}, Lhb/o;->h()Lhb/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static declared-synchronized h()Lhb/o;
    .locals 2

    .line 1
    const-class v0, Lhb/o;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lhb/o;->b:Lhb/o;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lhb/o;

    .line 9
    .line 10
    invoke-direct {v1}, Lhb/o;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lhb/o;->b:Lhb/o;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lhb/o;->b:Lhb/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw v1
.end method

.method private i(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/huawei/hms/hatool/o;->j(Landroid/content/Context;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lhb/v0;->b(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lhb/w0;->b()Lhb/w0;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lhb/w0;->a()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const-string v2, "hmsSdk"

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    const-string v1, "global_v2"

    .line 21
    .line 22
    const-string v3, "app_ver"

    .line 23
    .line 24
    const-string v4, ""

    .line 25
    .line 26
    invoke-static {p1, v1, v3, v4}, Lhb/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-static {p1, v1, v3, v0}, Lhb/l;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v5}, Lhb/v0;->d(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    const-string p1, "app ver is first save!"

    .line 43
    .line 44
    :goto_0
    invoke-static {v2, p1}, Lhb/f1;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    const-string p1, "the appVers are different!"

    .line 55
    .line 56
    invoke-static {v2, p1}, Lhb/f1;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lhb/o;->a()Lhb/o;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string v0, "alltype"

    .line 64
    .line 65
    invoke-virtual {p1, v4, v0, v5}, Lhb/o;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    const-string p1, "userManager.isUserUnlocked() == false"

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lhb/o;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lhb/o;->i(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lhb/z0;->e()Lhb/z0;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lhb/z0;->d()Lhb/t;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {}, Lcom/huawei/hms/hatool/o;->c()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Lhb/t;->q(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public c(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lhb/o;->a:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "hmsSdk"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p1, "onReport() null context or SDK was not init."

    .line 8
    .line 9
    invoke-static {v1, p1}, Lhb/f1;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string v0, "onReport: Before calling runtaskhandler()"

    .line 14
    .line 15
    invoke-static {v1, v0}, Lhb/f1;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p2}, Lhb/o0;->c(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-static {}, Lhb/v0;->m()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0, p1, p2, v0}, Lhb/o;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public d(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x2

    .line 6
    if-ne v2, p2, :cond_0

    .line 7
    .line 8
    const-string v2, "yyyy-MM-dd"

    .line 9
    .line 10
    invoke-static {v2, v0, v1}, Lhb/o0;->a(Ljava/lang/String;J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    :cond_0
    move-wide v7, v0

    .line 15
    new-instance v0, Lhb/b;

    .line 16
    .line 17
    invoke-static {p2}, Lhb/o0;->c(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    move-object v2, v0

    .line 22
    move-object v3, p3

    .line 23
    move-object v4, p4

    .line 24
    move-object v5, p1

    .line 25
    invoke-direct/range {v2 .. v8}, Lhb/b;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;J)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lhb/e;->d()Lhb/e;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1, v0}, Lhb/e;->b(Lhb/u;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public e(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;J)V
    .locals 8

    .line 1
    new-instance v7, Lhb/z;

    .line 2
    .line 3
    invoke-static {p2}, Lhb/o0;->c(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    move-object v0, v7

    .line 12
    move-object v1, p1

    .line 13
    move-object v3, p3

    .line 14
    move-wide v5, p5

    .line 15
    invoke-direct/range {v0 .. v6}, Lhb/z;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v7}, Lhb/z;->a()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {p1, p2}, Lhb/c;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "hmsSdk"

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-static {p1, p2}, Lhb/c;->k(Ljava/lang/String;Ljava/lang/String;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v4

    .line 17
    sub-long v2, v4, v2

    .line 18
    .line 19
    const-wide/16 v6, 0x7530

    .line 20
    .line 21
    cmp-long v0, v2, v6

    .line 22
    .line 23
    if-lez v0, :cond_0

    .line 24
    .line 25
    const-string v0, "begin to call onReport!"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lhb/f1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1, p2, v4, v5}, Lhb/c;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lhb/v0;->m()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p0, p1, p2, v0}, Lhb/o;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-string p1, "autoReport timeout. interval < 30s "

    .line 42
    .line 43
    invoke-static {v1, p1}, Lhb/f1;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v0, "auto report is closed tag:"

    .line 53
    .line 54
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {v1, p1}, Lhb/f1;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lhb/o;->a:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "hmsSdk"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p1, "onReport() null context or SDK was not init."

    .line 8
    .line 9
    invoke-static {v1, p1}, Lhb/f1;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static {v0}, Lcom/huawei/hms/hatool/r0;->d(Landroid/content/Context;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p1, p2}, Lhb/c;->f(Ljava/lang/String;Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    const-string v2, "WIFI"

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string p2, "strNetworkType is :"

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {v1, p1}, Lhb/f1;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    const-string v2, "unknown"

    .line 53
    .line 54
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_2

    .line 59
    .line 60
    const-string v2, "none"

    .line 61
    .line 62
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_2

    .line 67
    .line 68
    const-string v2, "2G"

    .line 69
    .line 70
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_2

    .line 75
    .line 76
    new-instance v0, Lhb/e1;

    .line 77
    .line 78
    invoke-direct {v0, p1, p2, p3}, Lhb/e1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-static {}, Lhb/e;->d()Lhb/e;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1, v0}, Lhb/e;->b(Lhb/u;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    const-string p1, "The network is bad."

    .line 90
    .line 91
    invoke-static {v1, p1}, Lhb/f1;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :goto_0
    return-void
.end method
