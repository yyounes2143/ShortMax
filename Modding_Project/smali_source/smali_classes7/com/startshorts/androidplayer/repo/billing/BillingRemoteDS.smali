.class public final Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;
.super Ljava/lang/Object;
.source "BillingRemoteDS.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$a;,
        Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$b;,
        Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$c;,
        Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$d;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBillingRemoteDS.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BillingRemoteDS.kt\ncom/startshorts/androidplayer/repo/billing/BillingRemoteDS\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,635:1\n216#2,2:636\n216#2,2:638\n*S KotlinDebug\n*F\n+ 1 BillingRemoteDS.kt\ncom/startshorts/androidplayer/repo/billing/BillingRemoteDS\n*L\n252#1:636,2\n278#1:638,2\n*E\n"
    }
.end annotation


# static fields
.field public static final o:Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private e:Z

.field private f:Z

.field private g:Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$d;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$c;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private k:Lcom/startshorts/androidplayer/bean/act/ActResource;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private l:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private m:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->o:Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lgg/f;

    .line 5
    .line 6
    invoke-direct {v0}, Lgg/f;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->a:Lms/i;

    .line 14
    .line 15
    new-instance v0, Lgg/g;

    .line 16
    .line 17
    invoke-direct {v0}, Lgg/g;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->b:Lms/i;

    .line 25
    .line 26
    new-instance v0, Lgg/h;

    .line 27
    .line 28
    invoke-direct {v0}, Lgg/h;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->c:Lms/i;

    .line 36
    .line 37
    new-instance v0, Lgg/i;

    .line 38
    .line 39
    invoke-direct {v0}, Lgg/i;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->d:Lms/i;

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->f:Z

    .line 50
    .line 51
    const/4 v0, 0x2

    .line 52
    iput v0, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->n:I

    .line 53
    .line 54
    return-void
.end method

