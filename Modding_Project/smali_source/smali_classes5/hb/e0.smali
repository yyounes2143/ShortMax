.class public Lhb/e0;
.super Lhb/c1;
.source ""


# direct methods
.method protected static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lhb/p;
    .locals 2

    .line 1
    invoke-static {p0, p1, p2, p3}, Lhb/c1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lhb/p;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {}, Lhb/b0;->a()Lhb/b0;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    invoke-static {p1, p2}, Lhb/c;->d(Ljava/lang/String;Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {p3, p1}, Lhb/b0;->c(Z)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide p2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lhb/v0;->k()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Lkb/b;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p0, p2}, Lhb/f0;->f(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lhb/p;->g(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object p0
.end method

.method protected static b(Ljava/lang/String;Ljava/lang/String;)Lhb/j0;
    .locals 4

    .line 1
    invoke-static {p0, p1}, Lhb/c1;->b(Ljava/lang/String;Ljava/lang/String;)Lhb/j0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lhb/b0;->a()Lhb/b0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, p0, p1}, Lhb/b0;->f(Ljava/lang/String;Ljava/lang/String;)Lhb/a0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {}, Lhb/b0;->a()Lhb/b0;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {p0, p1}, Lhb/c;->d(Ljava/lang/String;Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {v2, v3}, Lhb/b0;->c(Z)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Lhb/j0;->g(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, p1}, Lhb/c;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0, v2}, Lhb/j0;->f(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lhb/b0;->a()Lhb/b0;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2, p0, p1}, Lhb/b0;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {v0, p0}, Lhb/j0;->c(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Lhb/a0;->a()Lcom/huawei/hms/hatool/d0;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    sget-object p1, Lhb/e0$a;->a:[I

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    aget p0, p1, p0

    .line 57
    .line 58
    const/4 p1, 0x1

    .line 59
    if-eq p0, p1, :cond_2

    .line 60
    .line 61
    const/4 p1, 0x2

    .line 62
    if-eq p0, p1, :cond_1

    .line 63
    .line 64
    const/4 p1, 0x3

    .line 65
    if-eq p0, p1, :cond_0

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v1}, Lhb/a0;->b()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {v0, p0}, Lhb/j0;->e(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {v1}, Lhb/a0;->b()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {v0, p0}, Lhb/j0;->b(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {v1}, Lhb/a0;->b()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {v0, p0}, Lhb/j0;->d(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :goto_0
    return-object v0
.end method

.method protected static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lhb/j1;
    .locals 2

    .line 1
    invoke-static {p0, p1, p2}, Lhb/c1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lhb/j1;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-static {}, Lhb/b0;->a()Lhb/b0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1, p0}, Lhb/b0;->h(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p2, v1}, Lhb/j1;->f(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p2, v0}, Lhb/j1;->g(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/huawei/hms/hatool/o;->g()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p2, v0}, Lhb/j1;->h(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lhb/b0;->a()Lhb/b0;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0, p1, p0}, Lhb/b0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p2, p0}, Lhb/a1;->d(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-object p2
.end method

.method public static f(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lhb/w;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lhb/f;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lhb/w;"
        }
    .end annotation

    .line 1
    const-string v0, "hmsSdk"

    .line 2
    .line 3
    const-string v1, "generate UploadData"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lhb/f1;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1, p2}, Lhb/c1;->d(Ljava/lang/String;Ljava/lang/String;)Lhb/w;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-static {}, Lhb/l0;->f()Lhb/l0;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lhb/l0;->b()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1, p1, p2, p3}, Lhb/e0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lhb/p;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    invoke-virtual {v0, p3}, Lhb/w;->b(Lhb/f0;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1, p2}, Lhb/e0;->b(Ljava/lang/String;Ljava/lang/String;)Lhb/j0;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    invoke-virtual {v0, p3}, Lhb/w;->c(Lhb/j0;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p2, p1, p4}, Lhb/e0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lhb/j1;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    invoke-virtual {v0, p3}, Lhb/w;->d(Lhb/a1;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p1, p2}, Lhb/c;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v0, p1}, Lhb/w;->e(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p0}, Lhb/w;->f(Ljava/util/List;)V

    .line 53
    .line 54
    .line 55
    return-object v0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    invoke-static {p0, p2}, Lhb/c1;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-static {p0, p1}, Lhb/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    return-object p2

    .line 12
    :cond_0
    invoke-interface {p2, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 13
    .line 14
    .line 15
    return-object p2
.end method
