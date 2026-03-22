.class Lmp/a;
.super Ljava/lang/Object;
.source "AssetLoader.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lio/bidmachine/nativead/a;

.field private final c:Lio/bidmachine/AdProcessCallback;

.field private final d:Lmp/e;

.field private final e:Lmp/g;


# direct methods
.method constructor <init>(Lio/bidmachine/nativead/a;Lio/bidmachine/AdProcessCallback;Lmp/e;Lmp/g;)V
    .locals 1
    .param p1    # Lio/bidmachine/nativead/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/AdProcessCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lmp/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lmp/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lmp/a;->a:Ljava/util/List;

    .line 10
    .line 11
    iput-object p1, p0, Lmp/a;->b:Lio/bidmachine/nativead/a;

    .line 12
    .line 13
    iput-object p2, p0, Lmp/a;->c:Lio/bidmachine/AdProcessCallback;

    .line 14
    .line 15
    iput-object p3, p0, Lmp/a;->d:Lmp/e;

    .line 16
    .line 17
    iput-object p4, p0, Lmp/a;->e:Lmp/g;

    .line 18
    .line 19
    return-void
.end method

.method static synthetic a(Lmp/a;)Lmp/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lmp/a;->e:Lmp/g;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lmp/a;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmp/a;->o(Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c(Lmp/a;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lmp/a;->p(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmp/a;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lmp/a;->n()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private e(Landroid/content/Context;Lio/bidmachine/ImageData;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/ImageData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-interface {p2}, Lio/bidmachine/ImageData;->getImage()Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    invoke-interface {p2}, Lio/bidmachine/ImageData;->getRemoteUrl()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    return-void

    .line 22
    :cond_2
    new-instance v0, Lmp/a$a;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lmp/a$a;-><init>(Lmp/a;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lmp/a;->a:Ljava/util/List;

    .line 28
    .line 29
    invoke-static {p1, p2}, Lnp/c;->j(Landroid/content/Context;Ljava/lang/String;)Lnp/c$b;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1, v0}, Lnp/c$b;->b(Lnp/c$c;)Lnp/c$b;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lnp/c$b;->a()Lnp/c;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private f(Landroid/content/Context;Lio/bidmachine/ImageData;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/ImageData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-interface {p2}, Lio/bidmachine/ImageData;->getImage()Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    invoke-interface {p2}, Lio/bidmachine/ImageData;->getRemoteUrl()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    return-void

    .line 22
    :cond_2
    new-instance v0, Lmp/a$b;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lmp/a$b;-><init>(Lmp/a;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lmp/a;->a:Ljava/util/List;

    .line 28
    .line 29
    invoke-static {p1, p2}, Lnp/c;->j(Landroid/content/Context;Ljava/lang/String;)Lnp/c$b;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1, v0}, Lnp/c$b;->b(Lnp/c$c;)Lnp/c$b;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lnp/c$b;->a()Lnp/c;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private g(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lmp/a$d;

    .line 9
    .line 10
    invoke-direct {v0, p0, p1}, Lmp/a$d;-><init>(Lmp/a;Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lmp/a;->a:Ljava/util/List;

    .line 14
    .line 15
    new-instance v2, Lnp/d;

    .line 16
    .line 17
    invoke-direct {v2, p1, v0, p2}, Lnp/d;-><init>(Landroid/content/Context;Lnp/d$b;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private h(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lmp/a$c;

    .line 9
    .line 10
    invoke-direct {v0, p0, p1}, Lmp/a$c;-><init>(Lmp/a;Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lmp/a;->a:Ljava/util/List;

    .line 14
    .line 15
    new-instance v2, Lnp/e;

    .line 16
    .line 17
    invoke-direct {v2, p1, v0, p2}, Lnp/e;-><init>(Landroid/content/Context;Lnp/e$b;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private j()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lmp/a;->k()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lmp/a;->l()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-direct {p0}, Lmp/a;->m()Z

    .line 15
    .line 16
    .line 17
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    return v0

    .line 25
    :goto_1
    invoke-static {v1}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    return v0
.end method

.method private k()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lmp/a;->b:Lio/bidmachine/nativead/a;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/MediaAssetType;->Icon:Lio/bidmachine/MediaAssetType;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lio/bidmachine/nativead/a;->a(Lio/bidmachine/MediaAssetType;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lmp/a;->e:Lmp/g;

    .line 13
    .line 14
    invoke-interface {v0}, Lmp/h;->getIconUri()Landroid/net/Uri;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lmp/a;->e:Lmp/g;

    .line 21
    .line 22
    invoke-interface {v0}, Lmp/h;->k()Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v1, 0x0

    .line 30
    :cond_1
    :goto_0
    return v1
.end method

.method private l()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lmp/a;->b:Lio/bidmachine/nativead/a;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/MediaAssetType;->Image:Lio/bidmachine/MediaAssetType;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lio/bidmachine/nativead/a;->a(Lio/bidmachine/MediaAssetType;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lmp/a;->e:Lmp/g;

    .line 13
    .line 14
    invoke-interface {v0}, Lmp/h;->getImageUri()Landroid/net/Uri;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lmp/a;->e:Lmp/g;

    .line 21
    .line 22
    invoke-interface {v0}, Lmp/h;->d()Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v1, 0x0

    .line 30
    :cond_1
    :goto_0
    return v1
.end method

.method private m()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lmp/a;->b:Lio/bidmachine/nativead/a;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/MediaAssetType;->Video:Lio/bidmachine/MediaAssetType;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lio/bidmachine/nativead/a;->a(Lio/bidmachine/MediaAssetType;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lmp/a;->d:Lmp/e;

    .line 12
    .line 13
    invoke-interface {v0}, Lmp/j;->hasVideo()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    return v0
.end method

.method private declared-synchronized n()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lmp/a;->b:Lio/bidmachine/nativead/a;

    .line 3
    .line 4
    invoke-virtual {v0}, Lio/bidmachine/nativead/a;->c()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lmp/a;->j()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lmp/a;->c:Lio/bidmachine/AdProcessCallback;

    .line 17
    .line 18
    const-string v1, "Native assets are invalid"

    .line 19
    .line 20
    invoke-static {v1}, Lfr/a;->i(Ljava/lang/String;)Lfr/a;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v0, v1}, Lio/bidmachine/AdProcessCallback;->processLoadFail(Lfr/a;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    iget-object v0, p0, Lmp/a;->c:Lio/bidmachine/AdProcessCallback;

    .line 31
    .line 32
    invoke-interface {v0}, Lio/bidmachine/AdProcessCallback;->processLoadSuccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    :goto_0
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw v0
.end method

.method private o(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lmp/a;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lmp/a;->d()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private p(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lmp/a;->d:Lmp/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lmp/j;->getMainImage()Lio/bidmachine/ImageData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lio/bidmachine/ImageData;->getRemoteUrl()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    new-instance v0, Ljava/io/File;

    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lmp/a;->e:Lmp/g;

    .line 45
    .line 46
    const-string v1, "native_cache_image"

    .line 47
    .line 48
    invoke-static {p1, p2, v1}, Lio/bidmachine/core/g;->j0(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-interface {v0, p1}, Lmp/g;->f(Landroid/net/Uri;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void
.end method

.method private q(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lmp/a;->d:Lmp/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lmp/e;->g()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lmp/a;->d:Lmp/e;

    .line 8
    .line 9
    invoke-interface {v1}, Lmp/e;->o()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lmp/a;->b:Lio/bidmachine/nativead/a;

    .line 14
    .line 15
    sget-object v3, Lio/bidmachine/MediaAssetType;->Icon:Lio/bidmachine/MediaAssetType;

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Lio/bidmachine/nativead/a;->a(Lio/bidmachine/MediaAssetType;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, Lmp/a;->d:Lmp/e;

    .line 24
    .line 25
    invoke-interface {v2}, Lmp/j;->getIcon()Lio/bidmachine/ImageData;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-direct {p0, p1, v2}, Lmp/a;->e(Landroid/content/Context;Lio/bidmachine/ImageData;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v2, p0, Lmp/a;->b:Lio/bidmachine/nativead/a;

    .line 33
    .line 34
    sget-object v3, Lio/bidmachine/MediaAssetType;->Image:Lio/bidmachine/MediaAssetType;

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Lio/bidmachine/nativead/a;->a(Lio/bidmachine/MediaAssetType;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    iget-object v2, p0, Lmp/a;->d:Lmp/e;

    .line 43
    .line 44
    invoke-interface {v2}, Lmp/j;->getMainImage()Lio/bidmachine/ImageData;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-direct {p0, p1, v2}, Lmp/a;->f(Landroid/content/Context;Lio/bidmachine/ImageData;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    iget-object v2, p0, Lmp/a;->b:Lio/bidmachine/nativead/a;

    .line 52
    .line 53
    sget-object v3, Lio/bidmachine/MediaAssetType;->Video:Lio/bidmachine/MediaAssetType;

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Lio/bidmachine/nativead/a;->a(Lio/bidmachine/MediaAssetType;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_2

    .line 66
    .line 67
    invoke-direct {p0, p1, v0}, Lmp/a;->h(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_3

    .line 76
    .line 77
    invoke-direct {p0, p1, v1}, Lmp/a;->g(Landroid/content/Context;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_3
    :goto_0
    iget-object p1, p0, Lmp/a;->a:Ljava/util/List;

    .line 81
    .line 82
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_4

    .line 87
    .line 88
    invoke-direct {p0}, Lmp/a;->d()V

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_4
    iget-object p1, p0, Lmp/a;->a:Ljava/util/List;

    .line 93
    .line 94
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_5

    .line 103
    .line 104
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Ljava/lang/Runnable;

    .line 109
    .line 110
    invoke-static {}, Lop/b;->a()Lop/b;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v1, v0}, Lop/b;->execute(Ljava/lang/Runnable;)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method i(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lmp/a;->q(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lmp/a;->d()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
