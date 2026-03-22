.class public Lhb/q0;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static c:Lhb/q0;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lhb/q0;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "analytics_keystore"

    .line 8
    .line 9
    invoke-static {v0, p1}, Llb/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v0, ""

    .line 15
    .line 16
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    const-string v0, "hmsSdk"

    .line 23
    .line 24
    const-string v1, "deCrypt work key first"

    .line 25
    .line 26
    invoke-static {v0, v1}, Lhb/f1;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lhb/q0;->h()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {p1, v0}, Lhb/p0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    const/16 p1, 0x10

    .line 44
    .line 45
    invoke-static {p1}, Lmb/a;->d(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-direct {p0, v0}, Lhb/q0;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {p0, p1}, Lhb/q0;->f(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    invoke-direct {p0}, Lhb/q0;->i()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    :goto_1
    invoke-static {}, Lhb/i1;->i()Z

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_1
    invoke-direct {p0}, Lhb/q0;->i()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    invoke-direct {p0, v0}, Lhb/q0;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-direct {p0, p1}, Lhb/q0;->f(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    :goto_2
    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lhb/q0;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "analytics_keystore"

    .line 8
    .line 9
    invoke-static {v0, p1}, Llb/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-direct {p0}, Lhb/q0;->h()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {p1, v0}, Lhb/p0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method private e()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lhb/v0;->q()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "PrivacyData"

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    const-string v3, "Privacy_MY"

    .line 10
    .line 11
    invoke-static {v0, v3, v1, v2}, Lhb/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const/16 v0, 0x10

    .line 22
    .line 23
    invoke-static {v0}, Lmb/a;->d(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-direct {p0, v0}, Lhb/q0;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-direct {p0, v1}, Lhb/q0;->f(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_0
    invoke-direct {p0, v0}, Lhb/q0;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method

.method private f(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "refresh sp aes key"

    .line 2
    .line 3
    const-string v1, "hmsSdk"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lhb/f1;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string p1, "refreshLocalKey(): encrypted key is empty"

    .line 15
    .line 16
    invoke-static {v1, p1}, Lhb/f1;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return p1

    .line 21
    :cond_0
    invoke-static {}, Lhb/v0;->q()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "PrivacyData"

    .line 26
    .line 27
    const-string v2, "Privacy_MY"

    .line 28
    .line 29
    invoke-static {v0, v2, v1, p1}, Lhb/l;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lhb/v0;->q()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    const-string v3, "flashKeyTime"

    .line 41
    .line 42
    invoke-static {p1, v2, v3, v0, v1}, Lhb/l;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    return p1
.end method

.method public static g()Lhb/q0;
    .locals 1

    .line 1
    sget-object v0, Lhb/q0;->c:Lhb/q0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lhb/q0;->j()V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object v0, Lhb/q0;->c:Lhb/q0;

    .line 9
    .line 10
    return-object v0
.end method

.method private h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lhb/q0;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lhb/i1;

    .line 10
    .line 11
    invoke-direct {v0}, Lhb/i1;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lhb/i1;->a()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lhb/q0;->b:Ljava/lang/String;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lhb/q0;->b:Ljava/lang/String;

    .line 21
    .line 22
    return-object v0
.end method

.method private i()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method private static declared-synchronized j()V
    .locals 2

    .line 1
    const-class v0, Lhb/q0;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lhb/q0;->c:Lhb/q0;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lhb/q0;

    .line 9
    .line 10
    invoke-direct {v1}, Lhb/q0;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lhb/q0;->c:Lhb/q0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lhb/q0;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lhb/q0;->e()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lhb/q0;->a:Ljava/lang/String;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lhb/q0;->a:Ljava/lang/String;

    .line 16
    .line 17
    return-object v0
.end method

.method public d()V
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-static {v0}, Lmb/a;->d(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lhb/q0;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {p0, v1}, Lhb/q0;->f(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iput-object v0, p0, Lhb/q0;->a:Ljava/lang/String;

    .line 18
    .line 19
    :cond_0
    return-void
.end method
