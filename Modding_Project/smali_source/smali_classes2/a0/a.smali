.class public final La0/a;
.super Ljava/lang/Object;
.source "Coil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:La0/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static b:Lcoil/ImageLoader;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static c:La0/e;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, La0/a;

    .line 2
    .line 3
    invoke-direct {v0}, La0/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, La0/a;->a:La0/a;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final a(Landroid/content/Context;)Lcoil/ImageLoader;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, La0/a;->b:Lcoil/ImageLoader;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, La0/a;->a:La0/a;

    .line 6
    .line 7
    invoke-direct {v0, p0}, La0/a;->b(Landroid/content/Context;)Lcoil/ImageLoader;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    return-object v0
.end method

.method private final declared-synchronized b(Landroid/content/Context;)Lcoil/ImageLoader;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, La0/a;->b:Lcoil/ImageLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-object v0

    .line 8
    :cond_0
    :try_start_1
    sget-object v0, La0/a;->c:La0/e;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, La0/e;->a()Lcoil/ImageLoader;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_4

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_3

    .line 22
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    instance-of v2, v0, La0/e;

    .line 27
    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    check-cast v0, La0/e;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    move-object v0, v1

    .line 34
    :goto_1
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-interface {v0}, La0/e;->a()Lcoil/ImageLoader;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    goto :goto_2

    .line 41
    :cond_3
    invoke-static {p1}, La0/f;->a(Landroid/content/Context;)Lcoil/ImageLoader;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :cond_4
    :goto_2
    sput-object v1, La0/a;->c:La0/e;

    .line 46
    .line 47
    sput-object v0, La0/a;->b:Lcoil/ImageLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    monitor-exit p0

    .line 50
    return-object v0

    .line 51
    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    throw p1
.end method
