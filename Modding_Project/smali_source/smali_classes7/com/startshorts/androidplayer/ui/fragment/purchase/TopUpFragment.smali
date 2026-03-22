.class public final Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarListFragment;
.source "TopUpFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarListFragment<",
        "Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;",
        "Lcom/startshorts/androidplayer/databinding/FragmentTopUpBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTopUpFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TopUpFragment.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n*L\n1#1,987:1\n1#2:988\n1863#3,2:989\n774#3:1045\n865#3,2:1046\n1557#3:1048\n1628#3,3:1049\n774#3:1052\n865#3,2:1053\n1557#3:1055\n1628#3,3:1056\n15#4,9:991\n15#4,9:1000\n15#4,9:1009\n15#4,9:1018\n15#4,9:1027\n15#4,9:1036\n*S KotlinDebug\n*F\n+ 1 TopUpFragment.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment\n*L\n353#1:989,2\n948#1:1045\n948#1:1046,2\n950#1:1048\n950#1:1049,3\n956#1:1052\n956#1:1053,2\n958#1:1055\n958#1:1056,3\n395#1:991,9\n474#1:1000,9\n526#1:1009,9\n788#1:1018,9\n799#1:1027,9\n842#1:1036,9\n*E\n"
    }
.end annotation


# static fields
.field public static final W:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final B:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final C:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private D:Z

.field private final E:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final F:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$mPropertyObserver$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private G:Lhi/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private H:J

.field private I:J

.field private J:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private K:I

.field private L:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private M:Z

.field private N:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private O:Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private P:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private Q:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private R:Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private S:Ltj/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private T:Z

.field private U:I

.field private V:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->W:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarListFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/w;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/w;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->B:Lms/i;

    .line 14
    .line 15
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/y;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/y;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->C:Lms/i;

    .line 25
    .line 26
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/z;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/z;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->E:Lms/i;

    .line 36
    .line 37
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$mPropertyObserver$1;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$mPropertyObserver$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->F:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$mPropertyObserver$1;

    .line 43
    .line 44
    sget-object v0, Lqf/e;->a:Lqf/e;

    .line 45
    .line 46
    invoke-virtual {v0}, Lqf/e;->a()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->K:I

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->M:Z

    .line 54
    .line 55
    return-void
.end method

