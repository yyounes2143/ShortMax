.class public final Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
.super Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;
.source "BillingViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final m:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final e:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private h:Z

.field private i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private k:I

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->m:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lrk/b;

    .line 5
    .line 6
    invoke-direct {v0}, Lrk/b;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->e:Lms/i;

    .line 14
    .line 15
    new-instance v0, Lrk/c;

    .line 16
    .line 17
    invoke-direct {v0}, Lrk/c;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->f:Lms/i;

    .line 25
    .line 26
    new-instance v0, Lrk/d;

    .line 27
    .line 28
    invoke-direct {v0}, Lrk/d;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->g:Lms/i;

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->h:Z

    .line 39
    .line 40
    return-void
.end method

.method public static synthetic A(Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;Lkotlin/Result;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->L(Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;Lkotlin/Result;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->V()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic C()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->U()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic D()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->d0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic E()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->T()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic F(Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->N()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic G(Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->k:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic H(Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->a0(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic I(Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->k:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic J(Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->h:Z

    .line 2
    .line 3
    return-void
.end method

.method private final K(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "activityResumeProcess -> mThirdPartyPaymentClicked="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->l:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ",context="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->l:Z

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->l:Z

    .line 37
    .line 38
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 39
    .line 40
    new-instance v1, Lrk/e;

    .line 41
    .line 42
    invoke-direct {v1, p0}, Lrk/e;-><init>(Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;)V

    .line 43
    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    invoke-virtual {v0, v2, p1, v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->Y0(ZLandroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method private static final L(Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;Lkotlin/Result;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Lcom/startshorts/androidplayer/bean/account/Account;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const-string p1, "activityResumeProcess -> refreshBalance succeed"

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$p;

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    invoke-direct {p1, v0}, Lcom/startshorts/androidplayer/viewmodel/billing/b$p;-><init>(Z)V

    .line 28
    .line 29
    .line 30
    invoke-static {p0, p1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    .line 35
    return-object p0
.end method

.method private final M()V
    .locals 5

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->h:Z

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->N()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->P()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    new-instance v4, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$b;

    .line 14
    .line 15
    invoke-direct {v4, p0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$b;-><init>(Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->t(ZLjava/lang/String;Ljava/lang/String;Lle/g;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private final N()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->P()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x5f

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->R()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method private final O(Lcom/startshorts/androidplayer/viewmodel/billing/a$d;)V
    .locals 6

    .line 1
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$createOtherOrder$1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v3, p1, p0, v0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$createOtherOrder$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/billing/a$d;Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;Lrs/c;)V

    .line 5
    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x0

    .line 9
    const-string v1, "createOtherOrder"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    move-object v0, p0

    .line 13
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private final P()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->f:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method private final R()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->g:Lms/i;

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

.method private static final T()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method private static final U()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final V()Ljava/util/concurrent/atomic/AtomicInteger;
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

.method private final X(ZLjava/lang/String;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    .line 1
    if-eqz p5, :cond_0

    .line 2
    .line 3
    sget-object v0, Lud/a;->a:Lud/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

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
    sget-object v14, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 12
    .line 13
    const/16 v12, 0x130

    .line 14
    .line 15
    const/4 v13, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x0

    .line 18
    const/4 v10, 0x0

    .line 19
    move-object v1, v14

    .line 20
    move-object/from16 v2, p2

    .line 21
    .line 22
    move-object/from16 v3, p4

    .line 23
    .line 24
    move-object/from16 v4, p5

    .line 25
    .line 26
    move-object v5, v0

    .line 27
    move-object/from16 v8, p6

    .line 28
    .line 29
    move-object/from16 v9, p7

    .line 30
    .line 31
    move-object/from16 v11, p8

    .line 32
    .line 33
    invoke-static/range {v1 .. v13}, Lcom/startshorts/androidplayer/manager/event/EventManager;->F0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    const/16 v11, 0x1f0

    .line 39
    .line 40
    const/4 v12, 0x0

    .line 41
    const/4 v6, 0x0

    .line 42
    const/4 v7, 0x0

    .line 43
    const/4 v8, 0x0

    .line 44
    const/4 v9, 0x0

    .line 45
    const/4 v10, 0x0

    .line 46
    move-object v1, v14

    .line 47
    move-object/from16 v2, p2

    .line 48
    .line 49
    move-object/from16 v3, p4

    .line 50
    .line 51
    move-object/from16 v4, p5

    .line 52
    .line 53
    move-object v5, v0

    .line 54
    invoke-static/range {v1 .. v12}, Lcom/startshorts/androidplayer/manager/event/EventManager;->B0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    sget-object v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->A()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_2

    .line 64
    .line 65
    sget-object v1, Lad/k;->a:Lad/k$a;

    .line 66
    .line 67
    invoke-virtual {v1}, Lad/k$a;->a()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    const/4 v8, 0x4

    .line 76
    const/4 v9, 0x0

    .line 77
    const/4 v4, 0x0

    .line 78
    const-string v7, "Your current device does not support Google payment."

    .line 79
    .line 80
    move-object v1, v14

    .line 81
    move-object/from16 v2, p2

    .line 82
    .line 83
    move-object/from16 v3, p4

    .line 84
    .line 85
    move-object v5, v0

    .line 86
    invoke-static/range {v1 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->K0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/b$n;

    .line 94
    .line 95
    sget-object v2, Lfk/u;->a:Lfk/u;

    .line 96
    .line 97
    sget v3, Lcom/startshorts/androidplayer/R$string;->common_google_pay_not_support:I

    .line 98
    .line 99
    sget-object v4, Lae/a;->a:Lae/a;

    .line 100
    .line 101
    invoke-virtual {v4}, Lae/a;->a()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v2, v3, v4}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/billing/b$n;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->c0()V

    .line 120
    .line 121
    .line 122
    :goto_1
    move-object v10, p0

    .line 123
    goto/16 :goto_2

    .line 124
    .line 125
    :cond_2
    invoke-virtual/range {p4 .. p4}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuDetails()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    if-eqz v2, :cond_4

    .line 130
    .line 131
    if-eqz p3, :cond_3

    .line 132
    .line 133
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->N()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    move-object/from16 v2, p2

    .line 138
    .line 139
    move-object/from16 v3, p3

    .line 140
    .line 141
    move-object/from16 v5, p4

    .line 142
    .line 143
    move-object/from16 v6, p5

    .line 144
    .line 145
    move-object v7, v0

    .line 146
    invoke-virtual/range {v1 .. v7}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->K(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;)V

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_3
    sget-object v1, Lad/k;->a:Lad/k$a;

    .line 151
    .line 152
    invoke-virtual {v1}, Lad/k$a;->b()I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    const/4 v8, 0x4

    .line 161
    const/4 v9, 0x0

    .line 162
    const/4 v4, 0x0

    .line 163
    const-string v7, "Activity is null"

    .line 164
    .line 165
    move-object v1, v14

    .line 166
    move-object/from16 v2, p2

    .line 167
    .line 168
    move-object/from16 v3, p4

    .line 169
    .line 170
    move-object v5, v0

    .line 171
    invoke-static/range {v1 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->K0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_4
    const-string v1, "purchase failed -> skuDetails is null"

    .line 176
    .line 177
    move-object v10, p0

    .line 178
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->f(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    sget-object v1, Lad/k;->a:Lad/k$a;

    .line 182
    .line 183
    invoke-virtual {v1}, Lad/k$a;->a()I

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    const/4 v8, 0x4

    .line 192
    const/4 v9, 0x0

    .line 193
    const/4 v4, 0x0

    .line 194
    const-string v7, "SkuDetails is null"

    .line 195
    .line 196
    move-object v1, v14

    .line 197
    move-object/from16 v2, p2

    .line 198
    .line 199
    move-object/from16 v3, p4

    .line 200
    .line 201
    move-object v5, v0

    .line 202
    invoke-static/range {v1 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->K0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/b$n;

    .line 210
    .line 211
    sget-object v2, Lfk/u;->a:Lfk/u;

    .line 212
    .line 213
    sget v3, Lcom/startshorts/androidplayer/R$string;->common_unknown_exception:I

    .line 214
    .line 215
    invoke-virtual {v2, v3}, Lfk/u;->d(I)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/billing/b$n;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->c0()V

    .line 226
    .line 227
    .line 228
    :goto_2
    return-void
.end method

.method private final Y(Ljava/lang/String;)Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedPurchases$1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v3, p0, p1, v0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedPurchases$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;Ljava/lang/String;Lrs/c;)V

    .line 5
    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x0

    .line 9
    const-string v1, "queryNotAcknowledgedPurchases"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    move-object v0, p0

    .line 13
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method private final Z(Ljava/lang/String;)Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedSubs$1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v3, p0, p1, v0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryNotAcknowledgedSubs$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;Ljava/lang/String;Lrs/c;)V

    .line 5
    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x0

    .line 9
    const-string v1, "queryNotAcknowledgedSubs"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    move-object v0, p0

    .line 13
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method private final a0(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzc/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "queryProductDetailList -> supportOneTimePurchase("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->A()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, ") supportSubscription("

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->B()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const/16 v2, 0x29

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v3, "queryProductDetailList -> list("

    .line 50
    .line 51
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->N()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v1, v0, p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->e0(Ljava/lang/String;Ljava/util/List;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method private final b0(Ljava/lang/String;Ljava/lang/Integer;)Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryTTPInfo$1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v3, p1, p2, p0, v0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$queryTTPInfo$1;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;Lrs/c;)V

    .line 5
    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x0

    .line 9
    const-string v1, "queryTTPInfo"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    move-object v0, p0

    .line 13
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method private final c0()V
    .locals 2

    .line 1
    sget-object v0, Lfk/h0;->a:Lfk/h0;

    .line 2
    .line 3
    new-instance v1, Lrk/a;

    .line 4
    .line 5
    invoke-direct {v1}, Lrk/a;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static final d0()V
    .locals 2

    .line 1
    sget-object v0, Laa/a;->a:Laa/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Laa/a;->d()Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/hades/aar/activity/IDActivity;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v1, Lgi/a;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Lgi/a;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lfi/a;->show()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method private final e0(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;ILzc/k;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    if-eqz p4, :cond_0

    .line 1
    sget-object v0, Lud/a;->a:Lud/a;

    invoke-virtual {v0}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v15, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    const/16 v13, 0x260

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v0

    move/from16 v6, p6

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v12, p12

    invoke-static/range {v1 .. v14}, Lcom/startshorts/androidplayer/manager/event/EventManager;->G0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->B()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    sget-object v1, Lad/k;->a:Lad/k$a;

    invoke-virtual {v1}, Lad/k$a;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Your current device does not support Google payment."

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v0

    move/from16 v6, p6

    .line 5
    invoke-virtual/range {v1 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->I0(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/b$r;

    sget-object v2, Lfk/u;->a:Lfk/u;

    sget v3, Lcom/startshorts/androidplayer/R$string;->common_google_pay_not_support:I

    sget-object v4, Lae/a;->a:Lae/a;

    invoke-virtual {v4}, Lae/a;->a()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/billing/b$r;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 7
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->c0()V

    :goto_1
    move-object/from16 v9, p0

    goto/16 :goto_2

    .line 8
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuDetails()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz p2, :cond_2

    .line 9
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->N()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v7, v0

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    .line 10
    invoke-virtual/range {v1 .. v12}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->L(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;ILzc/k;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    goto :goto_1

    .line 11
    :cond_2
    sget-object v1, Lad/k;->a:Lad/k$a;

    invoke-virtual {v1}, Lad/k$a;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Activity is null"

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v0

    move/from16 v6, p6

    .line 12
    invoke-virtual/range {v1 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->I0(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_3
    const-string v1, "subs failed -> skuDetails is null"

    move-object/from16 v9, p0

    invoke-virtual {v9, v1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->f(Ljava/lang/String;)V

    .line 14
    sget-object v1, Lad/k;->a:Lad/k$a;

    invoke-virtual {v1}, Lad/k$a;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "SkuDetails is null"

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v0

    move/from16 v6, p6

    .line 15
    invoke-virtual/range {v1 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->I0(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/b$r;

    sget-object v2, Lfk/u;->a:Lfk/u;

    sget v3, Lcom/startshorts/androidplayer/R$string;->common_unknown_exception:I

    invoke-virtual {v2, v3}, Lfk/u;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/billing/b$r;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 17
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->c0()V

    :goto_2
    return-void
.end method

.method private final f0(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->l:Z

    .line 3
    .line 4
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 5
    .line 6
    new-instance v3, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v0, "scene"

    .line 12
    .line 13
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    const/4 v6, 0x4

    .line 19
    const/4 v7, 0x0

    .line 20
    const-string v2, "third_party_payment_click"

    .line 21
    .line 22
    const-wide/16 v4, 0x0

    .line 23
    .line 24
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    sget-object v0, Laa/a;->a:Laa/a;

    .line 28
    .line 29
    invoke-virtual {v0}, Laa/a;->d()Ljava/lang/ref/WeakReference;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/hades/aar/activity/IDActivity;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    sget-object v1, Lcom/startshorts/androidplayer/utils/IntentUtil;->a:Lcom/startshorts/androidplayer/utils/IntentUtil;

    .line 44
    .line 45
    invoke-virtual {p2, v0, p1, p3}, Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;->formatUrl(Landroid/content/Context;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v1, v0, p1}, Lcom/startshorts/androidplayer/utils/IntentUtil;->c(Landroid/content/Context;Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method public final Q()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/billing/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->e:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    return-object v0
.end method

.method public final S()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->l:Z

    .line 2
    .line 3
    return v0
.end method

.method public final W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V
    .locals 13
    .param p1    # Lcom/startshorts/androidplayer/viewmodel/billing/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "intent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/a$c;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/a$c;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$c;->a()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->i:Ljava/lang/String;

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->M()V

    .line 19
    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/a$h;

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    sget-object v0, Lae/a;->a:Lae/a;

    .line 28
    .line 29
    invoke-virtual {v0}, Lae/a;->i()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/a$h;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$h;->a()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->a0(Ljava/util/List;)V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    :cond_1
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->B()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lgt/g0;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    new-instance v4, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$process$1;

    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    invoke-direct {v4, p0, p1, v0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$process$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;Lcom/startshorts/androidplayer/viewmodel/billing/a;Lrs/c;)V

    .line 62
    .line 63
    .line 64
    const/4 v5, 0x3

    .line 65
    const/4 v6, 0x0

    .line 66
    const/4 v2, 0x0

    .line 67
    const/4 v3, 0x0

    .line 68
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->j:Lkotlinx/coroutines/r;

    .line 73
    .line 74
    goto/16 :goto_0

    .line 75
    .line 76
    :cond_2
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/a$h;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$h;->a()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->a0(Ljava/util/List;)V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_0

    .line 86
    .line 87
    :cond_3
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/a$e;

    .line 88
    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/a$e;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$e;->h()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$e;->d()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$e;->a()Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$e;->g()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$e;->c()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$e;->f()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$e;->e()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$e;->b()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    move-object v0, p0

    .line 126
    invoke-direct/range {v0 .. v8}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->X(ZLjava/lang/String;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_0

    .line 130
    .line 131
    :cond_4
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/a$j;

    .line 132
    .line 133
    if-eqz v0, :cond_5

    .line 134
    .line 135
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/a$j;

    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$j;->d()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$j;->a()Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$j;->j()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$j;->c()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$j;->f()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$j;->k()I

    .line 158
    .line 159
    .line 160
    move-result v6

    .line 161
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$j;->l()Lzc/k;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$j;->h()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v8

    .line 169
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$j;->g()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 170
    .line 171
    .line 172
    move-result-object v9

    .line 173
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$j;->i()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v10

    .line 177
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$j;->e()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v11

    .line 181
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$j;->b()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v12

    .line 185
    move-object v0, p0

    .line 186
    invoke-direct/range {v0 .. v12}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->e0(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;ILzc/k;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_5
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/a$k;

    .line 191
    .line 192
    if-eqz v0, :cond_6

    .line 193
    .line 194
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/a$k;

    .line 195
    .line 196
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$k;->b()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$k;->c()Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$k;->a()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    invoke-direct {p0, v0, v1, p1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->f0(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 209
    .line 210
    .line 211
    goto :goto_0

    .line 212
    :cond_6
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/a$f;

    .line 213
    .line 214
    if-eqz v0, :cond_7

    .line 215
    .line 216
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/a$f;

    .line 217
    .line 218
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$f;->a()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->Y(Ljava/lang/String;)Lkotlinx/coroutines/r;

    .line 223
    .line 224
    .line 225
    goto :goto_0

    .line 226
    :cond_7
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/a$g;

    .line 227
    .line 228
    if-eqz v0, :cond_8

    .line 229
    .line 230
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/a$g;

    .line 231
    .line 232
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$g;->a()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->Z(Ljava/lang/String;)Lkotlinx/coroutines/r;

    .line 237
    .line 238
    .line 239
    goto :goto_0

    .line 240
    :cond_8
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/a$a;

    .line 241
    .line 242
    if-eqz v0, :cond_9

    .line 243
    .line 244
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/a$a;

    .line 245
    .line 246
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$a;->a()Landroid/content/Context;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->K(Landroid/content/Context;)V

    .line 251
    .line 252
    .line 253
    goto :goto_0

    .line 254
    :cond_9
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/a$d;

    .line 255
    .line 256
    if-eqz v0, :cond_a

    .line 257
    .line 258
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/a$d;

    .line 259
    .line 260
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->O(Lcom/startshorts/androidplayer/viewmodel/billing/a$d;)V

    .line 261
    .line 262
    .line 263
    goto :goto_0

    .line 264
    :cond_a
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/a$i;

    .line 265
    .line 266
    if-eqz v0, :cond_b

    .line 267
    .line 268
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/a$i;

    .line 269
    .line 270
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$i;->a()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$i;->b()Ljava/lang/Integer;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    invoke-direct {p0, v0, p1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->b0(Ljava/lang/String;Ljava/lang/Integer;)Lkotlinx/coroutines/r;

    .line 279
    .line 280
    .line 281
    :goto_0
    return-void

    .line 282
    :cond_b
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 283
    .line 284
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 285
    .line 286
    .line 287
    throw p1
.end method

.method public t()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "BillingViewModel"

    .line 2
    .line 3
    return-object v0
.end method

.method public w()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->w()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->P()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->f0(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->P()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->g0(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->j:Lkotlinx/coroutines/r;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iput-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->j:Lkotlinx/coroutines/r;

    .line 30
    .line 31
    return-void
.end method