.method private final A()Lzc/j;
    .locals 4

    .line 1
    new-instance v0, Lzc/j;

    .line 2
    .line 3
    new-instance v1, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$f;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$f;-><init>(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;)V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v0, v2, v3, v1}, Lzc/j;-><init>(ZZLad/m;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method private final B(Ljava/lang/String;)Lle/g;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v1, "_"

    .line 12
    .line 13
    filled-new-array {v1}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const/4 v6, 0x6

    .line 18
    const/4 v7, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    move-object v2, p1

    .line 22
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    move-object v1, p1

    .line 27
    check-cast v1, Ljava/util/Collection;

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->E()Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lle/g;

    .line 49
    .line 50
    return-object p1

    .line 51
    :cond_1
    :goto_0
    return-object v0
.end method

.method private final D()Lgg/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->a:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lgg/q;

    .line 8
    .line 9
    return-object v0
.end method

.method private final E()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lle/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    return-object v0
.end method

.method private final J()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->d:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    return-object v0
.end method

.method private final K()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/purchase/PendingBillingOp;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->c:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    return-object v0
.end method

.method private final N(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 6
    .line 7
    check-cast p1, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->K(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 19
    .line 20
    check-cast p1, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->L(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Landroid/os/Bundle;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    .line 28
    .line 29
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-object p1
.end method

.method public static synthetic R(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;ILzc/k;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;ILjava/lang/Object;)V
    .locals 14

    .line 1
    move/from16 v0, p12

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x20

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    move-object v8, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object/from16 v8, p6

    .line 12
    .line 13
    :goto_0
    and-int/lit16 v1, v0, 0x80

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    move v10, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move/from16 v10, p8

    .line 21
    .line 22
    :goto_1
    and-int/lit16 v1, v0, 0x100

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    move-object v11, v2

    .line 28
    goto :goto_2

    .line 29
    :cond_2
    move-object/from16 v11, p9

    .line 30
    .line 31
    :goto_2
    and-int/lit16 v1, v0, 0x200

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    move-object v12, v2

    .line 36
    goto :goto_3

    .line 37
    :cond_3
    move-object/from16 v12, p10

    .line 38
    .line 39
    :goto_3
    and-int/lit16 v0, v0, 0x400

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    move-object v13, v2

    .line 44
    goto :goto_4

    .line 45
    :cond_4
    move-object/from16 v13, p11

    .line 46
    .line 47
    :goto_4
    move-object v2, p0

    .line 48
    move-object v3, p1

    .line 49
    move-object/from16 v4, p2

    .line 50
    .line 51
    move-object/from16 v5, p3

    .line 52
    .line 53
    move-object/from16 v6, p4

    .line 54
    .line 55
    move-object/from16 v7, p5

    .line 56
    .line 57
    move-object/from16 v9, p7

    .line 58
    .line 59
    invoke-virtual/range {v2 .. v13}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->Q(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;ILzc/k;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method private static final S()Lgg/q;
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->C()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;-><init>()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Lgg/a;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-direct {v0, v2, v1, v2}, Lgg/a;-><init>(Lcom/shorttv/aar/billing/core/BillingClient;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-object v0
.end method

.method private static final T()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final U()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method private static final V()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic a()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->V()Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->g0(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->U()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic d()Lgg/q;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->S()Lgg/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic e(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->f0(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->T()Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final f0(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->B(Ljava/lang/String;)Lle/g;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lle/g;->f(Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public static final synthetic g(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->t(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final g0(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->B(Ljava/lang/String;)Lle/g;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lle/g;->f(Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public static final synthetic h(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->x()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final h0()V
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    const-string v1, "BillingRemoteDS"

    .line 4
    .line 5
    const-string v2, "removeAllPendingBillingOps"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->K()Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static final synthetic i(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->y()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic j(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;Ljava/lang/String;)Lle/g;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->B(Ljava/lang/String;)Lle/g;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic k(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->f:Z

    .line 2
    .line 3
    return p0
.end method

.method private final k0(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->K()Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/startshorts/androidplayer/bean/purchase/PendingBillingOp;

    .line 10
    .line 11
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v3, "removePendingBillingOp -> id("

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, ") op("

    .line 27
    .line 28
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const/16 p1, 0x29

    .line 35
    .line 36
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v0, "BillingRemoteDS"

    .line 44
    .line 45
    invoke-virtual {v1, v0, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public static final synthetic l(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic m(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->N(Ljava/lang/Object;)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic n(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->h0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic o(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->k0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic p(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method private final q(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/PendingBillingOp;)V
    .locals 3

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
    const-string v2, "addPendingBillingOp -> id("

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
    const-string v2, ") op("

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const/16 v2, 0x29

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "BillingRemoteDS"

    .line 34
    .line 35
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->K()Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private final r(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->D()Lgg/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lgg/q;->isConnected()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    sget-object v0, Lfk/a;->a:Lfk/a;

    .line 12
    .line 13
    invoke-virtual {v0}, Lfk/a;->d()Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->D()Lgg/q;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0}, Lfk/a;->d()Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v2, "null cannot be cast to non-null type android.content.Context"

    .line 28
    .line 29
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v1, v0, p1}, Lgg/q;->h(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->D()Lgg/q;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 41
    .line 42
    invoke-virtual {v1}, Lfk/u;->b()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v0, v1, p1}, Lgg/q;->h(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    const/4 p1, 0x0

    .line 50
    return p1

    .line 51
    :cond_1
    const/4 p1, 0x1

    .line 52
    return p1
.end method

.method private final t(Ljava/lang/String;)V
    .locals 3

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
    const-string v2, "checkNotAcknowledgedPurchases -> mBillingAvailable("

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->f:Z

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ") opId("

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v2, 0x29

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, "BillingRemoteDS"

    .line 36
    .line 37
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->f:Z

    .line 41
    .line 42
    if-nez v1, :cond_0

    .line 43
    .line 44
    const-string p1, "checkNotAcknowledgedPurchases failed -> mBillingAvailable is false"

    .line 45
    .line 46
    invoke-virtual {v0, v2, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->r(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->D()Lgg/q;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-interface {p1}, Lgg/q;->g()V

    .line 61
    .line 62
    .line 63
    :cond_1
    return-void
.end method

.method private final declared-synchronized x()V
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->K()Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/util/Map$Entry;

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/startshorts/androidplayer/bean/purchase/PendingBillingOp;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/purchase/PendingBillingOp;->getConsumed()Z

    .line 33
    .line 34
    .line 35
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :cond_0
    :try_start_1
    sget-object v3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 41
    .line 42
    const-string v4, "BillingRemoteDS"

    .line 43
    .line 44
    new-instance v5, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v6, "consumePendingBillingOp -> id("

    .line 50
    .line 51
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    check-cast v6, Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v6, " op("

    .line 64
    .line 65
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v6, "))"

    .line 72
    .line 73
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-virtual {v3, v4, v5}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/purchase/PendingBillingOp;->getType()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    const/4 v4, 0x1

    .line 88
    if-eq v3, v4, :cond_2

    .line 89
    .line 90
    const/4 v4, 0x2

    .line 91
    if-eq v3, v4, :cond_1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    sget-object v5, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 95
    .line 96
    const-string v6, "PendingBillingOp.OP_CONSUME"

    .line 97
    .line 98
    new-instance v8, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$consumePendingBillingOps$1$1;

    .line 99
    .line 100
    const/4 v3, 0x0

    .line 101
    invoke-direct {v8, p0, v1, v2, v3}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$consumePendingBillingOps$1$1;-><init>(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;Ljava/util/Map$Entry;Lcom/startshorts/androidplayer/bean/purchase/PendingBillingOp;Lrs/c;)V

    .line 102
    .line 103
    .line 104
    const/4 v9, 0x2

    .line 105
    const/4 v10, 0x0

    .line 106
    const/4 v7, 0x0

    .line 107
    invoke-static/range {v5 .. v10}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    .line 112
    goto :goto_1

    .line 113
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    check-cast v1, Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/purchase/PendingBillingOp;->getExtra()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    const-string v3, "null cannot be cast to non-null type kotlin.collections.MutableList<com.shorttv.aar.billing.bean.Product>"

    .line 124
    .line 125
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {p0, v1, v2}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->e0(Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_3
    monitor-exit p0

    .line 137
    return-void

    .line 138
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    throw v0
.end method

.method private final y()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->J()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method


# virtual methods
.method public final C()Lcom/startshorts/androidplayer/bean/act/ActResource;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->k:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 2
    .line 3
    return-object v0
.end method

.method public final F()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final G()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->m:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final H()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->n:I

    .line 2
    .line 3
    return v0
.end method

.method public final I()Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->i:Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final L()Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->h:Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final M()Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$d;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->g:Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final O()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->D()Lgg/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lgg/q;->j()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final P()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->D()Lgg/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lgg/q;->o()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final Q(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;ILzc/k;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 19
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lzc/k;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v0, p3

    move-object/from16 v2, p4

    move-object/from16 v10, p5

    move-object/from16 v15, p7

    const-string v4, "eventScene"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "activity"

    move-object/from16 v6, p2

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "opId"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "obfuscatedAccountId"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "productDetails"

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "offerToken"

    move-object/from16 v9, p6

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v4, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "launchBillingFlow -> mBillingAvailable("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->f:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ") opId("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") obfuscatedAccountId("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") productDetails("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v7, 0x29

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3
    const-string v14, "BillingRemoteDS"

    invoke-virtual {v4, v14, v5}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-boolean v5, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->f:Z

    const-string v16, "inapp"

    const-string v17, "subscription"

    const/4 v13, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x0

    if-nez v5, :cond_1

    .line 5
    const-string v0, "launchBillingFlow failed -> mBillingAvailable is false"

    invoke-virtual {v4, v14, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-direct {v1, v15}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->N(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    iget-object v4, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->k:Lcom/startshorts/androidplayer/bean/act/ActResource;

    invoke-static {v2, v4, v11, v12, v13}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v0, v4}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 7
    instance-of v0, v15, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    if-eqz v0, :cond_0

    move-object/from16 v4, v17

    goto :goto_0

    :cond_0
    move-object/from16 v4, v16

    .line 8
    :goto_0
    sget-object v0, Lad/k;->a:Lad/k$a;

    invoke-virtual {v0}, Lad/k$a;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 9
    const-string v7, ""

    move-object/from16 v3, p1

    move/from16 v5, p8

    .line 10
    invoke-virtual/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->J0(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 11
    :cond_1
    iput-object v15, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->m:Ljava/lang/Object;

    move/from16 v8, p8

    .line 12
    iput v8, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->n:I

    .line 13
    sget-object v4, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    invoke-virtual {v4}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->C()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 14
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->D()Lgg/q;

    move-result-object v4

    invoke-interface {v4, v3}, Lgg/q;->b(Ljava/lang/String;)V

    .line 15
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->D()Lgg/q;

    move-result-object v4

    invoke-interface {v4, v15}, Lgg/q;->d(Ljava/lang/Object;)V

    .line 16
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->D()Lgg/q;

    move-result-object v4

    iget-object v5, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->k:Lcom/startshorts/androidplayer/bean/act/ActResource;

    invoke-interface {v4, v5}, Lgg/q;->i(Lcom/startshorts/androidplayer/bean/act/ActResource;)V

    .line 17
    :cond_2
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->D()Lgg/q;

    move-result-object v4

    .line 18
    sget-object v5, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    invoke-virtual {v5}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    move-result-object v18
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v5, p3

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-object/from16 v8, v18

    move-object/from16 v9, p6

    move-object/from16 v10, p5

    move v2, v11

    move/from16 v11, p8

    move v3, v12

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object v2, v14

    move-object/from16 v14, p11

    .line 19
    :try_start_1
    invoke-interface/range {v4 .. v14}, Lgg/q;->n(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ILzc/k;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move v3, v12

    move-object v2, v14

    .line 20
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    sget-object v4, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "launchBillingFlow failed -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-direct {v1, v15}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->N(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v2

    sget-object v4, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    iget-object v5, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->k:Lcom/startshorts/androidplayer/bean/act/ActResource;

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-static {v4, v5, v6, v3, v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v2, v5}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 23
    instance-of v2, v15, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    if-eqz v2, :cond_3

    move-object/from16 v16, v17

    .line 24
    :cond_3
    sget-object v2, Lad/k;->a:Lad/k$a;

    invoke-virtual {v2}, Lad/k$a;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 25
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, ""

    :cond_4
    move v10, v6

    move-object v2, v4

    move v11, v3

    move-object/from16 v3, p1

    move-object/from16 v4, v16

    move/from16 v5, p8

    move-object v6, v7

    move-object v7, v0

    .line 26
    invoke-virtual/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->J0(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 27
    sget-object v0, Lfk/u;->a:Lfk/u;

    sget v2, Lcom/startshorts/androidplayer/R$string;->common_unknown_exception:I

    invoke-static {v0, v2, v10, v11, v9}, Lfk/u;->j(Lfk/u;IIILjava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public final W(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "opId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "gpSkuId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->B(Ljava/lang/String;)Lle/g;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1, p2, p3}, Lle/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final X(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lzc/f;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lzc/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v3, p4

    .line 2
    .line 3
    const-string v0, "opId"

    .line 4
    .line 5
    move-object v1, p1

    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "sku"

    .line 10
    .line 11
    move-object v2, p2

    .line 12
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "purchase"

    .line 16
    .line 17
    move-object v4, p3

    .line 18
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "priceInfo"

    .line 22
    .line 23
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->B(Ljava/lang/String;)Lle/g;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 33
    .line 34
    invoke-virtual {p3}, Lzc/f;->b()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 39
    .line 40
    const/16 v10, 0x1b0

    .line 41
    .line 42
    const/4 v11, 0x0

    .line 43
    const-string v1, ""

    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v6, 0x0

    .line 47
    const/4 v8, 0x0

    .line 48
    const/4 v9, 0x0

    .line 49
    move-object v2, p2

    .line 50
    move-object/from16 v3, p4

    .line 51
    .line 52
    invoke-static/range {v0 .. v11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->T0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p3}, Lzc/f;->b()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {p3}, Lzc/f;->f()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v0, v1, v2, v3, v4}, Lle/g;->c(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :goto_0
    return-void
.end method

.method public final Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "opId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "gpSkuId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->B(Ljava/lang/String;)Lle/g;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1, p2, p3}, Lle/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final Z(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lzc/f;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lzc/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v3, p4

    .line 2
    .line 3
    const-string v0, "opId"

    .line 4
    .line 5
    move-object v1, p1

    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "sku"

    .line 10
    .line 11
    move-object v2, p2

    .line 12
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "purchase"

    .line 16
    .line 17
    move-object/from16 v4, p3

    .line 18
    .line 19
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "priceInfo"

    .line 23
    .line 24
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->B(Ljava/lang/String;)Lle/g;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 34
    .line 35
    invoke-virtual/range {p3 .. p3}, Lzc/f;->b()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 40
    .line 41
    const/16 v11, 0x3b0

    .line 42
    .line 43
    const/4 v12, 0x0

    .line 44
    const-string v1, ""

    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    const/4 v6, 0x0

    .line 48
    const/4 v8, 0x0

    .line 49
    const/4 v9, 0x0

    .line 50
    const/4 v10, 0x0

    .line 51
    move-object v2, p2

    .line 52
    move-object/from16 v3, p4

    .line 53
    .line 54
    invoke-static/range {v0 .. v12}, Lcom/startshorts/androidplayer/manager/event/EventManager;->U0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lzc/f;->b()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v0, v1, v2, v3}, Lle/g;->e(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V

    .line 67
    .line 68
    .line 69
    :goto_0
    return-void
.end method

.method public final a0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "opId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "gpSkuId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->B(Ljava/lang/String;)Lle/g;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1, p2, p3, p4}, Lle/g;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final b0(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lzc/f;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;I)V
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lzc/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v3, p4

    .line 2
    .line 3
    const-string v0, "opId"

    .line 4
    .line 5
    move-object v1, p1

    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "sku"

    .line 10
    .line 11
    move-object v2, p2

    .line 12
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "purchase"

    .line 16
    .line 17
    move-object/from16 v4, p3

    .line 18
    .line 19
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "priceInfo"

    .line 23
    .line 24
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->B(Ljava/lang/String;)Lle/g;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 34
    .line 35
    invoke-virtual/range {p3 .. p3}, Lzc/f;->b()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 40
    .line 41
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    const/16 v11, 0x330

    .line 46
    .line 47
    const/4 v12, 0x0

    .line 48
    const-string v1, ""

    .line 49
    .line 50
    const/4 v5, 0x0

    .line 51
    const/4 v6, 0x0

    .line 52
    const/4 v9, 0x0

    .line 53
    const/4 v10, 0x0

    .line 54
    move-object v2, p2

    .line 55
    move-object/from16 v3, p4

    .line 56
    .line 57
    invoke-static/range {v0 .. v12}, Lcom/startshorts/androidplayer/manager/event/EventManager;->U0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lzc/f;->b()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    move/from16 v4, p5

    .line 70
    .line 71
    invoke-virtual {v0, v1, v2, v3, v4}, Lle/g;->j(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;I)V

    .line 72
    .line 73
    .line 74
    :goto_0
    return-void
.end method

.method public final c0(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "opId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "rechargeUserInfo"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->B(Ljava/lang/String;)Lle/g;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lle/g;->h(Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final d0(ILrs/c;)Ljava/lang/Object;
    .locals 5
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$notifyThirdPartyPayEnable$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$notifyThirdPartyPayEnable$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$notifyThirdPartyPayEnable$1;->j:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$notifyThirdPartyPayEnable$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$notifyThirdPartyPayEnable$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$notifyThirdPartyPayEnable$1;-><init>(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$notifyThirdPartyPayEnable$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$notifyThirdPartyPayEnable$1;->j:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast p2, Lkotlin/Result;

    .line 42
    .line 43
    invoke-virtual {p2}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    new-instance p2, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 60
    .line 61
    invoke-direct {p2}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->n()Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    new-instance v2, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$notifyThirdPartyPayEnable$2;

    .line 69
    .line 70
    const/4 v4, 0x0

    .line 71
    invoke-direct {v2, p1, v4}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$notifyThirdPartyPayEnable$2;-><init>(ILrs/c;)V

    .line 72
    .line 73
    .line 74
    iput v3, v0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$notifyThirdPartyPayEnable$1;->j:I

    .line 75
    .line 76
    invoke-virtual {p2, v2, v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-ne p1, v1, :cond_3

    .line 81
    .line 82
    return-object v1

    .line 83
    :cond_3
    :goto_1
    return-object p1
.end method

.method public final e0(Ljava/lang/String;Ljava/util/List;)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lzc/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "opId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "products"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "queryProductDetails -> mBillingAvailable("

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->f:Z

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, ") opId("

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v2, ") products("

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const/16 v2, 0x29

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v2, "BillingRemoteDS"

    .line 54
    .line 55
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_0

    .line 63
    .line 64
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 65
    .line 66
    const/4 v8, 0x6

    .line 67
    const/4 v9, 0x0

    .line 68
    const-string v4, "sku_list_empty"

    .line 69
    .line 70
    const/4 v5, 0x0

    .line 71
    const-wide/16 v6, 0x0

    .line 72
    .line 73
    invoke-static/range {v3 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    sget-object p2, Lfk/h0;->a:Lfk/h0;

    .line 77
    .line 78
    new-instance v0, Lgg/d;

    .line 79
    .line 80
    invoke-direct {v0, p0, p1}, Lgg/d;-><init>(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, v0}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_0
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->f:Z

    .line 88
    .line 89
    if-nez v1, :cond_1

    .line 90
    .line 91
    const-string p2, "queryProductDetails failed -> mBillingAvailable is false"

    .line 92
    .line 93
    invoke-virtual {v0, v2, p2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 97
    .line 98
    const/4 v8, 0x6

    .line 99
    const/4 v9, 0x0

    .line 100
    const-string v4, "sku_list_billing_unavailable"

    .line 101
    .line 102
    const/4 v5, 0x0

    .line 103
    const-wide/16 v6, 0x0

    .line 104
    .line 105
    invoke-static/range {v3 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    sget-object p2, Lfk/h0;->a:Lfk/h0;

    .line 109
    .line 110
    new-instance v0, Lgg/e;

    .line 111
    .line 112
    invoke-direct {v0, p0, p1}, Lgg/e;-><init>(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, v0}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->r(Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_2

    .line 124
    .line 125
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->D()Lgg/q;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    const/4 v1, 0x0

    .line 130
    invoke-interface {v0, p1, p2, v1}, Lgg/q;->l(Ljava/lang/String;Ljava/util/List;Z)V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_2
    new-instance v0, Lcom/startshorts/androidplayer/bean/purchase/PendingBillingOp;

    .line 135
    .line 136
    const/4 v6, 0x4

    .line 137
    const/4 v7, 0x0

    .line 138
    const/4 v3, 0x1

    .line 139
    const/4 v5, 0x0

    .line 140
    move-object v2, v0

    .line 141
    move-object v4, p2

    .line 142
    invoke-direct/range {v2 .. v7}, Lcom/startshorts/androidplayer/bean/purchase/PendingBillingOp;-><init>(ILjava/lang/Object;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 143
    .line 144
    .line 145
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->q(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/PendingBillingOp;)V

    .line 146
    .line 147
    .line 148
    :goto_0
    return-void
.end method

.method public final i0(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "billingListenerId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->K()Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/util/Map$Entry;

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/String;

    .line 35
    .line 36
    const/4 v3, 0x2

    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v5, 0x0

    .line 39
    invoke-static {v2, p1, v5, v3, v4}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Lcom/startshorts/androidplayer/bean/purchase/PendingBillingOp;

    .line 50
    .line 51
    const/4 v3, 0x1

    .line 52
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/purchase/PendingBillingOp;->setConsumed(Z)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Ljava/lang/String;

    .line 60
    .line 61
    invoke-direct {p0, v1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->k0(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    return-void
.end method

.method public final j0(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->E()Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "removeBillingListener -> id("

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const/16 p1, 0x29

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v1, "BillingRemoteDS"

    .line 38
    .line 39
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final l0(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/purchase/CoinSku;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->D()Lgg/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lgg/q;->f(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final m0(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->D()Lgg/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lgg/q;->m(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final n0(Lcom/startshorts/androidplayer/bean/act/ActResource;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/act/ActResource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->k:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 2
    .line 3
    return-void
.end method

.method public final o0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final p0(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$b;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->i:Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$b;

    .line 2
    .line 3
    return-void
.end method

.method public final q0(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$c;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->h:Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$c;

    .line 2
    .line 3
    return-void
.end method

.method public final r0(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$d;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->g:Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$d;

    .line 2
    .line 3
    return-void
.end method

.method public final s(Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Ljava/util/List<",
            "Lzc/f;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

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
    const-string v2, "checkNotAcknowledgedPurchases -> mBillingAvailable("

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->f:Z

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ") opId("

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v2, 0x29

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, "BillingRemoteDS"

    .line 36
    .line 37
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->f:Z

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    if-nez v1, :cond_0

    .line 44
    .line 45
    const-string p1, "checkNotAcknowledgedPurchases failed -> mBillingAvailable is false"

    .line 46
    .line 47
    invoke-virtual {v0, v2, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object v3

    .line 51
    :cond_0
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->r(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->D()Lgg/q;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-interface {p1, p2, p3}, Lgg/q;->e(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    return-object p1

    .line 66
    :cond_1
    return-object v3
.end method

.method public final u(ZLjava/lang/String;Ljava/lang/String;Lle/g;)V
    .locals 5
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lle/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "opId"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "listenerId"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "listener"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->E()Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->D()Lgg/q;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Lgg/q;->a()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->D()Lgg/q;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1}, Lgg/q;->isConnected()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 40
    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v4, "firstConnect("

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v4, ") opId("

    .line 55
    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v4, ") listenerId("

    .line 63
    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p3, ") isSetup("

    .line 71
    .line 72
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string p3, ") isConnected("

    .line 79
    .line 80
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const/16 p3, 0x29

    .line 87
    .line 88
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    const-string v1, "BillingRemoteDS"

    .line 96
    .line 97
    invoke-virtual {v2, v1, p3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iput-object p2, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->j:Ljava/lang/String;

    .line 101
    .line 102
    if-eqz v0, :cond_0

    .line 103
    .line 104
    invoke-direct {p0, p2}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->r(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    if-eqz p2, :cond_2

    .line 109
    .line 110
    const-string p2, "connect success"

    .line 111
    .line 112
    invoke-virtual {v2, v1, p2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p4}, Lle/g;->g()V

    .line 116
    .line 117
    .line 118
    if-eqz p1, :cond_2

    .line 119
    .line 120
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->y()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->t(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_0
    sget-object p1, Lbd/b;->a:Lbd/b;

    .line 129
    .line 130
    new-instance p3, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$e;

    .line 131
    .line 132
    invoke-direct {p3}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$e;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, p3}, Lbd/b;->c(Lbd/c;)V

    .line 136
    .line 137
    .line 138
    sget-object p1, Lfk/a;->a:Lfk/a;

    .line 139
    .line 140
    invoke-virtual {p1}, Lfk/a;->d()Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 141
    .line 142
    .line 143
    move-result-object p3

    .line 144
    if-eqz p3, :cond_1

    .line 145
    .line 146
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->D()Lgg/q;

    .line 147
    .line 148
    .line 149
    move-result-object p3

    .line 150
    invoke-virtual {p1}, Lfk/a;->d()Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    const-string p4, "null cannot be cast to non-null type android.content.Context"

    .line 155
    .line 156
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->A()Lzc/j;

    .line 160
    .line 161
    .line 162
    move-result-object p4

    .line 163
    invoke-interface {p3, p1, p2, p4}, Lgg/q;->k(Landroid/content/Context;Ljava/lang/String;Lzc/j;)V

    .line 164
    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->D()Lgg/q;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    sget-object p3, Lfk/u;->a:Lfk/u;

    .line 172
    .line 173
    invoke-virtual {p3}, Lfk/u;->b()Landroid/content/Context;

    .line 174
    .line 175
    .line 176
    move-result-object p3

    .line 177
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->A()Lzc/j;

    .line 178
    .line 179
    .line 180
    move-result-object p4

    .line 181
    invoke-interface {p1, p3, p2, p4}, Lgg/q;->k(Landroid/content/Context;Ljava/lang/String;Lzc/j;)V

    .line 182
    .line 183
    .line 184
    :goto_0
    const/4 p1, 0x1

    .line 185
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->e:Z

    .line 186
    .line 187
    :cond_2
    :goto_1
    return-void
.end method

.method public final v(Lcom/startshorts/androidplayer/bean/purchase/ConsumeData;Lrs/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/purchase/ConsumeData;
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
            "Lcom/startshorts/androidplayer/bean/purchase/ConsumeData;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->y()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0, p1, p2}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->w(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/ConsumeData;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-ne p1, p2, :cond_0

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p1
.end method

.method public final w(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/ConsumeData;Lrs/c;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/purchase/ConsumeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/purchase/ConsumeData;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

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
    const-string v2, "consume -> mSetupCalled("

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->e:Z

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ") mBillingAvailable("

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->f:Z

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, ") opId("

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v2, ") consumeData("

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const/16 v2, 0x29

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v2, "BillingRemoteDS"

    .line 54
    .line 55
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->f:Z

    .line 59
    .line 60
    if-nez v1, :cond_0

    .line 61
    .line 62
    const-string p1, "consume failed -> mBillingAvailable is false"

    .line 63
    .line 64
    invoke-virtual {v0, v2, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 68
    .line 69
    return-object p1

    .line 70
    :cond_0
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->e:Z

    .line 71
    .line 72
    if-nez v1, :cond_1

    .line 73
    .line 74
    const-string p1, "consume failed -> mSetupCalled is false"

    .line 75
    .line 76
    invoke-virtual {v0, v2, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 80
    .line 81
    return-object p1

    .line 82
    :cond_1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->r(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->D()Lgg/q;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/purchase/ConsumeData;->getProductType()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/purchase/ConsumeData;->getPurchaseToken()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-interface {p1, v0, p2, p3}, Lgg/q;->c(Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    if-ne p1, p2, :cond_2

    .line 109
    .line 110
    return-object p1

    .line 111
    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 112
    .line 113
    return-object p1

    .line 114
    :cond_3
    new-instance p3, Lcom/startshorts/androidplayer/bean/purchase/PendingBillingOp;

    .line 115
    .line 116
    const/4 v4, 0x4

    .line 117
    const/4 v5, 0x0

    .line 118
    const/4 v1, 0x2

    .line 119
    const/4 v3, 0x0

    .line 120
    move-object v0, p3

    .line 121
    move-object v2, p2

    .line 122
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/bean/purchase/PendingBillingOp;-><init>(ILjava/lang/Object;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 123
    .line 124
    .line 125
    invoke-direct {p0, p1, p3}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->q(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/PendingBillingOp;)V

    .line 126
    .line 127
    .line 128
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 129
    .line 130
    return-object p1
.end method

.method public final z(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 16
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/order/OtherOrderResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p10

    .line 2
    .line 3
    instance-of v1, v0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$createOtherOrder$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$createOtherOrder$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$createOtherOrder$1;->j:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$createOtherOrder$1;->j:I

    .line 20
    .line 21
    move-object/from16 v2, p0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$createOtherOrder$1;

    .line 25
    .line 26
    move-object/from16 v2, p0

    .line 27
    .line 28
    invoke-direct {v1, v2, v0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$createOtherOrder$1;-><init>(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;Lrs/c;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$createOtherOrder$1;->h:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget v4, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$createOtherOrder$1;->j:I

    .line 38
    .line 39
    const/4 v5, 0x1

    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    if-ne v4, v5, :cond_1

    .line 43
    .line 44
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    check-cast v0, Lkotlin/Result;

    .line 48
    .line 49
    invoke-virtual {v0}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v0

    .line 62
    :cond_2
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 66
    .line 67
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const/4 v4, 0x0

    .line 71
    const/4 v6, 0x0

    .line 72
    invoke-static {v0, v6, v5, v4}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->z(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;ZILjava/lang/Object;)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->n()Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    move-object/from16 v4, p1

    .line 81
    .line 82
    invoke-virtual {v0, v4, v6}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->u(Landroid/content/Context;Z)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    new-instance v4, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$createOtherOrder$2;

    .line 87
    .line 88
    const/4 v15, 0x0

    .line 89
    move-object v6, v4

    .line 90
    move/from16 v7, p3

    .line 91
    .line 92
    move-object/from16 v8, p6

    .line 93
    .line 94
    move-object/from16 v9, p5

    .line 95
    .line 96
    move-object/from16 v10, p4

    .line 97
    .line 98
    move-object/from16 v11, p7

    .line 99
    .line 100
    move-object/from16 v12, p8

    .line 101
    .line 102
    move-object/from16 v13, p2

    .line 103
    .line 104
    move-object/from16 v14, p9

    .line 105
    .line 106
    invoke-direct/range {v6 .. v15}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$createOtherOrder$2;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 107
    .line 108
    .line 109
    iput v5, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$createOtherOrder$1;->j:I

    .line 110
    .line 111
    invoke-virtual {v0, v4, v1}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    if-ne v0, v3, :cond_3

    .line 116
    .line 117
    return-object v3

    .line 118
    :cond_3
    :goto_1
    return-object v0
.end method
