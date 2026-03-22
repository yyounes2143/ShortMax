.class public final Landroidx/datastore/core/MultiProcessCoordinatorKt;
.super Ljava/lang/Object;
.source "MultiProcessCoordinator.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final createMultiProcessCoordinator(Lkotlin/coroutines/CoroutineContext;Ljava/io/File;)Landroidx/datastore/core/InterProcessCoordinator;
    .locals 1
    .param p0    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "file"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroidx/datastore/core/MultiProcessCoordinator;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Landroidx/datastore/core/MultiProcessCoordinator;-><init>(Lkotlin/coroutines/CoroutineContext;Ljava/io/File;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method
