.class final Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel$loadDramaList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DownloadedDramaModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel;->G(I)V
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
    c = "com.startshorts.androidplayer.ui.activity.download.DownloadedDramaModel$loadDramaList$1"
    f = "DownloadedDramaModel.kt"
    l = {
        0x54
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDownloadedDramaModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadedDramaModel.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel$loadDramaList$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,93:1\n1010#2,2:94\n*S KotlinDebug\n*F\n+ 1 DownloadedDramaModel.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel$loadDramaList$1\n*L\n85#1:94,2\n*E\n"
    }
.end annotation


# instance fields
.field h:I

.field final synthetic i:I

.field final synthetic j:Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel;


# direct methods
.method constructor <init>(ILcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel$loadDramaList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel$loadDramaList$1;->i:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel$loadDramaList$1;->j:Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel;

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
    new-instance p1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel$loadDramaList$1;

    .line 2
    .line 3
    iget v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel$loadDramaList$1;->i:I

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel$loadDramaList$1;->j:Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel$loadDramaList$1;-><init>(ILcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel$loadDramaList$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel$loadDramaList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel$loadDramaList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel$loadDramaList$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel$loadDramaList$1;->h:I

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
    sget-object p1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->a:Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;

    .line 28
    .line 29
    iget v1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel$loadDramaList$1;->i:I

    .line 30
    .line 31
    iput v2, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel$loadDramaList$1;->h:I

    .line 32
    .line 33
    invoke-virtual {p1, v1, p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->H(ILrs/c;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-ne p1, v0, :cond_2

    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-le v0, v2, :cond_3

    .line 47
    .line 48
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel$loadDramaList$1$a;

    .line 49
    .line 50
    invoke-direct {v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel$loadDramaList$1$a;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->D(Ljava/util/List;Ljava/util/Comparator;)V

    .line 54
    .line 55
    .line 56
    :cond_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel$loadDramaList$1;->j:Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadedDramaModel;->E()Landroidx/lifecycle/MutableLiveData;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/download/f$b;

    .line 63
    .line 64
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/ui/activity/download/f$b;-><init>(Ljava/util/List;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 71
    .line 72
    return-object p1
.end method
