.class public abstract Ld/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/Object;)Lcom/hades/aar/admanager/core/AdFormat;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/hades/aar/admanager/core/AdFormat;->ALL:Lcom/hades/aar/admanager/core/AdFormat;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    instance-of v0, p0, Lcom/hades/aar/admanager/core/AdFormat;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    check-cast p0, Lcom/hades/aar/admanager/core/AdFormat;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    instance-of v0, p0, Lca/e;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    check-cast p0, Lca/e;

    .line 18
    .line 19
    invoke-virtual {p0}, Lca/e;->f()Lcom/hades/aar/admanager/core/AdFormat;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    goto :goto_0

    .line 24
    :cond_2
    instance-of v0, p0, Lca/d;

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    check-cast p0, Lca/d;

    .line 29
    .line 30
    invoke-virtual {p0}, Lca/d;->h()Lcom/hades/aar/admanager/core/AdFormat;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    goto :goto_0

    .line 35
    :cond_3
    instance-of v0, p0, Lca/f;

    .line 36
    .line 37
    if-eqz v0, :cond_4

    .line 38
    .line 39
    check-cast p0, Lca/f;

    .line 40
    .line 41
    invoke-virtual {p0}, Lca/f;->f()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0}, Ld/h;->a(Ljava/lang/Object;)Lcom/hades/aar/admanager/core/AdFormat;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    goto :goto_0

    .line 50
    :cond_4
    instance-of v0, p0, Lc/g;

    .line 51
    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    check-cast p0, Lc/g;

    .line 55
    .line 56
    iget-object p0, p0, Lc/g;->b:Ljava/util/List;

    .line 57
    .line 58
    invoke-static {p0}, Ld/h;->a(Ljava/lang/Object;)Lcom/hades/aar/admanager/core/AdFormat;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    goto :goto_0

    .line 63
    :cond_5
    instance-of v0, p0, Ljava/lang/Iterable;

    .line 64
    .line 65
    if-eqz v0, :cond_7

    .line 66
    .line 67
    check-cast p0, Ljava/lang/Iterable;

    .line 68
    .line 69
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->s0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    if-eqz p0, :cond_6

    .line 74
    .line 75
    invoke-static {p0}, Ld/h;->a(Ljava/lang/Object;)Lcom/hades/aar/admanager/core/AdFormat;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    if-nez p0, :cond_8

    .line 80
    .line 81
    :cond_6
    sget-object p0, Lcom/hades/aar/admanager/core/AdFormat;->ALL:Lcom/hades/aar/admanager/core/AdFormat;

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_7
    sget-object p0, Lcom/hades/aar/admanager/core/AdFormat;->ALL:Lcom/hades/aar/admanager/core/AdFormat;

    .line 85
    .line 86
    :cond_8
    :goto_0
    return-object p0
.end method

.method public static final b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "tag"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Ld/h;->a(Ljava/lang/Object;)Lcom/hades/aar/admanager/core/AdFormat;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p1, ":format_"

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method
