.class public Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;
.super Landroidx/compose/runtime/snapshots/StateObjectImpl;
.source "SnapshotFloatState.kt"

# interfaces
.implements Landroidx/compose/runtime/MutableFloatState;
.implements Landroidx/compose/runtime/snapshots/SnapshotMutableState;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x1
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/runtime/snapshots/StateObjectImpl;",
        "Landroidx/compose/runtime/MutableFloatState;",
        "Landroidx/compose/runtime/snapshots/SnapshotMutableState<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSnapshotFloatState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotFloatState.kt\nandroidx/compose/runtime/SnapshotMutableFloatStateImpl\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 3 FloatingPointEquality.android.kt\nandroidx/compose/runtime/internal/FloatingPointEquality_androidKt\n+ 4 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,194:1\n2474#2:195\n2391#2,2:201\n1893#2:203\n2393#2,4:205\n2474#2:215\n41#3,5:196\n41#3,5:210\n33#4:204\n1#5:209\n*S KotlinDebug\n*F\n+ 1 SnapshotFloatState.kt\nandroidx/compose/runtime/SnapshotMutableFloatStateImpl\n*L\n146#1:195\n148#1:201,2\n148#1:203\n148#1:205,4\n180#1:215\n147#1:196,5\n172#1:210,5\n148#1:204\n148#1:209\n*E\n"
    }
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private next:Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(F)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/StateObjectImpl;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    invoke-direct {v1, v2, v3, p1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;-><init>(JF)V

    .line 15
    .line 16
    .line 17
    instance-of v0, v0, Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-static {v2}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->toSnapshotId(I)J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    invoke-direct {v0, v2, v3, p1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;-><init>(JF)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/snapshots/StateRecord;->setNext$runtime(Landroidx/compose/runtime/snapshots/StateRecord;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iput-object v1, p0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->next:Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;

    .line 35
    .line 36
    return-void
.end method

.method public static synthetic a(Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;F)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->component2$lambda$4(Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;F)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final component2$lambda$4(Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;F)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->setFloatValue(F)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public component1()Ljava/lang/Float;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic component1()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->component1()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public component2()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/runtime/d0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/compose/runtime/d0;-><init>(Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->next:Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFloatValue()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->next:Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readable(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;->getValue()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public getPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/SnapshotMutationPolicy<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->structuralEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public mergeRecords(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 1
    .param p1    # Landroidx/compose/runtime/snapshots/StateRecord;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/snapshots/StateRecord;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/snapshots/StateRecord;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string p1, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableFloatStateImpl.FloatStateStateRecord"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    move-object v0, p2

    .line 7
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;

    .line 8
    .line 9
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast p3, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;->getValue()F

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {p3}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;->getValue()F

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    cmpg-float p1, p1, p3

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p2, 0x0

    .line 28
    :goto_0
    return-object p2
.end method

.method public prependStateRecord(Landroidx/compose/runtime/snapshots/StateRecord;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/snapshots/StateRecord;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableFloatStateImpl.FloatStateStateRecord"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;

    .line 7
    .line 8
    iput-object p1, p0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->next:Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;

    .line 9
    .line 10
    return-void
.end method

.method public setFloatValue(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->next:Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;->getValue()F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    cmpg-float v1, v1, p1

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->next:Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;

    .line 19
    .line 20
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    monitor-enter v2

    .line 25
    :try_start_0
    sget-object v3, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-static {v1, p0, v3, v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->overwritableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;->setValue(F)V

    .line 38
    .line 39
    .line 40
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    monitor-exit v2

    .line 43
    invoke-static {v3, p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    monitor-exit v2

    .line 49
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->next:Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "MutableFloatState(value="

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl$FloatStateStateRecord;->getValue()F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, ")@"

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method
