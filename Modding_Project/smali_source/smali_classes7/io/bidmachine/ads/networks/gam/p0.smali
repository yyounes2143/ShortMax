.class public Lio/bidmachine/ads/networks/gam/p0;
.super Ljava/lang/Object;
.source "VersionManager.java"


# static fields
.field static final a:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Llr/b;",
            "Ldm/b;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/bidmachine/ads/networks/gam/p0;->a:Ljava/util/List;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lem/a;

    .line 14
    .line 15
    invoke-direct {v1}, Lem/a;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    new-instance v1, Lfm/a;

    .line 22
    .line 23
    invoke-direct {v1}, Lfm/a;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    new-instance v1, Lgm/a;

    .line 30
    .line 31
    invoke-direct {v1}, Lgm/a;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    new-instance v1, Lio/bidmachine/ads/networks/gam/o0;

    .line 38
    .line 39
    invoke-direct {v1}, Lio/bidmachine/ads/networks/gam/o0;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    const/4 v2, 0x0

    .line 50
    move v3, v2

    .line 51
    :goto_0
    if-ge v3, v1, :cond_2

    .line 52
    .line 53
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Ldm/b;

    .line 58
    .line 59
    add-int/lit8 v5, v1, -0x1

    .line 60
    .line 61
    const/4 v6, 0x0

    .line 62
    if-ge v3, v5, :cond_0

    .line 63
    .line 64
    add-int/lit8 v5, v3, 0x1

    .line 65
    .line 66
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    check-cast v5, Ldm/b;

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_0
    move-object v5, v6

    .line 74
    :goto_1
    new-instance v7, Llr/b;

    .line 75
    .line 76
    invoke-interface {v4}, Ldm/b;->c()Llr/a;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    if-eqz v5, :cond_1

    .line 81
    .line 82
    invoke-interface {v5}, Ldm/b;->c()Llr/a;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    :cond_1
    const/4 v5, 0x1

    .line 87
    invoke-direct {v7, v8, v6, v5, v2}, Llr/b;-><init>(Llr/a;Llr/a;ZZ)V

    .line 88
    .line 89
    .line 90
    sget-object v5, Lio/bidmachine/ads/networks/gam/p0;->a:Ljava/util/List;

    .line 91
    .line 92
    new-instance v6, Landroid/util/Pair;

    .line 93
    .line 94
    invoke-direct {v6, v7, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    add-int/lit8 v3, v3, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    return-void
.end method

.method public static synthetic a(Ldm/b;Ldm/b;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/ads/networks/gam/p0;->d(Ldm/b;Ldm/b;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static b()Llr/a;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/ads/networks/gam/p0;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/util/Pair;

    .line 18
    .line 19
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Ldm/b;

    .line 22
    .line 23
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    .line 25
    invoke-interface {v1}, Ldm/b;->b()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-ge v2, v3, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-static {v1}, Lio/bidmachine/ads/networks/gam/p0;->e(Ldm/b;)Llr/a;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-object v1

    .line 40
    :cond_2
    const/4 v0, 0x0

    .line 41
    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ldm/b;
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
    invoke-static {}, Lio/bidmachine/ads/networks/gam/p0;->b()Llr/a;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_1
    invoke-virtual {p0, v1}, Llr/b;->a(Llr/a;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_2

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_2
    sget-object p0, Lio/bidmachine/ads/networks/gam/p0;->a:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_4

    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Landroid/util/Pair;

    .line 40
    .line 41
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v3, Llr/b;

    .line 44
    .line 45
    invoke-virtual {v3, v1}, Llr/b;->a(Llr/a;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_3

    .line 50
    .line 51
    iget-object p0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p0, Ldm/b;

    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_4
    return-object v0
.end method

.method private static synthetic d(Ldm/b;Ldm/b;)I
    .locals 0

    .line 1
    invoke-interface {p0}, Ldm/b;->c()Llr/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p1}, Ldm/b;->c()Llr/a;

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

.method static e(Ldm/b;)Llr/a;
    .locals 0
    .param p0    # Ldm/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0}, Ldm/b;->getVersion()Llr/a;

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
