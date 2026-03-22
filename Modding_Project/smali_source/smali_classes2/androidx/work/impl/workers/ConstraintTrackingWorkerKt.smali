.class public final Landroidx/work/impl/workers/ConstraintTrackingWorkerKt;
.super Ljava/lang/Object;
.source "ConstraintTrackingWorker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final ARGUMENT_CLASS_NAME:Ljava/lang/String; = "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "ConstraintTrkngWrkr"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "tagWithPrefix(\"ConstraintTrkngWrkr\")"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$setFailed(Landroidx/work/impl/utils/futures/SettableFuture;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt;->setFailed(Landroidx/work/impl/utils/futures/SettableFuture;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$setRetry(Landroidx/work/impl/utils/futures/SettableFuture;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt;->setRetry(Landroidx/work/impl/utils/futures/SettableFuture;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final setFailed(Landroidx/work/impl/utils/futures/SettableFuture;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/utils/futures/SettableFuture<",
            "Landroidx/work/ListenableWorker$Result;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Landroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private static final setRetry(Landroidx/work/impl/utils/futures/SettableFuture;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/utils/futures/SettableFuture<",
            "Landroidx/work/ListenableWorker$Result;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Landroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method
