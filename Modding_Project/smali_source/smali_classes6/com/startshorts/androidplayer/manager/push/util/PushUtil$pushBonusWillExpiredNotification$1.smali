.class final Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushBonusWillExpiredNotification$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "PushUtil.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->J(Lcom/startshorts/androidplayer/bean/notification/BonusWillExpiredNotification;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.manager.push.util.PushUtil"
    f = "PushUtil.kt"
    l = {
        0x20c
    }
    m = "pushBonusWillExpiredNotification-gIAlu-s"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:Ljava/lang/Object;

.field k:Ljava/lang/Object;

.field l:Ljava/lang/Object;

.field synthetic m:Ljava/lang/Object;

.field final synthetic n:Lcom/startshorts/androidplayer/manager/push/util/PushUtil;

.field o:I


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/manager/push/util/PushUtil;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/manager/push/util/PushUtil;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushBonusWillExpiredNotification$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushBonusWillExpiredNotification$1;->n:Lcom/startshorts/androidplayer/manager/push/util/PushUtil;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lrs/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushBonusWillExpiredNotification$1;->m:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushBonusWillExpiredNotification$1;->o:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushBonusWillExpiredNotification$1;->o:I

    .line 9
    .line 10
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushBonusWillExpiredNotification$1;->n:Lcom/startshorts/androidplayer/manager/push/util/PushUtil;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0, p0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->J(Lcom/startshorts/androidplayer/bean/notification/BonusWillExpiredNotification;Lrs/c;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-ne p1, v0, :cond_0

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_0
    invoke-static {p1}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method
