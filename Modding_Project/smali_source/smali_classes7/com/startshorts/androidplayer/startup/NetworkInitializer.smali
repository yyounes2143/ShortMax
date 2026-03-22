.class public final Lcom/startshorts/androidplayer/startup/NetworkInitializer;
.super Lcom/startshorts/androidplayer/startup/BaseInitializer;
.source "NetworkInitializer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/startup/NetworkInitializer$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/startup/BaseInitializer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final e:Lcom/startshorts/androidplayer/startup/NetworkInitializer$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/startup/NetworkInitializer$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/startup/NetworkInitializer$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/startup/NetworkInitializer;->e:Lcom/startshorts/androidplayer/startup/NetworkInitializer$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/startup/BaseInitializer;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/startup/NetworkInitializer;->c:Z

    .line 6
    .line 7
    const-string v0, "no_net"

    .line 8
    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/startup/NetworkInitializer;->d:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public static final synthetic f(Lcom/startshorts/androidplayer/startup/NetworkInitializer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/startup/NetworkInitializer;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Lcom/startshorts/androidplayer/startup/NetworkInitializer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/startup/NetworkInitializer;->k()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic h(Lcom/startshorts/androidplayer/startup/NetworkInitializer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/startup/NetworkInitializer;->l()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic i(Lcom/startshorts/androidplayer/startup/NetworkInitializer;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/startup/NetworkInitializer;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method private final k()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/startup/NetworkInitializer;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/startup/NetworkInitializer;->b:Z

    .line 7
    .line 8
    const-string v0, "onAvailable"

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/startup/BaseInitializer;->b(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/startup/NetworkInitializer;->c:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/startup/NetworkInitializer;->c:Z

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->m0()Lkotlinx/coroutines/r;

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/startup/NetworkInitializer;->m()Lkotlinx/coroutines/r;

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method private final l()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/startup/NetworkInitializer;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/startup/NetworkInitializer;->b:Z

    .line 7
    .line 8
    const-string v0, "onLost"

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/startup/BaseInitializer;->b(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private final m()Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/startup/NetworkInitializer$refreshNetworkType$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, p0, v1}, Lcom/startshorts/androidplayer/startup/NetworkInitializer$refreshNetworkType$1;-><init>(Lcom/startshorts/androidplayer/startup/NetworkInitializer;Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "refreshNetworkType"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "NetworkInitializer"

    .line 2
    .line 3
    return-object v0
.end method

.method public dependencies()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/startup/Initializer<",
            "*>;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/startshorts/androidplayer/startup/LoggerInitializer;

    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public e(Landroid/content/Context;Z)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "context"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string p2, "connectivity"

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    instance-of p2, p1, Landroid/net/ConnectivityManager;

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    if-eqz p1, :cond_1

    .line 23
    .line 24
    new-instance p2, Lcom/startshorts/androidplayer/startup/NetworkInitializer$b;

    .line 25
    .line 26
    invoke-direct {p2, p0}, Lcom/startshorts/androidplayer/startup/NetworkInitializer$b;-><init>(Lcom/startshorts/androidplayer/startup/NetworkInitializer;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_2

    .line 33
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v0, "registerDefaultNetworkCallback failed -> "

    .line 39
    .line 40
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/startup/BaseInitializer;->b(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_2
    new-instance p1, Ljava/lang/Object;

    .line 58
    .line 59
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 60
    .line 61
    .line 62
    return-object p1
.end method

.method public final j()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/startup/NetworkInitializer;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
