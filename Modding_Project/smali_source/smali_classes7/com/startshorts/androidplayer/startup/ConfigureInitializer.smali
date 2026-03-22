.class public final Lcom/startshorts/androidplayer/startup/ConfigureInitializer;
.super Lcom/startshorts/androidplayer/startup/BaseInitializer;
.source "ConfigureInitializer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/startup/ConfigureInitializer$a;
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
.field public static final c:Lcom/startshorts/androidplayer/startup/ConfigureInitializer$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/startup/ConfigureInitializer$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/startup/ConfigureInitializer$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/startup/ConfigureInitializer;->c:Lcom/startshorts/androidplayer/startup/ConfigureInitializer$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/startup/BaseInitializer;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "ConfigureInitializer"

    .line 2
    .line 3
    return-object v0
.end method

.method public dependencies()Ljava/util/List;
    .locals 1
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
    const-class v0, Lcom/startshorts/androidplayer/startup/DbInitializer;

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

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
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    sget-object p2, Lcom/startshorts/androidplayer/manager/api/limit/ApiLimitManager;->a:Lcom/startshorts/androidplayer/manager/api/limit/ApiLimitManager;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/manager/api/limit/ApiLimitManager;->h()Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    const-string p1, "ConfigureInitializer init failed -> ApiLimitManager.isLimited"

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/startup/BaseInitializer;->b(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object p1, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->a:Lcom/startshorts/androidplayer/manager/crash/CrashManager;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->e()V

    .line 24
    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_0
    iget-boolean p2, p0, Lcom/startshorts/androidplayer/startup/ConfigureInitializer;->b:Z

    .line 28
    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    const-string p1, "ConfigureInitializer init failed -> mInitialized is true"

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/startup/BaseInitializer;->b(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_1
    const/4 p2, 0x1

    .line 38
    iput-boolean p2, p0, Lcom/startshorts/androidplayer/startup/ConfigureInitializer;->b:Z

    .line 39
    .line 40
    sget-object p2, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->a:Lcom/startshorts/androidplayer/manager/crash/CrashManager;

    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->e()V

    .line 43
    .line 44
    .line 45
    sget-object p2, Lcom/startshorts/androidplayer/repo/event/EventRepo;->a:Lcom/startshorts/androidplayer/repo/event/EventRepo;

    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/repo/event/EventRepo;->b()Lkotlinx/coroutines/r;

    .line 48
    .line 49
    .line 50
    sget-object p2, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 51
    .line 52
    invoke-virtual {p2, p1}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->I(Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    sget-object p2, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager;->a:Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager;

    .line 56
    .line 57
    invoke-virtual {p2, p1}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager;->b(Landroid/content/Context;)Lkotlinx/coroutines/r;

    .line 58
    .line 59
    .line 60
    sget-object p2, Lcom/startshorts/androidplayer/utils/IPDetector;->a:Lcom/startshorts/androidplayer/utils/IPDetector;

    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/utils/IPDetector;->a()V

    .line 63
    .line 64
    .line 65
    sget-object p2, Lcom/startshorts/androidplayer/utils/ResourceHandler;->a:Lcom/startshorts/androidplayer/utils/ResourceHandler;

    .line 66
    .line 67
    invoke-virtual {p2, p1}, Lcom/startshorts/androidplayer/utils/ResourceHandler;->c(Landroid/content/Context;)V

    .line 68
    .line 69
    .line 70
    return-object p0
.end method
