.class public Lnp/c$b;
.super Ljava/lang/Object;
.source "DownloadImageTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnp/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lnp/c;


# direct methods
.method public constructor <init>(Lnp/c;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lnp/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lnp/c$b;->a:Lnp/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Lnp/c;->c(Lnp/c;Landroid/content/Context;)Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p3}, Lnp/c;->d(Lnp/c;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()Lnp/c;
    .locals 4

    .line 1
    const-string v0, "native_cache_image"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lnp/c$b;->a:Lnp/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    invoke-static {v1}, Lnp/c;->a(Lnp/c;)Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lnp/c$b;->a:Lnp/c;

    .line 12
    .line 13
    invoke-static {v0}, Lnp/c;->e(Lnp/c;)Lnp/c$c;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lnp/c$b;->a:Lnp/c;

    .line 20
    .line 21
    invoke-static {v0}, Lnp/c;->e(Lnp/c;)Lnp/c$c;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v2, p0, Lnp/c$b;->a:Lnp/c;

    .line 26
    .line 27
    invoke-interface {v0, v2}, Lnp/c$c;->a(Lnp/c;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {}, Lio/bidmachine/core/g;->f()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    iget-object v2, p0, Lnp/c$b;->a:Lnp/c;

    .line 38
    .line 39
    invoke-static {v2}, Lnp/c;->a(Lnp/c;)Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {v3, v0}, Lio/bidmachine/core/g;->w(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v2, v0}, Lnp/c;->g(Lnp/c;Ljava/io/File;)Ljava/io/File;

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    return-object v1

    .line 51
    :catchall_0
    move-exception v1

    .line 52
    iget-object v2, p0, Lnp/c$b;->a:Lnp/c;

    .line 53
    .line 54
    invoke-static {v2}, Lnp/c;->a(Lnp/c;)Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-nez v2, :cond_2

    .line 59
    .line 60
    iget-object v0, p0, Lnp/c$b;->a:Lnp/c;

    .line 61
    .line 62
    invoke-static {v0}, Lnp/c;->e(Lnp/c;)Lnp/c$c;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    iget-object v0, p0, Lnp/c$b;->a:Lnp/c;

    .line 69
    .line 70
    invoke-static {v0}, Lnp/c;->e(Lnp/c;)Lnp/c$c;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-object v2, p0, Lnp/c$b;->a:Lnp/c;

    .line 75
    .line 76
    invoke-interface {v0, v2}, Lnp/c$c;->a(Lnp/c;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    invoke-static {}, Lio/bidmachine/core/g;->f()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_3

    .line 85
    .line 86
    iget-object v2, p0, Lnp/c$b;->a:Lnp/c;

    .line 87
    .line 88
    invoke-static {v2}, Lnp/c;->a(Lnp/c;)Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-static {v3, v0}, Lio/bidmachine/core/g;->w(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {v2, v0}, Lnp/c;->g(Lnp/c;Ljava/io/File;)Ljava/io/File;

    .line 97
    .line 98
    .line 99
    :cond_3
    :goto_1
    throw v1
.end method

.method public b(Lnp/c$c;)Lnp/c$b;
    .locals 1
    .param p1    # Lnp/c$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lnp/c$b;->a:Lnp/c;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lnp/c;->f(Lnp/c;Lnp/c$c;)Lnp/c$c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
