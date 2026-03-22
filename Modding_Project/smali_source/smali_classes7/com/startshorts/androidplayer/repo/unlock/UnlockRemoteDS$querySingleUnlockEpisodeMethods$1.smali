.class final Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$querySingleUnlockEpisodeMethods$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "UnlockRemoteDS.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;->b(ZLandroid/content/Context;IILjava/lang/String;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.repo.unlock.UnlockRemoteDS"
    f = "UnlockRemoteDS.kt"
    l = {
        0x26
    }
    m = "querySingleUnlockEpisodeMethods-hUnOzRk"
.end annotation


# instance fields
.field synthetic h:Ljava/lang/Object;

.field final synthetic i:Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;

.field j:I


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$querySingleUnlockEpisodeMethods$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$querySingleUnlockEpisodeMethods$1;->i:Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;

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
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$querySingleUnlockEpisodeMethods$1;->h:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$querySingleUnlockEpisodeMethods$1;->j:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$querySingleUnlockEpisodeMethods$1;->j:I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$querySingleUnlockEpisodeMethods$1;->i:Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    move-object v6, p0

    .line 18
    invoke-virtual/range {v0 .. v6}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;->b(ZLandroid/content/Context;IILjava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-ne p1, v0, :cond_0

    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_0
    invoke-static {p1}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method
