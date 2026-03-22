.class public final Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;
.super Ljava/lang/Object;
.source "CMSRemoteConfigDS.kt"

# interfaces
.implements Lmg/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final e:Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lrg/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;->e:Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lrg/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lrg/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;->a:Lrg/a;

    .line 10
    .line 11
    new-instance v0, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;->tag()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;->b:Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic h(Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;->j(Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic i(Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;)Lrg/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;->a:Lrg/a;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final j(Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;->a()Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;->c(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method private final k()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-wide v2, p0, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;->d:J

    .line 8
    .line 9
    sub-long/2addr v0, v2

    .line 10
    const-wide/16 v2, 0x7530

    .line 11
    .line 12
    cmp-long v0, v0, v2

    .line 13
    .line 14
    if-gez v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return v0
.end method

.method private final n()V
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iput-wide v0, p0, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;->d:J

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public a()Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;->b:Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lmg/f$a;->c(Lmg/f;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public c()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;->a()Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;->k()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;->tag()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "fetchRemoteConfig -> ignored, interval not reached"

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;->n()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;->a()Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;->d()V

    .line 38
    .line 39
    .line 40
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;->tag()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, ".fetchRemoteConfig"

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    new-instance v5, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1;

    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    invoke-direct {v5, p0, v0}, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS$fetchRemoteConfig$1;-><init>(Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;Lrs/c;)V

    .line 67
    .line 68
    .line 69
    new-instance v6, Lrg/b;

    .line 70
    .line 71
    invoke-direct {v6, p0}, Lrg/b;-><init>(Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;)V

    .line 72
    .line 73
    .line 74
    const/4 v7, 0x5

    .line 75
    const/4 v8, 0x0

    .line 76
    const/4 v2, 0x0

    .line 77
    const/4 v4, 0x0

    .line 78
    invoke-static/range {v1 .. v8}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->k(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Lgt/g0;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public d(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lmg/f$a;->a(Lmg/f;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public e()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lmg/f$a;->b(Lmg/f;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public g(Lkotlin/jvm/functions/Function0;)Lmg/f;
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lmg/f;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lmg/f$a;->d(Lmg/f;Lkotlin/jvm/functions/Function0;)Lmg/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final l()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;->d:J

    .line 4
    .line 5
    return-void
.end method

.method public m(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/ConcurrentHashMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-void
.end method

.method public tag()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "CMSRemoteConfigDS"

    .line 2
    .line 3
    return-object v0
.end method
