.class public final Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;
.super Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment;
.source "TopUpDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$a;,
        Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment<",
        "Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;",
        "Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTopUpDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TopUpDialog.kt\ncom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,875:1\n1#2:876\n1863#3,2:877\n774#3:879\n865#3,2:880\n1557#3:882\n1628#3,3:883\n774#3:886\n865#3,2:887\n1557#3:889\n1628#3,3:890\n*S KotlinDebug\n*F\n+ 1 TopUpDialog.kt\ncom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog\n*L\n382#1:877,2\n845#1:879\n845#1:880,2\n847#1:882\n847#1:883,3\n853#1:886\n853#1:887,2\n855#1:889\n855#1:890,3\n*E\n"
    }
.end annotation


# static fields
.field public static final U:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private A:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private B:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private C:Z

.field private D:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final E:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final F:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final G:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final H:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$mPropertyObserver$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private I:Lhi/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

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

.field private R:Z

.field private S:Ltj/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private T:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->U:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "topup"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->D:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/b;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/b;-><init>(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->E:Lms/i;

    .line 18
    .line 19
    new-instance v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/c;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/c;-><init>(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->F:Lms/i;

    .line 29
    .line 30
    new-instance v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/d;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/d;-><init>(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->G:Lms/i;

    .line 40
    .line 41
    new-instance v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$mPropertyObserver$1;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$mPropertyObserver$1;-><init>(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->H:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$mPropertyObserver$1;

    .line 47
    .line 48
    sget-object v0, Lqf/e;->a:Lqf/e;

    .line 49
    .line 50
    invoke-virtual {v0}, Lqf/e;->a()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iput v0, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->K:I

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->M:Z

    .line 58
    .line 59
    return-void
.end method

.method public static final synthetic A0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->Z0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final A1(Ljava/util/List;)V
    .locals 12
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
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;->q:Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    new-instance v8, Lcom/startshorts/androidplayer/ui/dialog/immersion/i;

    .line 26
    .line 27
    invoke-direct {v8, p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/i;-><init>(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)V

    .line 28
    .line 29
    .line 30
    new-instance v9, Lcom/startshorts/androidplayer/ui/dialog/immersion/j;

    .line 31
    .line 32
    invoke-direct {v9, p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/j;-><init>(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)V

    .line 33
    .line 34
    .line 35
    const/16 v10, 0x34

    .line 36
    .line 37
    const/4 v11, 0x0

    .line 38
    const-string v2, "recharge"

    .line 39
    .line 40
    const-string v3, "top_up_dialog"

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    const/4 v6, 0x0

    .line 44
    const/4 v7, 0x0

    .line 45
    move-object v1, v0

    .line 46
    move-object v5, p1

    .line 47
    invoke-static/range {v1 .. v11}, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;->setSubsSkus$default(Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;

    .line 59
    .line 60
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;->q:Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;

    .line 61
    .line 62
    const/16 v0, 0x8

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    :goto_1
    return-void
.end method

.method public static final synthetic B0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->b1()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final B1(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Lkotlin/Unit;
    .locals 0

    .line 1
    const-string p2, "sku"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->n1(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method public static final synthetic C0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->m1(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final C1(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->r1()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final synthetic D0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->n1(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final D1(Ljava/lang/String;)V
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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->y1()V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->N0()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

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

.method public static final synthetic E0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->L:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method static synthetic E1(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;Ljava/lang/String;ILjava/lang/Object;)V
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
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->D1(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static final synthetic F0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->u1(Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final F1(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->S()Landroidx/recyclerview/widget/RecyclerView$Adapter;

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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->S()Landroidx/recyclerview/widget/RecyclerView$Adapter;

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

.method public static final synthetic G0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->D1(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic H0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->F1(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final I0(Lcom/startshorts/androidplayer/bean/order/OtherOrderResult;)V
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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->N:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

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
    iget v6, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->K:I

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->O:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

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
    iget v6, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->K:I

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

.method private final J0()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->N0()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/a$c;

    .line 6
    .line 7
    const-string v2, "top_up_dialog"

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

.method private final K0()Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->M0()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->R(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$c;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$c;-><init>(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->B(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method private final L0(Ljava/util/List;Ljava/util/List;)V
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
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->s1(Ljava/util/List;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final M0()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->O0()Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

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

.method private final N0()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->G:Lms/i;

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

.method private final O0()Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->F:Lms/i;

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

.method private final P0()Landroidx/lifecycle/ViewModelProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->E:Lms/i;

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

.method private final Q0()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "top_up_dialog"

    .line 2
    .line 3
    return-object v0
.end method

.method private final R0()Ljava/lang/String;
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

.method private final S0(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V
    .locals 9

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$string;->top_up_fragment_recharge_success:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->w(I)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->O0()Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;->a:Lcom/startshorts/androidplayer/ui/view/immersion/unlock/AutoUnlockEpisodeView;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/AutoUnlockEpisodeView;->v()V

    .line 35
    .line 36
    .line 37
    sget-object p1, Lcom/startshorts/androidplayer/manager/configure/ad/c;->a:Lcom/startshorts/androidplayer/manager/configure/ad/c;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->i()Lcom/startshorts/androidplayer/manager/configure/ad/c$b;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/configure/ad/c$b;->c()V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->B:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$b;

    .line 47
    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    iget-boolean p2, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->C:Z

    .line 51
    .line 52
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 53
    .line 54
    invoke-interface {p1, p2, p3}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$b;->a(ZLjava/lang/Boolean;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    sget-object p1, Lbf/e;->a:Lbf/e;

    .line 58
    .line 59
    invoke-virtual {p1}, Lbf/e;->i()Lbf/e$a;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lbf/e$a;->i()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->dismiss()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method private final T0(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V
    .locals 9

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$string;->subscription_detail_activity_subs_success:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->w(I)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->O0()Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v8, Lcom/startshorts/androidplayer/viewmodel/purchase/a$e;

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
    invoke-direct/range {v1 .. v7}, Lcom/startshorts/androidplayer/viewmodel/purchase/a$e;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v8}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->Y(Lcom/startshorts/androidplayer/viewmodel/purchase/a;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;->a:Lcom/startshorts/androidplayer/ui/view/immersion/unlock/AutoUnlockEpisodeView;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/AutoUnlockEpisodeView;->v()V

    .line 35
    .line 36
    .line 37
    sget-object p1, Lcom/startshorts/androidplayer/manager/configure/ad/c;->a:Lcom/startshorts/androidplayer/manager/configure/ad/c;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->i()Lcom/startshorts/androidplayer/manager/configure/ad/c$b;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/configure/ad/c$b;->c()V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->B:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$b;

    .line 47
    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    iget-boolean p2, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->C:Z

    .line 51
    .line 52
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 53
    .line 54
    invoke-interface {p1, p2, p3}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$b;->a(ZLjava/lang/Boolean;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    sget-object p1, Lbf/e;->a:Lbf/e;

    .line 58
    .line 59
    invoke-virtual {p1}, Lbf/e;->i()Lbf/e$a;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lbf/e$a;->i()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->dismiss()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method private final U0(Ljava/util/List;)V
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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->O0()Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

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

.method private final V0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->I:Lhi/b;

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
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->I:Lhi/b;

    .line 10
    .line 11
    return-void
.end method

.method private final X0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;->a:Lcom/startshorts/androidplayer/ui/view/immersion/unlock/AutoUnlockEpisodeView;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x2

    .line 11
    const-string v3, "top_up_dialog"

    .line 12
    .line 13
    invoke-static {v0, v3, v1, v2, v1}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/AutoUnlockEpisodeView;->x(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/AutoUnlockEpisodeView;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private final Y0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

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

.method private final Z0()V
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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

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

.method private final a1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;->j:Landroid/widget/ImageView;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$d;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$d;-><init>(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final b1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->R:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->S:Ltj/a;

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

.method private final c1(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->Q:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->K:I

    .line 6
    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-boolean v3, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->M:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->h1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private final d1(Ljava/lang/Integer;I)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v3, v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->N:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

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
    const-string v2, "top_up_dialog"

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
    iget-object v15, v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->O:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

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
    const-string v14, "top_up_dialog"

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

.method private static final e1(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->P0()Landroidx/lifecycle/ViewModelProvider;

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
    new-instance v2, Lcom/startshorts/androidplayer/ui/dialog/immersion/e;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/e;-><init>(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$f;

    .line 23
    .line 24
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$f;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method private static final f1(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;Lcom/startshorts/androidplayer/viewmodel/billing/b;)Lkotlin/Unit;
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$q;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->q1()V

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
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->U0(Ljava/util/List;)V

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
    if-eqz v0, :cond_2

    .line 28
    .line 29
    sget p1, Lcom/startshorts/androidplayer/R$string;->common_user_canceled:I

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->w(I)V

    .line 32
    .line 33
    .line 34
    goto/16 :goto_0

    .line 35
    .line 36
    :cond_2
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$c;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$c;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$c;->a()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$c;->b()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$c;->c()Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p0, v0, v1, p1}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->S0(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :cond_3
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$b;

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->w1()V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_0

    .line 67
    .line 68
    :cond_4
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$e;

    .line 69
    .line 70
    if-eqz v0, :cond_5

    .line 71
    .line 72
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$e;

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$e;->a()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$e;->b()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$e;->c()Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-direct {p0, v0, v1, p1}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->T0(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_0

    .line 90
    .line 91
    :cond_5
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$d;

    .line 92
    .line 93
    if-eqz v0, :cond_6

    .line 94
    .line 95
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->w1()V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_6
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$g;

    .line 100
    .line 101
    if-eqz v0, :cond_7

    .line 102
    .line 103
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->V0()V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_7
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$i;

    .line 108
    .line 109
    if-eqz v0, :cond_8

    .line 110
    .line 111
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->V0()V

    .line 112
    .line 113
    .line 114
    sget p1, Lcom/startshorts/androidplayer/R$string;->top_up_fragment_not_find_lost_order_tip:I

    .line 115
    .line 116
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->w(I)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_8
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$k;

    .line 121
    .line 122
    if-eqz v0, :cond_9

    .line 123
    .line 124
    new-instance v0, Lgi/f;

    .line 125
    .line 126
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    const-string v1, "requireContext(...)"

    .line 131
    .line 132
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$k;

    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$k;->a()Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-direct {v0, p0, p1}, Lgi/f;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Lfi/a;->show()V

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_9
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$a;

    .line 149
    .line 150
    if-eqz v0, :cond_c

    .line 151
    .line 152
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$a;

    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$a;->a()Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_b

    .line 159
    .line 160
    sget v0, Lcom/startshorts/androidplayer/R$string;->top_up_fragment_recharge_success:I

    .line 161
    .line 162
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->w(I)V

    .line 163
    .line 164
    .line 165
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 166
    .line 167
    const/4 v1, 0x0

    .line 168
    const/4 v2, 0x3

    .line 169
    const/4 v3, 0x0

    .line 170
    invoke-static {v0, v1, v3, v2, v3}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->c1(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->P:Ljava/lang/Integer;

    .line 174
    .line 175
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->M:Z

    .line 176
    .line 177
    invoke-direct {p0, v0, v1}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->d1(Ljava/lang/Integer;I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$a;->b()Lcom/startshorts/androidplayer/bean/order/OtherOrderResult;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->I0(Lcom/startshorts/androidplayer/bean/order/OtherOrderResult;)V

    .line 185
    .line 186
    .line 187
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->B:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$b;

    .line 188
    .line 189
    if-eqz p1, :cond_a

    .line 190
    .line 191
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->C:Z

    .line 192
    .line 193
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 194
    .line 195
    invoke-interface {p1, v0, v1}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$b;->a(ZLjava/lang/Boolean;)V

    .line 196
    .line 197
    .line 198
    :cond_a
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->dismiss()V

    .line 199
    .line 200
    .line 201
    goto :goto_0

    .line 202
    :cond_b
    sget p1, Lcom/startshorts/androidplayer/R$string;->payment_failure:I

    .line 203
    .line 204
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->w(I)V

    .line 205
    .line 206
    .line 207
    :cond_c
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 208
    .line 209
    return-object p0
.end method

.method private static final g1(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->P0()Landroidx/lifecycle/ViewModelProvider;

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
    new-instance v2, Lcom/startshorts/androidplayer/ui/dialog/immersion/f;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/f;-><init>(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$f;

    .line 23
    .line 24
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$f;-><init>(Lkotlin/jvm/functions/Function1;)V

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
    new-instance v2, Lcom/startshorts/androidplayer/ui/dialog/immersion/g;

    .line 35
    .line 36
    invoke-direct {v2, v0, p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/g;-><init>(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)V

    .line 37
    .line 38
    .line 39
    new-instance v3, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$f;

    .line 40
    .line 41
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$f;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 45
    .line 46
    .line 47
    return-object v0
.end method

.method private static final h1(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
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
    invoke-virtual {p0, v1, v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment;->f0(ZZLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method private static final i1(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;Lcom/startshorts/androidplayer/viewmodel/purchase/b;)Lkotlin/Unit;
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
    if-eqz v0, :cond_2

    .line 7
    .line 8
    sget-object v0, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->a:Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->Q()Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->getSubscribeSkuResponses()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v4, v3

    .line 22
    :goto_0
    new-instance v5, Lcom/startshorts/androidplayer/ui/dialog/immersion/h;

    .line 23
    .line 24
    invoke-direct {v5, p0, p1}, Lcom/startshorts/androidplayer/ui/dialog/immersion/h;-><init>(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2, v4, v5}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->u(ZLjava/util/List;Lat/n;)V

    .line 28
    .line 29
    .line 30
    check-cast p2, Lcom/startshorts/androidplayer/viewmodel/purchase/b$d;

    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$d;->a()Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1, v1, v3}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment;->g0(ZLjava/util/List;)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_5

    .line 42
    .line 43
    :cond_1
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->J0()V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_5

    .line 47
    .line 48
    :cond_2
    instance-of p0, p2, Lcom/startshorts/androidplayer/viewmodel/purchase/b$e;

    .line 49
    .line 50
    if-eqz p0, :cond_3

    .line 51
    .line 52
    check-cast p2, Lcom/startshorts/androidplayer/viewmodel/purchase/b$e;

    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$e;->a()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-direct {p1, p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->p1(Ljava/util/List;)V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_5

    .line 62
    .line 63
    :cond_3
    instance-of p0, p2, Lcom/startshorts/androidplayer/viewmodel/purchase/b$k;

    .line 64
    .line 65
    if-eqz p0, :cond_4

    .line 66
    .line 67
    check-cast p2, Lcom/startshorts/androidplayer/viewmodel/purchase/b$k;

    .line 68
    .line 69
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$k;->c()Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$k;->b()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-direct {p1, p0, p2}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->L0(Ljava/util/List;Ljava/util/List;)V

    .line 78
    .line 79
    .line 80
    sget-object p0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->D0()Z

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    if-nez p0, :cond_13

    .line 87
    .line 88
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->x1()V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_5

    .line 92
    .line 93
    :cond_4
    instance-of p0, p2, Lcom/startshorts/androidplayer/viewmodel/purchase/b$g;

    .line 94
    .line 95
    if-eqz p0, :cond_13

    .line 96
    .line 97
    check-cast p2, Lcom/startshorts/androidplayer/viewmodel/purchase/b$g;

    .line 98
    .line 99
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$g;->a()Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;->getOrderStatus()Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    iget-object v0, p1, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->L:Ljava/lang/Integer;

    .line 108
    .line 109
    if-eqz v0, :cond_13

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    const-string v4, "failure"

    .line 116
    .line 117
    const-string v5, "success"

    .line 118
    .line 119
    const/4 v6, 0x3

    .line 120
    const/4 v7, 0x2

    .line 121
    const-string v8, ""

    .line 122
    .line 123
    if-eq v0, v1, :cond_c

    .line 124
    .line 125
    if-eq v0, v7, :cond_5

    .line 126
    .line 127
    goto/16 :goto_5

    .line 128
    .line 129
    :cond_5
    if-nez p0, :cond_6

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 133
    .line 134
    .line 135
    move-result p0

    .line 136
    if-ne p0, v1, :cond_b

    .line 137
    .line 138
    sget p0, Lcom/startshorts/androidplayer/R$string;->subscription_detail_activity_subs_success:I

    .line 139
    .line 140
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->w(I)V

    .line 141
    .line 142
    .line 143
    sget-object p0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 144
    .line 145
    invoke-static {p0, v2, v3, v6, v3}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->c1(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    invoke-direct {p1, v5}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->c1(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    sget-object p0, Lbf/e;->a:Lbf/e;

    .line 152
    .line 153
    invoke-virtual {p0}, Lbf/e;->i()Lbf/e$a;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-virtual {p0}, Lbf/e$a;->i()V

    .line 158
    .line 159
    .line 160
    sget-object p0, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->a:Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;

    .line 161
    .line 162
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$g;->a()Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;->getCurrencyCode()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    if-nez v0, :cond_7

    .line 171
    .line 172
    move-object v0, v8

    .line 173
    :cond_7
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$g;->a()Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;->getPrice()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    if-nez v1, :cond_8

    .line 182
    .line 183
    move-object v1, v8

    .line 184
    :cond_8
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$g;->a()Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;->getOrderNo()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    if-nez p2, :cond_9

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_9
    move-object v8, p2

    .line 196
    :goto_1
    invoke-virtual {p0, v0, v1, v8}, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    iget-object p0, p1, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->B:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$b;

    .line 200
    .line 201
    if-eqz p0, :cond_a

    .line 202
    .line 203
    iget-boolean p2, p1, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->C:Z

    .line 204
    .line 205
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 206
    .line 207
    invoke-interface {p0, p2, v0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$b;->a(ZLjava/lang/Boolean;)V

    .line 208
    .line 209
    .line 210
    :cond_a
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->dismiss()V

    .line 211
    .line 212
    .line 213
    goto :goto_5

    .line 214
    :cond_b
    :goto_2
    sget p0, Lcom/startshorts/androidplayer/R$string;->payment_failure:I

    .line 215
    .line 216
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->w(I)V

    .line 217
    .line 218
    .line 219
    invoke-direct {p1, v4}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->c1(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    goto :goto_5

    .line 223
    :cond_c
    if-nez p0, :cond_d

    .line 224
    .line 225
    goto :goto_4

    .line 226
    :cond_d
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 227
    .line 228
    .line 229
    move-result p0

    .line 230
    if-ne p0, v7, :cond_12

    .line 231
    .line 232
    sget p0, Lcom/startshorts/androidplayer/R$string;->top_up_fragment_recharge_success:I

    .line 233
    .line 234
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->w(I)V

    .line 235
    .line 236
    .line 237
    sget-object p0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 238
    .line 239
    invoke-static {p0, v2, v3, v6, v3}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->c1(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    invoke-direct {p1, v5}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->c1(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    sget-object p0, Lbf/e;->a:Lbf/e;

    .line 246
    .line 247
    invoke-virtual {p0}, Lbf/e;->i()Lbf/e$a;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    invoke-virtual {p0}, Lbf/e$a;->i()V

    .line 252
    .line 253
    .line 254
    sget-object p0, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->a:Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;

    .line 255
    .line 256
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$g;->a()Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;->getCurrencyCode()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    if-nez v0, :cond_e

    .line 265
    .line 266
    move-object v0, v8

    .line 267
    :cond_e
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$g;->a()Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;->getPrice()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    if-nez v1, :cond_f

    .line 276
    .line 277
    move-object v1, v8

    .line 278
    :cond_f
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$g;->a()Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;

    .line 279
    .line 280
    .line 281
    move-result-object p2

    .line 282
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;->getOrderNo()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p2

    .line 286
    if-nez p2, :cond_10

    .line 287
    .line 288
    goto :goto_3

    .line 289
    :cond_10
    move-object v8, p2

    .line 290
    :goto_3
    invoke-virtual {p0, v0, v1, v8}, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    iget-object p0, p1, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->B:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$b;

    .line 294
    .line 295
    if-eqz p0, :cond_11

    .line 296
    .line 297
    iget-boolean p2, p1, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->C:Z

    .line 298
    .line 299
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 300
    .line 301
    invoke-interface {p0, p2, v0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$b;->a(ZLjava/lang/Boolean;)V

    .line 302
    .line 303
    .line 304
    :cond_11
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->dismiss()V

    .line 305
    .line 306
    .line 307
    goto :goto_5

    .line 308
    :cond_12
    :goto_4
    sget p0, Lcom/startshorts/androidplayer/R$string;->payment_failure:I

    .line 309
    .line 310
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->w(I)V

    .line 311
    .line 312
    .line 313
    invoke-direct {p1, v4}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->c1(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    :cond_13
    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 317
    .line 318
    return-object p0
.end method

.method private static final j1(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;ILcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/util/List;)Lkotlin/Unit;
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
    iput p2, p1, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->T:I

    .line 19
    .line 20
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0
.end method

.method private static final k1(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)Landroidx/lifecycle/ViewModelProvider;
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

.method public static synthetic l0(Landroid/view/View;Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->v1(Landroid/view/View;Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final l1()V
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->H:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$mPropertyObserver$1;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->O(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic m0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->B1(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final m1(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V
    .locals 13

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->N:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->O:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuType()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x3e8

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentCoinSku;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    check-cast p1, Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentCoinSku;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentCoinSku;->getResult()Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->N0()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-instance v6, Lcom/startshorts/androidplayer/viewmodel/billing/a$k;

    .line 32
    .line 33
    const/4 v4, 0x4

    .line 34
    const/4 v5, 0x0

    .line 35
    const-string v1, "recharge_page"

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    move-object v0, v6

    .line 39
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/billing/a$k;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v6}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->N0()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    new-instance v12, Lcom/startshorts/androidplayer/viewmodel/billing/a$e;

    .line 51
    .line 52
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->M0()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->k()Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    const/16 v10, 0xe8

    .line 61
    .line 62
    const/4 v11, 0x0

    .line 63
    const/4 v5, 0x0

    .line 64
    const/4 v6, 0x0

    .line 65
    const/4 v7, 0x0

    .line 66
    const/4 v8, 0x0

    .line 67
    const/4 v9, 0x0

    .line 68
    move-object v1, v12

    .line 69
    move-object v4, p1

    .line 70
    invoke-direct/range {v1 .. v11}, Lcom/startshorts/androidplayer/viewmodel/billing/a$e;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v12}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic n0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;Lcom/startshorts/androidplayer/viewmodel/billing/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->f1(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;Lcom/startshorts/androidplayer/viewmodel/billing/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final n1(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v4, p1

    .line 4
    .line 5
    iput-object v4, v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->O:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->N:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 9
    .line 10
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a0()Lcom/startshorts/androidplayer/bean/account/Account;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/account/Account;->isSubscription()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v3, v2

    .line 25
    :goto_0
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/account/Account;->isThirdSubscription()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    :cond_1
    if-eqz v3, :cond_2

    .line 32
    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 36
    .line 37
    sget v2, Lcom/startshorts/androidplayer/R$string;->subscribed_already:I

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Lfk/u;->d(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->x(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->N0()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 48
    .line 49
    .line 50
    move-result-object v15

    .line 51
    new-instance v14, Lcom/startshorts/androidplayer/viewmodel/billing/a$j;

    .line 52
    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->k()Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    const/16 v16, 0xff8

    .line 58
    .line 59
    const/16 v17, 0x0

    .line 60
    .line 61
    const-string v2, "top_up_dialog"

    .line 62
    .line 63
    const/4 v5, 0x0

    .line 64
    const/4 v6, 0x0

    .line 65
    const/4 v7, 0x0

    .line 66
    const/4 v8, 0x0

    .line 67
    const/4 v9, 0x0

    .line 68
    const/4 v10, 0x0

    .line 69
    const/4 v11, 0x0

    .line 70
    const/4 v12, 0x0

    .line 71
    const/4 v13, 0x0

    .line 72
    move-object v1, v14

    .line 73
    move-object/from16 v4, p1

    .line 74
    .line 75
    move-object/from16 v18, v14

    .line 76
    .line 77
    move/from16 v14, v16

    .line 78
    .line 79
    move-object v0, v15

    .line 80
    move-object/from16 v15, v17

    .line 81
    .line 82
    invoke-direct/range {v1 .. v15}, Lcom/startshorts/androidplayer/viewmodel/billing/a$j;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;ILzc/k;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 83
    .line 84
    .line 85
    move-object/from16 v1, v18

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public static synthetic o0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)Landroidx/lifecycle/ViewModelProvider;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->k1(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final o1()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->O0()Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v7, Lcom/startshorts/androidplayer/viewmodel/purchase/a$g;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->J:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v5, 0x4

    .line 10
    const/4 v6, 0x0

    .line 11
    const-string v2, "top_up_dialog"

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

.method public static synthetic p0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->C1(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final p1(Ljava/util/List;)V
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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->N0()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

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

.method public static synthetic q0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->g1(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final q1()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->O0()Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

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

.method public static synthetic r0(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;ILcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->j1(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;ILcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final r1()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->O0()Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

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
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->q(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->O0()Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->t1()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;->L()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->J()V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public static synthetic s0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->h1(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final s1(Ljava/util/List;Ljava/util/List;)V
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
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->R:Z

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
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->A1(Ljava/util/List;)V

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
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->z1(Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->S()Landroidx/recyclerview/widget/RecyclerView$Adapter;

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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;

    .line 58
    .line 59
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;->r:Landroid/widget/Space;

    .line 60
    .line 61
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;

    .line 69
    .line 70
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;->e:Landroid/view/View;

    .line 71
    .line 72
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->S:Ltj/a;

    .line 76
    .line 77
    if-eqz p1, :cond_2

    .line 78
    .line 79
    const/16 p2, 0x8

    .line 80
    .line 81
    invoke-interface {p1, p2}, Ltj/a;->setBtnVisibility(I)V

    .line 82
    .line 83
    .line 84
    :cond_2
    iput-object v2, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->S:Ltj/a;

    .line 85
    .line 86
    goto/16 :goto_5

    .line 87
    .line 88
    :cond_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->S:Ltj/a;

    .line 89
    .line 90
    if-nez v0, :cond_4

    .line 91
    .line 92
    sget-object v0, Ltj/b;->a:Ltj/b;

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    check-cast v3, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;

    .line 99
    .line 100
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;->p:Landroidx/databinding/ViewStubProxy;

    .line 101
    .line 102
    const-string v4, "stubPaymentMethod"

    .line 103
    .line 104
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v3}, Ltj/b;->a(Landroidx/databinding/ViewStubProxy;)Ltj/a;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->S:Ltj/a;

    .line 112
    .line 113
    :cond_4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->S:Ltj/a;

    .line 114
    .line 115
    const/4 v3, 0x0

    .line 116
    if-eqz v0, :cond_5

    .line 117
    .line 118
    invoke-interface {v0, v3}, Ltj/a;->setBtnVisibility(I)V

    .line 119
    .line 120
    .line 121
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .line 125
    .line 126
    if-eqz p1, :cond_6

    .line 127
    .line 128
    check-cast p1, Ljava/util/Collection;

    .line 129
    .line 130
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 131
    .line 132
    .line 133
    :cond_6
    if-eqz p2, :cond_8

    .line 134
    .line 135
    check-cast p2, Ljava/lang/Iterable;

    .line 136
    .line 137
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    :cond_7
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result p2

    .line 145
    if-eqz p2, :cond_8

    .line 146
    .line 147
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    check-cast p2, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 152
    .line 153
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuType()I

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    const/16 v5, 0x3e7

    .line 158
    .line 159
    if-eq v4, v5, :cond_7

    .line 160
    .line 161
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuType()I

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    const/16 v5, 0x3e8

    .line 166
    .line 167
    if-eq v4, v5, :cond_7

    .line 168
    .line 169
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_8
    invoke-direct {p0, v2}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->A1(Ljava/util/List;)V

    .line 174
    .line 175
    .line 176
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->z1(Ljava/util/List;)V

    .line 177
    .line 178
    .line 179
    iget p1, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->T:I

    .line 180
    .line 181
    if-ltz p1, :cond_a

    .line 182
    .line 183
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 184
    .line 185
    .line 186
    move-result p2

    .line 187
    if-lt p1, p2, :cond_9

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->S()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    check-cast p1, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;

    .line 198
    .line 199
    iget p2, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->T:I

    .line 200
    .line 201
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->T(I)V

    .line 202
    .line 203
    .line 204
    iget p1, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->T:I

    .line 205
    .line 206
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    check-cast p1, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;

    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_a
    :goto_3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->S()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    check-cast p1, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;

    .line 221
    .line 222
    invoke-virtual {p1, v3}, Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;->T(I)V

    .line 223
    .line 224
    .line 225
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    check-cast p1, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;

    .line 230
    .line 231
    :goto_4
    if-eqz p1, :cond_b

    .line 232
    .line 233
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->u1(Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;)V

    .line 234
    .line 235
    .line 236
    :cond_b
    :goto_5
    return-void
.end method

.method public static synthetic t0(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;Lcom/startshorts/androidplayer/viewmodel/purchase/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->i1(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;Lcom/startshorts/androidplayer/viewmodel/purchase/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final t1()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->K0()Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->X(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->T()Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->S()Landroidx/recyclerview/widget/RecyclerView$Adapter;

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

.method public static synthetic u0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->e1(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final u1(Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->b1()Z

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
    invoke-direct {v0, v2}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->m1(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

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
    invoke-direct {v0, v2}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->n1(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    new-instance v8, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$g;

    .line 33
    .line 34
    invoke-direct {v8, v0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$g;-><init>(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)V

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
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->Q0()Ljava/lang/String;

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
    iget-object v12, v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->A:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 51
    .line 52
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->D:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->J:Ljava/lang/String;

    .line 55
    .line 56
    const/16 v19, 0x138

    .line 57
    .line 58
    const/16 v20, 0x0

    .line 59
    .line 60
    const/4 v13, 0x0

    .line 61
    const/4 v14, 0x0

    .line 62
    const/4 v15, 0x0

    .line 63
    const/16 v18, 0x0

    .line 64
    .line 65
    move-object v11, v5

    .line 66
    move-object/from16 v16, v1

    .line 67
    .line 68
    move-object/from16 v17, v2

    .line 69
    .line 70
    invoke-static/range {v9 .. v20}, Lcom/startshorts/androidplayer/manager/event/EventManager;->B0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iget-object v3, v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->S:Ltj/a;

    .line 74
    .line 75
    if-eqz v3, :cond_3

    .line 76
    .line 77
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->Q0()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->R0()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    const/4 v7, 0x0

    .line 86
    iget-object v9, v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->J:Ljava/lang/String;

    .line 87
    .line 88
    invoke-interface/range {v3 .. v9}, Ltj/a;->l(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/a;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    instance-of v2, v1, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 93
    .line 94
    if-eqz v2, :cond_3

    .line 95
    .line 96
    sget-object v9, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 97
    .line 98
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->Q0()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v10

    .line 102
    move-object v5, v1

    .line 103
    check-cast v5, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 104
    .line 105
    iget-object v12, v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->A:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 106
    .line 107
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->D:Ljava/lang/String;

    .line 108
    .line 109
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->J:Ljava/lang/String;

    .line 110
    .line 111
    const/16 v20, 0x278

    .line 112
    .line 113
    const/16 v21, 0x0

    .line 114
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
    move-object/from16 v17, v1

    .line 124
    .line 125
    move-object/from16 v18, v2

    .line 126
    .line 127
    invoke-static/range {v9 .. v21}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    iget-object v3, v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->S:Ltj/a;

    .line 131
    .line 132
    if-eqz v3, :cond_3

    .line 133
    .line 134
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->Q0()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->R0()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    iget-object v9, v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->J:Ljava/lang/String;

    .line 143
    .line 144
    const/16 v11, 0x40

    .line 145
    .line 146
    const/4 v12, 0x0

    .line 147
    const/4 v7, 0x0

    .line 148
    const/4 v10, 0x0

    .line 149
    invoke-static/range {v3 .. v12}, Ltj/a$a;->a(Ltj/a;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/a;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;ILjava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :cond_3
    :goto_1
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->S:Ltj/a;

    .line 153
    .line 154
    if-eqz v1, :cond_4

    .line 155
    .line 156
    invoke-interface {v1}, Ltj/a;->p()Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    goto :goto_2

    .line 161
    :cond_4
    const/4 v1, 0x0

    .line 162
    :goto_2
    const/4 v2, 0x0

    .line 163
    if-eqz v1, :cond_6

    .line 164
    .line 165
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->S:Ltj/a;

    .line 166
    .line 167
    instance-of v3, v1, Landroid/view/View;

    .line 168
    .line 169
    if-eqz v3, :cond_5

    .line 170
    .line 171
    move-object v2, v1

    .line 172
    check-cast v2, Landroid/view/View;

    .line 173
    .line 174
    :cond_5
    if-eqz v2, :cond_8

    .line 175
    .line 176
    new-instance v1, Lcom/startshorts/androidplayer/ui/dialog/immersion/k;

    .line 177
    .line 178
    invoke-direct {v1, v2, v0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/k;-><init>(Landroid/view/View;Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 182
    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;

    .line 190
    .line 191
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;->e:Landroid/view/View;

    .line 192
    .line 193
    const/16 v3, 0x8

    .line 194
    .line 195
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;

    .line 203
    .line 204
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;->r:Landroid/widget/Space;

    .line 205
    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    check-cast v3, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;

    .line 211
    .line 212
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;->r:Landroid/widget/Space;

    .line 213
    .line 214
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    if-eqz v3, :cond_7

    .line 219
    .line 220
    const/high16 v2, 0x41a00000    # 20.0f

    .line 221
    .line 222
    invoke-static {v2}, Ljk/g;->a(F)I

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 227
    .line 228
    move-object v2, v3

    .line 229
    :cond_7
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;

    .line 237
    .line 238
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;->r:Landroid/widget/Space;

    .line 239
    .line 240
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 241
    .line 242
    .line 243
    :cond_8
    :goto_3
    return-void
.end method

.method public static final synthetic v0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->J:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final v1(Landroid/view/View;Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/high16 v0, 0x41a00000    # 20.0f

    .line 6
    .line 7
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    add-int/2addr v0, p0

    .line 12
    const/high16 v1, 0x41700000    # 15.0f

    .line 13
    .line 14
    invoke-static {v1}, Ljk/g;->a(F)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    add-int/2addr p0, v1

    .line 19
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;->r:Landroid/widget/Space;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;

    .line 32
    .line 33
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;->r:Landroid/widget/Space;

    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const/4 v3, 0x0

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move-object v2, v3

    .line 46
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;

    .line 54
    .line 55
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;->e:Landroid/view/View;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;

    .line 62
    .line 63
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;->e:Landroid/view/View;

    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    iput p0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 72
    .line 73
    move-object v3, v1

    .line 74
    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    check-cast p0, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;

    .line 82
    .line 83
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;->r:Landroid/widget/Space;

    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    check-cast p0, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;

    .line 93
    .line 94
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;->e:Landroid/view/View;

    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public static final synthetic w0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->A:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    return-object p0
.end method

.method private final w1()V
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
    new-instance v1, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$h;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$h;-><init>(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)V

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

.method public static final synthetic x0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->D:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private final x1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;->k:Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$i;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$i;-><init>(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;->setMListener(Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView$b;)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->K0()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;->k:Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;->B()V

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;->k:Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;->z()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;

    .line 66
    .line 67
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;->k:Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public static final synthetic y0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->O0()Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final y1()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->V0()V

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
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->I:Lhi/b;

    .line 26
    .line 27
    return-void
.end method

.method public static final synthetic z0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->Y0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final z1(Ljava/util/List;)V
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
    invoke-virtual {p0, v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment;->g0(ZLjava/util/List;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public J()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->O0()Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->o1()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->J0()V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public V()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$initRecyclerView$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$initRecyclerView$1;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->Y(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->K0()Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->X(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment;->V()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final W0(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$b;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "episode"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "listener"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const-string p1, "topup"

    .line 14
    .line 15
    :cond_0
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->D:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->A:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 18
    .line 19
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->B:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$b;

    .line 20
    .line 21
    return-void
.end method

.method public l()F
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->dialog_topup:I

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

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "dialog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->B:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$b;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->C:Z

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {p1, v0, v2, v1, v2}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$b$a;->a(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$b;ZLjava/lang/Boolean;ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lud/a;->a:Lud/a;

    .line 5
    .line 6
    invoke-virtual {v0}, Lud/a;->O()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lud/a;->p0(Z)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/startshorts/androidplayer/ui/dialog/immersion/a;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "requireContext(...)"

    .line 23
    .line 24
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$e;

    .line 28
    .line 29
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$e;-><init>(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1, v2}, Lcom/startshorts/androidplayer/ui/dialog/immersion/a;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/ui/dialog/immersion/a$b;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lfi/a;->show()V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget v1, Lcom/google/android/material/R$id;->design_bottom_sheet:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "from(...)"

    .line 23
    .line 24
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setSkipCollapsed(Z)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
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
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->A:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 10
    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->B:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$b;

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->D0()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 33
    .line 34
    const/16 p2, 0x8

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;

    .line 55
    .line 56
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;

    .line 66
    .line 67
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;->h:Landroid/view/View;

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;

    .line 77
    .line 78
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 79
    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;

    .line 88
    .line 89
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->l1()V

    .line 96
    .line 97
    .line 98
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->Z0()V

    .line 99
    .line 100
    .line 101
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->Y0()V

    .line 102
    .line 103
    .line 104
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->a1()V

    .line 105
    .line 106
    .line 107
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->X0()V

    .line 108
    .line 109
    .line 110
    :goto_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->J()V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_2
    :goto_1
    const-string p1, "dismiss for invalid arguments -> mEpisode is null or mListener is null"

    .line 115
    .line 116
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->j(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->dismiss()V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "TopUpDialog"

    .line 2
    .line 3
    return-object v0
.end method

.method public final receiveTTPpmentResultEvent(Lcom/startshorts/androidplayer/bean/eventbus/TTPResultEvent;)V
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
    const-string v0, "receive TTPResultEvent"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->q(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->O0()Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

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
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment;->s()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->H:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$mPropertyObserver$1;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->d1(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogTopupBinding;->k:Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/purchase/RechargeTipView;->release()V

    .line 20
    .line 21
    .line 22
    return-void
.end method
