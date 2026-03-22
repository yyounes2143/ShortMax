.class final Landroidx/datastore/core/MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "MultiProcessCoordinator.android.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/datastore/core/MultiProcessCoordinator$Companion;->getExclusiveFileLockWithRetryIfDeadlock(Ljava/io/FileOutputStream;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "androidx.datastore.core.MultiProcessCoordinator$Companion"
    f = "MultiProcessCoordinator.android.kt"
    l = {
        0xb6
    }
    m = "getExclusiveFileLockWithRetryIfDeadlock"
.end annotation


# instance fields
.field J$0:J

.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Landroidx/datastore/core/MultiProcessCoordinator$Companion;


# direct methods
.method constructor <init>(Landroidx/datastore/core/MultiProcessCoordinator$Companion;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/core/MultiProcessCoordinator$Companion;",
            "Lrs/c<",
            "-",
            "Landroidx/datastore/core/MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/datastore/core/MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1;->this$0:Landroidx/datastore/core/MultiProcessCoordinator$Companion;

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
    iput-object p1, p0, Landroidx/datastore/core/MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1;->result:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Landroidx/datastore/core/MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1;->label:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Landroidx/datastore/core/MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1;->label:I

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/datastore/core/MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1;->this$0:Landroidx/datastore/core/MultiProcessCoordinator$Companion;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p1, v0, p0}, Landroidx/datastore/core/MultiProcessCoordinator$Companion;->access$getExclusiveFileLockWithRetryIfDeadlock(Landroidx/datastore/core/MultiProcessCoordinator$Companion;Ljava/io/FileOutputStream;Lrs/c;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
