.class public final Landroidx/datastore/core/okio/OkioStorageKt;
.super Ljava/lang/Object;
.source "OkioStorage.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final createSingleProcessCoordinator(Lokio/Path;)Landroidx/datastore/core/InterProcessCoordinator;
    .locals 1
    .param p0    # Lokio/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lokio/Path;->normalized()Lokio/Path;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lokio/Path;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Landroidx/datastore/core/InterProcessCoordinatorKt;->createSingleProcessCoordinator(Ljava/lang/String;)Landroidx/datastore/core/InterProcessCoordinator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method
