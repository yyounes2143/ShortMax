.class final Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HomeCheckInDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgt/g0;",
        "Lrs/c<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog$requestAcceptNotificationBonus$1$1$1$1"
    f = "HomeCheckInDialog.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

.field final synthetic j:I


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;ILrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;",
            "I",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1$1$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1$1$1$1;->i:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 2
    .line 3
    iput p2, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1$1$1$1;->j:I

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1$1$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1$1$1$1;->i:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 4
    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1$1$1$1;->j:I

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1$1$1$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;ILrs/c;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1$1$1$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1$1$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1$1$1$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1$1$1$1;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1$1$1$1;->i:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->b0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;->e:Lcom/airbnb/lottie/LottieAnimationView;

    .line 18
    .line 19
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1$1$1$1;->i:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->b0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 29
    .line 30
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    new-instance p1, Lek/a;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1$1$1$1;->i:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "requireContext(...)"

    .line 42
    .line 43
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sget-object v2, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->Companion:Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask$Companion;

    .line 47
    .line 48
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1$1$1$1;->i:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 49
    .line 50
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget v1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestAcceptNotificationBonus$1$1$1$1;->j:I

    .line 58
    .line 59
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v2, v3, v1}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask$Companion;->getFormatBonus(Landroid/content/Context;Ljava/lang/Integer;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-direct {p1, v0, v1}, Lek/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 71
    .line 72
    .line 73
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 74
    .line 75
    return-object p1

    .line 76
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 77
    .line 78
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 79
    .line 80
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1
.end method
