.class public Lcom/airbnb/lottie/d;
.super Ljava/lang/Object;
.source "L.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static a:Z = false

.field private static b:Z = false

.field private static c:Z = true

.field private static d:Z = false

.field private static e:Lcom/airbnb/lottie/AsyncUpdates;

.field private static f:Lb1/e;

.field private static g:Lb1/d;

.field private static volatile h:Lb1/g;

.field private static volatile i:Lb1/f;

.field private static j:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ld1/h;",
            ">;"
        }
    .end annotation
.end field

.field private static k:Lv0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/airbnb/lottie/AsyncUpdates;->AUTOMATIC:Lcom/airbnb/lottie/AsyncUpdates;

    .line 2
    .line 3
    sput-object v0, Lcom/airbnb/lottie/d;->e:Lcom/airbnb/lottie/AsyncUpdates;

    .line 4
    .line 5
    new-instance v0, Lv0/b;

    .line 6
    .line 7
    invoke-direct {v0}, Lv0/b;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/airbnb/lottie/d;->k:Lv0/a;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/airbnb/lottie/d;->i(Landroid/content/Context;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/airbnb/lottie/d;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Ld1/h;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p0}, Ld1/h;->a(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static c(Ljava/lang/String;)F
    .locals 1

    .line 1
    sget-boolean v0, Lcom/airbnb/lottie/d;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Ld1/h;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Ld1/h;->b(Ljava/lang/String;)F

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public static d()Lcom/airbnb/lottie/AsyncUpdates;
    .locals 1

    .line 1
    sget-object v0, Lcom/airbnb/lottie/d;->e:Lcom/airbnb/lottie/AsyncUpdates;

    .line 2
    .line 3
    return-object v0
.end method

.method public static e()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/airbnb/lottie/d;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public static f()Lv0/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/airbnb/lottie/d;->k:Lv0/a;

    .line 2
    .line 3
    return-object v0
.end method

.method private static g()Ld1/h;
    .locals 2

    .line 1
    sget-object v0, Lcom/airbnb/lottie/d;->j:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ld1/h;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ld1/h;

    .line 12
    .line 13
    invoke-direct {v0}, Ld1/h;-><init>()V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/airbnb/lottie/d;->j:Ljava/lang/ThreadLocal;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-object v0
.end method

.method public static h()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/airbnb/lottie/d;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method private static synthetic i(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v1, "lottie_network_cache"

    .line 8
    .line 9
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static j(Landroid/content/Context;)Lb1/f;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-boolean v0, Lcom/airbnb/lottie/d;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget-object v0, Lcom/airbnb/lottie/d;->i:Lb1/f;

    .line 12
    .line 13
    if-nez v0, :cond_3

    .line 14
    .line 15
    const-class v1, Lb1/f;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    sget-object v0, Lcom/airbnb/lottie/d;->i:Lb1/f;

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    new-instance v0, Lb1/f;

    .line 23
    .line 24
    sget-object v2, Lcom/airbnb/lottie/d;->g:Lb1/d;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    new-instance v2, Lcom/airbnb/lottie/c;

    .line 30
    .line 31
    invoke-direct {v2, p0}, Lcom/airbnb/lottie/c;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-direct {v0, v2}, Lb1/f;-><init>(Lb1/d;)V

    .line 35
    .line 36
    .line 37
    sput-object v0, Lcom/airbnb/lottie/d;->i:Lb1/f;

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    :goto_1
    monitor-exit v1

    .line 43
    goto :goto_3

    .line 44
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0

    .line 46
    :cond_3
    :goto_3
    return-object v0
.end method

.method public static k(Landroid/content/Context;)Lb1/g;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/airbnb/lottie/d;->h:Lb1/g;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    const-class v1, Lb1/g;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    sget-object v0, Lcom/airbnb/lottie/d;->h:Lb1/g;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Lb1/g;

    .line 13
    .line 14
    invoke-static {p0}, Lcom/airbnb/lottie/d;->j(Landroid/content/Context;)Lb1/f;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    sget-object v2, Lcom/airbnb/lottie/d;->f:Lb1/e;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v2, Lb1/b;

    .line 24
    .line 25
    invoke-direct {v2}, Lb1/b;-><init>()V

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-direct {v0, p0, v2}, Lb1/g;-><init>(Lb1/f;Lb1/e;)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lcom/airbnb/lottie/d;->h:Lb1/g;

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    :goto_1
    monitor-exit v1

    .line 37
    goto :goto_3

    .line 38
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0

    .line 40
    :cond_2
    :goto_3
    return-object v0
.end method
