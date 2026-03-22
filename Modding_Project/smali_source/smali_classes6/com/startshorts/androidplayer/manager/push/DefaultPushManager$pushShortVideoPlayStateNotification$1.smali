.class final Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushShortVideoPlayStateNotification$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DefaultPushManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->b(Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;)V
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
    c = "com.startshorts.androidplayer.manager.push.DefaultPushManager$pushShortVideoPlayStateNotification$1"
    f = "DefaultPushManager.kt"
    l = {
        0x6d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushShortVideoPlayStateNotification$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushShortVideoPlayStateNotification$1;->i:Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 1
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
    new-instance p1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushShortVideoPlayStateNotification$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushShortVideoPlayStateNotification$1;->i:Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushShortVideoPlayStateNotification$1;-><init>(Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;Lrs/c;)V

    .line 6
    .line 7
    .line 8
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushShortVideoPlayStateNotification$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushShortVideoPlayStateNotification$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushShortVideoPlayStateNotification$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushShortVideoPlayStateNotification$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushShortVideoPlayStateNotification$1;->h:I

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
    sget-object p1, Lcom/startshorts/androidplayer/repo/push/PushRepo;->a:Lcom/startshorts/androidplayer/repo/push/PushRepo;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushShortVideoPlayStateNotification$1;->i:Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;->getCover()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iput v2, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushShortVideoPlayStateNotification$1;->h:I

    .line 36
    .line 37
    invoke-virtual {p1, v1, p0}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->n(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-ne p1, v0, :cond_2

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_2
    :goto_0
    check-cast p1, Landroid/graphics/Bitmap;

    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushShortVideoPlayStateNotification$1;->i:Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 51
    .line 52
    .line 53
    :cond_3
    sget-object p1, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->a:Lcom/startshorts/androidplayer/manager/push/util/PushUtil;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushShortVideoPlayStateNotification$1;->i:Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->L(Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 61
    .line 62
    return-object p1
.end method
