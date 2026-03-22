.class public final Landroidx/compose/runtime/snapshots/StateSetStateRecord;
.super Landroidx/compose/runtime/snapshots/StateRecord;
.source "SnapshotStateSet.kt"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/compose/runtime/snapshots/StateRecord;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSnapshotStateSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotStateSet.kt\nandroidx/compose/runtime/snapshots/StateSetStateRecord\n+ 2 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n*L\n1#1,253:1\n33#2:254\n*S KotlinDebug\n*F\n+ 1 SnapshotStateSet.kt\nandroidx/compose/runtime/snapshots/StateSetStateRecord\n*L\n88#1:254\n*E\n"
    }
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private modification:I

.field private set:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet<",
            "+TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(JLandroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;)V
    .locals 0
    .param p3    # Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/snapshots/StateRecord;-><init>(J)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Landroidx/compose/runtime/snapshots/StateSetStateRecord;->set:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public assign(Landroidx/compose/runtime/snapshots/StateRecord;)V
    .locals 2
    .param p1    # Landroidx/compose/runtime/snapshots/StateRecord;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateSetKt;->access$getSync$p()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateSetStateRecord<T of androidx.compose.runtime.snapshots.StateSetStateRecord>"

    .line 7
    .line 8
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v1, p1

    .line 12
    check-cast v1, Landroidx/compose/runtime/snapshots/StateSetStateRecord;

    .line 13
    .line 14
    iget-object v1, v1, Landroidx/compose/runtime/snapshots/StateSetStateRecord;->set:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    .line 15
    .line 16
    iput-object v1, p0, Landroidx/compose/runtime/snapshots/StateSetStateRecord;->set:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    .line 17
    .line 18
    check-cast p1, Landroidx/compose/runtime/snapshots/StateSetStateRecord;

    .line 19
    .line 20
    iget p1, p1, Landroidx/compose/runtime/snapshots/StateSetStateRecord;->modification:I

    .line 21
    .line 22
    iput p1, p0, Landroidx/compose/runtime/snapshots/StateSetStateRecord;->modification:I

    .line 23
    .line 24
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    monitor-exit v0

    .line 30
    throw p1
.end method

.method public create()Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/runtime/snapshots/StateSetStateRecord;

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    move-result-wide v1

    iget-object v3, p0, Landroidx/compose/runtime/snapshots/StateSetStateRecord;->set:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/runtime/snapshots/StateSetStateRecord;-><init>(JLandroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;)V

    return-object v0
.end method

.method public create(J)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Landroidx/compose/runtime/snapshots/StateSetStateRecord;

    iget-object v1, p0, Landroidx/compose/runtime/snapshots/StateSetStateRecord;->set:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    invoke-direct {v0, p1, p2, v1}, Landroidx/compose/runtime/snapshots/StateSetStateRecord;-><init>(JLandroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;)V

    return-object v0
.end method

.method public final getModification$runtime()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/snapshots/StateSetStateRecord;->modification:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSet$runtime()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/StateSetStateRecord;->set:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setModification$runtime(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/runtime/snapshots/StateSetStateRecord;->modification:I

    .line 2
    .line 3
    return-void
.end method

.method public final setSet$runtime(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;)V
    .locals 0
    .param p1    # Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/StateSetStateRecord;->set:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;

    .line 2
    .line 3
    return-void
.end method
