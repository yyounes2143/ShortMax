.class final Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaActivity$downloadViewModel$2$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DownloadedDramaActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaActivity;-><init>()V
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
    c = "com.startshorts.androidplayer.ui.activity.download.DownloadedDramaActivity$downloadViewModel$2$1$1$1"
    f = "DownloadedDramaActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaActivity;

.field final synthetic j:Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel;

.field final synthetic k:Lcom/startshorts/androidplayer/ui/activity/download/f;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaActivity;Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel;Lcom/startshorts/androidplayer/ui/activity/download/f;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaActivity;",
            "Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel;",
            "Lcom/startshorts/androidplayer/ui/activity/download/f;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaActivity$downloadViewModel$2$1$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaActivity$downloadViewModel$2$1$1$1;->i:Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaActivity$downloadViewModel$2$1$1$1;->j:Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaActivity$downloadViewModel$2$1$1$1;->k:Lcom/startshorts/androidplayer/ui/activity/download/f;

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
    new-instance p1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaActivity$downloadViewModel$2$1$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaActivity$downloadViewModel$2$1$1$1;->i:Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaActivity;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaActivity$downloadViewModel$2$1$1$1;->j:Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaActivity$downloadViewModel$2$1$1$1;->k:Lcom/startshorts/androidplayer/ui/activity/download/f;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaActivity$downloadViewModel$2$1$1$1;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaActivity;Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel;Lcom/startshorts/androidplayer/ui/activity/download/f;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaActivity$downloadViewModel$2$1$1$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaActivity$downloadViewModel$2$1$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaActivity$downloadViewModel$2$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaActivity$downloadViewModel$2$1$1$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaActivity$downloadViewModel$2$1$1$1;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaActivity$downloadViewModel$2$1$1$1;->i:Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaActivity;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaActivity;->j0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaActivity;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaActivity$downloadViewModel$2$1$1$1;->j:Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel;->D()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaActivity$downloadViewModel$2$1$1$1;->j:Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel;->D()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaActivity$downloadViewModel$2$1$1$1;->k:Lcom/startshorts/androidplayer/ui/activity/download/f;

    .line 32
    .line 33
    check-cast v0, Lcom/startshorts/androidplayer/ui/activity/download/f$b;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/f$b;->a()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/util/Collection;

    .line 40
    .line 41
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaActivity$downloadViewModel$2$1$1$1;->i:Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaActivity;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaActivity;->i0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaActivity;)Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBinding;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBinding;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 51
    .line 52
    const-string v0, "recyclerView"

    .line 53
    .line 54
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaActivity$downloadViewModel$2$1$1$1;->j:Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel;->D()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {p1, v0}, Lo1/b;->f(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaActivity$downloadViewModel$2$1$1$1;->i:Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaActivity;

    .line 67
    .line 68
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaActivity;->k0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaActivity;)V

    .line 69
    .line 70
    .line 71
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 72
    .line 73
    return-object p1

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 75
    .line 76
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 77
    .line 78
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p1
.end method
