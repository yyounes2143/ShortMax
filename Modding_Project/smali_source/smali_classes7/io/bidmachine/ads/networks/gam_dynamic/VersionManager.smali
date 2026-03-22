.class Lio/bidmachine/ads/networks/gam_dynamic/VersionManager;
.super Ljava/lang/Object;
.source "VersionManager.java"


# direct methods
.method public static synthetic a(Lim/b;Lim/b;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/VersionManager;->e(Lim/b;Lim/b;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static b(Ljava/util/List;)Llr/a;
    .locals 3
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Llr/b;",
            "Lim/b;",
            ">;>;)",
            "Llr/a;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/util/Pair;

    .line 16
    .line 17
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lim/b;

    .line 20
    .line 21
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    invoke-interface {v0}, Lim/b;->b()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-ge v1, v2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {v0}, Lio/bidmachine/ads/networks/gam_dynamic/VersionManager;->f(Lim/b;)Llr/a;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-object v0

    .line 38
    :cond_2
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method

.method static c(Ljava/lang/String;)Lim/b;
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Llr/b;->d(Ljava/lang/String;)Llr/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-static {}, Lio/bidmachine/ads/networks/gam_dynamic/VersionManager;->d()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Lio/bidmachine/ads/networks/gam_dynamic/VersionManager;->b(Ljava/util/List;)Llr/a;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    invoke-virtual {p0, v2}, Llr/b;->a(Llr/a;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-nez p0, :cond_2

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_4

    .line 36
    .line 37
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Landroid/util/Pair;

    .line 42
    .line 43
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v3, Llr/b;

    .line 46
    .line 47
    invoke-virtual {v3, v2}, Llr/b;->a(Llr/a;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_3

    .line 52
    .line 53
    iget-object p0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p0, Lim/b;

    .line 56
    .line 57
    return-object p0

    .line 58
    :cond_4
    return-object v0
.end method

.method static d()Ljava/util/List;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Llr/b;",
            "Lim/b;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lio/bidmachine/ads/networks/gam_dynamic/VersionManager$1;

    .line 7
    .line 8
    invoke-direct {v1}, Lio/bidmachine/ads/networks/gam_dynamic/VersionManager$1;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lio/bidmachine/ads/networks/gam_dynamic/b0;

    .line 12
    .line 13
    invoke-direct {v2}, Lio/bidmachine/ads/networks/gam_dynamic/b0;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    move v4, v3

    .line 25
    :goto_0
    if-ge v4, v2, :cond_2

    .line 26
    .line 27
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    check-cast v5, Lim/b;

    .line 32
    .line 33
    add-int/lit8 v6, v2, -0x1

    .line 34
    .line 35
    const/4 v7, 0x0

    .line 36
    if-ge v4, v6, :cond_0

    .line 37
    .line 38
    add-int/lit8 v6, v4, 0x1

    .line 39
    .line 40
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    check-cast v6, Lim/b;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    move-object v6, v7

    .line 48
    :goto_1
    new-instance v8, Llr/b;

    .line 49
    .line 50
    invoke-interface {v5}, Lim/b;->c()Llr/a;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    if-eqz v6, :cond_1

    .line 55
    .line 56
    invoke-interface {v6}, Lim/b;->c()Llr/a;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    :cond_1
    const/4 v6, 0x1

    .line 61
    invoke-direct {v8, v9, v7, v6, v3}, Llr/b;-><init>(Llr/a;Llr/a;ZZ)V

    .line 62
    .line 63
    .line 64
    new-instance v6, Landroid/util/Pair;

    .line 65
    .line 66
    invoke-direct {v6, v8, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    add-int/lit8 v4, v4, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    return-object v0
.end method

.method private static synthetic e(Lim/b;Lim/b;)I
    .locals 0

    .line 1
    invoke-interface {p0}, Lim/b;->c()Llr/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p1}, Lim/b;->c()Llr/a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Llr/a;->a(Llr/a;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method static f(Lim/b;)Llr/a;
    .locals 0
    .param p0    # Lim/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0}, Lim/b;->getVersion()Llr/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    return-object p0

    .line 6
    :catchall_0
    const/4 p0, 0x0

    .line 7
    return-object p0
.end method
