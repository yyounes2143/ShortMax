.class public final Lcom/startshorts/androidplayer/startup/DbInitializer;
.super Lcom/startshorts/androidplayer/startup/BaseInitializer;
.source "DbInitializer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/startup/DbInitializer$a;
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
.field public static final b:Lcom/startshorts/androidplayer/startup/DbInitializer$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/startup/DbInitializer$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/startup/DbInitializer$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/startup/DbInitializer;->b:Lcom/startshorts/androidplayer/startup/DbInitializer$a;

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
    const-string v0, "DbInitializer"

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
    const-class v0, Lcom/startshorts/androidplayer/startup/DataCacheInitializer;

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
    .locals 0
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
    sget-object p2, Lcom/startshorts/androidplayer/db/DbManager;->a:Lcom/startshorts/androidplayer/db/DbManager;

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Lcom/startshorts/androidplayer/db/DbManager;->a(Landroid/content/Context;)Lcom/startshorts/androidplayer/db/Database;

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->P0()Lcom/startshorts/androidplayer/bean/account/Account;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->S()V

    .line 20
    .line 21
    .line 22
    sget-object p2, Lcom/startshorts/androidplayer/manager/api/limit/ApiLimitManager;->a:Lcom/startshorts/androidplayer/manager/api/limit/ApiLimitManager;

    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/manager/api/limit/ApiLimitManager;->h()Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-nez p2, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->V0()Lkotlinx/coroutines/r;

    .line 31
    .line 32
    .line 33
    :cond_0
    sget-object p1, Lcom/startshorts/androidplayer/db/repository/EventRepository;->b:Lcom/startshorts/androidplayer/db/repository/EventRepository;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->Q()Lkotlinx/coroutines/r;

    .line 36
    .line 37
    .line 38
    new-instance p1, Ljava/lang/Object;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    return-object p1
.end method
