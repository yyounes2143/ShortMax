.class public final Lcom/moloco/sdk/internal/ilrd/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/ilrd/e$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/moloco/sdk/internal/ilrd/e$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g:I


# instance fields
.field public final a:Lgt/g0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/moloco/sdk/internal/ilrd/h;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/ilrd/e$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/ilrd/e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/moloco/sdk/internal/ilrd/e;->f:Lcom/moloco/sdk/internal/ilrd/e$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/moloco/sdk/internal/ilrd/e;->g:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lgt/g0;Landroid/content/Context;Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;Ljava/util/List;)V
    .locals 1
    .param p1    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Landroid/content/Context;",
            "Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;",
            "Ljava/util/List<",
            "+",
            "Lcom/moloco/sdk/Init$SDKInitResponse$SupportedNetworks;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "scope"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "context"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "eventsRepository"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string/jumbo v0, "supportedNetworksList"

    .line 17
    .line 18
    .line 19
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/moloco/sdk/internal/ilrd/e;->a:Lgt/g0;

    .line 26
    .line 27
    iput-object p3, p0, Lcom/moloco/sdk/internal/ilrd/e;->b:Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;

    .line 28
    .line 29
    new-instance p1, Lcom/moloco/sdk/internal/ilrd/i;

    .line 30
    .line 31
    invoke-direct {p1, p4, p2, p0}, Lcom/moloco/sdk/internal/ilrd/i;-><init>(Ljava/util/List;Landroid/content/Context;Lcom/moloco/sdk/internal/ilrd/e;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/moloco/sdk/internal/ilrd/e;->c:Lms/i;

    .line 39
    .line 40
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/moloco/sdk/internal/ilrd/e;->d:Ljava/util/Set;

    .line 50
    .line 51
    return-void
.end method

.method public static final synthetic a(Lcom/moloco/sdk/internal/ilrd/e;)Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/ilrd/e;->b:Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final c(Ljava/util/List;Landroid/content/Context;Lcom/moloco/sdk/internal/ilrd/e;)Ljava/util/List;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/moloco/sdk/Init$SDKInitResponse$SupportedNetworks;->MAX:Lcom/moloco/sdk/Init$SDKInitResponse$SupportedNetworks;

    .line 7
    .line 8
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    sget-object v2, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 15
    .line 16
    const/16 v7, 0xc

    .line 17
    .line 18
    const/4 v8, 0x0

    .line 19
    const-string v3, "IlrdService"

    .line 20
    .line 21
    const-string v4, "Adding AppLovin as ILRD provider"

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x0

    .line 25
    invoke-static/range {v2 .. v8}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcom/moloco/sdk/internal/ilrd/provider/a;

    .line 29
    .line 30
    iget-object v2, p2, Lcom/moloco/sdk/internal/ilrd/e;->a:Lgt/g0;

    .line 31
    .line 32
    invoke-direct {v1, p1, v2}, Lcom/moloco/sdk/internal/ilrd/provider/a;-><init>(Landroid/content/Context;Lgt/g0;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    :cond_0
    sget-object v1, Lcom/moloco/sdk/Init$SDKInitResponse$SupportedNetworks;->LEVEL_PLAY:Lcom/moloco/sdk/Init$SDKInitResponse$SupportedNetworks;

    .line 39
    .line 40
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_1

    .line 45
    .line 46
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 47
    .line 48
    const/16 v6, 0xc

    .line 49
    .line 50
    const/4 v7, 0x0

    .line 51
    const-string v2, "IlrdService"

    .line 52
    .line 53
    const-string v3, "Adding IronSource as ILRD provider"

    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    const/4 v5, 0x0

    .line 57
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    new-instance p0, Lcom/moloco/sdk/internal/ilrd/provider/f;

    .line 61
    .line 62
    iget-object p2, p2, Lcom/moloco/sdk/internal/ilrd/e;->a:Lgt/g0;

    .line 63
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/moloco/sdk/internal/ilrd/provider/f;-><init>(Landroid/content/Context;Lgt/g0;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->d1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0
.end method

.method public static final synthetic e(Lcom/moloco/sdk/internal/ilrd/e;Lcom/moloco/sdk/internal/ilrd/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/internal/ilrd/e;->d(Lcom/moloco/sdk/internal/ilrd/h;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic g(Lcom/moloco/sdk/internal/ilrd/e;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/ilrd/e;->b()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/moloco/sdk/internal/ilrd/h;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ilrd/e;->c:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    return-object v0
.end method

.method public final d(Lcom/moloco/sdk/internal/ilrd/h;)V
    .locals 9

    .line 1
    invoke-interface {p1}, Lcom/moloco/sdk/internal/ilrd/h;->b()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    sget-object v2, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 12
    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v4, "Failed to subscribe to "

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Lcom/moloco/sdk/internal/ilrd/h;->a()Lcom/moloco/sdk/internal/ilrd/model/a;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v4, " ILRD: "

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const/16 v7, 0xc

    .line 43
    .line 44
    const/4 v8, 0x0

    .line 45
    const-string v3, "IlrdService"

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    const/4 v6, 0x0

    .line 49
    invoke-static/range {v2 .. v8}, Lcom/moloco/sdk/internal/MolocoLogger;->warn$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-static {v0}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    check-cast v0, Lkotlin/Unit;

    .line 59
    .line 60
    iget-object v0, p0, Lcom/moloco/sdk/internal/ilrd/e;->d:Ljava/util/Set;

    .line 61
    .line 62
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    invoke-interface {p1}, Lcom/moloco/sdk/internal/ilrd/h;->c()Lkt/f;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    new-instance v0, Lcom/moloco/sdk/internal/ilrd/e$c;

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    invoke-direct {v0, p0, v1}, Lcom/moloco/sdk/internal/ilrd/e$c;-><init>(Lcom/moloco/sdk/internal/ilrd/e;Lrs/c;)V

    .line 73
    .line 74
    .line 75
    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/c;->O(Lkt/b;Lkotlin/jvm/functions/Function2;)Lkt/b;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iget-object v0, p0, Lcom/moloco/sdk/internal/ilrd/e;->a:Lgt/g0;

    .line 80
    .line 81
    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/c;->J(Lkt/b;Lgt/g0;)Lkotlinx/coroutines/r;

    .line 82
    .line 83
    .line 84
    :cond_1
    return-void
.end method

.method public final f()Lcom/moloco/sdk/internal/services/bidtoken/providers/q;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/ilrd/e;->b:Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->l()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/ilrd/IlrdEventsRepository;->j()Lcom/moloco/sdk/internal/ilrd/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {v0}, Lcom/moloco/sdk/internal/ilrd/j;->a(Lcom/moloco/sdk/internal/ilrd/a;)Lcom/moloco/sdk/internal/services/bidtoken/providers/q;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    :cond_0
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 19
    .line 20
    const/16 v6, 0xc

    .line 21
    .line 22
    const/4 v7, 0x0

    .line 23
    const-string v2, "IlrdService"

    .line 24
    .line 25
    const-string v3, "provideDataForBidToken() Session is null"

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x0

    .line 29
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->warn$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    :cond_1
    return-object v0
.end method

.method public final declared-synchronized h()V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/moloco/sdk/internal/ilrd/e;->e:Lkotlinx/coroutines/r;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Lkotlinx/coroutines/r;->isActive()Z

    .line 7
    .line 8
    .line 9
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/moloco/sdk/internal/ilrd/e;->a:Lgt/g0;

    .line 18
    .line 19
    new-instance v4, Lcom/moloco/sdk/internal/ilrd/e$b;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-direct {v4, p0, v0}, Lcom/moloco/sdk/internal/ilrd/e$b;-><init>(Lcom/moloco/sdk/internal/ilrd/e;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    const/4 v5, 0x3

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/moloco/sdk/internal/ilrd/e;->e:Lkotlinx/coroutines/r;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw v0
.end method
