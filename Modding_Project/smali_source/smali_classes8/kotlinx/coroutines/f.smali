.class final Lkotlinx/coroutines/f;
.super Lgt/g1;
.source "CancellableContinuationImpl.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field public final e:Lkotlinx/coroutines/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/e<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/e;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/e<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lgt/g1;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/f;->e:Lkotlinx/coroutines/e;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public u()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public v(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/f;->e:Lkotlinx/coroutines/e;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgt/g1;->t()Lkotlinx/coroutines/JobSupport;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/e;->z(Lkotlinx/coroutines/r;)Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/e;->O(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
