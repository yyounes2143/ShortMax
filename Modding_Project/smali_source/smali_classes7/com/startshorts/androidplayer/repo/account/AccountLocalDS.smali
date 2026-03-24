.class public final Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;
.super Ljava/lang/Object;
.source "AccountLocalDS.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/repo/account/AccountLocalDS$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAccountLocalDS.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountLocalDS.kt\ncom/startshorts/androidplayer/repo/account/AccountLocalDS\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,719:1\n1#2:720\n*E\n"
    }
.end annotation


# static fields
.field public static final e:Lcom/startshorts/androidplayer/repo/account/AccountLocalDS$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Lcom/startshorts/androidplayer/bean/account/Account;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:I

.field private final d:Lqt/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->e:Lcom/startshorts/androidplayer/repo/account/AccountLocalDS$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->c:I

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {v2, v0, v1}, Lqt/d;->b(ZILjava/lang/Object;)Lqt/a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->d:Lqt/a;

    .line 22
    .line 23
    return-void
.end method

.method private final N()Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS$save$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, p0, v1}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS$save$1;-><init>(Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "saveAccount"

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

.method private final O()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    iget v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->c:I

    .line 9
    .line 10
    if-eq v0, v2, :cond_1

    .line 11
    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    sget-object v0, Lud/b;->a:Lud/b;

    .line 15
    .line 16
    invoke-virtual {v0, v3}, Lud/b;->n5(Lcom/startshorts/androidplayer/bean/account/Account;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v3}, Lud/b;->x4(Lcom/startshorts/androidplayer/bean/account/Account;)V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    sget-object v0, Lud/b;->a:Lud/b;

    .line 24
    .line 25
    invoke-virtual {v0, v3}, Lud/b;->x4(Lcom/startshorts/androidplayer/bean/account/Account;)V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Lud/b;->n5(Lcom/startshorts/androidplayer/bean/account/Account;)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/account/Account;->getType()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    :cond_3
    if-nez v3, :cond_4

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-ne v0, v2, :cond_5

    .line 53
    .line 54
    sget-object v0, Lud/b;->a:Lud/b;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lud/b;->n5(Lcom/startshorts/androidplayer/bean/account/Account;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_5
    :goto_0
    if-nez v3, :cond_6

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-ne v0, v1, :cond_7

    .line 70
    .line 71
    sget-object v0, Lud/b;->a:Lud/b;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lud/b;->x4(Lcom/startshorts/androidplayer/bean/account/Account;)V

    .line 76
    .line 77
    .line 78
    :cond_7
    :goto_1
    return-void
.end method

.method public static synthetic Q(Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;Lcom/startshorts/androidplayer/bean/account/Account;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->P(Lcom/startshorts/androidplayer/bean/account/Account;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final synthetic a(Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;)Lqt/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->d:Lqt/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic b(Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->O()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/account/Account;->isPix615DayToWeekExperiment()Z

    .line 10
    .line 11
    .line 12
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-ne v1, v3, :cond_0

    .line 15
    .line 16
    move v2, v3

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit v0

    .line 21
    return v2

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw v1
.end method

.method public final A0(ZZ)Lcom/startshorts/androidplayer/bean/account/Account;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/account/Account;->setDaySub(Z)V

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->N()Lkotlinx/coroutines/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :cond_1
    :goto_0
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw p1
.end method

.method public final B()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/account/Account;->isDaySub()Z

    .line 10
    .line 11
    .line 12
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-ne v1, v3, :cond_0

    .line 15
    .line 16
    move v2, v3

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit v0

    .line 21
    return v2

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw v1
.end method

.method public final B0(ZZ)Lcom/startshorts/androidplayer/bean/account/Account;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/account/Account;->setPaid(Z)V

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->N()Lkotlinx/coroutines/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :cond_1
    :goto_0
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw p1
.end method

.method public final C()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/account/Account;->isSubscriptionBlack()Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    monitor-exit v0

    .line 23
    return v1

    .line 24
    :goto_1
    monitor-exit v0

    .line 25
    throw v1
.end method

.method public final C0(ZZ)Lcom/startshorts/androidplayer/bean/account/Account;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/account/Account;->setPix610(Z)V

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->N()Lkotlinx/coroutines/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :cond_1
    :goto_0
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw p1
.end method

.method public final D()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/account/Account;->isIaaUser()Z

    .line 10
    .line 11
    .line 12
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-ne v1, v3, :cond_0

    .line 15
    .line 16
    move v2, v3

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit v0

    .line 21
    return v2

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw v1
.end method

.method public final D0(ZZ)Lcom/startshorts/androidplayer/bean/account/Account;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/account/Account;->setPix615DayToWeekExperiment(Z)V

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->N()Lkotlinx/coroutines/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :cond_1
    :goto_0
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw p1
.end method

.method public final E()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/account/Account;->isIdnTelkomsel()Z

    .line 10
    .line 11
    .line 12
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-ne v1, v3, :cond_0

    .line 15
    .line 16
    move v2, v3

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit v0

    .line 21
    return v2

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw v1
.end method

.method public final F()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/account/Account;->isPix610()Z

    .line 10
    .line 11
    .line 12
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-ne v1, v3, :cond_0

    .line 15
    .line 16
    move v2, v3

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit v0

    .line 21
    return v2

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw v1
.end method

.method public final G()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/account/Account;->isPrimary()Z

    .line 10
    .line 11
    .line 12
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-ne v1, v3, :cond_0

    .line 15
    .line 16
    move v2, v3

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit v0

    .line 21
    return v2

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw v1
.end method

.method public final H()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/account/Account;->isShowMobileLogin()Z

    .line 9
    .line 10
    .line 11
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    monitor-exit v0

    .line 17
    return v1

    .line 18
    :goto_1
    monitor-exit v0

    .line 19
    throw v1
.end method

.method public final I()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return v2

    .line 11
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/account/Account;->isSubscription()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/account/Account;->isSubsExpired()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/account/Account;->getSubscriptionEndTime()J

    .line 20
    .line 21
    .line 22
    move-result-wide v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    if-nez v4, :cond_2

    .line 26
    .line 27
    :cond_1
    if-nez v3, :cond_3

    .line 28
    .line 29
    const-wide/16 v3, -0x1

    .line 30
    .line 31
    cmp-long v1, v5, v3

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    :cond_2
    const/4 v2, 0x1

    .line 36
    :cond_3
    monitor-exit v0

    .line 37
    return v2

    .line 38
    :catchall_0
    move-exception v1

    .line 39
    monitor-exit v0

    .line 40
    throw v1
.end method

.method public final J()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/account/Account;->isThirdSubscription()Z

    .line 9
    .line 10
    .line 11
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    monitor-exit v0

    .line 17
    return v1

    .line 18
    :goto_1
    monitor-exit v0

    .line 19
    throw v1
.end method

.method public final K()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/account/Account;->isTourist()Z

    .line 10
    .line 11
    .line 12
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-ne v1, v3, :cond_0

    .line 15
    .line 16
    move v2, v3

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit v0

    .line 21
    return v2

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw v1
.end method

.method public final L()Lcom/startshorts/androidplayer/bean/account/Account;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lud/b;->a:Lud/b;

    .line 5
    .line 6
    invoke-virtual {v1}, Lud/b;->j1()Lcom/startshorts/androidplayer/bean/account/Account;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Lud/b;->a2()Lcom/startshorts/androidplayer/bean/account/Account;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    goto :goto_2

    .line 19
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 20
    .line 21
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 22
    .line 23
    const-string v3, "AccountLocalDS"

    .line 24
    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v5, "exist account -> id("

    .line 31
    .line 32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->getUserCode()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v5, ") type("

    .line 43
    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->getType()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const/16 v5, 0x29

    .line 55
    .line 56
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v1, v3, v4}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    invoke-virtual {p0, v2, v1}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->P(Lcom/startshorts/androidplayer/bean/account/Account;Z)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 72
    .line 73
    const-string v3, "AccountLocalDS"

    .line 74
    .line 75
    const-string v4, "not find account"

    .line 76
    .line 77
    invoke-virtual {v1, v3, v4}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .line 79
    .line 80
    :goto_1
    monitor-exit v0

    .line 81
    return-object v2

    .line 82
    :goto_2
    monitor-exit v0

    .line 83
    throw v1
.end method

.method public final M()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 2
    .line 3
    const-string v1, "AccountLocalDS"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 8
    .line 9
    const-string v2, "logSubsInfo -> account is null"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v4, "logSubsInfo -> hasSubscribed("

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    sget-object v4, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 28
    .line 29
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->z0()Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v5, ") isSubsPro("

    .line 37
    .line 38
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->i1()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v4, ") isSubsExpired("

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->I()Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v4, ") subscriptionType("

    .line 61
    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/account/Account;->getSubscriptionType()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v4, ") curTime("

    .line 73
    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    sget-object v4, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 78
    .line 79
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 80
    .line 81
    .line 82
    move-result-wide v4

    .line 83
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v4, ") subscriptionEndTime("

    .line 87
    .line 88
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/account/Account;->getSubscriptionEndTime()J

    .line 92
    .line 93
    .line 94
    move-result-wide v4

    .line 95
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const/16 v0, 0x29

    .line 99
    .line 100
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v2, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :goto_0
    return-void
.end method

.method public final P(Lcom/startshorts/androidplayer/bean/account/Account;Z)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/account/Account;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->O()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->N()Lkotlinx/coroutines/r;

    .line 17
    .line 18
    .line 19
    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/account/Account;->getType()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    iput p2, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->c:I

    .line 26
    .line 27
    sget-object p2, Lcom/jiuzhou/cdn/repo/CdnRepo;->a:Lcom/jiuzhou/cdn/repo/CdnRepo;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/account/Account;->getUserCode()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p2, v1}, Lcom/jiuzhou/cdn/repo/CdnRepo;->j(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/account/Account;->getCountryCode()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-nez p1, :cond_2

    .line 41
    .line 42
    const-string p1, ""

    .line 43
    .line 44
    :cond_2
    invoke-virtual {p2, p1}, Lcom/jiuzhou/cdn/repo/CdnRepo;->h(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    monitor-exit v0

    .line 50
    return-void

    .line 51
    :goto_1
    monitor-exit v0

    .line 52
    throw p1
.end method

.method public final R(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "\u63a5\u53e3\u8fd4\u56de\u7684client ip\u4fe1\u606f\uff1a"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "AccountLocalDS"

    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object v0, Lud/b;->a:Lud/b;

    .line 26
    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    const-string p1, ""

    .line 30
    .line 31
    :cond_0
    invoke-virtual {v0, p1}, Lud/b;->p3(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final S()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->m()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v2, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Lcom/startshorts/androidplayer/bean/account/Account;->setCountryCode(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->N()Lkotlinx/coroutines/r;

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :goto_1
    monitor-exit v0

    .line 35
    throw v1
.end method

.method public final T(Lcom/startshorts/androidplayer/bean/account/ExtraUserInfo;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/account/ExtraUserInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lud/b;->G3(Lcom/startshorts/androidplayer/bean/account/ExtraUserInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final U(Z)Lcom/startshorts/androidplayer/bean/account/Account;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/account/Account;->setRecharged(Z)V

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->N()Lkotlinx/coroutines/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :cond_1
    :goto_0
    monitor-exit v0

    .line 22
    return-object v1

    .line 23
    :goto_1
    monitor-exit v0

    .line 24
    throw p1
.end method

.method public final V(ZZ)Lcom/startshorts/androidplayer/bean/account/Account;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/account/Account;->setAllowRecharge(Z)V

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->N()Lkotlinx/coroutines/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :cond_1
    :goto_0
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw p1
.end method

.method public final W(JZ)Lcom/startshorts/androidplayer/bean/account/Account;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, p1, p2}, Lcom/startshorts/androidplayer/bean/account/Account;->setAttributionTimestamp(J)V

    .line 9
    .line 10
    .line 11
    if-eqz p3, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->N()Lkotlinx/coroutines/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :cond_1
    :goto_0
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw p1
.end method

.method public final X(ZZ)Lcom/startshorts/androidplayer/bean/account/Account;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/account/Account;->setAutoUnlock(Z)V

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->N()Lkotlinx/coroutines/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :cond_1
    :goto_0
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw p1
.end method

.method public final Y(ZZ)Lcom/startshorts/androidplayer/bean/account/Account;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/account/Account;->setSubscriptionBlack(Ljava/lang/Boolean;)V

    .line 13
    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->N()Lkotlinx/coroutines/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :cond_1
    :goto_0
    monitor-exit v0

    .line 25
    return-object v1

    .line 26
    :goto_1
    monitor-exit v0

    .line 27
    throw p1
.end method

.method public final Z(Ljava/lang/String;Z)Lcom/startshorts/androidplayer/bean/account/Account;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "campaignShortPlayCodeV2"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/account/Account;->setCampaignShortPlayCodeV2(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->N()Lkotlinx/coroutines/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    :cond_1
    :goto_0
    monitor-exit v0

    .line 26
    return-object v1

    .line 27
    :goto_1
    monitor-exit v0

    .line 28
    throw p1
.end method

.method public final a0(IZ)Lcom/startshorts/androidplayer/bean/account/Account;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/account/Account;->setCampaignUnlockType(Ljava/lang/Integer;)V

    .line 13
    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->N()Lkotlinx/coroutines/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :cond_1
    :goto_0
    monitor-exit v0

    .line 25
    return-object v1

    .line 26
    :goto_1
    monitor-exit v0

    .line 27
    throw p1
.end method

.method public final b0(IZ)Lcom/startshorts/androidplayer/bean/account/Account;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/account/Account;->setCampaignUnlockTypeV2(Ljava/lang/Integer;)V

    .line 13
    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->N()Lkotlinx/coroutines/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :cond_1
    :goto_0
    monitor-exit v0

    .line 25
    return-object v1

    .line 26
    :goto_1
    monitor-exit v0

    .line 27
    throw p1
.end method

.method public final c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/account/Account;->getAutoUnlock()Z

    .line 9
    .line 10
    .line 11
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    monitor-exit v0

    .line 17
    return v1

    .line 18
    :goto_1
    monitor-exit v0

    .line 19
    throw v1
.end method

.method public final c0(ZZ)Lcom/startshorts/androidplayer/bean/account/Account;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/account/Account;->setCanMerge(Z)V

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->N()Lkotlinx/coroutines/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :cond_1
    :goto_0
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw p1
.end method

.method public final d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/account/Account;->getCanMerge()Z

    .line 9
    .line 10
    .line 11
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    monitor-exit v0

    .line 17
    return v1

    .line 18
    :goto_1
    monitor-exit v0

    .line 19
    throw v1
.end method

.method public final d0(IIZ)Lcom/startshorts/androidplayer/bean/account/Account;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/account/Account;->setCoins(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p2}, Lcom/startshorts/androidplayer/bean/account/Account;->setBonus(I)V

    .line 12
    .line 13
    .line 14
    if-eqz p3, :cond_1

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->N()Lkotlinx/coroutines/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :cond_1
    :goto_0
    monitor-exit v0

    .line 24
    return-object v1

    .line 25
    :goto_1
    monitor-exit v0

    .line 26
    throw p1
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/account/Account;->setSubscription(Z)V

    .line 7
    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/account/Account;->setSubscriptionType(I)V

    .line 11
    .line 12
    .line 13
    const-wide/16 v2, -0x1

    .line 14
    .line 15
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/bean/account/Account;->setSubscriptionEndTime(J)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/account/Account;->setReceiveType(Ljava/lang/Integer;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->N()Lkotlinx/coroutines/r;

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public final e0(Ljava/lang/String;Z)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "countryCode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/account/Account;->setCountryCode(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->N()Lkotlinx/coroutines/r;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :goto_1
    monitor-exit v0

    .line 36
    throw p1
.end method

.method public final f()V
    .locals 2

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lud/b;->n5(Lcom/startshorts/androidplayer/bean/account/Account;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final f0(Ljava/lang/String;Z)Lcom/startshorts/androidplayer/bean/account/Account;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/account/Account;->setCurrentSubscriptionOrderNo(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->N()Lkotlinx/coroutines/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :cond_1
    :goto_0
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw p1
.end method

.method public final g()Lcom/startshorts/androidplayer/bean/account/Account;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0

    .line 10
    throw v1
.end method

.method public final g0(IZ)Lcom/startshorts/androidplayer/bean/account/Account;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/account/Account;->setDaysOfActiveSubscription(Ljava/lang/Integer;)V

    .line 13
    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->N()Lkotlinx/coroutines/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :cond_1
    :goto_0
    monitor-exit v0

    .line 25
    return-object v1

    .line 26
    :goto_1
    monitor-exit v0

    .line 27
    throw p1
.end method

.method public final h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/account/Account;->getAllowRecharge()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    :goto_0
    return v0
.end method

.method public final h0(IZ)Lcom/startshorts/androidplayer/bean/account/Account;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/account/Account;->setDaysOfCancelSubscription(Ljava/lang/Integer;)V

    .line 13
    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->N()Lkotlinx/coroutines/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :cond_1
    :goto_0
    monitor-exit v0

    .line 25
    return-object v1

    .line 26
    :goto_1
    monitor-exit v0

    .line 27
    throw p1
.end method

.method public final i()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/account/Account;->getBonus()I

    .line 9
    .line 10
    .line 11
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    monitor-exit v0

    .line 17
    return v1

    .line 18
    :goto_1
    monitor-exit v0

    .line 19
    throw v1
.end method

.method public final i0(ZZ)Lcom/startshorts/androidplayer/bean/account/Account;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/account/Account;->setDisplayThirdUnsubscribe(Z)V

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->N()Lkotlinx/coroutines/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :cond_1
    :goto_0
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw p1
.end method

.method public final j()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/account/Account;->getCampaignUnlockType()Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 v1, 0x3

    .line 22
    :goto_0
    monitor-exit v0

    .line 23
    return v1

    .line 24
    :goto_1
    monitor-exit v0

    .line 25
    throw v1
.end method

.method public final j0(IZ)Lcom/startshorts/androidplayer/bean/account/Account;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/account/Account;->setFirebaseSource(Ljava/lang/Integer;)V

    .line 13
    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->N()Lkotlinx/coroutines/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :cond_1
    :goto_0
    monitor-exit v0

    .line 25
    return-object v1

    .line 26
    :goto_1
    monitor-exit v0

    .line 27
    throw p1
.end method

.method public final k()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/b;->e0()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final k0(ZZ)Lcom/startshorts/androidplayer/bean/account/Account;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/account/Account;->setHasSubscription(Z)V

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->N()Lkotlinx/coroutines/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :cond_1
    :goto_0
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw p1
.end method

.method public final l()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/account/Account;->getCoins()I

    .line 9
    .line 10
    .line 11
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    monitor-exit v0

    .line 17
    return v1

    .line 18
    :goto_1
    monitor-exit v0

    .line 19
    throw v1
.end method

.method public final l0(ZZ)Lcom/startshorts/androidplayer/bean/account/Account;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/account/Account;->setIaaUser(Z)V

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->N()Lkotlinx/coroutines/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :cond_1
    :goto_0
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw p1
.end method

.method public final m()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/account/Account;->getCountryCode()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    :cond_1
    monitor-exit v0

    .line 20
    return-object v1

    .line 21
    :goto_1
    monitor-exit v0

    .line 22
    throw v1
.end method

.method public final m0(ZZ)Lcom/startshorts/androidplayer/bean/account/Account;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/account/Account;->setIdnTelkomsel(Z)V

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->N()Lkotlinx/coroutines/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :cond_1
    :goto_0
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw p1
.end method

.method public final n()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->m()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->l()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "toLowerCase(...)"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->m()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :cond_1
    return-object v0
.end method

.method public final n0(Ljava/lang/Integer;Z)Lcom/startshorts/androidplayer/bean/account/Account;
    .locals 2
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/account/Account;->setLastPayType(Ljava/lang/Integer;)V

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->N()Lkotlinx/coroutines/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :cond_1
    :goto_0
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw p1
.end method

.method public final o()Lcom/startshorts/androidplayer/bean/account/ExtraUserInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/b;->v0()Lcom/startshorts/androidplayer/bean/account/ExtraUserInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final o0(ZZ)Lcom/startshorts/androidplayer/bean/account/Account;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/account/Account;->setNewRegisterUser(Z)V

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->N()Lkotlinx/coroutines/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :cond_1
    :goto_0
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw p1
.end method

.method public final p()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/account/Account;->getFirebaseSource()Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 v1, -0x1

    .line 22
    :goto_0
    monitor-exit v0

    .line 23
    return v1

    .line 24
    :goto_1
    monitor-exit v0

    .line 25
    throw v1
.end method

.method public final p0(ZZ)Lcom/startshorts/androidplayer/bean/account/Account;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/account/Account;->setOneTouchPayOpen(Ljava/lang/Boolean;)V

    .line 13
    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->N()Lkotlinx/coroutines/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :cond_1
    :goto_0
    monitor-exit v0

    .line 25
    return-object v1

    .line 26
    :goto_1
    monitor-exit v0

    .line 27
    throw p1
.end method

.method public final q()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/account/Account;->getHasSubscription()Z

    .line 9
    .line 10
    .line 11
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    monitor-exit v0

    .line 17
    return v1

    .line 18
    :goto_1
    monitor-exit v0

    .line 19
    throw v1
.end method

.method public final q0(ZZ)Lcom/startshorts/androidplayer/bean/account/Account;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/account/Account;->setRenewing(Ljava/lang/Boolean;)V

    .line 13
    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->N()Lkotlinx/coroutines/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :cond_1
    :goto_0
    monitor-exit v0

    .line 25
    return-object v1

    .line 26
    :goto_1
    monitor-exit v0

    .line 27
    throw p1
.end method

.method public final r()Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/account/Account;->getDramaBoxConfig()Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public final r0(Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;Z)Lcom/startshorts/androidplayer/bean/account/Account;
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/account/Account;->setDramaBoxConfig(Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;)V

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->N()Lkotlinx/coroutines/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :cond_1
    :goto_0
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw p1
.end method

.method public final s()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/account/Account;->getSubscriptionEndTime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const-wide/16 v1, -0x1

    .line 16
    .line 17
    :goto_0
    monitor-exit v0

    .line 18
    return-wide v1

    .line 19
    :goto_1
    monitor-exit v0

    .line 20
    throw v1
.end method

.method public final s0(ZZ)Lcom/startshorts/androidplayer/bean/account/Account;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/account/Account;->setShowMobileLogin(Z)V

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->N()Lkotlinx/coroutines/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :cond_1
    :goto_0
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw p1
.end method

.method public final t()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    const/4 v2, -0x1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/account/Account;->getReceiveType()Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    move v1, v2

    .line 23
    :goto_0
    if-ne v1, v2, :cond_1

    .line 24
    .line 25
    monitor-exit v0

    .line 26
    const/4 v0, 0x0

    .line 27
    return v0

    .line 28
    :cond_1
    monitor-exit v0

    .line 29
    return v1

    .line 30
    :goto_1
    monitor-exit v0

    .line 31
    throw v1
.end method

.method public final t0(ZIJZ)Lcom/startshorts/androidplayer/bean/account/Account;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, p2}, Lcom/startshorts/androidplayer/bean/account/Account;->setSubscriptionType(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p3, p4}, Lcom/startshorts/androidplayer/bean/account/Account;->setSubscriptionEndTime(J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/account/Account;->setSubscription(Z)V

    .line 15
    .line 16
    .line 17
    if-eqz p5, :cond_1

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->N()Lkotlinx/coroutines/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    :cond_1
    :goto_0
    monitor-exit v0

    .line 27
    return-object v1

    .line 28
    :goto_1
    monitor-exit v0

    .line 29
    throw p1
.end method

.method public final u()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/account/Account;->getSubscriptionType()I

    .line 9
    .line 10
    .line 11
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v1, -0x1

    .line 16
    :goto_0
    monitor-exit v0

    .line 17
    return v1

    .line 18
    :goto_1
    monitor-exit v0

    .line 19
    throw v1
.end method

.method public final u0(Ljava/lang/Integer;Z)Lcom/startshorts/androidplayer/bean/account/Account;
    .locals 2
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/account/Account;->setSubscriptionOrderType(Ljava/lang/Integer;)V

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->N()Lkotlinx/coroutines/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :cond_1
    :goto_0
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw p1
.end method

.method public final v()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/account/Account;->getToken()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    monitor-exit v0

    .line 17
    return-object v1

    .line 18
    :goto_1
    monitor-exit v0

    .line 19
    throw v1
.end method

.method public final v0(IZ)Lcom/startshorts/androidplayer/bean/account/Account;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/account/Account;->setReceiveType(Ljava/lang/Integer;)V

    .line 13
    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->N()Lkotlinx/coroutines/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :cond_1
    :goto_0
    monitor-exit v0

    .line 25
    return-object v1

    .line 26
    :goto_1
    monitor-exit v0

    .line 27
    throw p1
.end method

.method public final w()Lcom/startshorts/androidplayer/bean/account/Account;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/b;->a2()Lcom/startshorts/androidplayer/bean/account/Account;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final w0(ZZ)Lcom/startshorts/androidplayer/bean/account/Account;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/account/Account;->setSupportOneTouchPayment(Ljava/lang/Boolean;)V

    .line 13
    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->N()Lkotlinx/coroutines/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :cond_1
    :goto_0
    monitor-exit v0

    .line 25
    return-object v1

    .line 26
    :goto_1
    monitor-exit v0

    .line 27
    throw p1
.end method

.method public final x()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/account/Account;->getUserCode()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    :cond_1
    monitor-exit v0

    .line 20
    return-object v1

    .line 21
    :goto_1
    monitor-exit v0

    .line 22
    throw v1
.end method

.method public final x0(ZZ)Lcom/startshorts/androidplayer/bean/account/Account;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/account/Account;->setThirdSubscription(Z)V

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->N()Lkotlinx/coroutines/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :cond_1
    :goto_0
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw p1
.end method

.method public final y()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/account/Account;->isRecharged()Z

    .line 9
    .line 10
    .line 11
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    monitor-exit v0

    .line 17
    return v1

    .line 18
    :goto_1
    monitor-exit v0

    .line 19
    throw v1
.end method

.method public final y0(Ljava/lang/Integer;Z)Lcom/startshorts/androidplayer/bean/account/Account;
    .locals 2
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/account/Account;->setTotalPayCount(Ljava/lang/Integer;)V

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->N()Lkotlinx/coroutines/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :cond_1
    :goto_0
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw p1
.end method

.method public final z()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return v2

    .line 11
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/account/Account;->isSubscription()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/account/Account;->isSubsExpired()Z

    .line 16
    .line 17
    .line 18
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    :cond_1
    monitor-exit v0

    .line 25
    return v2

    .line 26
    :catchall_0
    move-exception v1

    .line 27
    monitor-exit v0

    .line 28
    throw v1
.end method

.method public final z0(IZ)Lcom/startshorts/androidplayer/bean/account/Account;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b:Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/account/Account;->setTripartiteCode(Ljava/lang/Integer;)V

    .line 13
    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->N()Lkotlinx/coroutines/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :cond_1
    :goto_0
    monitor-exit v0

    .line 25
    return-object v1

    .line 26
    :goto_1
    monitor-exit v0

    .line 27
    throw p1
.end method
