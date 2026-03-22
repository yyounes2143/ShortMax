.class public abstract Lhb/m;
.super Ljava/lang/Object;
.source ""


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

.method private a(I)Lhb/a0;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Lhb/m;->j()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lhb/a0;

    .line 14
    .line 15
    sget-object v1, Lcom/huawei/hms/hatool/d0;->b:Lcom/huawei/hms/hatool/d0;

    .line 16
    .line 17
    invoke-direct {v0, v1, p1}, Lhb/a0;-><init>(Lcom/huawei/hms/hatool/d0;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    const-string p1, ""

    .line 22
    .line 23
    :cond_1
    new-instance v0, Lhb/a0;

    .line 24
    .line 25
    sget-object v1, Lcom/huawei/hms/hatool/d0;->d:Lcom/huawei/hms/hatool/d0;

    .line 26
    .line 27
    invoke-direct {v0, v1, p1}, Lhb/a0;-><init>(Lcom/huawei/hms/hatool/d0;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method private e(I)Lhb/a0;
    .locals 2

    .line 1
    and-int/lit8 p1, p1, 0x4

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lhb/m;->j()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    new-instance v0, Lhb/a0;

    .line 16
    .line 17
    sget-object v1, Lcom/huawei/hms/hatool/d0;->b:Lcom/huawei/hms/hatool/d0;

    .line 18
    .line 19
    invoke-direct {v0, v1, p1}, Lhb/a0;-><init>(Lcom/huawei/hms/hatool/d0;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    const-string p1, ""

    .line 24
    .line 25
    :cond_1
    new-instance v0, Lhb/a0;

    .line 26
    .line 27
    sget-object v1, Lcom/huawei/hms/hatool/d0;->d:Lcom/huawei/hms/hatool/d0;

    .line 28
    .line 29
    invoke-direct {v0, v1, p1}, Lhb/a0;-><init>(Lcom/huawei/hms/hatool/d0;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method private i()Z
    .locals 2

    .line 1
    invoke-static {}, Lhb/z0;->e()Lhb/z0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lhb/z0;->d()Lhb/t;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lhb/t;->x()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lcom/huawei/hms/hatool/o;->c()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lhb/t;->q(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {v0}, Lhb/t;->x()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    xor-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    return v0
.end method

.method private j()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lhb/z0;->e()Lhb/z0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lhb/z0;->d()Lhb/t;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lhb/t;->r()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lhb/h1;->k()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lhb/t;->k(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {v0}, Lhb/t;->r()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method


# virtual methods
.method public b(Landroid/content/Context;)Lhb/a0;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lhb/m;->g()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lhb/a0;

    .line 12
    .line 13
    sget-object v1, Lcom/huawei/hms/hatool/d0;->b:Lcom/huawei/hms/hatool/d0;

    .line 14
    .line 15
    invoke-direct {v0, v1, p1}, Lhb/a0;-><init>(Lcom/huawei/hms/hatool/d0;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lhb/m;->c()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    new-instance v0, Lhb/a0;

    .line 30
    .line 31
    sget-object v1, Lcom/huawei/hms/hatool/d0;->a:Lcom/huawei/hms/hatool/d0;

    .line 32
    .line 33
    invoke-direct {v0, v1, p1}, Lhb/a0;-><init>(Lcom/huawei/hms/hatool/d0;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_1
    invoke-direct {p0}, Lhb/m;->i()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-virtual {p0}, Lhb/m;->f()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_3

    .line 50
    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    new-instance p1, Lhb/a0;

    .line 54
    .line 55
    sget-object v1, Lcom/huawei/hms/hatool/d0;->c:Lcom/huawei/hms/hatool/d0;

    .line 56
    .line 57
    invoke-direct {p1, v1, v0}, Lhb/a0;-><init>(Lcom/huawei/hms/hatool/d0;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-object p1

    .line 61
    :cond_2
    new-instance p1, Lhb/a0;

    .line 62
    .line 63
    sget-object v1, Lcom/huawei/hms/hatool/d0;->b:Lcom/huawei/hms/hatool/d0;

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lhb/m;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-direct {p1, v1, v0}, Lhb/a0;-><init>(Lcom/huawei/hms/hatool/d0;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-object p1

    .line 73
    :cond_3
    if-eqz p1, :cond_4

    .line 74
    .line 75
    invoke-virtual {p0}, Lhb/m;->h()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    invoke-direct {p0, p1}, Lhb/m;->a(I)Lhb/a0;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    return-object p1

    .line 84
    :cond_4
    invoke-virtual {p0}, Lhb/m;->h()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    invoke-direct {p0, p1}, Lhb/m;->e(I)Lhb/a0;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    return-object p1
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public abstract h()I
.end method
