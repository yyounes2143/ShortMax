.class public final Lcom/startshorts/androidplayer/repo/account/AccountRepo;
.super Ljava/lang/Object;
.source "AccountRepo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAccountRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountRepo.kt\ncom/startshorts/androidplayer/repo/account/AccountRepo\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,860:1\n1#2:861\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static d:J

.field private static e:Z

.field private static f:Z

.field private static g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 7
    .line 8
    new-instance v0, Lbg/b;

    .line 9
    .line 10
    invoke-direct {v0}, Lbg/b;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->b:Lms/i;

    .line 18
    .line 19
    new-instance v0, Lbg/c;

    .line 20
    .line 21
    invoke-direct {v0}, Lbg/c;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->c:Lms/i;

    .line 29
    .line 30
    const-wide/16 v0, -0x1

    .line 31
    .line 32
    sput-wide v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->d:J

    .line 33
    .line 34
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

.method public static final synthetic A(Lcom/startshorts/androidplayer/repo/account/AccountRepo;Ljava/lang/Integer;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->H1(Ljava/lang/Integer;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final A1(IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->h0(IZ)Lcom/startshorts/androidplayer/bean/account/Account;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final synthetic B(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->I1(ZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final B1(ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->i0(ZZ)Lcom/startshorts/androidplayer/bean/account/Account;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final synthetic C(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->J1(ZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final C1(IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->j0(IZ)Lcom/startshorts/androidplayer/bean/account/Account;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final synthetic D(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->K1(ZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic E(Lcom/startshorts/androidplayer/repo/account/AccountRepo;Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->L1(Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic E1(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZZILjava/lang/Object;)V
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->D1(ZZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final synthetic F(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->M1(ZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final F1(ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->l0(ZZ)Lcom/startshorts/androidplayer/bean/account/Account;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final synthetic G(Lcom/startshorts/androidplayer/repo/account/AccountRepo;Ljava/lang/Integer;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->P1(Ljava/lang/Integer;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final G1(ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->m0(ZZ)Lcom/startshorts/androidplayer/bean/account/Account;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final synthetic H(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->R1(ZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final H1(Ljava/lang/Integer;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->n0(Ljava/lang/Integer;Z)Lcom/startshorts/androidplayer/bean/account/Account;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final synthetic I(Lcom/startshorts/androidplayer/repo/account/AccountRepo;Ljava/lang/Integer;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->T1(Ljava/lang/Integer;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final I1(ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->o0(ZZ)Lcom/startshorts/androidplayer/bean/account/Account;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final synthetic J(Lcom/startshorts/androidplayer/repo/account/AccountRepo;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->U1(IZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final J1(ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->p0(ZZ)Lcom/startshorts/androidplayer/bean/account/Account;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final synthetic K(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->V1(ZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final K1(ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->q0(ZZ)Lcom/startshorts/androidplayer/bean/account/Account;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final synthetic L(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->W1(ZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final L1(Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->r0(Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;Z)Lcom/startshorts/androidplayer/bean/account/Account;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final synthetic M(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->X1(ZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final M1(ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->s0(ZZ)Lcom/startshorts/androidplayer/bean/account/Account;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final synthetic N(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->Y1(ZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic O1(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZIJZILjava/lang/Object;)V
    .locals 6

    .line 1
    and-int/lit8 p7, p6, 0x2

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    const/4 p2, -0x1

    .line 6
    :cond_0
    move v2, p2

    .line 7
    and-int/lit8 p2, p6, 0x4

    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    const-wide/16 p3, -0x1

    .line 12
    .line 13
    :cond_1
    move-wide v3, p3

    .line 14
    move-object v0, p0

    .line 15
    move v1, p1

    .line 16
    move v5, p5

    .line 17
    invoke-virtual/range {v0 .. v5}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->N1(ZIJZ)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private final P1(Ljava/lang/Integer;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->u0(Ljava/lang/Integer;Z)Lcom/startshorts/androidplayer/bean/account/Account;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final R(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 16
    .line 17
    new-instance v3, Landroid/os/Bundle;

    .line 18
    .line 19
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v0, "original_audience_group_ids"

    .line 23
    .line 24
    invoke-static {p1}, Ljk/v;->s(Ljava/util/List;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string p1, "new_audience_group_ids"

    .line 32
    .line 33
    invoke-static {p2}, Ljk/v;->s(Ljava/util/List;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {v3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 41
    .line 42
    const/4 v6, 0x4

    .line 43
    const/4 v7, 0x0

    .line 44
    const-string v2, "audience_group_changed"

    .line 45
    .line 46
    const-wide/16 v4, 0x0

    .line 47
    .line 48
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method

.method private final R1(ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->w0(ZZ)Lcom/startshorts/androidplayer/bean/account/Account;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static final S0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final T0()Lcom/startshorts/androidplayer/repo/account/AccountRemoteDS;
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/repo/account/AccountRemoteDS;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRemoteDS;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final T1(Ljava/lang/Integer;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->y0(Ljava/lang/Integer;Z)Lcom/startshorts/androidplayer/bean/account/Account;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final U1(IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->z0(IZ)Lcom/startshorts/androidplayer/bean/account/Account;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final V1(ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->A0(ZZ)Lcom/startshorts/androidplayer/bean/account/Account;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final W1(ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->B0(ZZ)Lcom/startshorts/androidplayer/bean/account/Account;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic X(Lcom/startshorts/androidplayer/repo/account/AccountRepo;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->W(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final X1(ZZ)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;->a:Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;->g()Lcom/startshorts/androidplayer/bean/discount/BestSubscriptionDiscountInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;->k()V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->C0(ZZ)Lcom/startshorts/androidplayer/bean/account/Account;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private static final Y(Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->e:Z

    .line 3
    .line 4
    sget-object v1, Lcom/startshorts/androidplayer/manager/account/AccountManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountManager;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->t(Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->s(Z)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/Throwable;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Ljk/z;->a(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->u0(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)V

    .line 24
    .line 25
    .line 26
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p0
.end method

.method private final Y1(ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->D0(ZZ)Lcom/startshorts/androidplayer/bean/account/Account;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic Z0(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZLandroid/content/Context;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 7
    .line 8
    if-eqz p5, :cond_1

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 12
    .line 13
    if-eqz p4, :cond_2

    .line 14
    .line 15
    new-instance p3, Lbg/a;

    .line 16
    .line 17
    invoke-direct {p3}, Lbg/a;-><init>()V

    .line 18
    .line 19
    .line 20
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->Y0(ZLandroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static synthetic a()Lcom/startshorts/androidplayer/repo/account/AccountRemoteDS;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->T0()Lcom/startshorts/androidplayer/repo/account/AccountRemoteDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final a1(Lkotlin/Result;)Lkotlin/Unit;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic b(Lkotlin/Result;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a1(Lkotlin/Result;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->S0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c1(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 7
    .line 8
    if-eqz p3, :cond_1

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->b1(ZLkotlin/jvm/functions/Function1;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static synthetic d(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->Y(Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic f(Lcom/startshorts/androidplayer/repo/account/AccountRepo;)Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g(Lcom/startshorts/androidplayer/repo/account/AccountRepo;)Lcom/startshorts/androidplayer/repo/account/AccountRemoteDS;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->m0()Lcom/startshorts/androidplayer/repo/account/AccountRemoteDS;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic h(Lcom/startshorts/androidplayer/repo/account/AccountRepo;Lcom/startshorts/androidplayer/bean/exception/ResponseException;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->u0(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic i(Lcom/startshorts/androidplayer/repo/account/AccountRepo;Lcom/startshorts/androidplayer/bean/account/RegisterTouristAccountResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->v0(Lcom/startshorts/androidplayer/bean/account/RegisterTouristAccountResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic j(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->e:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic k(J)V
    .locals 0

    .line 1
    sput-wide p0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->d:J

    .line 2
    .line 3
    return-void
.end method

.method private final k1(ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->V(ZZ)Lcom/startshorts/androidplayer/bean/account/Account;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final synthetic l(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method private final l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 8
    .line 9
    return-object v0
.end method

.method private final l1(JZ)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->g()Lcom/startshorts/androidplayer/bean/account/Account;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/account/Account;->getAttributionTimestamp()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    const-wide/16 v3, 0x0

    .line 16
    .line 17
    cmp-long v1, v1, v3

    .line 18
    .line 19
    if-lez v1, :cond_0

    .line 20
    .line 21
    cmp-long v1, p1, v3

    .line 22
    .line 23
    if-lez v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/account/Account;->getAttributionTimestamp()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    cmp-long v0, v0, p1

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    sget-object v0, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->a:Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->j()V

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0, p1, p2, p3}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->W(JZ)Lcom/startshorts/androidplayer/bean/account/Account;

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public static final synthetic m(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->k1(ZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final m0()Lcom/startshorts/androidplayer/repo/account/AccountRemoteDS;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->c:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/repo/account/AccountRemoteDS;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final synthetic n(Lcom/startshorts/androidplayer/repo/account/AccountRepo;JZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l1(JZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n1(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZZILjava/lang/Object;)V
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->m1(ZZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final synthetic o(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->p1(ZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic p(Lcom/startshorts/androidplayer/repo/account/AccountRepo;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->q1(Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final p1(ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->Y(ZZ)Lcom/startshorts/androidplayer/bean/account/Account;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final synthetic q(Lcom/startshorts/androidplayer/repo/account/AccountRepo;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->r1(IZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final q1(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->Z(Ljava/lang/String;Z)Lcom/startshorts/androidplayer/bean/account/Account;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final synthetic r(Lcom/startshorts/androidplayer/repo/account/AccountRepo;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->s1(IZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final r1(IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->a0(IZ)Lcom/startshorts/androidplayer/bean/account/Account;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final synthetic s(Lcom/startshorts/androidplayer/repo/account/AccountRepo;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->x1(Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final s1(IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->b0(IZ)Lcom/startshorts/androidplayer/bean/account/Account;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final synthetic t(Lcom/startshorts/androidplayer/repo/account/AccountRepo;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->y1(Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic u(Lcom/startshorts/androidplayer/repo/account/AccountRepo;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->z1(IZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final u0(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)V
    .locals 8

    .line 1
    sget-object v0, Lud/a;->a:Lud/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/a;->t()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->b0()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->D(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const/4 v6, 0x4

    .line 24
    const/4 v7, 0x0

    .line 25
    const-string v2, "register_fail"

    .line 26
    .line 27
    const-wide/16 v4, 0x0

    .line 28
    .line 29
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/manager/account/AccountManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountManager;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->l(ZLcom/startshorts/androidplayer/bean/exception/ResponseException;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static synthetic u1(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZZILjava/lang/Object;)V
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t1(ZZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final synthetic v(Lcom/startshorts/androidplayer/repo/account/AccountRepo;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->A1(IZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final v0(Lcom/startshorts/androidplayer/bean/account/RegisterTouristAccountResult;)V
    .locals 10

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/account/RegisterTouristAccountResult;->getUserResponse()Lcom/startshorts/androidplayer/bean/account/Account;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/account/RegisterTouristAccountResult;->getToken()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/bean/account/Account;->setToken(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/bean/account/Account;->setType(I)V

    .line 17
    .line 18
    .line 19
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->f1(Lcom/startshorts/androidplayer/bean/account/Account;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/account/Account;->getAudienceIdList()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->g1(Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Laa/a;->a:Laa/a;

    .line 32
    .line 33
    invoke-virtual {v0}, Laa/a;->d()Ljava/lang/ref/WeakReference;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lcom/hades/aar/activity/IDActivity;

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    sget-object v2, Lng/g;->a:Lng/g;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v2, v0, v1}, Lng/g;->h(Landroid/app/Activity;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 57
    .line 58
    const/4 v8, 0x6

    .line 59
    const/4 v9, 0x0

    .line 60
    const-string v4, "register"

    .line 61
    .line 62
    const/4 v5, 0x0

    .line 63
    const-wide/16 v6, 0x0

    .line 64
    .line 65
    move-object v3, v0

    .line 66
    invoke-static/range {v3 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->S()V

    .line 70
    .line 71
    .line 72
    sget-object v1, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager;->a:Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager;->c()Lkotlinx/coroutines/r;

    .line 75
    .line 76
    .line 77
    sget-object v1, Lfk/t;->a:Lfk/t;

    .line 78
    .line 79
    invoke-virtual {v1}, Lfk/t;->b()V

    .line 80
    .line 81
    .line 82
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 83
    .line 84
    invoke-virtual {v1}, Lfk/u;->b()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {v1}, Landroidx/startup/AppInitializer;->getInstance(Landroid/content/Context;)Landroidx/startup/AppInitializer;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    const-class v2, Lcom/startshorts/androidplayer/startup/PlayerInitializer;

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Landroidx/startup/AppInitializer;->initializeComponent(Ljava/lang/Class;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    instance-of v2, v1, Lcom/startshorts/androidplayer/startup/PlayerInitializer;

    .line 99
    .line 100
    const/4 v3, 0x0

    .line 101
    if-eqz v2, :cond_2

    .line 102
    .line 103
    check-cast v1, Lcom/startshorts/androidplayer/startup/PlayerInitializer;

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_2
    move-object v1, v3

    .line 107
    :goto_0
    if-eqz v1, :cond_3

    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/startup/PlayerInitializer;->i()V

    .line 110
    .line 111
    .line 112
    :cond_3
    sget-object v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;

    .line 113
    .line 114
    sget-object v2, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->GP_INSTALL_REFERRER:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->o(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)V

    .line 117
    .line 118
    .line 119
    sget-object v2, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->META_INSTALL_REFERRER:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 120
    .line 121
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->o(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)V

    .line 122
    .line 123
    .line 124
    sget-object v2, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->PRE_INSTALL:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 125
    .line 126
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->o(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)V

    .line 127
    .line 128
    .line 129
    sget-object v2, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->GA_DEEPLINK:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 130
    .line 131
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->o(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)V

    .line 132
    .line 133
    .line 134
    sget-object v2, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 135
    .line 136
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->P()V

    .line 137
    .line 138
    .line 139
    sget-object v2, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->a:Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;

    .line 140
    .line 141
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->c()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->b()V

    .line 145
    .line 146
    .line 147
    sget-object v2, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->UPLOAD_CAMPAIGN_INFO_RESULT:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 148
    .line 149
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->o(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)V

    .line 150
    .line 151
    .line 152
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 153
    .line 154
    const-string v2, "CampaignNewTag"

    .line 155
    .line 156
    const-string v4, "CampaignProvider.queryAsync(CampaignType.UPLOAD_CAMPAIGN_INFO_RESULT)"

    .line 157
    .line 158
    invoke-virtual {v1, v2, v4}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->e1()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->o()V

    .line 165
    .line 166
    .line 167
    sget-object v1, Lcom/startshorts/androidplayer/manager/push/PushManager;->a:Lcom/startshorts/androidplayer/manager/push/PushManager;

    .line 168
    .line 169
    const/4 v2, 0x0

    .line 170
    invoke-static {v1, v2, p1, v3}, Lcom/startshorts/androidplayer/manager/push/PushManager;->f(Lcom/startshorts/androidplayer/manager/push/PushManager;ZILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 171
    .line 172
    .line 173
    sget-object v1, Lud/a;->a:Lud/a;

    .line 174
    .line 175
    invoke-virtual {v1}, Lud/a;->t()Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-nez v1, :cond_4

    .line 180
    .line 181
    sget-object v1, Lcom/startshorts/androidplayer/repo/push/PushRepo;->a:Lcom/startshorts/androidplayer/repo/push/PushRepo;

    .line 182
    .line 183
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->w()V

    .line 184
    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_4
    sget-object v1, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->a:Lcom/startshorts/androidplayer/repo/config/ConfigRepo;

    .line 188
    .line 189
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->E()V

    .line 190
    .line 191
    .line 192
    :goto_1
    sget-object v1, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->a:Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;

    .line 193
    .line 194
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->s()Z

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-eqz v1, :cond_5

    .line 199
    .line 200
    sget-object v1, Lcom/startshorts/androidplayer/repo/push/PushRepo;->a:Lcom/startshorts/androidplayer/repo/push/PushRepo;

    .line 201
    .line 202
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->C()V

    .line 203
    .line 204
    .line 205
    :cond_5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->V0()Lkotlinx/coroutines/r;

    .line 206
    .line 207
    .line 208
    sget-object v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->a:Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;

    .line 209
    .line 210
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->x(Z)V

    .line 211
    .line 212
    .line 213
    const-string v4, "topup"

    .line 214
    .line 215
    invoke-virtual {v1, v4}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->f(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->u()V

    .line 219
    .line 220
    .line 221
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    new-instance v4, Lcom/startshorts/androidplayer/bean/eventbus/RefreshAccountEvent;

    .line 226
    .line 227
    invoke-direct {v4}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshAccountEvent;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1, v4}, Lau/c;->l(Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    invoke-static {v0, v2, p1, v3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s(Lcom/startshorts/androidplayer/manager/event/EventManager;ZILjava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    sget-object v0, Lcom/startshorts/androidplayer/manager/account/AccountManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountManager;

    .line 237
    .line 238
    const/4 v1, 0x2

    .line 239
    invoke-static {v0, p1, v3, v1, v3}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->m(Lcom/startshorts/androidplayer/manager/account/AccountManager;ZLcom/startshorts/androidplayer/bean/exception/ResponseException;ILjava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    sget-object p1, Lcom/startshorts/androidplayer/repo/ad/AdConfigRepo;->a:Lcom/startshorts/androidplayer/repo/ad/AdConfigRepo;

    .line 243
    .line 244
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/ad/AdConfigRepo;->e()Lkotlinx/coroutines/r;

    .line 245
    .line 246
    .line 247
    sget-object p1, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->a:Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;

    .line 248
    .line 249
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->h()V

    .line 250
    .line 251
    .line 252
    return-void
.end method

.method public static final synthetic w(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->B1(ZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic w1(Lcom/startshorts/androidplayer/repo/account/AccountRepo;IIZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->v1(IIZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final synthetic x(Lcom/startshorts/androidplayer/repo/account/AccountRepo;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->C1(IZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final x1(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->e0(Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final synthetic y(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->F1(ZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final y1(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->f0(Ljava/lang/String;Z)Lcom/startshorts/androidplayer/bean/account/Account;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final synthetic z(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->G1(ZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final z1(IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->g0(IZ)Lcom/startshorts/androidplayer/bean/account/Account;

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final A0()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->q0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-gt v2, v0, :cond_0

    .line 8
    .line 9
    const/4 v3, 0x5

    .line 10
    if-ge v0, v3, :cond_0

    .line 11
    .line 12
    move v1, v2

    .line 13
    :cond_0
    return v1
.end method

.method public final B0()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->q0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x5

    .line 6
    const/4 v2, 0x0

    .line 7
    if-gt v1, v0, :cond_0

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    :cond_0
    return v2
.end method

.method public final C0()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->B()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final D0()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->h()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    return v0
.end method

.method public final D1(ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->k0(ZZ)Lcom/startshorts/androidplayer/bean/account/Account;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final E0()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->C()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final F0()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->D()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final G0()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->E()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final H0()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->F()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final I0()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->A()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final J0()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->G()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final K0()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->j()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    return v1
.end method

.method public final L0()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->H()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final M0()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->I()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final N0()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->J()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final N1(ZIJZ)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    move v1, p1

    .line 6
    move v2, p2

    .line 7
    move-wide v3, p3

    .line 8
    move v5, p5

    .line 9
    invoke-virtual/range {v0 .. v5}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->t0(ZIJZ)Lcom/startshorts/androidplayer/bean/account/Account;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final O(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V
    .locals 2
    .param p1    # Landroidx/databinding/Observable$OnPropertyChangedCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "observer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->g()Lcom/startshorts/androidplayer/bean/account/Account;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroidx/databinding/BaseObservable;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroidx/databinding/BaseObservable;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 20
    .line 21
    .line 22
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 23
    .line 24
    const-string v0, "AccountRepo"

    .line 25
    .line 26
    const-string v1, "addPropertyObserver"

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final O0()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->K()Z

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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->c()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final P0()Lcom/startshorts/androidplayer/bean/account/Account;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->L()Lcom/startshorts/androidplayer/bean/account/Account;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final Q()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->d()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final Q0()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->M()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final Q1(IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->v0(IZ)Lcom/startshorts/androidplayer/bean/account/Account;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final R0(Landroid/content/Context;Lrs/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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
    instance-of v0, p2, Lcom/startshorts/androidplayer/repo/account/AccountRepo$logout$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$logout$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$logout$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$logout$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$logout$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo$logout$1;-><init>(Lcom/startshorts/androidplayer/repo/account/AccountRepo;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$logout$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$logout$1;->j:I

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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->m0()Lcom/startshorts/androidplayer/repo/account/AccountRemoteDS;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    iput v3, v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$logout$1;->j:I

    .line 64
    .line 65
    invoke-virtual {p2, p1, v0}, Lcom/startshorts/androidplayer/repo/account/AccountRemoteDS;->c(Landroid/content/Context;Lrs/c;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-ne p1, v1, :cond_3

    .line 70
    .line 71
    return-object v1

    .line 72
    :cond_3
    :goto_1
    return-object p1
.end method

.method public final S()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->w0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->h0()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->S()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final S1(ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->x0(ZZ)Lcom/startshorts/androidplayer/bean/account/Account;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final T(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string p1, "onFinish"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 7
    .line 8
    new-instance v3, Lcom/startshorts/androidplayer/repo/account/AccountRepo$clearAndCreateTouristForTest$1;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-direct {v3, p2, p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo$clearAndCreateTouristForTest$1;-><init>(Lkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 12
    .line 13
    .line 14
    const/4 v4, 0x2

    .line 15
    const/4 v5, 0x0

    .line 16
    const-string v1, "clearAndCreateTouristForTest"

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final U()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->e()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final U0(Lrs/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/account/MergeUserInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo$mergeTourist$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$mergeTourist$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$mergeTourist$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$mergeTourist$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$mergeTourist$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo$mergeTourist$1;-><init>(Lcom/startshorts/androidplayer/repo/account/AccountRepo;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$mergeTourist$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$mergeTourist$1;->j:I

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
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast p1, Lkotlin/Result;

    .line 42
    .line 43
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

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
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->m0()Lcom/startshorts/androidplayer/repo/account/AccountRemoteDS;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput v3, v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$mergeTourist$1;->j:I

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/repo/account/AccountRemoteDS;->e(Lrs/c;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-ne p1, v1, :cond_3

    .line 70
    .line 71
    return-object v1

    .line 72
    :cond_3
    :goto_1
    return-object p1
.end method

.method public final V()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->f()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final V0()Lkotlinx/coroutines/r;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/repo/account/AccountRepo$queryExtraUserInfo$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo$queryExtraUserInfo$1;-><init>(Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "queryExtraUserInfo"

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

.method public final W(Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-boolean v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    sput-boolean v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->e:Z

    .line 8
    .line 9
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 10
    .line 11
    new-instance v5, Lcom/startshorts/androidplayer/repo/account/AccountRepo$createTourist$1;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {v5, p1, v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo$createTourist$1;-><init>(Ljava/lang/String;Lrs/c;)V

    .line 15
    .line 16
    .line 17
    new-instance v6, Lbg/d;

    .line 18
    .line 19
    invoke-direct {v6}, Lbg/d;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 v7, 0x5

    .line 23
    const/4 v8, 0x0

    .line 24
    const/4 v2, 0x0

    .line 25
    const-string v3, "createTourist"

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-static/range {v1 .. v8}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->k(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Lgt/g0;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final W0(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/r;
    .locals 7
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/startshorts/androidplayer/bean/settings/MergeConfig;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/r;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 7
    .line 8
    new-instance v4, Lcom/startshorts/androidplayer/repo/account/AccountRepo$queryMergeConfig$1;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-direct {v4, p1, v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo$queryMergeConfig$1;-><init>(Lkotlin/jvm/functions/Function1;Lrs/c;)V

    .line 12
    .line 13
    .line 14
    const/4 v5, 0x2

    .line 15
    const/4 v6, 0x0

    .line 16
    const-string v2, "queryMergeConfig"

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public final X0(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/r;
    .locals 7
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/r;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 7
    .line 8
    new-instance v4, Lcom/startshorts/androidplayer/repo/account/AccountRepo$queryRechargeUserInfo$1;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-direct {v4, p1, v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo$queryRechargeUserInfo$1;-><init>(Lkotlin/jvm/functions/Function1;Lrs/c;)V

    .line 12
    .line 13
    .line 14
    const/4 v5, 0x2

    .line 15
    const/4 v6, 0x0

    .line 16
    const-string v2, "queryRechargeUserInfo"

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public final Y0(ZLandroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/account/Account;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "onResult"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->w0()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 14
    .line 15
    new-instance v4, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshBalance$2;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {v4, p1, p2, p3, v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshBalance$2;-><init>(ZLandroid/content/Context;Lkotlin/jvm/functions/Function1;Lrs/c;)V

    .line 19
    .line 20
    .line 21
    const/4 v5, 0x2

    .line 22
    const/4 v6, 0x0

    .line 23
    const-string v2, "refreshBalance"

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final Z(Landroid/content/Context;Lrs/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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
    instance-of v0, p2, Lcom/startshorts/androidplayer/repo/account/AccountRepo$delete$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$delete$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$delete$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$delete$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$delete$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo$delete$1;-><init>(Lcom/startshorts/androidplayer/repo/account/AccountRepo;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$delete$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$delete$1;->j:I

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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->m0()Lcom/startshorts/androidplayer/repo/account/AccountRemoteDS;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    iput v3, v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$delete$1;->j:I

    .line 64
    .line 65
    invoke-virtual {p2, p1, v0}, Lcom/startshorts/androidplayer/repo/account/AccountRemoteDS;->b(Landroid/content/Context;Lrs/c;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-ne p1, v1, :cond_3

    .line 70
    .line 71
    return-object v1

    .line 72
    :cond_3
    :goto_1
    return-object p1
.end method

.method public final a0()Lcom/startshorts/androidplayer/bean/account/Account;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->g()Lcom/startshorts/androidplayer/bean/account/Account;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final b0()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->z()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/a;->a:Lcom/startshorts/androidplayer/manager/configure/ad/a;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/a;->h()Lcom/startshorts/androidplayer/manager/configure/ad/a$a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->d()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0

    .line 22
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->l()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-lez v0, :cond_1

    .line 31
    .line 32
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/a;->a:Lcom/startshorts/androidplayer/manager/configure/ad/a;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/a;->h()Lcom/startshorts/androidplayer/manager/configure/ad/a$a;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->b()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    return v0

    .line 43
    :cond_1
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/a;->a:Lcom/startshorts/androidplayer/manager/configure/ad/a;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/a;->h()Lcom/startshorts/androidplayer/manager/configure/ad/a$a;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->c()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    return v0
.end method

.method public final b1(ZLkotlin/jvm/functions/Function1;)V
    .locals 6
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->w0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-nez p1, :cond_1

    .line 9
    .line 10
    sget-boolean p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->f:Z

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    const/4 p1, 0x1

    .line 16
    sput-boolean p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->f:Z

    .line 17
    .line 18
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 19
    .line 20
    new-instance v3, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshUserInfo$1;

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-direct {v3, p2, p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo$refreshUserInfo$1;-><init>(Lkotlin/jvm/functions/Function1;Lrs/c;)V

    .line 24
    .line 25
    .line 26
    const/4 v4, 0x2

    .line 27
    const/4 v5, 0x0

    .line 28
    const-string v1, "refreshUserInfo"

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final c0()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->z()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/a;->a:Lcom/startshorts/androidplayer/manager/configure/ad/a;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/a;->h()Lcom/startshorts/androidplayer/manager/configure/ad/a$a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->f()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0

    .line 22
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->l()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-lez v0, :cond_1

    .line 31
    .line 32
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/a;->a:Lcom/startshorts/androidplayer/manager/configure/ad/a;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/a;->h()Lcom/startshorts/androidplayer/manager/configure/ad/a$a;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->a()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    return v0

    .line 43
    :cond_1
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/a;->a:Lcom/startshorts/androidplayer/manager/configure/ad/a;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/a;->h()Lcom/startshorts/androidplayer/manager/configure/ad/a$a;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->e()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    return v0
.end method

.method public final d0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->g:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lud/b;->a:Lud/b;

    .line 6
    .line 7
    invoke-virtual {v0}, Lud/b;->N()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    :cond_0
    sput-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->g:Ljava/util/List;

    .line 19
    .line 20
    :cond_1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->g:Ljava/util/List;

    .line 21
    .line 22
    invoke-static {v0}, Ljk/v;->s(Ljava/util/List;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method public final d1(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V
    .locals 2
    .param p1    # Landroidx/databinding/Observable$OnPropertyChangedCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "observer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->g()Lcom/startshorts/androidplayer/bean/account/Account;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroidx/databinding/BaseObservable;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 17
    .line 18
    .line 19
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 22
    .line 23
    const-string v0, "AccountRepo"

    .line 24
    .line 25
    const-string v1, "removePropertyObserver"

    .line 26
    .line 27
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final e0()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->i()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final e1()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->w0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 9
    .line 10
    new-instance v4, Lcom/startshorts/androidplayer/repo/account/AccountRepo$reportGaid$1;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {v4, v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo$reportGaid$1;-><init>(Lrs/c;)V

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x2

    .line 17
    const/4 v6, 0x0

    .line 18
    const-string v2, "reportGaid"

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final f0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->k()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final f1(Lcom/startshorts/androidplayer/bean/account/Account;)V
    .locals 4
    .param p1    # Lcom/startshorts/androidplayer/bean/account/Account;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {v0, p1, v3, v1, v2}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->Q(Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;Lcom/startshorts/androidplayer/bean/account/Account;ZILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final g0()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->l()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final g1(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->g:Ljava/util/List;

    .line 9
    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    sget-object v0, Lud/b;->a:Lud/b;

    .line 13
    .line 14
    invoke-virtual {v0}, Lud/b;->N()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    :cond_1
    sput-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->g:Ljava/util/List;

    .line 26
    .line 27
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->g:Ljava/util/List;

    .line 32
    .line 33
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    return-void

    .line 44
    :cond_3
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->g:Ljava/util/List;

    .line 45
    .line 46
    if-nez v0, :cond_4

    .line 47
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    :cond_4
    invoke-direct {p0, v0, p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->R(Ljava/util/List;Ljava/util/List;)V

    .line 54
    .line 55
    .line 56
    sput-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->g:Ljava/util/List;

    .line 57
    .line 58
    sget-object v0, Lud/b;->a:Lud/b;

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Lud/b;->X2(Ljava/util/List;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final h0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->m()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final h1(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->U(Z)Lcom/startshorts/androidplayer/bean/account/Account;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final i0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->n()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final i1()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->z0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->B0()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public final j0()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->p()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final j1(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function0;)V
    .locals 7
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "unlockEpisode"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->g0()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->e0()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/2addr v0, v1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getPrice()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    const/16 v1, 0x29

    .line 24
    .line 25
    const-string v2, ") episodePrice("

    .line 26
    .line 27
    const-string v3, "AccountRepo"

    .line 28
    .line 29
    if-lt v0, p1, :cond_1

    .line 30
    .line 31
    sget-object v4, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 32
    .line 33
    new-instance v5, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v6, "unlockAble true -> coinsAndBonus("

    .line 39
    .line 40
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {v4, v3, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 67
    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v5, "unlockAble false -> coinsAndBonus("

    .line 74
    .line 75
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p2, v3, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :goto_1
    return-void
.end method

.method public final k0()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->q()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final m1(ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->X(ZZ)Lcom/startshorts/androidplayer/bean/account/Account;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final n0()Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->r()Lcom/startshorts/androidplayer/bean/unlock/RetainConfig;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final o0()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->s()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final o1(Landroid/content/Context;ZLrs/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
            "Z",
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
    instance-of v0, p3, Lcom/startshorts/androidplayer/repo/account/AccountRepo$updateAutoUnlockEpisode$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$updateAutoUnlockEpisode$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$updateAutoUnlockEpisode$1;->k:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$updateAutoUnlockEpisode$1;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$updateAutoUnlockEpisode$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/startshorts/androidplayer/repo/account/AccountRepo$updateAutoUnlockEpisode$1;-><init>(Lcom/startshorts/androidplayer/repo/account/AccountRepo;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$updateAutoUnlockEpisode$1;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$updateAutoUnlockEpisode$1;->k:I

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
    iget-boolean p2, v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$updateAutoUnlockEpisode$1;->h:Z

    .line 39
    .line 40
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    check-cast p3, Lkotlin/Result;

    .line 44
    .line 45
    invoke-virtual {p3}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_2
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->m0()Lcom/startshorts/androidplayer/repo/account/AccountRemoteDS;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    iput-boolean p2, v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$updateAutoUnlockEpisode$1;->h:Z

    .line 66
    .line 67
    iput v3, v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo$updateAutoUnlockEpisode$1;->k:I

    .line 68
    .line 69
    invoke-virtual {p3, p1, p2, v0}, Lcom/startshorts/androidplayer/repo/account/AccountRemoteDS;->k(Landroid/content/Context;ZLrs/c;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-ne p1, v1, :cond_3

    .line 74
    .line 75
    return-object v1

    .line 76
    :cond_3
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p3

    .line 80
    if-eqz p3, :cond_4

    .line 81
    .line 82
    sget-object p3, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 83
    .line 84
    const/4 v0, 0x2

    .line 85
    const/4 v1, 0x0

    .line 86
    const/4 v2, 0x0

    .line 87
    invoke-static {p3, p2, v2, v0, v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->n1(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZZILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    :cond_4
    return-object p1
.end method

.method public final p0()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->t()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final q0()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->u()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final r0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->v()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final s0()Lcom/startshorts/androidplayer/bean/account/Account;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->w()Lcom/startshorts/androidplayer/bean/account/Account;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final t0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->x()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final t1(ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->c0(ZZ)Lcom/startshorts/androidplayer/bean/account/Account;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final v1(IIZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->d0(IIZ)Lcom/startshorts/androidplayer/bean/account/Account;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final w0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a0()Lcom/startshorts/androidplayer/bean/account/Account;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public final x0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->g0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public final y0()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->y()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final z0()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->l0()Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountLocalDS;->z()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method
