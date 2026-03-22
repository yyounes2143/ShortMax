.class final Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$showInLoop$showNextProcessor$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HomeDialogProcessor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;->j(Lcom/startshorts/androidplayer/ui/activity/MainActivity;ILrs/c;)Ljava/lang/Object;
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
    c = "com.startshorts.androidplayer.manager.dialog.home.HomeDialogProcessor$showInLoop$showNextProcessor$1$1"
    f = "HomeDialogProcessor.kt"
    l = {
        0x61
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

.field final synthetic j:I


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/MainActivity;ILrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/activity/MainActivity;",
            "I",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$showInLoop$showNextProcessor$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$showInLoop$showNextProcessor$1$1;->i:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 2
    .line 3
    iput p2, p0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$showInLoop$showNextProcessor$1$1;->j:I

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
    new-instance p1, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$showInLoop$showNextProcessor$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$showInLoop$showNextProcessor$1$1;->i:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 4
    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$showInLoop$showNextProcessor$1$1;->j:I

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$showInLoop$showNextProcessor$1$1;-><init>(Lcom/startshorts/androidplayer/ui/activity/MainActivity;ILrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$showInLoop$showNextProcessor$1$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$showInLoop$showNextProcessor$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$showInLoop$showNextProcessor$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$showInLoop$showNextProcessor$1$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$showInLoop$showNextProcessor$1$1;->h:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;->a:Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$showInLoop$showNextProcessor$1$1;->i:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 30
    .line 31
    iget v3, p0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$showInLoop$showNextProcessor$1$1;->j:I

    .line 32
    .line 33
    add-int/2addr v3, v2

    .line 34
    iput v2, p0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$showInLoop$showNextProcessor$1$1;->h:I

    .line 35
    .line 36
    invoke-static {p1, v1, v3, p0}, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;->d(Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;Lcom/startshorts/androidplayer/ui/activity/MainActivity;ILrs/c;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-ne p1, v0, :cond_2

    .line 41
    .line 42
    return-object v0

    .line 43
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 44
    .line 45
    return-object p1
.end method
