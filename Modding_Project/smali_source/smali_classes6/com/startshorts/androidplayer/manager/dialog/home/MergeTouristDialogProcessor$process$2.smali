.class final Lcom/startshorts/androidplayer/manager/dialog/home/MergeTouristDialogProcessor$process$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MergeTouristDialogProcessor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/dialog/home/MergeTouristDialogProcessor;->b(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;
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
    c = "com.startshorts.androidplayer.manager.dialog.home.MergeTouristDialogProcessor$process$2"
    f = "MergeTouristDialogProcessor.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

.field final synthetic j:Lcom/startshorts/androidplayer/manager/dialog/home/MergeTouristDialogProcessor;

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
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lcom/startshorts/androidplayer/manager/dialog/home/MergeTouristDialogProcessor;Lkotlin/jvm/functions/Function0;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/activity/MainActivity;",
            "Lcom/startshorts/androidplayer/manager/dialog/home/MergeTouristDialogProcessor;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/dialog/home/MergeTouristDialogProcessor$process$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/dialog/home/MergeTouristDialogProcessor$process$2;->i:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/dialog/home/MergeTouristDialogProcessor$process$2;->j:Lcom/startshorts/androidplayer/manager/dialog/home/MergeTouristDialogProcessor;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/manager/dialog/home/MergeTouristDialogProcessor$process$2;->k:Lkotlin/jvm/functions/Function0;

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

.method public static synthetic i(Lcom/startshorts/androidplayer/manager/dialog/home/MergeTouristDialogProcessor;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/dialog/home/MergeTouristDialogProcessor$process$2;->j(Lcom/startshorts/androidplayer/manager/dialog/home/MergeTouristDialogProcessor;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final j(Lcom/startshorts/androidplayer/manager/dialog/home/MergeTouristDialogProcessor;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/dialog/home/MergeTouristDialogProcessor;->name()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v1, "onDismiss"

    .line 8
    .line 9
    invoke-virtual {v0, p0, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
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
    new-instance p1, Lcom/startshorts/androidplayer/manager/dialog/home/MergeTouristDialogProcessor$process$2;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/dialog/home/MergeTouristDialogProcessor$process$2;->i:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/dialog/home/MergeTouristDialogProcessor$process$2;->j:Lcom/startshorts/androidplayer/manager/dialog/home/MergeTouristDialogProcessor;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/dialog/home/MergeTouristDialogProcessor$process$2;->k:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/startshorts/androidplayer/manager/dialog/home/MergeTouristDialogProcessor$process$2;-><init>(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lcom/startshorts/androidplayer/manager/dialog/home/MergeTouristDialogProcessor;Lkotlin/jvm/functions/Function0;Lrs/c;)V

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/dialog/home/MergeTouristDialogProcessor$process$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/dialog/home/MergeTouristDialogProcessor$process$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/dialog/home/MergeTouristDialogProcessor$process$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/dialog/home/MergeTouristDialogProcessor$process$2;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/startshorts/androidplayer/manager/dialog/home/MergeTouristDialogProcessor$process$2;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/startshorts/androidplayer/manager/account/AccountMergeManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountMergeManager;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/dialog/home/MergeTouristDialogProcessor$process$2;->i:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/dialog/home/MergeTouristDialogProcessor$process$2;->j:Lcom/startshorts/androidplayer/manager/dialog/home/MergeTouristDialogProcessor;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/dialog/home/MergeTouristDialogProcessor$process$2;->k:Lkotlin/jvm/functions/Function0;

    .line 18
    .line 19
    new-instance v3, Lcom/startshorts/androidplayer/manager/dialog/home/e;

    .line 20
    .line 21
    invoke-direct {v3, v1, v2}, Lcom/startshorts/androidplayer/manager/dialog/home/e;-><init>(Lcom/startshorts/androidplayer/manager/dialog/home/MergeTouristDialogProcessor;Lkotlin/jvm/functions/Function0;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0, v3}, Lcom/startshorts/androidplayer/manager/account/AccountMergeManager;->s(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method
