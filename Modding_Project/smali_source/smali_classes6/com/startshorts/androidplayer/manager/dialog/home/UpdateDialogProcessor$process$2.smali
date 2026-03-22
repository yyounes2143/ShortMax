.class final Lcom/startshorts/androidplayer/manager/dialog/home/UpdateDialogProcessor$process$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UpdateDialogProcessor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/dialog/home/UpdateDialogProcessor;->b(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;
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
        "Lmi/d;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.manager.dialog.home.UpdateDialogProcessor$process$2"
    f = "UpdateDialogProcessor.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

.field final synthetic j:Lcom/startshorts/androidplayer/manager/dialog/home/UpdateDialogProcessor;

.field final synthetic k:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lcom/startshorts/androidplayer/manager/dialog/home/UpdateDialogProcessor;Lkotlin/jvm/functions/Function0;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/activity/MainActivity;",
            "Lcom/startshorts/androidplayer/manager/dialog/home/UpdateDialogProcessor;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/dialog/home/UpdateDialogProcessor$process$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/dialog/home/UpdateDialogProcessor$process$2;->i:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/dialog/home/UpdateDialogProcessor$process$2;->j:Lcom/startshorts/androidplayer/manager/dialog/home/UpdateDialogProcessor;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/manager/dialog/home/UpdateDialogProcessor$process$2;->k:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static synthetic i(Lcom/startshorts/androidplayer/manager/dialog/home/UpdateDialogProcessor;Lkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/dialog/home/UpdateDialogProcessor$process$2;->j(Lcom/startshorts/androidplayer/manager/dialog/home/UpdateDialogProcessor;Lkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final j(Lcom/startshorts/androidplayer/manager/dialog/home/UpdateDialogProcessor;Lkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/dialog/home/UpdateDialogProcessor;->name()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "onDismiss"

    .line 8
    .line 9
    invoke-virtual {p2, p0, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 3
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
    new-instance p1, Lcom/startshorts/androidplayer/manager/dialog/home/UpdateDialogProcessor$process$2;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/dialog/home/UpdateDialogProcessor$process$2;->i:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/dialog/home/UpdateDialogProcessor$process$2;->j:Lcom/startshorts/androidplayer/manager/dialog/home/UpdateDialogProcessor;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/dialog/home/UpdateDialogProcessor$process$2;->k:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/startshorts/androidplayer/manager/dialog/home/UpdateDialogProcessor$process$2;-><init>(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lcom/startshorts/androidplayer/manager/dialog/home/UpdateDialogProcessor;Lkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 10
    .line 11
    .line 12
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
            "Lmi/d;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/dialog/home/UpdateDialogProcessor$process$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/dialog/home/UpdateDialogProcessor$process$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/dialog/home/UpdateDialogProcessor$process$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/dialog/home/UpdateDialogProcessor$process$2;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/startshorts/androidplayer/manager/dialog/home/UpdateDialogProcessor$process$2;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->a:Lcom/startshorts/androidplayer/manager/update/UpdateManager;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/dialog/home/UpdateDialogProcessor$process$2;->i:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->o(Landroid/app/Activity;)Lmi/d;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/dialog/home/UpdateDialogProcessor$process$2;->j:Lcom/startshorts/androidplayer/manager/dialog/home/UpdateDialogProcessor;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/dialog/home/UpdateDialogProcessor$process$2;->k:Lkotlin/jvm/functions/Function0;

    .line 24
    .line 25
    new-instance v2, Lcom/startshorts/androidplayer/manager/dialog/home/j;

    .line 26
    .line 27
    invoke-direct {v2, v0, v1}, Lcom/startshorts/androidplayer/manager/dialog/home/j;-><init>(Lcom/startshorts/androidplayer/manager/dialog/home/UpdateDialogProcessor;Lkotlin/jvm/functions/Function0;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lmi/d;->show()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p1, 0x0

    .line 38
    :goto_0
    return-object p1

    .line 39
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 42
    .line 43
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1
.end method
