.class public final Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionAccumulatedDailyTaskDialog;
.super Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;
.source "ImmersionAccumulatedDailyTaskDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionAccumulatedDailyTaskDialog$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment<",
        "Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionAccumulatedTaskBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final q:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionAccumulatedDailyTaskDialog$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private o:Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private p:Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionAccumulatedDailyTaskDialog$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionAccumulatedDailyTaskDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionAccumulatedDailyTaskDialog;->q:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionAccumulatedDailyTaskDialog$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final O()I
    .locals 7

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/b;->l0()Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    invoke-virtual {v0}, Lud/b;->X1()J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->getList()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    move-object v5, v1

    .line 40
    check-cast v5, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;

    .line 41
    .line 42
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->getPayTime()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    mul-int/lit16 v5, v5, 0x3e8

    .line 47
    .line 48
    int-to-long v5, v5

    .line 49
    cmp-long v5, v5, v3

    .line 50
    .line 51
    if-gtz v5, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const/4 v1, 0x0

    .line 55
    :goto_0
    check-cast v1, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;

    .line 56
    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->getCumsumBonus()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    :cond_3
    return v2
.end method


# virtual methods
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
    sget v0, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_immersion_accumulated_daily_task:I

    .line 2
    .line 3
    return v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 7
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
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionAccumulatedDailyTaskDialog;->p:Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->release()V

    .line 14
    .line 15
    .line 16
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 17
    .line 18
    const/4 v5, 0x6

    .line 19
    const/4 v6, 0x0

    .line 20
    const-string v1, "mission_center_pop_close"

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    const-wide/16 v3, 0x0

    .line 24
    .line 25
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
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
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionAccumulatedDailyTaskDialog;->o:Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->dismiss()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    sget p2, Lcom/startshorts/androidplayer/R$id;->accumulated_task_view:I

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionAccumulatedDailyTaskDialog;->p:Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;

    .line 26
    .line 27
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "ImmersionAccumulatedTaskDialog"

    .line 2
    .line 3
    return-object v0
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 8
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "manager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 10
    .line 11
    new-instance v3, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    .line 16
    sget-object p1, Lud/b;->a:Lud/b;

    .line 17
    .line 18
    invoke-virtual {p1}, Lud/b;->X1()J

    .line 19
    .line 20
    .line 21
    move-result-wide p1

    .line 22
    const/16 v0, 0x3e8

    .line 23
    .line 24
    int-to-long v4, v0

    .line 25
    div-long/2addr p1, v4

    .line 26
    long-to-int p1, p1

    .line 27
    const-string p2, "completion_progress"

    .line 28
    .line 29
    invoke-virtual {v3, p2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    const-string p1, "tickets"

    .line 33
    .line 34
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionAccumulatedDailyTaskDialog;->O()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    invoke-virtual {v3, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 42
    .line 43
    const/4 v6, 0x4

    .line 44
    const/4 v7, 0x0

    .line 45
    const-string v2, "mission_center_pop_show"

    .line 46
    .line 47
    const-wide/16 v4, 0x0

    .line 48
    .line 49
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
