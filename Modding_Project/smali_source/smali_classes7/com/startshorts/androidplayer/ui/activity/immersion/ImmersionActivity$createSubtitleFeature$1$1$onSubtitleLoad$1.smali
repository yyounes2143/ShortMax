.class final Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$createSubtitleFeature$1$1$onSubtitleLoad$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ImmersionActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$createSubtitleFeature$1$1;->a(IIZZ)V
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
    c = "com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity$createSubtitleFeature$1$1$onSubtitleLoad$1"
    f = "ImmersionActivity.kt"
    l = {
        0x108c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:I

.field final synthetic j:I

.field final synthetic k:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;


# direct methods
.method constructor <init>(IILcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$createSubtitleFeature$1$1$onSubtitleLoad$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$createSubtitleFeature$1$1$onSubtitleLoad$1;->i:I

    .line 2
    .line 3
    iput p2, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$createSubtitleFeature$1$1$onSubtitleLoad$1;->j:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$createSubtitleFeature$1$1$onSubtitleLoad$1;->k:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

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
    new-instance p1, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$createSubtitleFeature$1$1$onSubtitleLoad$1;

    .line 2
    .line 3
    iget v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$createSubtitleFeature$1$1$onSubtitleLoad$1;->i:I

    .line 4
    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$createSubtitleFeature$1$1$onSubtitleLoad$1;->j:I

    .line 6
    .line 7
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$createSubtitleFeature$1$1$onSubtitleLoad$1;->k:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$createSubtitleFeature$1$1$onSubtitleLoad$1;-><init>(IILcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$createSubtitleFeature$1$1$onSubtitleLoad$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$createSubtitleFeature$1$1$onSubtitleLoad$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$createSubtitleFeature$1$1$onSubtitleLoad$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$createSubtitleFeature$1$1$onSubtitleLoad$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$createSubtitleFeature$1$1$onSubtitleLoad$1;->h:I

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
    iget v1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$createSubtitleFeature$1$1$onSubtitleLoad$1;->i:I

    .line 30
    .line 31
    iget v3, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$createSubtitleFeature$1$1$onSubtitleLoad$1;->j:I

    .line 32
    .line 33
    iput v2, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$createSubtitleFeature$1$1$onSubtitleLoad$1;->h:I

    .line 34
    .line 35
    invoke-virtual {p1, v1, v3, p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->I(IILrs/c;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-ne p1, v0, :cond_2

    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_2
    :goto_0
    check-cast p1, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 43
    .line 44
    if-eqz p1, :cond_5

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getDownloadState()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    const/4 v1, 0x4

    .line 51
    if-eq v0, v1, :cond_3

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    sget-object v0, Luh/m1;->a:Luh/m1;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Luh/m1;->a(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Luh/m1;->b()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_4

    .line 64
    .line 65
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$createSubtitleFeature$1$1$onSubtitleLoad$1;->k:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 66
    .line 67
    sget v0, Lcom/startshorts/androidplayer/R$string;->subtittle_load_failed:I

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const/4 v1, 0x0

    .line 74
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 79
    .line 80
    .line 81
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 82
    .line 83
    return-object p1

    .line 84
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 85
    .line 86
    return-object p1
.end method
