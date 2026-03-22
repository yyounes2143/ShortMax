.class final Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfNormal$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ImmersionViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->r0(ZIZLrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.viewmodel.immersion.ImmersionViewModel"
    f = "ImmersionViewModel.kt"
    l = {
        0x1fa,
        0x1fc
    }
    m = "queryEpisodesForNextShortsIfNormal"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:Z

.field j:Z

.field k:I

.field synthetic l:Ljava/lang/Object;

.field final synthetic m:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

.field n:I


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfNormal$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfNormal$1;->m:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfNormal$1;->l:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfNormal$1;->n:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfNormal$1;->n:I

    .line 9
    .line 10
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesForNextShortsIfNormal$1;->m:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p1, v0, v0, v0, p0}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->K(Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;ZIZLrs/c;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
