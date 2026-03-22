.class public final Ll0/d;
.super Ljava/lang/Object;
.source "NetworkObserver.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final a(Landroid/content/Context;Ll0/c$a;Lr0/q;)Ll0/c;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ll0/c$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lr0/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-class v0, Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 8
    .line 9
    const-string v1, "NetworkObserver"

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    .line 14
    .line 15
    invoke-static {p0, v2}, Lr0/d;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :try_start_0
    new-instance p0, Ll0/e;

    .line 23
    .line 24
    invoke-direct {p0, v0, p1}, Ll0/e;-><init>(Landroid/net/ConnectivityManager;Ll0/c$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    new-instance p1, Ljava/lang/RuntimeException;

    .line 32
    .line 33
    const-string v0, "Failed to register network observer."

    .line 34
    .line 35
    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p2, v1, p1}, Lr0/g;->a(Lr0/q;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    new-instance p0, Ll0/b;

    .line 42
    .line 43
    invoke-direct {p0}, Ll0/b;-><init>()V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-object p0

    .line 47
    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 48
    .line 49
    invoke-interface {p2}, Lr0/q;->getLevel()I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    const/4 p1, 0x5

    .line 54
    if-gt p0, p1, :cond_3

    .line 55
    .line 56
    const-string p0, "Unable to register network observer."

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-interface {p2, v1, p1, p0, v0}, Lr0/q;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    :cond_3
    new-instance p0, Ll0/b;

    .line 63
    .line 64
    invoke-direct {p0}, Ll0/b;-><init>()V

    .line 65
    .line 66
    .line 67
    return-object p0
.end method
