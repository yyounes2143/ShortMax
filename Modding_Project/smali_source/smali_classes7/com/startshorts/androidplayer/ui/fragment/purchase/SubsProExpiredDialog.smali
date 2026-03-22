.class public final Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;
.super Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;
.source "SubsProExpiredDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment<",
        "Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsProExpiredBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final s:Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private i:I

.field private j:Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private l:Z

.field private final m:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final n:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final o:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final p:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private q:Lhi/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private r:Lhi/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->s:Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->i:I

    .line 6
    .line 7
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/p;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/p;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->m:Lms/i;

    .line 17
    .line 18
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/q;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/q;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->n:Lms/i;

    .line 28
    .line 29
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/r;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/r;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->o:Lms/i;

    .line 39
    .line 40
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/s;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/s;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->p:Lms/i;

    .line 50
    .line 51
    return-void
.end method

.method private final A0(Ljava/lang/String;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    sget-object v1, Lud/a;->a:Lud/a;

    .line 4
    .line 5
    invoke-virtual {v1}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x2

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-static {v0, v1, v4, v2, v3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string v1, "scene"

    .line 17
    .line 18
    invoke-virtual {v2, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    const/4 v5, 0x4

    .line 24
    const/4 v6, 0x0

    .line 25
    const-string v1, "restore_click"

    .line 26
    .line 27
    const-wide/16 v3, 0x0

    .line 28
    .line 29
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->y0()V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->U()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/a$g;

    .line 40
    .line 41
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$g;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public static synthetic F(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->j0(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;Lcom/startshorts/androidplayer/viewmodel/immersion/f;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->o0(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;Lcom/startshorts/androidplayer/viewmodel/immersion/f;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic H(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;)Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->l0(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;)Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic I(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;)Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->n0(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;)Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic J(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;)Landroidx/lifecycle/ViewModelProvider;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->p0(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;)Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic K(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;Lcom/startshorts/androidplayer/viewmodel/billing/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->k0(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;Lcom/startshorts/androidplayer/viewmodel/billing/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic L(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;Lcom/startshorts/androidplayer/viewmodel/subs/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->m0(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;Lcom/startshorts/androidplayer/viewmodel/subs/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic M(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;)Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->X()Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic N(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->i0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic O(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->q0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic P(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->s0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic Q(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->t0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic R(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->w0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic S(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->A0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final T()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->U()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/a$c;

    .line 6
    .line 7
    const-string v2, "subs"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/billing/a$c;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final U()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->o:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final X()Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->n:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final Y()Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->p:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final Z()Landroidx/lifecycle/ViewModelProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->m:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/ViewModelProvider;

    .line 8
    .line 9
    return-object v0
.end method

.method private final a0(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->l:Z

    .line 3
    .line 4
    sget v0, Lcom/startshorts/androidplayer/R$string;->subscription_detail_activity_subs_success:I

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-static {p0, v0, v3, v1, v2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->A(Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;IIILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->X()Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v10, Lcom/startshorts/androidplayer/viewmodel/subs/a$b;

    .line 17
    .line 18
    const/16 v8, 0x30

    .line 19
    .line 20
    const/4 v9, 0x0

    .line 21
    const-string v2, "subscribe_expire_popup"

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v7, 0x0

    .line 25
    move-object v1, v10

    .line 26
    move-object v3, p1

    .line 27
    move-object v4, p2

    .line 28
    move-object v5, p3

    .line 29
    invoke-direct/range {v1 .. v9}, Lcom/startshorts/androidplayer/viewmodel/subs/a$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v10}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->N(Lcom/startshorts/androidplayer/viewmodel/subs/a;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->q0()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private final b0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->X()Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/subs/a$a;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/subs/a$a;-><init>(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->N(Lcom/startshorts/androidplayer/viewmodel/subs/a;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private final c0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->q:Lhi/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->q:Lhi/b;

    .line 10
    .line 11
    return-void
.end method

.method private final d0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->r:Lhi/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->r:Lhi/b;

    .line 10
    .line 11
    return-void
.end method

.method private final e0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsProExpiredBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsProExpiredBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog$b;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final f0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsProExpiredBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsProExpiredBinding;->b:Landroid/widget/ImageView;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog$c;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final g0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsProExpiredBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsProExpiredBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog$d;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog$d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final h0()V
    .locals 4

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->Companion:Lcom/startshorts/androidplayer/bean/subs/SubsSku$Companion;

    .line 2
    .line 3
    iget v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->i:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku$Companion;->getCardName(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsProExpiredBinding;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsProExpiredBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 16
    .line 17
    sget-object v2, Lfk/u;->a:Lfk/u;

    .line 18
    .line 19
    sget v3, Lcom/startshorts/androidplayer/R$string;->subs_pro_expired_dialog_content:I

    .line 20
    .line 21
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v2, v3, v0}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private final i0()V
    .locals 4

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;->p:Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "requireContext(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v2, Lcom/startshorts/androidplayer/ui/fragment/a;->a:Lcom/startshorts/androidplayer/ui/fragment/a;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/ui/fragment/a;->n()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x0

    .line 19
    new-array v3, v3, [Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2, v3}, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;->b(Landroid/content/Context;Ljava/lang/String;[Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->dismiss()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private static final j0(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->Z()Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/purchase/u;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/u;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog$e;

    .line 23
    .line 24
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog$e;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method private static final k0(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;Lcom/startshorts/androidplayer/viewmodel/billing/b;)Lkotlin/Unit;
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$q;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->s0()V

    .line 6
    .line 7
    .line 8
    goto/16 :goto_0

    .line 9
    .line 10
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$m;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$m;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$m;->a()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->b0(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$u;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    sget p1, Lcom/startshorts/androidplayer/R$string;->common_user_canceled:I

    .line 33
    .line 34
    invoke-static {p0, p1, v2, v1, v3}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->A(Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;IIILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_0

    .line 38
    .line 39
    :cond_2
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$f;

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 44
    .line 45
    const/4 v0, 0x3

    .line 46
    invoke-static {p1, v2, v3, v0, v3}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->c1(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->q0()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->dismiss()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$e;

    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$e;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$e;->a()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$e;->b()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$e;->c()Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-direct {p0, v0, v1, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->a0(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$d;

    .line 79
    .line 80
    if-eqz v0, :cond_5

    .line 81
    .line 82
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->x0()V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_5
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$h;

    .line 87
    .line 88
    if-eqz v0, :cond_6

    .line 89
    .line 90
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->d0()V

    .line 91
    .line 92
    .line 93
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$h;

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$h;->a()Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->hasAcknowledged()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_8

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$h;->a()Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->showTip()V

    .line 110
    .line 111
    .line 112
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->q0()V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_6
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$j;

    .line 117
    .line 118
    if-eqz v0, :cond_7

    .line 119
    .line 120
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->d0()V

    .line 121
    .line 122
    .line 123
    sget p1, Lcom/startshorts/androidplayer/R$string;->top_up_fragment_not_find_lost_order_tip:I

    .line 124
    .line 125
    invoke-static {p0, p1, v2, v1, v3}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->A(Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;IIILjava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_7
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$k;

    .line 130
    .line 131
    if-eqz v0, :cond_8

    .line 132
    .line 133
    new-instance v0, Lgi/f;

    .line 134
    .line 135
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    const-string v1, "requireContext(...)"

    .line 140
    .line 141
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$k;

    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$k;->a()Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-direct {v0, p0, p1}, Lgi/f;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Lfi/a;->show()V

    .line 154
    .line 155
    .line 156
    :cond_8
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 157
    .line 158
    return-object p0
.end method

.method private static final l0(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;)Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->Z()Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->H()Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/purchase/t;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/t;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog$e;

    .line 23
    .line 24
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog$e;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method private static final m0(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;Lcom/startshorts/androidplayer/viewmodel/subs/b;)Lkotlin/Unit;
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/subs/b$b;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/subs/b$b;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/subs/b$b;->a()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->c0()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->i0()V

    .line 17
    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->T()V

    .line 22
    .line 23
    .line 24
    goto/16 :goto_0

    .line 25
    .line 26
    :cond_1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/subs/b$c;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/subs/b$c;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/subs/b$c;->a()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->r0(Ljava/util/List;)V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_0

    .line 40
    .line 41
    :cond_2
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/subs/b$g;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    if-eqz v0, :cond_a

    .line 45
    .line 46
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->q:Lhi/b;

    .line 47
    .line 48
    if-nez v0, :cond_3

    .line 49
    .line 50
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_3
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->c0()V

    .line 54
    .line 55
    .line 56
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/subs/b$g;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/subs/b$g;->b()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz p1, :cond_6

    .line 63
    .line 64
    check-cast p1, Ljava/lang/Iterable;

    .line 65
    .line 66
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    move-object v2, v0

    .line 81
    check-cast v2, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 82
    .line 83
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    iget v3, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->i:I

    .line 88
    .line 89
    if-ne v2, v3, :cond_4

    .line 90
    .line 91
    move-object v1, v0

    .line 92
    :cond_5
    check-cast v1, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 93
    .line 94
    :cond_6
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->j:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 95
    .line 96
    if-nez v1, :cond_7

    .line 97
    .line 98
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->i0()V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_7
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuDetails()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    if-nez p1, :cond_9

    .line 107
    .line 108
    sget-object p1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->C()Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-eqz p1, :cond_8

    .line 115
    .line 116
    invoke-direct {p0, v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->z0(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_8
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->i0()V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_9
    invoke-direct {p0, v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->z0(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_a
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/subs/b$a;

    .line 129
    .line 130
    if-eqz v0, :cond_b

    .line 131
    .line 132
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->c0()V

    .line 133
    .line 134
    .line 135
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/subs/b$a;

    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/subs/b$a;->a()Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getMsg()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    const/4 v0, 0x0

    .line 146
    const/4 v2, 0x2

    .line 147
    invoke-static {p0, p1, v0, v2, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->B(Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;Ljava/lang/String;IILjava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    :cond_b
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 151
    .line 152
    return-object p0
.end method

.method private static final n0(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;)Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->Z()Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/purchase/v;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog$e;

    .line 23
    .line 24
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog$e;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method private static final o0(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;Lcom/startshorts/androidplayer/viewmodel/immersion/f;)Lkotlin/Unit;
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/startshorts/androidplayer/viewmodel/immersion/f$d;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method private static final p0(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;)Landroidx/lifecycle/ViewModelProvider;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final q0()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->E(F)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->Y()Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/immersion/e$d;

    .line 15
    .line 16
    invoke-direct {v2, v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$d;-><init>(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->j0(Lcom/startshorts/androidplayer/viewmodel/immersion/e;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->Y()Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v8, Lcom/startshorts/androidplayer/viewmodel/immersion/e$m;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->P()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    const/16 v6, 0x8

    .line 39
    .line 40
    const/4 v7, 0x0

    .line 41
    const/4 v4, 0x1

    .line 42
    const/4 v5, 0x0

    .line 43
    move-object v1, v8

    .line 44
    invoke-direct/range {v1 .. v7}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$m;-><init>(Landroid/content/Context;ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v8}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->j0(Lcom/startshorts/androidplayer/viewmodel/immersion/e;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method private final r0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzc/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->U()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/a$h;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$h;-><init>(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private final s0()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->X()Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/subs/a$e;->a:Lcom/startshorts/androidplayer/viewmodel/subs/a$e;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->N(Lcom/startshorts/androidplayer/viewmodel/subs/a;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final t0()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->X()Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/subs/a$f;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 8
    .line 9
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/subs/a$f;-><init>(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->N(Lcom/startshorts/androidplayer/viewmodel/subs/a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final w0()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->c0()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lhi/b;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "requireContext(...)"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Lhi/b;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Lhi/b;->setCancelable(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lfi/a;->show()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->q:Lhi/b;

    .line 26
    .line 27
    return-void
.end method

.method private final x0()V
    .locals 3

    .line 1
    new-instance v0, Lgi/d;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "requireContext(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lgi/d;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog$f;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog$f;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lgi/d;->x(Lgi/d$b;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lfi/a;->show()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private final y0()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->d0()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lhi/b;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "requireContext(...)"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Lhi/b;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Lhi/b;->setCancelable(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lfi/a;->show()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->r:Lhi/b;

    .line 26
    .line 27
    return-void
.end method

.method private final z0(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 18

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->U()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v15, Lcom/startshorts/androidplayer/viewmodel/billing/a$j;

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->h()Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/16 v14, 0xff8

    .line 12
    .line 13
    const/16 v16, 0x0

    .line 14
    .line 15
    const-string v2, "subscribe_expire_popup"

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v8, 0x0

    .line 21
    const/4 v9, 0x0

    .line 22
    const/4 v10, 0x0

    .line 23
    const/4 v11, 0x0

    .line 24
    const/4 v12, 0x0

    .line 25
    const/4 v13, 0x0

    .line 26
    move-object v1, v15

    .line 27
    move-object/from16 v4, p1

    .line 28
    .line 29
    move-object/from16 v17, v15

    .line 30
    .line 31
    move-object/from16 v15, v16

    .line 32
    .line 33
    invoke-direct/range {v1 .. v15}, Lcom/startshorts/androidplayer/viewmodel/billing/a$j;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;ILzc/k;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    .line 35
    .line 36
    move-object/from16 v1, v17

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final V()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->l:Z

    .line 2
    .line 3
    return v0
.end method

.method public final W()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public dismiss()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->j:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 7
    .line 8
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 9
    .line 10
    sget-object v1, Lud/a;->a:Lud/a;

    .line 11
    .line 12
    invoke-virtual {v1}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    const/4 v5, 0x0

    .line 17
    const-string v1, "SubsProExpiredDialog"

    .line 18
    .line 19
    invoke-virtual/range {v0 .. v5}, Lcom/startshorts/androidplayer/manager/event/EventManager;->a1(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public k()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_subs_pro_expired:I

    .line 2
    .line 3
    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "SubsProExpiredDialog"

    .line 2
    .line 3
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 19
    .line 20
    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string p2, "mSubsType -> "

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget p2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->i:I

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->q(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->f0()V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->h0()V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->g0()V

    .line 50
    .line 51
    .line 52
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->e0()V

    .line 53
    .line 54
    .line 55
    sget-object p1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 56
    .line 57
    sget-object p2, Lud/a;->a:Lud/a;

    .line 58
    .line 59
    invoke-virtual {p2}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    const/16 v7, 0x36

    .line 64
    .line 65
    const/4 v8, 0x0

    .line 66
    const-string v1, "subscribe_expire_popup"

    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    const/4 v3, 0x0

    .line 70
    const/4 v5, 0x0

    .line 71
    const/4 v6, 0x0

    .line 72
    move-object v0, p1

    .line 73
    invoke-static/range {v0 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->W0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    const/16 v6, 0xe

    .line 81
    .line 82
    const/4 v7, 0x0

    .line 83
    const-string v1, "subscribe_expire_popup"

    .line 84
    .line 85
    const/4 v4, 0x0

    .line 86
    invoke-static/range {v0 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->Y0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->j:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 90
    .line 91
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 92
    .line 93
    invoke-virtual {p2}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    const/16 v8, 0x60

    .line 98
    .line 99
    const/4 v9, 0x0

    .line 100
    const-string v1, "SubsProExpiredDialog"

    .line 101
    .line 102
    const/4 v5, 0x0

    .line 103
    const/4 v6, 0x0

    .line 104
    invoke-static/range {v0 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->e1(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ZLjava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public p()I
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-object v1, Lfk/z;->a:Lfk/z;

    .line 8
    .line 9
    invoke-virtual {v1}, Lfk/z;->p()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    mul-int/lit8 v1, v1, 0x2

    .line 14
    .line 15
    sub-int/2addr v0, v1

    .line 16
    return v0
.end method

.method public final receiveEpisodeListUnlockedEvent(Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "receive EpisodeListUnlockedEvent -> unlockType("

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->getUnlockType()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ") userRecharged("

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->getUserRecharged()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, ") episodeId("

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->getFirstUnlockedEpisodeId()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const/16 v1, 0x29

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->q(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 60
    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->getFirstUnlockedEpisodeId()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-ne v0, p1, :cond_0

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->dismiss()V

    .line 74
    .line 75
    .line 76
    :cond_0
    return-void
.end method

.method public final u0(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    return-void
.end method

.method public final v0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->i:I

    .line 2
    .line 3
    return-void
.end method
