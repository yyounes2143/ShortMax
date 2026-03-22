.class public Llr/b;
.super Ljava/lang/Object;
.source "VersionRange.java"


# instance fields
.field private final a:Llr/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final b:Llr/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final c:Z

.field private final d:Z


# direct methods
.method public constructor <init>(Llr/a;Llr/a;ZZ)V
    .locals 0
    .param p1    # Llr/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Llr/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Llr/b;->a:Llr/a;

    .line 5
    .line 6
    iput-object p2, p0, Llr/b;->b:Llr/a;

    .line 7
    .line 8
    iput-boolean p3, p0, Llr/b;->c:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Llr/b;->d:Z

    .line 11
    .line 12
    return-void
.end method

.method static b(Llr/a;Llr/a;Z)Z
    .locals 1
    .param p0    # Llr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Llr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Llr/a;->c(Llr/a;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    :cond_0
    if-nez p2, :cond_2

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Llr/a;->b(Llr/a;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_2

    .line 16
    .line 17
    :cond_1
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_2
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method static c(Llr/a;Llr/a;Z)Z
    .locals 1
    .param p0    # Llr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Llr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Llr/a;->f(Llr/a;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    :cond_0
    if-nez p2, :cond_2

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Llr/a;->e(Llr/a;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_2

    .line 16
    .line 17
    :cond_1
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_2
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method public static d(Ljava/lang/String;)Llr/b;
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    const-string v0, "["

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-string v2, "("

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x1

    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v0, v3

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    :goto_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    :goto_1
    const-string v2, "]"

    .line 34
    .line 35
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const-string v4, ")"

    .line 40
    .line 41
    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    const/4 v5, 0x0

    .line 46
    if-nez v2, :cond_4

    .line 47
    .line 48
    if-eqz v4, :cond_3

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_3
    move v2, v3

    .line 52
    goto :goto_3

    .line 53
    :cond_4
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    sub-int/2addr v4, v3

    .line 58
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    :goto_3
    const-string v4, "-"

    .line 63
    .line 64
    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    array-length v6, v4

    .line 69
    const/4 v7, 0x2

    .line 70
    if-ge v6, v7, :cond_6

    .line 71
    .line 72
    invoke-static {p0}, Llr/a;->g(Ljava/lang/String;)Llr/a;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    if-eqz p0, :cond_5

    .line 77
    .line 78
    new-instance v3, Llr/b;

    .line 79
    .line 80
    invoke-direct {v3, p0, p0, v0, v2}, Llr/b;-><init>(Llr/a;Llr/a;ZZ)V

    .line 81
    .line 82
    .line 83
    move-object v1, v3

    .line 84
    :cond_5
    return-object v1

    .line 85
    :cond_6
    aget-object p0, v4, v5

    .line 86
    .line 87
    invoke-static {p0}, Llr/a;->g(Ljava/lang/String;)Llr/a;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    aget-object v3, v4, v3

    .line 92
    .line 93
    invoke-static {v3}, Llr/a;->g(Ljava/lang/String;)Llr/a;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    new-instance v4, Llr/b;

    .line 98
    .line 99
    invoke-direct {v4, p0, v3, v0, v2}, Llr/b;-><init>(Llr/a;Llr/a;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .line 101
    .line 102
    return-object v4

    .line 103
    :catchall_0
    return-object v1
.end method


# virtual methods
.method public a(Llr/a;)Z
    .locals 3
    .param p1    # Llr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Llr/b;->a:Llr/a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Llr/b;->b:Llr/a;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    iget-boolean v2, p0, Llr/b;->c:Z

    .line 11
    .line 12
    invoke-static {v0, p1, v2}, Llr/b;->b(Llr/a;Llr/a;Z)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Llr/b;->b:Llr/a;

    .line 19
    .line 20
    iget-boolean v2, p0, Llr/b;->d:Z

    .line 21
    .line 22
    invoke-static {v0, p1, v2}, Llr/b;->c(Llr/a;Llr/a;Z)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    return v1

    .line 29
    :cond_0
    iget-object v0, p0, Llr/b;->a:Llr/a;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v2, p0, Llr/b;->b:Llr/a;

    .line 34
    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    iget-boolean v2, p0, Llr/b;->c:Z

    .line 38
    .line 39
    invoke-static {v0, p1, v2}, Llr/b;->b(Llr/a;Llr/a;Z)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    return v1

    .line 46
    :cond_1
    iget-object v0, p0, Llr/b;->a:Llr/a;

    .line 47
    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    iget-object v0, p0, Llr/b;->b:Llr/a;

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    iget-boolean v2, p0, Llr/b;->d:Z

    .line 55
    .line 56
    invoke-static {v0, p1, v2}, Llr/b;->c(Llr/a;Llr/a;Z)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    return v1

    .line 63
    :cond_2
    iget-object p1, p0, Llr/b;->a:Llr/a;

    .line 64
    .line 65
    if-nez p1, :cond_3

    .line 66
    .line 67
    iget-object p1, p0, Llr/b;->b:Llr/a;

    .line 68
    .line 69
    if-nez p1, :cond_3

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    const/4 v1, 0x0

    .line 73
    :goto_0
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    check-cast p1, Llr/b;

    .line 20
    .line 21
    iget-boolean v2, p0, Llr/b;->c:Z

    .line 22
    .line 23
    iget-boolean v3, p1, Llr/b;->c:Z

    .line 24
    .line 25
    if-ne v2, v3, :cond_2

    .line 26
    .line 27
    iget-boolean v2, p0, Llr/b;->d:Z

    .line 28
    .line 29
    iget-boolean v3, p1, Llr/b;->d:Z

    .line 30
    .line 31
    if-ne v2, v3, :cond_2

    .line 32
    .line 33
    iget-object v2, p0, Llr/b;->a:Llr/a;

    .line 34
    .line 35
    iget-object v3, p1, Llr/b;->a:Llr/a;

    .line 36
    .line 37
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    iget-object v2, p0, Llr/b;->b:Llr/a;

    .line 44
    .line 45
    iget-object p1, p1, Llr/b;->b:Llr/a;

    .line 46
    .line 47
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    move v0, v1

    .line 55
    :goto_0
    return v0

    .line 56
    :cond_3
    :goto_1
    return v1
.end method
