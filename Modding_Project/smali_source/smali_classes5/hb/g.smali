.class public Lhb/g;
.super Ljava/lang/Object;
.source ""


# instance fields
.field a:Lhb/y0;

.field b:Lhb/y0;

.field c:Landroid/content/Context;

.field d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lhb/g;->c:Landroid/content/Context;

    .line 11
    .line 12
    :cond_0
    new-instance p1, Lhb/y0;

    .line 13
    .line 14
    invoke-direct {p1}, Lhb/y0;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lhb/g;->a:Lhb/y0;

    .line 18
    .line 19
    new-instance p1, Lhb/y0;

    .line 20
    .line 21
    invoke-direct {p1}, Lhb/y0;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lhb/g;->b:Lhb/y0;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)Lhb/g;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Builder.setCollectURL(int type,String collectURL) is execute.TYPE : "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "hmsSdk"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lhb/f1;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p2}, Lhb/t0;->d(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    const-string p2, ""

    .line 30
    .line 31
    :cond_0
    if-eqz p1, :cond_2

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    if-eq p1, v0, :cond_1

    .line 35
    .line 36
    const-string p1, "Builder.setCollectURL(int type,String collectURL): invalid type!"

    .line 37
    .line 38
    invoke-static {v1, p1}, Lhb/f1;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    iget-object p1, p0, Lhb/g;->b:Lhb/y0;

    .line 43
    .line 44
    :goto_0
    invoke-virtual {p1, p2}, Lhb/y0;->i(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    iget-object p1, p0, Lhb/g;->a:Lhb/y0;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :goto_1
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lhb/g;
    .locals 2

    .line 1
    const-string v0, "hmsSdk"

    .line 2
    .line 3
    const-string v1, "Builder.setAppID is execute"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lhb/f1;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lhb/g;->d:Ljava/lang/String;

    .line 9
    .line 10
    return-object p0
.end method

.method public c(Z)Lhb/g;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-string v0, "hmsSdk"

    .line 2
    .line 3
    const-string v1, "Builder.setEnableImei(boolean isReportAndroidImei) is execute."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lhb/f1;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lhb/g;->a:Lhb/y0;

    .line 9
    .line 10
    invoke-virtual {v0}, Lhb/y0;->z()Lhb/c0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Lhb/c0;->b(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lhb/g;->b:Lhb/y0;

    .line 18
    .line 19
    invoke-virtual {v0}, Lhb/y0;->z()Lhb/c0;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p1}, Lhb/c0;->b(Z)V

    .line 24
    .line 25
    .line 26
    return-object p0
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lhb/g;->c:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "hmsSdk"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "analyticsConf create(): context is null,create failed!"

    .line 8
    .line 9
    invoke-static {v1, v0}, Lhb/f1;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string v0, "Builder.create() is execute."

    .line 14
    .line 15
    invoke-static {v1, v0}, Lhb/f1;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lhb/l1;

    .line 19
    .line 20
    const-string v1, "_hms_config_tag"

    .line 21
    .line 22
    invoke-direct {v0, v1}, Lhb/l1;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lhb/y0;

    .line 26
    .line 27
    iget-object v2, p0, Lhb/g;->a:Lhb/y0;

    .line 28
    .line 29
    invoke-direct {v1, v2}, Lhb/y0;-><init>(Lhb/y0;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lhb/l1;->g(Lhb/y0;)V

    .line 33
    .line 34
    .line 35
    new-instance v1, Lhb/y0;

    .line 36
    .line 37
    iget-object v2, p0, Lhb/g;->b:Lhb/y0;

    .line 38
    .line 39
    invoke-direct {v1, v2}, Lhb/y0;-><init>(Lhb/y0;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lhb/l1;->d(Lhb/y0;)V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lhb/m0;->a()Lhb/m0;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v2, p0, Lhb/g;->c:Landroid/content/Context;

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Lhb/m0;->b(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lhb/s;->a()Lhb/s;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iget-object v2, p0, Lhb/g;->c:Landroid/content/Context;

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Lhb/s;->c(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lhb/x0;->d()Lhb/x0;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1, v0}, Lhb/x0;->a(Lhb/l1;)V

    .line 68
    .line 69
    .line 70
    invoke-static {}, Lhb/m0;->a()Lhb/m0;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-object v1, p0, Lhb/g;->d:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lhb/m0;->c(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public e(Z)Lhb/g;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-string v0, "hmsSdk"

    .line 2
    .line 3
    const-string v1, "Builder.setEnableSN(boolean isReportSN) is execute."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lhb/f1;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lhb/g;->a:Lhb/y0;

    .line 9
    .line 10
    invoke-virtual {v0}, Lhb/y0;->z()Lhb/c0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Lhb/c0;->d(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lhb/g;->b:Lhb/y0;

    .line 18
    .line 19
    invoke-virtual {v0}, Lhb/y0;->z()Lhb/c0;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p1}, Lhb/c0;->d(Z)V

    .line 24
    .line 25
    .line 26
    return-object p0
.end method

.method public f(Z)Lhb/g;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-string v0, "hmsSdk"

    .line 2
    .line 3
    const-string v1, "Builder.setEnableUDID(boolean isReportUDID) is execute."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lhb/f1;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lhb/g;->a:Lhb/y0;

    .line 9
    .line 10
    invoke-virtual {v0}, Lhb/y0;->z()Lhb/c0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Lhb/c0;->f(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lhb/g;->b:Lhb/y0;

    .line 18
    .line 19
    invoke-virtual {v0}, Lhb/y0;->z()Lhb/c0;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p1}, Lhb/c0;->f(Z)V

    .line 24
    .line 25
    .line 26
    return-object p0
.end method
