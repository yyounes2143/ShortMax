.class final Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$logEvents$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SupersetEventLogger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->f(Ljava/util/List;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.manager.event.SupersetEventLogger"
    f = "SupersetEventLogger.kt"
    l = {
        0xda,
        0xdf
    }
    m = "logEvents"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field synthetic j:Ljava/lang/Object;

.field final synthetic k:Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;

.field l:I


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$logEvents$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$logEvents$1;->k:Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$logEvents$1;->j:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$logEvents$1;->l:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$logEvents$1;->l:I

    .line 9
    .line 10
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger$logEvents$1;->k:Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0, p0}, Lcom/startshorts/androidplayer/manager/event/SupersetEventLogger;->f(Ljava/util/List;Lrs/c;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
