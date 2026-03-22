.class final Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$getDownloadedTaskInfoByShortIdAndDramaId$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DownloadEpisodeManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->I(IILrs/c;)Ljava/lang/Object;
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
        "Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.ui.activity.download.DownloadEpisodeManager$getDownloadedTaskInfoByShortIdAndDramaId$2"
    f = "DownloadEpisodeManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:I

.field final synthetic j:I


# direct methods
.method constructor <init>(IILrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$getDownloadedTaskInfoByShortIdAndDramaId$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$getDownloadedTaskInfoByShortIdAndDramaId$2;->i:I

    .line 2
    .line 3
    iput p2, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$getDownloadedTaskInfoByShortIdAndDramaId$2;->j:I

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
    new-instance p1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$getDownloadedTaskInfoByShortIdAndDramaId$2;

    .line 2
    .line 3
    iget v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$getDownloadedTaskInfoByShortIdAndDramaId$2;->i:I

    .line 4
    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$getDownloadedTaskInfoByShortIdAndDramaId$2;->j:I

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$getDownloadedTaskInfoByShortIdAndDramaId$2;-><init>(IILrs/c;)V

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
            "Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$getDownloadedTaskInfoByShortIdAndDramaId$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$getDownloadedTaskInfoByShortIdAndDramaId$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$getDownloadedTaskInfoByShortIdAndDramaId$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$getDownloadedTaskInfoByShortIdAndDramaId$2;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$getDownloadedTaskInfoByShortIdAndDramaId$2;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->k()Ljava/util/HashMap;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$getDownloadedTaskInfoByShortIdAndDramaId$2;->i:I

    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Ljava/util/HashMap;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 56
    .line 57
    if-nez v2, :cond_2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getDramaId()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    iget v4, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$getDownloadedTaskInfoByShortIdAndDramaId$2;->j:I

    .line 65
    .line 66
    if-ne v3, v4, :cond_1

    .line 67
    .line 68
    return-object v2

    .line 69
    :cond_3
    return-object v0

    .line 70
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 73
    .line 74
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1
.end method
