.class final Lkotlinx/coroutines/l;
.super Lgt/g1;
.source "Job.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final e:Lgt/s0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgt/s0;)V
    .locals 0
    .param p1    # Lgt/s0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lgt/g1;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/l;->e:Lgt/s0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public u()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public v(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/l;->e:Lgt/s0;

    .line 2
    .line 3
    invoke-interface {p1}, Lgt/s0;->dispose()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
