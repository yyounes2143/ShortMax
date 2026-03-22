.class final Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$x0;
.super Ljava/lang/Object;
.source "RewardsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->K2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/jvm/functions/Function0<",
        "+",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$x0;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/jvm/functions/Function0;)Ljava/lang/Boolean;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 1
    const-string v0, "onDialogShowDelegateDismiss"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$x0;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 7
    .line 8
    sget-object v1, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;->v:Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog$a;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->b1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const/4 v7, 0x0

    .line 15
    const-string v8, ""

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    invoke-virtual/range {v1 .. v8}, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog$a;->a(ZIIIIILjava/lang/String;)Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->C1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$x0;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->i1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$x0$a;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$x0;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 39
    .line 40
    invoke-direct {v1, v2, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$x0$a;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lkotlin/jvm/functions/Function0;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->w(Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment$b;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$x0;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->i1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const/4 v0, 0x0

    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 56
    .line 57
    .line 58
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$x0;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->i1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$x0;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 67
    .line 68
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const-string v2, "getChildFragmentManager(...)"

    .line 73
    .line 74
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->x(Landroidx/fragment/app/FragmentManager;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    const/4 v1, 0x1

    .line 82
    if-ne p1, v1, :cond_2

    .line 83
    .line 84
    move v0, v1

    .line 85
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$x0;->a(Lkotlin/jvm/functions/Function0;)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
