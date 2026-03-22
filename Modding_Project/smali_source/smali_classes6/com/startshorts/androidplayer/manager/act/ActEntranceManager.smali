.class public final Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;
.super Ljava/lang/Object;
.source "ActEntranceManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nActEntranceManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActEntranceManager.kt\ncom/startshorts/androidplayer/manager/act/ActEntranceManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,134:1\n1557#2:135\n1628#2,3:136\n1863#2,2:139\n1863#2,2:141\n*S KotlinDebug\n*F\n+ 1 ActEntranceManager.kt\ncom/startshorts/androidplayer/manager/act/ActEntranceManager\n*L\n83#1:135\n83#1:136,3\n85#1:139,2\n111#1:141,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static b:Lei/c;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static final c:Lkt/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/e<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;->a:Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;

    .line 7
    .line 8
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-static {v0}, Lkotlinx/coroutines/flow/o;->a(Ljava/lang/Object;)Lkt/e;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;->c:Lkt/e;

    .line 15
    .line 16
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

.method public static synthetic a(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;->j(Landroid/content/DialogInterface;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/util/List;Landroid/content/Context;Lkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;->o(Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/util/List;Landroid/content/Context;Lkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic c()Lei/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;->b:Lei/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic d(Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;Ljava/util/List;Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;->n(Ljava/util/List;Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final e()V
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    const-string v1, "ActEntranceManager"

    .line 4
    .line 5
    const-string v2, "destroyHomePopDialog"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;->b:Lei/c;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lei/c;->dismiss()V

    .line 15
    .line 16
    .line 17
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;->c:Lkt/e;

    .line 18
    .line 19
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-interface {v0, v1}, Lkt/e;->setValue(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    sput-object v0, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;->b:Lei/c;

    .line 26
    .line 27
    return-void
.end method

.method private final g()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/act/ActShowTimeInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 7
    .line 8
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    invoke-virtual {v1, v2, v3}, Lcom/startshorts/androidplayer/utils/TimeUtil;->q(J)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    sget-object v2, Lud/b;->a:Lud/b;

    .line 19
    .line 20
    invoke-virtual {v2}, Lud/b;->h()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    check-cast v2, Ljava/lang/Iterable;

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lcom/startshorts/androidplayer/bean/act/ActShowTimeInfo;

    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/act/ActShowTimeInfo;->getDays()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-ne v4, v1, :cond_0

    .line 49
    .line 50
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 55
    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v3, "getTodayShowTimeInfoList -> "

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    const-string v3, "ActEntranceManager"

    .line 74
    .line 75
    invoke-virtual {v1, v3, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-object v0
.end method

.method private final h(Lcom/startshorts/androidplayer/bean/act/ActResource;Landroid/content/Context;)Lei/c;
    .locals 1

    .line 1
    sget-object v0, Lce/j;->a:Lce/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lce/j;->l(Lcom/startshorts/androidplayer/bean/act/ActResource;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;->b:Lei/c;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lei/c;->dismiss()V

    .line 11
    .line 12
    .line 13
    :cond_0
    new-instance v0, Lei/c;

    .line 14
    .line 15
    invoke-direct {v0, p1, p2}, Lei/c;-><init>(Lcom/startshorts/androidplayer/bean/act/ActResource;Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;->b:Lei/c;

    .line 19
    .line 20
    return-object v0
.end method

.method private static final j(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final l(Lcom/startshorts/androidplayer/bean/act/ActResource;)Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$saveTodayShowTimeInfo$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, p1, v1}, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$saveTodayShowTimeInfo$1;-><init>(Lcom/startshorts/androidplayer/bean/act/ActResource;Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "saveTodayShowTimeInfo"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method private final n(Ljava/util/List;Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            ">;",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 6
    .line 7
    const-string v1, "ActEntranceManager"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 12
    .line 13
    const-string/jumbo p2, "showNextDialog failed -> all actResource is showed today"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1, p2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object p1, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;->c:Lkt/e;

    .line 20
    .line 21
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-interface {p1, p2}, Lkt/e;->setValue(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 31
    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string/jumbo v4, "showNextDialog show -> actListWaitToDisplay.size="

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v2, v1, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    invoke-direct {p0, v0, p2}, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;->h(Lcom/startshorts/androidplayer/bean/act/ActResource;Landroid/content/Context;)Lei/c;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lei/c;->show()V

    .line 65
    .line 66
    .line 67
    new-instance v2, Lce/b;

    .line 68
    .line 69
    invoke-direct {v2, v0, p1, p2, p3}, Lce/b;-><init>(Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/util/List;Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method private static final o(Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/util/List;Landroid/content/Context;Lkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    sget-object p4, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;->a:Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;

    .line 2
    .line 3
    invoke-direct {p4, p0}, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;->l(Lcom/startshorts/androidplayer/bean/act/ActResource;)Lkotlinx/coroutines/r;

    .line 4
    .line 5
    .line 6
    invoke-direct {p4, p1, p2, p3}, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;->n(Ljava/util/List;Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final f()Lkt/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkt/e<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;->c:Lkt/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()V
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    const-string v1, "ActEntranceManager"

    .line 4
    .line 5
    const-string v2, "noConsumeDismissHomePopDialog"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;->b:Lei/c;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v1, Lce/a;

    .line 15
    .line 16
    invoke-direct {v1}, Lce/a;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;->e()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final k()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;->b:Lei/c;

    .line 3
    .line 4
    return-void
.end method

.method public final m(Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;
    .locals 18
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
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
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
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
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    instance-of v2, v1, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;

    .line 11
    .line 12
    iget v3, v2, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;->p:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;->p:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;

    .line 25
    .line 26
    invoke-direct {v2, v0, v1}, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;-><init>(Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;Lrs/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v1, v2, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;->n:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v4, v2, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;->p:I

    .line 36
    .line 37
    const/4 v5, 0x4

    .line 38
    const/4 v6, 0x3

    .line 39
    const/4 v7, 0x2

    .line 40
    const/4 v8, 0x0

    .line 41
    const-string v9, "ActEntranceManager"

    .line 42
    .line 43
    const/4 v10, 0x1

    .line 44
    const/4 v11, 0x0

    .line 45
    if-eqz v4, :cond_5

    .line 46
    .line 47
    if-eq v4, v10, :cond_4

    .line 48
    .line 49
    if-eq v4, v7, :cond_3

    .line 50
    .line 51
    if-eq v4, v6, :cond_2

    .line 52
    .line 53
    if-ne v4, v5, :cond_1

    .line 54
    .line 55
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    move v1, v10

    .line 59
    goto/16 :goto_6

    .line 60
    .line 61
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 64
    .line 65
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v1

    .line 69
    :cond_2
    iget-object v4, v2, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;->m:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v4, Ljava/util/Iterator;

    .line 72
    .line 73
    iget-object v7, v2, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;->l:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v7, Ljava/util/List;

    .line 76
    .line 77
    iget-object v12, v2, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;->k:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v12, Ljava/util/Set;

    .line 80
    .line 81
    iget-object v13, v2, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;->j:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v13, Ljava/util/List;

    .line 84
    .line 85
    iget-object v14, v2, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;->i:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 88
    .line 89
    iget-object v15, v2, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;->h:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v15, Landroid/content/Context;

    .line 92
    .line 93
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_5

    .line 97
    .line 98
    :cond_3
    iget-object v4, v2, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;->j:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 101
    .line 102
    iget-object v7, v2, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;->i:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v7, Landroid/content/Context;

    .line 105
    .line 106
    iget-object v12, v2, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;->h:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v12, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;

    .line 109
    .line 110
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_4
    iget-object v4, v2, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;->j:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 117
    .line 118
    iget-object v12, v2, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;->i:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v12, Landroid/content/Context;

    .line 121
    .line 122
    iget-object v13, v2, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;->h:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v13, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;

    .line 125
    .line 126
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    move-object/from16 v17, v13

    .line 130
    .line 131
    move-object v13, v4

    .line 132
    move-object/from16 v4, v17

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_5
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    new-instance v4, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$3;

    .line 143
    .line 144
    invoke-direct {v4, v11}, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$3;-><init>(Lrs/c;)V

    .line 145
    .line 146
    .line 147
    iput-object v0, v2, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;->h:Ljava/lang/Object;

    .line 148
    .line 149
    move-object/from16 v12, p1

    .line 150
    .line 151
    iput-object v12, v2, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;->i:Ljava/lang/Object;

    .line 152
    .line 153
    move-object/from16 v13, p2

    .line 154
    .line 155
    iput-object v13, v2, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;->j:Ljava/lang/Object;

    .line 156
    .line 157
    iput v10, v2, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;->p:I

    .line 158
    .line 159
    invoke-static {v1, v4, v2}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    if-ne v1, v3, :cond_6

    .line 164
    .line 165
    return-object v3

    .line 166
    :cond_6
    move-object v4, v0

    .line 167
    :goto_1
    check-cast v1, Ljava/lang/Boolean;

    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-eqz v1, :cond_7

    .line 174
    .line 175
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 176
    .line 177
    const-string/jumbo v2, "showHomePop failed -> isShowing == true"

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v9, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    return-object v1

    .line 188
    :cond_7
    sget-object v1, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->a:Lcom/startshorts/androidplayer/manager/act/ActResourceManager;

    .line 189
    .line 190
    iput-object v4, v2, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;->h:Ljava/lang/Object;

    .line 191
    .line 192
    iput-object v12, v2, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;->i:Ljava/lang/Object;

    .line 193
    .line 194
    iput-object v13, v2, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;->j:Ljava/lang/Object;

    .line 195
    .line 196
    iput v7, v2, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;->p:I

    .line 197
    .line 198
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->l(Lrs/c;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    if-ne v1, v3, :cond_8

    .line 203
    .line 204
    return-object v3

    .line 205
    :cond_8
    move-object v7, v12

    .line 206
    move-object v12, v4

    .line 207
    move-object v4, v13

    .line 208
    :goto_2
    check-cast v1, Ljava/util/List;

    .line 209
    .line 210
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 211
    .line 212
    .line 213
    move-result v13

    .line 214
    if-eqz v13, :cond_9

    .line 215
    .line 216
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 217
    .line 218
    const-string/jumbo v2, "showHomePop failed -> activeHomePopList is empty"

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v9, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    return-object v1

    .line 229
    :cond_9
    invoke-direct {v12}, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;->g()Ljava/util/List;

    .line 230
    .line 231
    .line 232
    move-result-object v12

    .line 233
    check-cast v12, Ljava/lang/Iterable;

    .line 234
    .line 235
    new-instance v13, Ljava/util/ArrayList;

    .line 236
    .line 237
    const/16 v14, 0xa

    .line 238
    .line 239
    invoke-static {v12, v14}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 240
    .line 241
    .line 242
    move-result v14

    .line 243
    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 244
    .line 245
    .line 246
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 247
    .line 248
    .line 249
    move-result-object v12

    .line 250
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 251
    .line 252
    .line 253
    move-result v14

    .line 254
    if-eqz v14, :cond_a

    .line 255
    .line 256
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v14

    .line 260
    check-cast v14, Lcom/startshorts/androidplayer/bean/act/ActShowTimeInfo;

    .line 261
    .line 262
    invoke-virtual {v14}, Lcom/startshorts/androidplayer/bean/act/ActShowTimeInfo;->getActId()I

    .line 263
    .line 264
    .line 265
    move-result v14

    .line 266
    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 267
    .line 268
    .line 269
    move-result-object v14

    .line 270
    invoke-interface {v13, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_a
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->i1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 275
    .line 276
    .line 277
    move-result-object v12

    .line 278
    new-instance v13, Ljava/util/ArrayList;

    .line 279
    .line 280
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .line 282
    .line 283
    move-object v14, v1

    .line 284
    check-cast v14, Ljava/lang/Iterable;

    .line 285
    .line 286
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 287
    .line 288
    .line 289
    move-result-object v14

    .line 290
    move-object v15, v7

    .line 291
    move-object v7, v13

    .line 292
    move-object v13, v1

    .line 293
    move-object/from16 v17, v14

    .line 294
    .line 295
    move-object v14, v4

    .line 296
    move-object/from16 v4, v17

    .line 297
    .line 298
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 299
    .line 300
    .line 301
    move-result v1

    .line 302
    if-eqz v1, :cond_d

    .line 303
    .line 304
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    check-cast v1, Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 309
    .line 310
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getId()I

    .line 311
    .line 312
    .line 313
    move-result v16

    .line 314
    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 315
    .line 316
    .line 317
    move-result-object v5

    .line 318
    invoke-interface {v12, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result v5

    .line 322
    if-nez v5, :cond_c

    .line 323
    .line 324
    sget-object v5, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->a:Lcom/startshorts/androidplayer/manager/act/ActResourceManager;

    .line 325
    .line 326
    invoke-virtual {v5, v1}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->n(Lcom/startshorts/androidplayer/bean/act/ActResource;)Z

    .line 327
    .line 328
    .line 329
    move-result v16

    .line 330
    if-eqz v16, :cond_b

    .line 331
    .line 332
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 337
    .line 338
    .line 339
    goto :goto_5

    .line 340
    :cond_b
    sget-object v11, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 341
    .line 342
    new-instance v10, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .line 346
    .line 347
    const-string/jumbo v8, "showHomePop preloadCovers -> isResourceReady is not ready. actResource="

    .line 348
    .line 349
    .line 350
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v8

    .line 360
    invoke-virtual {v11, v9, v8}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    iput-object v15, v2, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;->h:Ljava/lang/Object;

    .line 364
    .line 365
    iput-object v14, v2, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;->i:Ljava/lang/Object;

    .line 366
    .line 367
    iput-object v13, v2, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;->j:Ljava/lang/Object;

    .line 368
    .line 369
    iput-object v12, v2, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;->k:Ljava/lang/Object;

    .line 370
    .line 371
    iput-object v7, v2, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;->l:Ljava/lang/Object;

    .line 372
    .line 373
    iput-object v4, v2, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;->m:Ljava/lang/Object;

    .line 374
    .line 375
    iput v6, v2, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;->p:I

    .line 376
    .line 377
    invoke-virtual {v5, v1, v2}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->t(Lcom/startshorts/androidplayer/bean/act/ActResource;Lrs/c;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    if-ne v1, v3, :cond_c

    .line 382
    .line 383
    return-object v3

    .line 384
    :cond_c
    :goto_5
    const/4 v5, 0x4

    .line 385
    const/4 v8, 0x0

    .line 386
    const/4 v10, 0x1

    .line 387
    const/4 v11, 0x0

    .line 388
    goto :goto_4

    .line 389
    :cond_d
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 390
    .line 391
    .line 392
    move-result v1

    .line 393
    if-eqz v1, :cond_e

    .line 394
    .line 395
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 396
    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    .line 398
    .line 399
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 400
    .line 401
    .line 402
    const-string/jumbo v3, "showHomePop failed -> actListWaitToDisplay is empty,activeHomePopList.size="

    .line 403
    .line 404
    .line 405
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 409
    .line 410
    .line 411
    move-result v3

    .line 412
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v2

    .line 419
    invoke-virtual {v1, v9, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    sget-object v1, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;->c:Lkt/e;

    .line 423
    .line 424
    const/4 v2, 0x0

    .line 425
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 426
    .line 427
    .line 428
    move-result-object v3

    .line 429
    invoke-interface {v1, v3}, Lkt/e;->setValue(Ljava/lang/Object;)V

    .line 430
    .line 431
    .line 432
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    return-object v1

    .line 437
    :cond_e
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 438
    .line 439
    new-instance v4, Ljava/lang/StringBuilder;

    .line 440
    .line 441
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    .line 443
    .line 444
    const-string/jumbo v5, "showHomePop -> start actListWaitToDisplay="

    .line 445
    .line 446
    .line 447
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v4

    .line 457
    invoke-virtual {v1, v9, v4}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    sget-object v1, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;->c:Lkt/e;

    .line 461
    .line 462
    const/4 v4, 0x1

    .line 463
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 464
    .line 465
    .line 466
    move-result-object v5

    .line 467
    invoke-interface {v1, v5}, Lkt/e;->setValue(Ljava/lang/Object;)V

    .line 468
    .line 469
    .line 470
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 471
    .line 472
    .line 473
    move-result-object v1

    .line 474
    new-instance v4, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$5;

    .line 475
    .line 476
    const/4 v5, 0x0

    .line 477
    invoke-direct {v4, v7, v15, v14, v5}, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$5;-><init>(Ljava/util/List;Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 478
    .line 479
    .line 480
    iput-object v5, v2, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;->h:Ljava/lang/Object;

    .line 481
    .line 482
    iput-object v5, v2, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;->i:Ljava/lang/Object;

    .line 483
    .line 484
    iput-object v5, v2, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;->j:Ljava/lang/Object;

    .line 485
    .line 486
    iput-object v5, v2, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;->k:Ljava/lang/Object;

    .line 487
    .line 488
    iput-object v5, v2, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;->l:Ljava/lang/Object;

    .line 489
    .line 490
    iput-object v5, v2, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;->m:Ljava/lang/Object;

    .line 491
    .line 492
    const/4 v5, 0x4

    .line 493
    iput v5, v2, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$1;->p:I

    .line 494
    .line 495
    invoke-static {v1, v4, v2}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v1

    .line 499
    if-ne v1, v3, :cond_f

    .line 500
    .line 501
    return-object v3

    .line 502
    :cond_f
    const/4 v1, 0x1

    .line 503
    :goto_6
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    return-object v1
.end method