.method private final A1(Lcom/startshorts/androidplayer/viewmodel/purchase/b$f;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$e;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$e;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;Lcom/startshorts/androidplayer/viewmodel/purchase/b$f;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$f;

    .line 7
    .line 8
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$f;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0, p1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final B1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->G:Lhi/b;

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
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->G:Lhi/b;

    .line 10
    .line 11
    return-void
.end method

.method private final C1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentTopUpBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentTopUpBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->e0()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private final D1()V
    .locals 4

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->g0()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/startshorts/androidplayer/databinding/FragmentTopUpBinding;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/FragmentTopUpBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/startshorts/androidplayer/databinding/FragmentTopUpBinding;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/FragmentTopUpBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v3, "coins : "

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method private final E1()V
    .locals 2

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$string;->top_up_fragment_restore:I

    .line 2
    .line 3
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/purchase/f0;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/f0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarListFragment;->F0(ILandroid/view/View$OnClickListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static final F1(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;Landroid/view/View;)V
    .locals 6

    .line 1
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-wide v2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->H:J

    .line 8
    .line 9
    sub-long v2, v0, v2

    .line 10
    .line 11
    const-wide/16 v4, 0x1388

    .line 12
    .line 13
    cmp-long p1, v2, v4

    .line 14
    .line 15
    if-ltz p1, :cond_0

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->H:J

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-static {p0, v0, p1, v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->m2(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;Ljava/lang/String;ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-wide v2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->I:J

    .line 26
    .line 27
    sub-long v2, v0, v2

    .line 28
    .line 29
    const-wide/16 v4, 0x3e8

    .line 30
    .line 31
    cmp-long p1, v2, v4

    .line 32
    .line 33
    if-ltz p1, :cond_1

    .line 34
    .line 35
    iput-wide v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->I:J

    .line 36
    .line 37
    sget p1, Lcom/startshorts/androidplayer/R$string;->common_duplicate_op_tip:I

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->w(I)V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    return-void
.end method

.method private final G1()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentTopUpBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentTopUpBinding;->g:Landroidx/databinding/ViewStubProxy;

    .line 8
    .line 9
    const-string v1, "descViewstub"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Ljk/e0;->f(Landroidx/databinding/ViewStubProxy;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method private final H1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->T:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->S:Ltj/a;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public static synthetic I0(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->K1(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final I1(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->Q:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->K:I

    .line 6
    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-boolean v3, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->M:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->h1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static synthetic J0(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->N1(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final J1(Ljava/lang/Integer;I)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v3, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->N:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 4
    .line 5
    if-eqz v3, :cond_0

    .line 6
    .line 7
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 8
    .line 9
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v10

    .line 13
    const/16 v11, 0x7c

    .line 14
    .line 15
    const/4 v12, 0x0

    .line 16
    const-string v2, "recharge_page"

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x0

    .line 22
    const/4 v8, 0x0

    .line 23
    move-object/from16 v9, p1

    .line 24
    .line 25
    invoke-static/range {v1 .. v12}, Lcom/startshorts/androidplayer/manager/event/EventManager;->T0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v15, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->O:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 30
    .line 31
    if-eqz v15, :cond_1

    .line 32
    .line 33
    sget-object v13, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 34
    .line 35
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v23

    .line 39
    const/16 v24, 0xfc

    .line 40
    .line 41
    const/16 v25, 0x0

    .line 42
    .line 43
    const-string v14, "recharge_page"

    .line 44
    .line 45
    const/16 v16, 0x0

    .line 46
    .line 47
    const/16 v17, 0x0

    .line 48
    .line 49
    const/16 v18, 0x0

    .line 50
    .line 51
    const/16 v19, 0x0

    .line 52
    .line 53
    const/16 v20, 0x0

    .line 54
    .line 55
    const/16 v21, 0x0

    .line 56
    .line 57
    move-object/from16 v22, p1

    .line 58
    .line 59
    invoke-static/range {v13 .. v25}, Lcom/startshorts/androidplayer/manager/event/EventManager;->U0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic K0(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Landroidx/lifecycle/ViewModelProvider;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->Q1(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final K1(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->u1()Landroidx/lifecycle/ViewModelProvider;

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
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/purchase/d0;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/d0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$m;

    .line 23
    .line 24
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$m;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public static synthetic L0(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->o1(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final L1(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;Lcom/startshorts/androidplayer/viewmodel/billing/b;)Lkotlin/Unit;
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$q;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->E1()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->W1()V

    .line 9
    .line 10
    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$m;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$m;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$m;->a()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/util/Collection;

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    :cond_1
    move v1, v2

    .line 36
    :cond_2
    xor-int/lit8 v0, v1, 0x1

    .line 37
    .line 38
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->D:Z

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->j0()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_d

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$m;->a()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->z1(Ljava/util/List;)V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_0

    .line 54
    .line 55
    :cond_3
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$u;

    .line 56
    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    sget p1, Lcom/startshorts/androidplayer/R$string;->common_user_canceled:I

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->w(I)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_0

    .line 65
    .line 66
    :cond_4
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$c;

    .line 67
    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$c;

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$c;->a()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$c;->b()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$c;->c()Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-direct {p0, v0, v1, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->x1(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V

    .line 85
    .line 86
    .line 87
    goto/16 :goto_0

    .line 88
    .line 89
    :cond_5
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$b;

    .line 90
    .line 91
    if-eqz v0, :cond_6

    .line 92
    .line 93
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->d2()V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_0

    .line 97
    .line 98
    :cond_6
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$e;

    .line 99
    .line 100
    if-eqz v0, :cond_7

    .line 101
    .line 102
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$e;

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$e;->a()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$e;->b()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$e;->c()Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-direct {p0, v0, v1, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->y1(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_7
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$d;

    .line 121
    .line 122
    if-eqz v0, :cond_8

    .line 123
    .line 124
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->d2()V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_8
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$g;

    .line 129
    .line 130
    if-eqz v0, :cond_9

    .line 131
    .line 132
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->B1()V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_9
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$i;

    .line 137
    .line 138
    if-eqz v0, :cond_a

    .line 139
    .line 140
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->B1()V

    .line 141
    .line 142
    .line 143
    sget p1, Lcom/startshorts/androidplayer/R$string;->top_up_fragment_not_find_lost_order_tip:I

    .line 144
    .line 145
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->w(I)V

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_a
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$k;

    .line 150
    .line 151
    if-eqz v0, :cond_b

    .line 152
    .line 153
    new-instance v0, Lgi/f;

    .line 154
    .line 155
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    const-string v1, "requireContext(...)"

    .line 160
    .line 161
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$k;

    .line 165
    .line 166
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$k;->a()Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-direct {v0, p0, p1}, Lgi/f;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Lfi/a;->show()V

    .line 174
    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_b
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$a;

    .line 178
    .line 179
    if-eqz v0, :cond_d

    .line 180
    .line 181
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$a;

    .line 182
    .line 183
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$a;->a()Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-eqz v0, :cond_c

    .line 188
    .line 189
    sget v0, Lcom/startshorts/androidplayer/R$string;->top_up_fragment_recharge_success:I

    .line 190
    .line 191
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->w(I)V

    .line 192
    .line 193
    .line 194
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->X1()V

    .line 195
    .line 196
    .line 197
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 198
    .line 199
    const/4 v2, 0x3

    .line 200
    const/4 v3, 0x0

    .line 201
    invoke-static {v0, v1, v3, v2, v3}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->c1(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->P:Ljava/lang/Integer;

    .line 205
    .line 206
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->M:Z

    .line 207
    .line 208
    invoke-direct {p0, v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->J1(Ljava/lang/Integer;I)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$a;->b()Lcom/startshorts/androidplayer/bean/order/OtherOrderResult;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->k1(Lcom/startshorts/androidplayer/bean/order/OtherOrderResult;)V

    .line 216
    .line 217
    .line 218
    goto :goto_0

    .line 219
    :cond_c
    sget p1, Lcom/startshorts/androidplayer/R$string;->payment_failure:I

    .line 220
    .line 221
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->w(I)V

    .line 222
    .line 223
    .line 224
    :cond_d
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 225
    .line 226
    return-object p0
.end method

.method public static synthetic M0(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->j2(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final M1(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->u1()Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->o()Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/purchase/b0;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/b0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$m;

    .line 23
    .line 24
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$m;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->R()Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/purchase/c0;

    .line 35
    .line 36
    invoke-direct {v2, v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/c0;-><init>(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)V

    .line 37
    .line 38
    .line 39
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$m;

    .line 40
    .line 41
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$m;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 45
    .line 46
    .line 47
    return-object v0
.end method

.method public static synthetic N0(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;ILcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->P1(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;ILcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final N1(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getState()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getMsg()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, v1, v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/ListFragment;->x0(ZZLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method public static synthetic O0(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;Lcom/startshorts/androidplayer/viewmodel/billing/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->L1(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;Lcom/startshorts/androidplayer/viewmodel/billing/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final O1(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;Lcom/startshorts/androidplayer/viewmodel/purchase/b;)Lkotlin/Unit;
    .locals 9

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/viewmodel/purchase/b$d;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    sget-object v0, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->a:Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->p()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->I(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->a:Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->Q()Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->getSubscribeSkuResponses()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move-object v4, v3

    .line 33
    :goto_0
    new-instance v5, Lcom/startshorts/androidplayer/ui/fragment/purchase/e0;

    .line 34
    .line 35
    invoke-direct {v5, p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/e0;-><init>(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2, v4, v5}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->u(ZLjava/util/List;Lat/n;)V

    .line 39
    .line 40
    .line 41
    check-cast p2, Lcom/startshorts/androidplayer/viewmodel/purchase/b$d;

    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$d;->a()Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_2

    .line 48
    .line 49
    invoke-virtual {p1, v1, v3}, Lcom/startshorts/androidplayer/ui/fragment/base/ListFragment;->y0(ZLjava/util/List;)V

    .line 50
    .line 51
    .line 52
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->c2()V

    .line 53
    .line 54
    .line 55
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->e2()V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_5

    .line 59
    .line 60
    :cond_2
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->m1()V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_5

    .line 64
    .line 65
    :cond_3
    instance-of p0, p2, Lcom/startshorts/androidplayer/viewmodel/purchase/b$e;

    .line 66
    .line 67
    if-eqz p0, :cond_4

    .line 68
    .line 69
    check-cast p2, Lcom/startshorts/androidplayer/viewmodel/purchase/b$e;

    .line 70
    .line 71
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$e;->a()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-direct {p1, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->V1(Ljava/util/List;)V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_5

    .line 79
    .line 80
    :cond_4
    instance-of p0, p2, Lcom/startshorts/androidplayer/viewmodel/purchase/b$k;

    .line 81
    .line 82
    if-eqz p0, :cond_5

    .line 83
    .line 84
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->c2()V

    .line 85
    .line 86
    .line 87
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->e2()V

    .line 88
    .line 89
    .line 90
    check-cast p2, Lcom/startshorts/androidplayer/viewmodel/purchase/b$k;

    .line 91
    .line 92
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$k;->a()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    iput-object p0, p1, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->R:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 97
    .line 98
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$k;->c()Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$k;->b()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-direct {p1, p0, p2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->p1(Ljava/util/List;Ljava/util/List;)V

    .line 107
    .line 108
    .line 109
    goto/16 :goto_5

    .line 110
    .line 111
    :cond_5
    instance-of p0, p2, Lcom/startshorts/androidplayer/viewmodel/purchase/b$f;

    .line 112
    .line 113
    if-eqz p0, :cond_6

    .line 114
    .line 115
    check-cast p2, Lcom/startshorts/androidplayer/viewmodel/purchase/b$f;

    .line 116
    .line 117
    invoke-direct {p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->A1(Lcom/startshorts/androidplayer/viewmodel/purchase/b$f;)V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_5

    .line 121
    .line 122
    :cond_6
    instance-of p0, p2, Lcom/startshorts/androidplayer/viewmodel/purchase/b$g;

    .line 123
    .line 124
    if-eqz p0, :cond_13

    .line 125
    .line 126
    check-cast p2, Lcom/startshorts/androidplayer/viewmodel/purchase/b$g;

    .line 127
    .line 128
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$g;->a()Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;->getOrderStatus()Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    iget-object v0, p1, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->L:Ljava/lang/Integer;

    .line 137
    .line 138
    if-eqz v0, :cond_13

    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    const-string v4, "failure"

    .line 145
    .line 146
    const-string v5, "success"

    .line 147
    .line 148
    const/4 v6, 0x3

    .line 149
    const/4 v7, 0x2

    .line 150
    const-string v8, ""

    .line 151
    .line 152
    if-eq v0, v1, :cond_d

    .line 153
    .line 154
    if-eq v0, v7, :cond_7

    .line 155
    .line 156
    goto/16 :goto_5

    .line 157
    .line 158
    :cond_7
    if-nez p0, :cond_8

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    if-ne p0, v1, :cond_c

    .line 166
    .line 167
    sget p0, Lcom/startshorts/androidplayer/R$string;->subscription_detail_activity_subs_success:I

    .line 168
    .line 169
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->w(I)V

    .line 170
    .line 171
    .line 172
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->X1()V

    .line 173
    .line 174
    .line 175
    sget-object p0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 176
    .line 177
    invoke-static {p0, v2, v3, v6, v3}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->c1(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    invoke-direct {p1, v5}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->I1(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    sget-object p0, Lbf/e;->a:Lbf/e;

    .line 184
    .line 185
    invoke-virtual {p0}, Lbf/e;->i()Lbf/e$a;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    invoke-virtual {p0}, Lbf/e$a;->i()V

    .line 190
    .line 191
    .line 192
    sget-object p0, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->a:Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;

    .line 193
    .line 194
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$g;->a()Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;->getCurrencyCode()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    if-nez p1, :cond_9

    .line 203
    .line 204
    move-object p1, v8

    .line 205
    :cond_9
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$g;->a()Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;->getPrice()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    if-nez v0, :cond_a

    .line 214
    .line 215
    move-object v0, v8

    .line 216
    :cond_a
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$g;->a()Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;->getOrderNo()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    if-nez p2, :cond_b

    .line 225
    .line 226
    goto :goto_1

    .line 227
    :cond_b
    move-object v8, p2

    .line 228
    :goto_1
    invoke-virtual {p0, p1, v0, v8}, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_c
    :goto_2
    sget p0, Lcom/startshorts/androidplayer/R$string;->payment_failure:I

    .line 233
    .line 234
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->w(I)V

    .line 235
    .line 236
    .line 237
    invoke-direct {p1, v4}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->I1(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    goto :goto_5

    .line 241
    :cond_d
    if-nez p0, :cond_e

    .line 242
    .line 243
    goto :goto_4

    .line 244
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 245
    .line 246
    .line 247
    move-result p0

    .line 248
    if-ne p0, v7, :cond_12

    .line 249
    .line 250
    sget p0, Lcom/startshorts/androidplayer/R$string;->top_up_fragment_recharge_success:I

    .line 251
    .line 252
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->w(I)V

    .line 253
    .line 254
    .line 255
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->X1()V

    .line 256
    .line 257
    .line 258
    sget-object p0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 259
    .line 260
    invoke-static {p0, v2, v3, v6, v3}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->c1(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    invoke-direct {p1, v5}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->I1(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    sget-object p0, Lbf/e;->a:Lbf/e;

    .line 267
    .line 268
    invoke-virtual {p0}, Lbf/e;->i()Lbf/e$a;

    .line 269
    .line 270
    .line 271
    move-result-object p0

    .line 272
    invoke-virtual {p0}, Lbf/e$a;->i()V

    .line 273
    .line 274
    .line 275
    sget-object p0, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->a:Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;

    .line 276
    .line 277
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$g;->a()Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;->getCurrencyCode()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    if-nez p1, :cond_f

    .line 286
    .line 287
    move-object p1, v8

    .line 288
    :cond_f
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$g;->a()Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;->getPrice()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    if-nez v0, :cond_10

    .line 297
    .line 298
    move-object v0, v8

    .line 299
    :cond_10
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$g;->a()Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;

    .line 300
    .line 301
    .line 302
    move-result-object p2

    .line 303
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;->getOrderNo()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p2

    .line 307
    if-nez p2, :cond_11

    .line 308
    .line 309
    goto :goto_3

    .line 310
    :cond_11
    move-object v8, p2

    .line 311
    :goto_3
    invoke-virtual {p0, p1, v0, v8}, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    goto :goto_5

    .line 315
    :cond_12
    :goto_4
    sget p0, Lcom/startshorts/androidplayer/R$string;->payment_failure:I

    .line 316
    .line 317
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->w(I)V

    .line 318
    .line 319
    .line 320
    invoke-direct {p1, v4}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->I1(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    :cond_13
    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 324
    .line 325
    return-object p0
.end method

.method public static synthetic P0(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->M1(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final P1(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;ILcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    const-string p3, "newSubList"

    .line 2
    .line 3
    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->Q()Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p4}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->setSubscribeSkuResponses(Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 p0, -0x1

    .line 16
    if-le p2, p0, :cond_1

    .line 17
    .line 18
    iput p2, p1, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->U:I

    .line 19
    .line 20
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0
.end method

.method public static synthetic Q0(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;Lcom/startshorts/androidplayer/viewmodel/purchase/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->O1(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;Lcom/startshorts/androidplayer/viewmodel/purchase/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final Q1(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Landroidx/lifecycle/ViewModelProvider;
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

.method public static synthetic R0(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->F1(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final R1()V
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->F:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$mPropertyObserver$1;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->O(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic S0(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->k2(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final S1(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V
    .locals 13

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->N:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x3e8

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentCoinSku;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    check-cast p1, Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentCoinSku;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentCoinSku;->getResult()Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->s1()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    new-instance v6, Lcom/startshorts/androidplayer/viewmodel/billing/a$k;

    .line 29
    .line 30
    const/4 v4, 0x4

    .line 31
    const/4 v5, 0x0

    .line 32
    const-string v1, "recharge_page"

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    move-object v0, v6

    .line 36
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/billing/a$k;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v6}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->s1()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v12, Lcom/startshorts/androidplayer/viewmodel/billing/a$e;

    .line 48
    .line 49
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->r1()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->j()Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    iget-object v8, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->V:Ljava/lang/String;

    .line 58
    .line 59
    const/16 v10, 0xa8

    .line 60
    .line 61
    const/4 v11, 0x0

    .line 62
    const/4 v5, 0x0

    .line 63
    const/4 v6, 0x0

    .line 64
    const/4 v7, 0x0

    .line 65
    const/4 v9, 0x0

    .line 66
    move-object v1, v12

    .line 67
    move-object v4, p1

    .line 68
    invoke-direct/range {v1 .. v11}, Lcom/startshorts/androidplayer/viewmodel/billing/a$e;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v12}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_0
    return-void
.end method

.method public static final synthetic T0(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->r1()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final T1(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->O:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a0()Lcom/startshorts/androidplayer/bean/account/Account;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/account/Account;->isSubscription()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v2, v1

    .line 18
    :goto_0
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/account/Account;->isThirdSubscription()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    :cond_1
    if-eqz v2, :cond_2

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    sget v0, Lcom/startshorts/androidplayer/R$string;->subscribed_already:I

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->x(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$h;

    .line 43
    .line 44
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$h;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 45
    .line 46
    .line 47
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$i;

    .line 48
    .line 49
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$i;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-static {p0, v0, p1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public static final synthetic U0(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->J:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private final U1()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->t1()Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v7, Lcom/startshorts/androidplayer/viewmodel/purchase/a$g;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->J:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v5, 0x4

    .line 10
    const/4 v6, 0x0

    .line 11
    const-string v2, "top_up"

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    move-object v1, v7

    .line 15
    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/viewmodel/purchase/a$g;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v7}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->Y(Lcom/startshorts/androidplayer/viewmodel/purchase/a;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static final synthetic V0(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->s1()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final V1(Ljava/util/List;)V
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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->s1()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

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

.method public static final synthetic W0(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->V:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private final W1()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->t1()Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/purchase/a$f;->b:Lcom/startshorts/androidplayer/viewmodel/purchase/a$f;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->Y(Lcom/startshorts/androidplayer/viewmodel/purchase/a;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static final synthetic X0(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->R:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    return-object p0
.end method

.method private final X1()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->t1()Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->M()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "reloadCoinSkuList"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->t1()Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "topup"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->K(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->Z1()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->T()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->R()V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public static final synthetic Y0(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->t1()Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final Y1(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/startshorts/androidplayer/bean/purchase/CoinSku;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lqf/h;->a:Lqf/h;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lqf/h;->p(Ljava/util/List;Ljava/util/List;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->T:Z

    .line 8
    .line 9
    const-string v1, "null cannot be cast to non-null type com.startshorts.androidplayer.adapter.purchase.TopUpSku7Adapter"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v0, :cond_3

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    check-cast p1, Ljava/util/Collection;

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object p1, v2

    .line 24
    :goto_0
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->i2(Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    check-cast p2, Ljava/util/Collection;

    .line 30
    .line 31
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move-object p1, v2

    .line 37
    :goto_1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->g2(Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->e0()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    check-cast p1, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;

    .line 48
    .line 49
    const/4 p2, -0x1

    .line 50
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->T(I)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->S:Ltj/a;

    .line 54
    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    const/16 p2, 0x8

    .line 58
    .line 59
    invoke-interface {p1, p2}, Ltj/a;->setBtnVisibility(I)V

    .line 60
    .line 61
    .line 62
    :cond_2
    iput-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->S:Ltj/a;

    .line 63
    .line 64
    goto/16 :goto_5

    .line 65
    .line 66
    :cond_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->S:Ltj/a;

    .line 67
    .line 68
    if-nez v0, :cond_4

    .line 69
    .line 70
    sget-object v0, Ltj/b;->a:Ltj/b;

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Lcom/startshorts/androidplayer/databinding/FragmentTopUpBinding;

    .line 77
    .line 78
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/FragmentTopUpBinding;->l:Landroidx/databinding/ViewStubProxy;

    .line 79
    .line 80
    const-string v4, "stubPaymentMethod"

    .line 81
    .line 82
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v3}, Ltj/b;->a(Landroidx/databinding/ViewStubProxy;)Ltj/a;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->S:Ltj/a;

    .line 90
    .line 91
    :cond_4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->S:Ltj/a;

    .line 92
    .line 93
    const/4 v3, 0x0

    .line 94
    if-eqz v0, :cond_5

    .line 95
    .line 96
    invoke-interface {v0, v3}, Ltj/a;->setBtnVisibility(I)V

    .line 97
    .line 98
    .line 99
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .line 103
    .line 104
    if-eqz p1, :cond_6

    .line 105
    .line 106
    check-cast p1, Ljava/util/Collection;

    .line 107
    .line 108
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 109
    .line 110
    .line 111
    :cond_6
    if-eqz p2, :cond_8

    .line 112
    .line 113
    check-cast p2, Ljava/lang/Iterable;

    .line 114
    .line 115
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    :cond_7
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    if-eqz p2, :cond_8

    .line 124
    .line 125
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    check-cast p2, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 130
    .line 131
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuType()I

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    const/16 v5, 0x3e7

    .line 136
    .line 137
    if-eq v4, v5, :cond_7

    .line 138
    .line 139
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuType()I

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    const/16 v5, 0x3e8

    .line 144
    .line 145
    if-eq v4, v5, :cond_7

    .line 146
    .line 147
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_8
    invoke-direct {p0, v2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->i2(Ljava/util/List;)V

    .line 152
    .line 153
    .line 154
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->g2(Ljava/util/List;)V

    .line 155
    .line 156
    .line 157
    iget p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->U:I

    .line 158
    .line 159
    if-ltz p1, :cond_a

    .line 160
    .line 161
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 162
    .line 163
    .line 164
    move-result p2

    .line 165
    if-lt p1, p2, :cond_9

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->e0()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    check-cast p1, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;

    .line 176
    .line 177
    iget p2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->U:I

    .line 178
    .line 179
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->T(I)V

    .line 180
    .line 181
    .line 182
    iget p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->U:I

    .line 183
    .line 184
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    check-cast p1, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_a
    :goto_3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->e0()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    check-cast p1, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;

    .line 199
    .line 200
    invoke-virtual {p1, v3}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->T(I)V

    .line 201
    .line 202
    .line 203
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    check-cast p1, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;

    .line 208
    .line 209
    :goto_4
    if-eqz p1, :cond_b

    .line 210
    .line 211
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->a2(Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;)V

    .line 212
    .line 213
    .line 214
    :cond_b
    :goto_5
    return-void
.end method

.method public static final synthetic Z0(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->C1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final Z1()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->n1()Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->k0(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->g0()Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->e0()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public static final synthetic a1(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->D1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final a2(Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->H1()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_1

    .line 10
    .line 11
    instance-of v2, v1, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    move-object v2, v1

    .line 16
    check-cast v2, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 17
    .line 18
    invoke-direct {v0, v2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->S1(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    instance-of v2, v1, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    move-object v2, v1

    .line 27
    check-cast v2, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 28
    .line 29
    invoke-direct {v0, v2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->T1(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    new-instance v8, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$n;

    .line 33
    .line 34
    invoke-direct {v8, v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$n;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)V

    .line 35
    .line 36
    .line 37
    instance-of v2, v1, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    sget-object v9, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 42
    .line 43
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->v1()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    move-object v5, v1

    .line 48
    check-cast v5, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 49
    .line 50
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->r1()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v16

    .line 54
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->J:Ljava/lang/String;

    .line 55
    .line 56
    const/16 v19, 0x138

    .line 57
    .line 58
    const/16 v20, 0x0

    .line 59
    .line 60
    const/4 v12, 0x0

    .line 61
    const/4 v13, 0x0

    .line 62
    const/4 v14, 0x0

    .line 63
    const/4 v15, 0x0

    .line 64
    const/16 v18, 0x0

    .line 65
    .line 66
    move-object v11, v5

    .line 67
    move-object/from16 v17, v1

    .line 68
    .line 69
    invoke-static/range {v9 .. v20}, Lcom/startshorts/androidplayer/manager/event/EventManager;->B0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iget-object v3, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->S:Ltj/a;

    .line 73
    .line 74
    if-eqz v3, :cond_3

    .line 75
    .line 76
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->v1()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->w1()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    const/4 v7, 0x0

    .line 85
    iget-object v9, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->J:Ljava/lang/String;

    .line 86
    .line 87
    invoke-interface/range {v3 .. v9}, Ltj/a;->l(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/a;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    instance-of v2, v1, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 92
    .line 93
    if-eqz v2, :cond_3

    .line 94
    .line 95
    sget-object v9, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 96
    .line 97
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->v1()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v10

    .line 101
    move-object v5, v1

    .line 102
    check-cast v5, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 103
    .line 104
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->r1()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v17

    .line 108
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->J:Ljava/lang/String;

    .line 109
    .line 110
    const/16 v20, 0x278

    .line 111
    .line 112
    const/16 v21, 0x0

    .line 113
    .line 114
    const/4 v12, 0x0

    .line 115
    const/4 v13, 0x0

    .line 116
    const/4 v14, 0x0

    .line 117
    const/4 v15, 0x0

    .line 118
    const/16 v16, 0x0

    .line 119
    .line 120
    const/16 v19, 0x0

    .line 121
    .line 122
    move-object v11, v5

    .line 123
    move-object/from16 v18, v1

    .line 124
    .line 125
    invoke-static/range {v9 .. v21}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    iget-object v3, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->S:Ltj/a;

    .line 129
    .line 130
    if-eqz v3, :cond_3

    .line 131
    .line 132
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->v1()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->w1()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    iget-object v9, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->J:Ljava/lang/String;

    .line 141
    .line 142
    iget-object v10, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->R:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 143
    .line 144
    const/4 v7, 0x0

    .line 145
    invoke-interface/range {v3 .. v10}, Ltj/a;->n(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/a;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 146
    .line 147
    .line 148
    :cond_3
    :goto_1
    return-void
.end method

.method public static final synthetic b1(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->D:Z

    .line 2
    .line 3
    return p0
.end method

.method private final b2()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->I()Lcom/hades/aar/pagestate/StateViewGroup;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 17
    .line 18
    const/4 v2, -0x1

    .line 19
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 20
    .line 21
    const/high16 v2, 0x42c80000    # 100.0f

    .line 22
    .line 23
    invoke-static {v2}, Ljk/g;->a(F)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public static final synthetic c1(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->H1()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final c2()V
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->D0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentTopUpBinding;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentTopUpBinding;->g:Landroidx/databinding/ViewStubProxy;

    .line 17
    .line 18
    const-string v1, "descViewstub"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Ljk/e0;->g(Landroidx/databinding/ViewStubProxy;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static final synthetic d1(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->S1(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final d2()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$o;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$o;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$p;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$p;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0, v1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static final synthetic e1(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->T1(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final e2()V
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->D0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentTopUpBinding;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentTopUpBinding;->i:Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;

    .line 16
    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentTopUpBinding;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentTopUpBinding;->i:Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentTopUpBinding;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentTopUpBinding;->i:Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;->B()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public static final synthetic f1(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->L:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method private final f2()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->B1()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$r;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$r;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$s;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$s;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v0, v1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static final synthetic g1(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;Lhi/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->G:Lhi/b;

    .line 2
    .line 3
    return-void
.end method

.method private final g2(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/ListFragment;->y0(ZLjava/util/List;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static final synthetic h1(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->a2(Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final h2()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->j()Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->a:Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;

    .line 8
    .line 9
    const-string v2, "recharge_page"

    .line 10
    .line 11
    invoke-virtual {v1, v0, v2}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->h(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public static final synthetic i1(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->l2(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final i2(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ljava/util/Collection;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentTopUpBinding;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentTopUpBinding;->m:Landroidx/databinding/ViewStubProxy;

    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Ljk/e0;->g(Landroidx/databinding/ViewStubProxy;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getRoot()Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    instance-of v2, v0, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    move-object v1, v0

    .line 37
    check-cast v1, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;

    .line 38
    .line 39
    :cond_1
    move-object v2, v1

    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    new-instance v9, Lcom/startshorts/androidplayer/ui/fragment/purchase/g0;

    .line 43
    .line 44
    invoke-direct {v9, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/g0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)V

    .line 45
    .line 46
    .line 47
    new-instance v10, Lcom/startshorts/androidplayer/ui/fragment/purchase/x;

    .line 48
    .line 49
    invoke-direct {v10, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/x;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)V

    .line 50
    .line 51
    .line 52
    const/16 v11, 0x34

    .line 53
    .line 54
    const/4 v12, 0x0

    .line 55
    const-string v3, "recharge"

    .line 56
    .line 57
    const-string v4, "recharge_page"

    .line 58
    .line 59
    const/4 v5, 0x0

    .line 60
    const/4 v7, 0x0

    .line 61
    const/4 v8, 0x0

    .line 62
    move-object v6, p1

    .line 63
    invoke-static/range {v2 .. v12}, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;->setSubsSkus$default(Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Lcom/startshorts/androidplayer/databinding/FragmentTopUpBinding;

    .line 72
    .line 73
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/FragmentTopUpBinding;->m:Landroidx/databinding/ViewStubProxy;

    .line 74
    .line 75
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    const/4 v0, 0x0

    .line 79
    const/4 v2, 0x1

    .line 80
    invoke-static {p1, v0, v2, v1}, Ljk/e0;->b(Landroidx/databinding/ViewStubProxy;IILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    :goto_1
    return-void
.end method

.method public static final synthetic j1(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->n2(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final j2(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Lkotlin/Unit;
    .locals 13

    .line 1
    const-string p2, "sku"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 7
    .line 8
    iget-object v9, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->J:Ljava/lang/String;

    .line 9
    .line 10
    const/16 v11, 0x2fc

    .line 11
    .line 12
    const/4 v12, 0x0

    .line 13
    const-string v1, "recharge_page"

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v8, 0x0

    .line 21
    const/4 v10, 0x0

    .line 22
    move-object v2, p1

    .line 23
    invoke-static/range {v0 .. v12}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->T1(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 27
    .line 28
    .line 29
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 30
    .line 31
    return-object p0
.end method

.method private final k1(Lcom/startshorts/androidplayer/bean/order/OtherOrderResult;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_12

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/order/OtherOrderResult;->getOrderNo()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_a

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->N:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 16
    .line 17
    const/16 v1, 0xa

    .line 18
    .line 19
    const-string v2, ""

    .line 20
    .line 21
    if-eqz v0, :cond_9

    .line 22
    .line 23
    if-eqz v0, :cond_12

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getProductExtendList()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_12

    .line 30
    .line 31
    check-cast v0, Ljava/lang/Iterable;

    .line 32
    .line 33
    new-instance v3, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_3

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    move-object v5, v4

    .line 53
    check-cast v5, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 54
    .line 55
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getPayType()Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    iget v6, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->K:I

    .line 60
    .line 61
    if-nez v5, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-ne v5, v6, :cond_1

    .line 69
    .line 70
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    .line 82
    .line 83
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_12

    .line 92
    .line 93
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    check-cast v3, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 98
    .line 99
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getCurrencyUnit()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    if-eqz v4, :cond_5

    .line 104
    .line 105
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-nez v4, :cond_4

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_4
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getCurrencyUnit()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    goto :goto_3

    .line 117
    :cond_5
    :goto_2
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getCurrency()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    :goto_3
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->isFirstBuy()Ljava/lang/Boolean;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 126
    .line 127
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    if-eqz v5, :cond_6

    .line 132
    .line 133
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getFirstAmount()Ljava/lang/Float;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    goto :goto_4

    .line 138
    :cond_6
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getPayAmount()Ljava/lang/Float;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    :goto_4
    sget-object v5, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->a:Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;

    .line 143
    .line 144
    if-nez v4, :cond_7

    .line 145
    .line 146
    move-object v4, v2

    .line 147
    :cond_7
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/order/OtherOrderResult;->getOrderNo()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    if-nez v6, :cond_8

    .line 156
    .line 157
    move-object v6, v2

    .line 158
    :cond_8
    invoke-virtual {v5, v4, v3, v6}, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 162
    .line 163
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_9
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->O:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 168
    .line 169
    if-eqz v0, :cond_12

    .line 170
    .line 171
    if-eqz v0, :cond_12

    .line 172
    .line 173
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getProductExtendList()Ljava/util/List;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    if-eqz v0, :cond_12

    .line 178
    .line 179
    check-cast v0, Ljava/lang/Iterable;

    .line 180
    .line 181
    new-instance v3, Ljava/util/ArrayList;

    .line 182
    .line 183
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .line 185
    .line 186
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    :cond_a
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    if-eqz v4, :cond_c

    .line 195
    .line 196
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    move-object v5, v4

    .line 201
    check-cast v5, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 202
    .line 203
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getPayType()Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    iget v6, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->K:I

    .line 208
    .line 209
    if-nez v5, :cond_b

    .line 210
    .line 211
    goto :goto_5

    .line 212
    :cond_b
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    if-ne v5, v6, :cond_a

    .line 217
    .line 218
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    .line 223
    .line 224
    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 229
    .line 230
    .line 231
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    if-eqz v3, :cond_12

    .line 240
    .line 241
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    check-cast v3, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 246
    .line 247
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getCurrencyUnit()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    if-eqz v4, :cond_e

    .line 252
    .line 253
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 254
    .line 255
    .line 256
    move-result v4

    .line 257
    if-nez v4, :cond_d

    .line 258
    .line 259
    goto :goto_7

    .line 260
    :cond_d
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getCurrencyUnit()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    goto :goto_8

    .line 265
    :cond_e
    :goto_7
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getCurrency()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    :goto_8
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->isFirstBuy()Ljava/lang/Boolean;

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 274
    .line 275
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v5

    .line 279
    if-eqz v5, :cond_f

    .line 280
    .line 281
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getFirstAmount()Ljava/lang/Float;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    goto :goto_9

    .line 286
    :cond_f
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getPayAmount()Ljava/lang/Float;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    :goto_9
    sget-object v5, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->a:Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;

    .line 291
    .line 292
    if-nez v4, :cond_10

    .line 293
    .line 294
    move-object v4, v2

    .line 295
    :cond_10
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/order/OtherOrderResult;->getOrderNo()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v6

    .line 303
    if-nez v6, :cond_11

    .line 304
    .line 305
    move-object v6, v2

    .line 306
    :cond_11
    invoke-virtual {v5, v4, v3, v6}, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 310
    .line 311
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    goto :goto_6

    .line 315
    :cond_12
    :goto_a
    return-void
.end method

.method private static final k2(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->X1()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private final l1()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$c;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$c;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0, v1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final l2(Ljava/lang/String;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    new-instance v2, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "scene"

    .line 9
    .line 10
    invoke-virtual {v2, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    const/4 v5, 0x4

    .line 16
    const/4 v6, 0x0

    .line 17
    const-string v1, "restore_click"

    .line 18
    .line 19
    const-wide/16 v3, 0x0

    .line 20
    .line 21
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->f2()V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->s1()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/a$f;

    .line 32
    .line 33
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$f;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private final m1()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->s1()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/a$c;

    .line 6
    .line 7
    const-string v2, "top_up"

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

.method static synthetic m2(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const-string p1, "topup"

    .line 6
    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->l2(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final n1()Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->r1()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->R(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->q1()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->Q(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$d;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->B(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/purchase/a0;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/a0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->S(Lkotlin/jvm/functions/Function0;)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method private final n2(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->e0()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "null cannot be cast to non-null type com.startshorts.androidplayer.adapter.purchase.TopUpSku7Adapter"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    check-cast v0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->T(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->e0()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method private static final o1(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->X1()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private final p1(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/startshorts/androidplayer/bean/purchase/CoinSku;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->Y1(Ljava/util/List;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final q1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->J:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "other"

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method private final r1()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->t1()Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->N()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method private final s1()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->E:Lms/i;

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

.method private final t1()Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->C:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final u1()Landroidx/lifecycle/ViewModelProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->B:Lms/i;

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

.method private final v1()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "topup"

    .line 2
    .line 3
    return-object v0
.end method

.method private final w1()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lve/h;->a:Lve/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lve/h;->m()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private final x1(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V
    .locals 9

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$string;->top_up_fragment_recharge_success:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->w(I)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->t1()Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v8, Lcom/startshorts/androidplayer/viewmodel/purchase/a$d;

    .line 11
    .line 12
    const/16 v6, 0x8

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    move-object v1, v8

    .line 17
    move-object v2, p1

    .line 18
    move-object v3, p2

    .line 19
    move-object v4, p3

    .line 20
    invoke-direct/range {v1 .. v7}, Lcom/startshorts/androidplayer/viewmodel/purchase/a$d;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v8}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->Y(Lcom/startshorts/androidplayer/viewmodel/purchase/a;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->X1()V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->l1()V

    .line 30
    .line 31
    .line 32
    sget-object p1, Lbf/e;->a:Lbf/e;

    .line 33
    .line 34
    invoke-virtual {p1}, Lbf/e;->i()Lbf/e$a;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lbf/e$a;->i()V

    .line 39
    .line 40
    .line 41
    sget-object p1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->a:Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->q()Lkotlinx/coroutines/r;

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private final y1(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V
    .locals 9

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$string;->subscription_detail_activity_subs_success:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->w(I)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->a:Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;

    .line 7
    .line 8
    invoke-virtual {v0, p2}, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->u(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->t1()Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v8, Lcom/startshorts/androidplayer/viewmodel/purchase/a$e;

    .line 16
    .line 17
    const/16 v6, 0x8

    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    move-object v1, v8

    .line 22
    move-object v2, p1

    .line 23
    move-object v3, p2

    .line 24
    move-object v4, p3

    .line 25
    invoke-direct/range {v1 .. v7}, Lcom/startshorts/androidplayer/viewmodel/purchase/a$e;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v8}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->Y(Lcom/startshorts/androidplayer/viewmodel/purchase/a;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->X1()V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->l1()V

    .line 35
    .line 36
    .line 37
    sget-object p1, Lbf/e;->a:Lbf/e;

    .line 38
    .line 39
    invoke-virtual {p1}, Lbf/e;->i()Lbf/e$a;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lbf/e$a;->i()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private final z1(Ljava/util/List;)V
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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->t1()Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/purchase/a$b;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/a$b;-><init>(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->Y(Lcom/startshorts/androidplayer/viewmodel/purchase/a;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public G()I
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->D0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget v0, Lcom/startshorts/androidplayer/R$layout;->viewstub_page_state_empty_disable_recharge:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget v0, Lcom/startshorts/androidplayer/R$layout;->viewstub_page_state_empty:I

    .line 13
    .line 14
    :goto_0
    return v0
.end method

.method public R()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->t1()Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->M()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->U1()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->m1()V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public U()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->U()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->G1()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->b2()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public V(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->V(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->G1()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->b2()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public i0()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$initRecyclerView$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$initRecyclerView$1;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->m0(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->n1()Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->k0(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/ListFragment;->i0()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public l()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->fragment_top_up:I

    .line 2
    .line 3
    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->s1()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->S()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->X1()V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->s1()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/a$a;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/billing/a$a;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 31
    .line 32
    .line 33
    sget-object v0, Lud/a;->a:Lud/a;

    .line 34
    .line 35
    invoke-virtual {v0}, Lud/a;->O()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {v0, v1}, Lud/a;->p0(Z)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$j;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$j;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)V

    .line 48
    .line 49
    .line 50
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$k;

    .line 51
    .line 52
    invoke-direct {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$k;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-static {p0, v0, v1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
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
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 p2, 0x0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const-string v0, "action"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object p1, p2

    .line 24
    :goto_0
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->J:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    const-string p2, "from"

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    :cond_1
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->V:Ljava/lang/String;

    .line 39
    .line 40
    sget p1, Lcom/startshorts/androidplayer/R$string;->profile_fragment_top_up:I

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarListFragment;->G0(I)V

    .line 43
    .line 44
    .line 45
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->D0()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lcom/startshorts/androidplayer/databinding/FragmentTopUpBinding;

    .line 58
    .line 59
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/FragmentTopUpBinding;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 60
    .line 61
    const/16 p2, 0x8

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->R1()V

    .line 68
    .line 69
    .line 70
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->D1()V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->C1()V

    .line 74
    .line 75
    .line 76
    :goto_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->h2()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->R()V

    .line 80
    .line 81
    .line 82
    const/4 v4, 0x6

    .line 83
    const/4 v5, 0x0

    .line 84
    const/4 v1, 0x1

    .line 85
    const/4 v2, 0x0

    .line 86
    const/4 v3, 0x0

    .line 87
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->Z0(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZLandroid/content/Context;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "TopUpFragment7"

    .line 2
    .line 3
    return-object v0
.end method

.method public final receiveAcknowledgePurchaseResult(Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "result"

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
    const-string v1, "receive AcknowledgePurchaseResult -> "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->onlyContainsDiscount()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->X1()V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public final receiveRefreshAccountEvent(Lcom/startshorts/androidplayer/bean/eventbus/RefreshAccountEvent;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/RefreshAccountEvent;
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
    const-string p1, "receiveRefreshAccountEvent"

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->R1()V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->D1()V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->C1()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final receiveTTPResultEvent(Lcom/startshorts/androidplayer/bean/eventbus/TTPResultEvent;)V
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/TTPResultEvent;
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
    const-string v0, "receive ttppmentResultEvent"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->t1()Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/purchase/a$i;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/TTPResultEvent;->getOrderNo()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/TTPResultEvent;->getOrderType()Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {v1, v2, p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/a$i;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->Y(Lcom/startshorts/androidplayer/viewmodel/purchase/a;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public s()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->h()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public v()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/ListFragment;->v()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->L:Ljava/lang/Integer;

    .line 6
    .line 7
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->F:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment$mPropertyObserver$1;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->d1(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
