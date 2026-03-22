.class final Lcom/startshorts/androidplayer/manager/dialog/home/CheckInDialogProcessor$process$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CheckInDialogProcessor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/dialog/home/CheckInDialogProcessor;->b(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;
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
        "Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.manager.dialog.home.CheckInDialogProcessor$process$3"
    f = "CheckInDialogProcessor.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

.field final synthetic j:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lkotlin/jvm/functions/Function0;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/activity/MainActivity;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/dialog/home/CheckInDialogProcessor$process$3;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/dialog/home/CheckInDialogProcessor$process$3;->i:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/dialog/home/CheckInDialogProcessor$process$3;->j:Lkotlin/jvm/functions/Function0;

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
    new-instance p1, Lcom/startshorts/androidplayer/manager/dialog/home/CheckInDialogProcessor$process$3;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/dialog/home/CheckInDialogProcessor$process$3;->i:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/dialog/home/CheckInDialogProcessor$process$3;->j:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/manager/dialog/home/CheckInDialogProcessor$process$3;-><init>(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lkotlin/jvm/functions/Function0;Lrs/c;)V

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
            "Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/dialog/home/CheckInDialogProcessor$process$3;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/dialog/home/CheckInDialogProcessor$process$3;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/dialog/home/CheckInDialogProcessor$process$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/dialog/home/CheckInDialogProcessor$process$3;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/startshorts/androidplayer/manager/dialog/home/CheckInDialogProcessor$process$3;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/dialog/home/CheckInDialogProcessor$process$3;->i:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/dialog/home/CheckInDialogProcessor$process$3;->j:Lkotlin/jvm/functions/Function0;

    .line 19
    .line 20
    new-instance v2, Lcom/startshorts/androidplayer/manager/dialog/home/CheckInDialogProcessor$process$3$a;

    .line 21
    .line 22
    invoke-direct {v2, v1}, Lcom/startshorts/androidplayer/manager/dialog/home/CheckInDialogProcessor$process$3$a;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->w(Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment$b;)V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {p1, v1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "getSupportFragmentManager(...)"

    .line 37
    .line 38
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->x(Landroidx/fragment/app/FragmentManager;)Z

    .line 42
    .line 43
    .line 44
    return-object p1

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1
.end method
