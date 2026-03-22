.class public final Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;
.super Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;
.source "HomeCheckInDialog.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment<",
        "Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHomeCheckInDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HomeCheckInDialog.kt\ncom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,362:1\n295#2,2:363\n*S KotlinDebug\n*F\n+ 1 HomeCheckInDialog.kt\ncom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog\n*L\n91#1:363,2\n*E\n"
    }
.end annotation


# instance fields
.field private u:Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private v:Z

.field private w:Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final x:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lpi/c;

    .line 5
    .line 6
    invoke-direct {v0}, Lpi/c;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->x:Lms/i;

    .line 14
    .line 15
    return-void
.end method

.method private final A0()V
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
    const-string v1, "popup_name"

    .line 9
    .line 10
    const-string v3, "daily_checkin_discover"

    .line 11
    .line 12
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    const/4 v5, 0x4

    .line 18
    const/4 v6, 0x0

    .line 19
    const-string v1, "popup_show"

    .line 20
    .line 21
    const-wide/16 v3, 0x0

    .line 22
    .line 23
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private final B0()V
    .locals 4

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->u:Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->getNotificationTaskBonus()Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    const-string v2, "daily_checkin_discover"

    .line 20
    .line 21
    const-string v3, "notification"

    .line 22
    .line 23
    invoke-virtual {v0, v3, v1, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x0(Ljava/lang/String;ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private final C0()V
    .locals 4

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->u:Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->getNotificationTaskBonus()Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    const-string v2, "daily_checkin_discover"

    .line 20
    .line 21
    const-string v3, "notification"

    .line 22
    .line 23
    invoke-virtual {v0, v3, v1, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->y0(Ljava/lang/String;ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private static final D0()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/AdSignInfoManager;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdSignInfoManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/AdSignInfoManager;->a()Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->getZoneStr()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    sget-object v1, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 25
    .line 26
    new-instance v2, Ljava/util/Date;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-static {v2}, Ljk/f;->a(Ljava/util/Date;)Ljava/util/Date;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    sget-object v3, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->YEAR_MONTH_DAY:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 36
    .line 37
    invoke-virtual {v1, v2, v0, v3}, Lcom/startshorts/androidplayer/utils/TimeUtil;->h(Ljava/util/Date;Ljava/lang/String;Lcom/startshorts/androidplayer/utils/TimeUtil$Template;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    :goto_1
    sget-object v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->a:Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->l()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :goto_2
    return-object v0
.end method

.method private final E0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$b;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;->c:Landroid/widget/ImageView;

    .line 24
    .line 25
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$c;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 40
    .line 41
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$d;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;

    .line 54
    .line 55
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 56
    .line 57
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$e;

    .line 58
    .line 59
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$e;-><init>(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method private final F0()V
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, p0, v1}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "requestAcceptNotificationBonus"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final G0()V
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, p0, v1}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "CheckIn"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final H0(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lpi/d;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lpi/d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;Lkotlin/jvm/functions/Function0;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lpi/e;

    .line 7
    .line 8
    invoke-direct {p1}, Lpi/e;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->P(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static final I0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->v:Z

    .line 3
    .line 4
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0
.end method

.method private static final J0()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method private final K0(I)V
    .locals 5

    .line 1
    new-instance v0, Lek/a;

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
    sget-object v3, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->Companion:Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask$Companion;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v3, v4, p1}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask$Companion;->getFormatBonus(Landroid/content/Context;Ljava/lang/Integer;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {v0, v1, p1}, Lek/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private final L0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->u:Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->getSignRecords()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    check-cast v0, Ljava/lang/Iterable;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    move-object v2, v1

    .line 28
    check-cast v2, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;->getDay()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->t0()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v1, 0x0

    .line 46
    :goto_0
    check-cast v1, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;->isSign()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    const/4 v0, 0x0

    .line 56
    :goto_1
    if-eqz v0, :cond_4

    .line 57
    .line 58
    sget-object v0, Lud/a;->a:Lud/a;

    .line 59
    .line 60
    invoke-virtual {v0}, Lud/a;->H()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-lez v0, :cond_3

    .line 65
    .line 66
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    goto :goto_2

    .line 71
    :cond_3
    const-string v0, ""

    .line 72
    .line 73
    :goto_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;

    .line 78
    .line 79
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 80
    .line 81
    sget-object v2, Lfk/u;->a:Lfk/u;

    .line 82
    .line 83
    sget v3, Lcom/startshorts/androidplayer/R$string;->index_ad_rewards_dialog_get_more_bonus:I

    .line 84
    .line 85
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v2, v3, v0}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;

    .line 102
    .line 103
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 104
    .line 105
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 106
    .line 107
    sget v2, Lcom/startshorts/androidplayer/R$string;->rewards_activity_check_in:I

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Lfk/u;->d(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    :goto_3
    return-void
.end method

.method private final M0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->bg_unity_task_button:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 21
    .line 22
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 23
    .line 24
    sget v2, Lcom/startshorts/androidplayer/R$color;->color_rewards_fragment_unity_task_btn:I

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lfk/u;->a(I)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static synthetic Y()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->J0()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic Z()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->D0()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic a0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->I0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;

    .line 6
    .line 7
    return-object p0
.end method

.method public static final synthetic c0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->u:Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->w:Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->v:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic f0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->t0()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->u0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic h0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->y0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic i0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->z0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic j0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->B0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic k0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->C0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic l0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->F0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic m0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->G0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic n0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->H0(Lkotlin/jvm/functions/Function0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic o0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->v:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic p0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->K0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic q0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->L0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic r0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->M0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final s0()V
    .locals 4

    .line 1
    sget-object v0, Lid/d;->a:Lid/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lid/d;->a()[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$a;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$a;-><init>(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/16 v3, 0x3e9

    .line 14
    .line 15
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/PermissionDialogFragment;->G([Ljava/lang/String;ZILmk/b;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private final t0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->x:Lms/i;

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

.method private final u0()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->Y:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$a;

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
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 16
    .line 17
    const/16 v6, 0x8

    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    const-string v2, "discover"

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-static/range {v0 .. v7}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$a;->d(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$a;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private final v0()V
    .locals 5

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->u:Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->getSignRecords()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v1, v2

    .line 17
    :goto_0
    const/4 v3, 0x2

    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-static {v0, v1, v4, v3, v2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->D(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Ljava/util/List;ZILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->w:Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    .line 32
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const/4 v3, 0x4

    .line 39
    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 40
    .line 41
    .line 42
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$initDailyViews$2$1;

    .line 43
    .line 44
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$initDailyViews$2$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-lez v1, :cond_1

    .line 58
    .line 59
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    .line 60
    .line 61
    .line 62
    :cond_1
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/checkin/VariableGridSpacingItemDecoration;

    .line 63
    .line 64
    const/high16 v2, 0x41000000    # 8.0f

    .line 65
    .line 66
    invoke-static {v2}, Ljk/g;->a(F)I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    const/4 v3, 0x1

    .line 71
    invoke-direct {v1, v2, v3}, Lcom/startshorts/androidplayer/ui/view/checkin/VariableGridSpacingItemDecoration;-><init>(IZ)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->w:Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method private final w0()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->v:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 12
    .line 13
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    goto/16 :goto_2

    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 25
    .line 26
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->u:Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->getNotificationTaskId()Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move-object v0, v1

    .line 40
    :goto_0
    if-eqz v0, :cond_4

    .line 41
    .line 42
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->u:Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->getNotificationTaskBonus()Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 v0, 0x0

    .line 58
    :goto_1
    if-lez v0, :cond_4

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;

    .line 65
    .line 66
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 67
    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const/16 v3, 0x2b

    .line 74
    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->u:Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;

    .line 79
    .line 80
    if-eqz v3, :cond_3

    .line 81
    .line 82
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->getNotificationTaskBonus()Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    :cond_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;

    .line 101
    .line 102
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 103
    .line 104
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;

    .line 112
    .line 113
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 114
    .line 115
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;

    .line 124
    .line 125
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 126
    .line 127
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;

    .line 135
    .line 136
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 137
    .line 138
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 139
    .line 140
    .line 141
    :goto_2
    return-void
.end method

.method private final x0()V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->U(Ljava/lang/Boolean;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->s0()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->w0()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->v0()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->L0()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->E0()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->A0()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private final y0(Ljava/lang/String;)V
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
    const-string v1, "page"

    .line 9
    .line 10
    const-string v3, "discover_page"

    .line 11
    .line 12
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "button_name"

    .line 16
    .line 17
    invoke-virtual {v2, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    const/4 v5, 0x4

    .line 23
    const/4 v6, 0x0

    .line 24
    const-string v1, "button_click"

    .line 25
    .line 26
    const-wide/16 v3, 0x0

    .line 27
    .line 28
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private final z0()V
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
    const-string v3, "daily_checkin_discover"

    .line 11
    .line 12
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    const/4 v5, 0x4

    .line 18
    const/4 v6, 0x0

    .line 19
    const-string v1, "not_permission_success"

    .line 20
    .line 21
    const-wide/16 v3, 0x0

    .line 22
    .line 23
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public k()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->dialog_check_in:I

    .line 2
    .line 3
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/startshorts/androidplayer/manager/configure/ad/AdSignInfoManager;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdSignInfoManager;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/configure/ad/AdSignInfoManager;->a()Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->u:Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 15
    .line 16
    .line 17
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
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->u:Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->x0()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public p()I
    .locals 1

    .line 1
    const v0, 0x43b18000    # 355.0f

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method
