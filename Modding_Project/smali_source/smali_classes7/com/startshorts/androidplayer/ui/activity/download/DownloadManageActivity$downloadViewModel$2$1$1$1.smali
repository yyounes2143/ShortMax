.class final Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity$downloadViewModel$2$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DownloadManageActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity;-><init>()V
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
    c = "com.startshorts.androidplayer.ui.activity.download.DownloadManageActivity$downloadViewModel$2$1$1$1"
    f = "DownloadManageActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/ui/activity/download/d;

.field final synthetic j:Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/download/d;Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/activity/download/d;",
            "Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity$downloadViewModel$2$1$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity$downloadViewModel$2$1$1$1;->i:Lcom/startshorts/androidplayer/ui/activity/download/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity$downloadViewModel$2$1$1$1;->j:Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity;

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
    new-instance p1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity$downloadViewModel$2$1$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity$downloadViewModel$2$1$1$1;->i:Lcom/startshorts/androidplayer/ui/activity/download/d;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity$downloadViewModel$2$1$1$1;->j:Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity$downloadViewModel$2$1$1$1;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/d;Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity$downloadViewModel$2$1$1$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity$downloadViewModel$2$1$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity$downloadViewModel$2$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity$downloadViewModel$2$1$1$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity$downloadViewModel$2$1$1$1;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity$downloadViewModel$2$1$1$1;->i:Lcom/startshorts/androidplayer/ui/activity/download/d;

    .line 12
    .line 13
    check-cast p1, Lcom/startshorts/androidplayer/ui/activity/download/d$b;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/download/d$b;->a()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity$downloadViewModel$2$1$1$1;->j:Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity;->k0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity$downloadViewModel$2$1$1$1;->j:Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity;->j0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity$downloadViewModel$2$1$1$1;->j:Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity;->i0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity;)Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBinding;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBinding;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    .line 44
    const-string v0, "recyclerView"

    .line 45
    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity$downloadViewModel$2$1$1$1;->i:Lcom/startshorts/androidplayer/ui/activity/download/d;

    .line 50
    .line 51
    check-cast v0, Lcom/startshorts/androidplayer/ui/activity/download/d$b;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/d$b;->a()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {p1, v0}, Lo1/b;->f(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity$downloadViewModel$2$1$1$1;->j:Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity;->B0()V

    .line 63
    .line 64
    .line 65
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 66
    .line 67
    return-object p1

    .line 68
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 69
    .line 70
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 71
    .line 72
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1
.end method
