.class final Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCustomNotification$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "TestPushManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/push/TestPushManager;->h(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.manager.push.TestPushManager"
    f = "TestPushManager.kt"
    l = {
        0x62,
        0x6b,
        0x7c,
        0x7e
    }
    m = "pushCustomNotification-gIAlu-s"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field synthetic j:Ljava/lang/Object;

.field final synthetic k:Lcom/startshorts/androidplayer/manager/push/TestPushManager;

.field l:I


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/manager/push/TestPushManager;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/manager/push/TestPushManager;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCustomNotification$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCustomNotification$1;->k:Lcom/startshorts/androidplayer/manager/push/TestPushManager;

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCustomNotification$1;->j:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCustomNotification$1;->l:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCustomNotification$1;->l:I

    .line 9
    .line 10
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCustomNotification$1;->k:Lcom/startshorts/androidplayer/manager/push/TestPushManager;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0, p0}, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->h(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

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
