.class public Lhb/c1;
.super Ljava/lang/Object;
.source ""


# direct methods
.method protected static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lhb/p;
    .locals 1

    .line 1
    new-instance v0, Lhb/p;

    .line 2
    .line 3
    invoke-direct {v0}, Lhb/p;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lhb/f0;->a(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lhb/v0;->k()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {v0, p0}, Lhb/f0;->b(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lhb/f0;->e(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p3}, Lhb/f0;->c(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance p0, Ljava/lang/StringBuffer;

    .line 23
    .line 24
    const-string p1, "hmshi"

    .line 25
    .line 26
    invoke-direct {p0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    .line 31
    .line 32
    const-string p1, "qrt"

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {v0, p0}, Lhb/f0;->d(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object v0
.end method

.method protected static b(Ljava/lang/String;Ljava/lang/String;)Lhb/j0;
    .locals 2

    .line 1
    new-instance v0, Lhb/j0;

    .line 2
    .line 3
    invoke-direct {v0}, Lhb/j0;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lhb/b0;->a()Lhb/b0;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, p0, p1}, Lhb/b0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {v0, p0}, Lhb/b1;->a(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method protected static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lhb/j1;
    .locals 2

    .line 1
    new-instance v0, Lhb/j1;

    .line 2
    .line 3
    invoke-direct {v0}, Lhb/j1;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lhb/v0;->r()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lhb/a1;->c(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lhb/v0;->t()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lhb/a1;->e(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Lhb/a1;->a(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lhb/b0;->a()Lhb/b0;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p2, p1, p0}, Lhb/b0;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v0, p0}, Lhb/a1;->b(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method protected static d(Ljava/lang/String;Ljava/lang/String;)Lhb/w;
    .locals 2

    .line 1
    const-string v0, "generate UploadData EventModelHandlerBase"

    .line 2
    .line 3
    const-string v1, "hmsSdk"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lhb/f1;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lhb/l0;->f()Lhb/l0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p0, p1}, Lhb/l0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lhb/l0;->f()Lhb/l0;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lhb/l0;->b()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    const-string p0, "event chifer is empty"

    .line 30
    .line 31
    invoke-static {v1, p0}, Lhb/f1;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    return-object p0

    .line 36
    :cond_0
    new-instance p0, Lhb/w;

    .line 37
    .line 38
    invoke-static {}, Lhb/l0;->f()Lhb/l0;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lhb/l0;->e()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {p0, p1}, Lhb/w;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object p0
.end method

.method protected static e(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lhb/v0;->k()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "App-Id"

    .line 11
    .line 12
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lhb/v0;->m()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "App-Ver"

    .line 20
    .line 21
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    const-string v1, "Sdk-Name"

    .line 25
    .line 26
    const-string v2, "hianalytics"

    .line 27
    .line 28
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    const-string v1, "Sdk-Ver"

    .line 32
    .line 33
    const-string v2, "2.2.0.314"

    .line 34
    .line 35
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 39
    .line 40
    const-string v2, "Device-Type"

    .line 41
    .line 42
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    const-string v1, "servicetag"

    .line 46
    .line 47
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const-string v1, "hmsSdk"

    .line 55
    .line 56
    const-string v2, "sendData RequestId : %s"

    .line 57
    .line 58
    invoke-static {v1, v2, p0}, Lhb/f1;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    const-string p0, "Request-Id"

    .line 62
    .line 63
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    return-object v0
.end method
