.class public Landroidx/compose/runtime/SnapshotMutableStateImpl;
.super Landroidx/compose/runtime/snapshots/StateObjectImpl;
.source "SnapshotState.kt"

# interfaces
.implements Landroidx/compose/runtime/snapshots/SnapshotMutableState;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x2
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/compose/runtime/snapshots/StateObjectImpl;",
        "Landroidx/compose/runtime/snapshots/SnapshotMutableState<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSnapshotState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotState.kt\nandroidx/compose/runtime/SnapshotMutableStateImpl\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 3 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,337:1\n2474#2:338\n2391#2,2:339\n1893#2:341\n2393#2,4:343\n2474#2:349\n2474#2:350\n33#3:342\n1#4:347\n1#4:348\n*S KotlinDebug\n*F\n+ 1 SnapshotState.kt\nandroidx/compose/runtime/SnapshotMutableStateImpl\n*L\n144#1:338\n146#1:339,2\n146#1:341\n146#1:343,4\n189#1:349\n226#1:350\n146#1:342\n146#1:347\n*E\n"
    }
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private next:Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final policy:Landroidx/compose/runtime/SnapshotMutationPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/SnapshotMutationPolicy<",
            "TT;>;"
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

.method public constructor <init>(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)V
    .locals 3
    .param p2    # Landroidx/compose/runtime/SnapshotMutationPolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/compose/runtime/SnapshotMutationPolicy<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/StateObjectImpl;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;->policy:Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 5
    .line 6
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    new-instance v0, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    .line 11
    .line 12
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    invoke-direct {v0, v1, v2, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;-><init>(JLjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    instance-of p2, p2, Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    .line 20
    .line 21
    if-nez p2, :cond_0

    .line 22
    .line 23
    new-instance p2, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->toSnapshotId(I)J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    invoke-direct {p2, v1, v2, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;-><init>(JLjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p2}, Landroidx/compose/runtime/snapshots/StateRecord;->setNext$runtime(Landroidx/compose/runtime/snapshots/StateRecord;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iput-object v0, p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;->next:Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    .line 37
    .line 38
    return-void
.end method

.method public static synthetic a(Landroidx/compose/runtime/SnapshotMutableStateImpl;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->component2$lambda$6(Landroidx/compose/runtime/SnapshotMutableStateImpl;Ljava/lang/Object;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final component2$lambda$6(Landroidx/compose/runtime/SnapshotMutableStateImpl;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static synthetic getDebuggerDisplayValue$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getValue$annotations()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public component1()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public component2()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/runtime/g0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/compose/runtime/g0;-><init>(Landroidx/compose/runtime/SnapshotMutableStateImpl;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final getDebuggerDisplayValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;->next:Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;->next:Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/SnapshotMutationPolicy<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;->policy:Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 2
    .line 3
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;->next:Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->readable(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public mergeRecords(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 4
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
    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableStateImpl.StateStateRecord<T of androidx.compose.runtime.SnapshotMutableStateImpl>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v1, p2

    .line 12
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    .line 13
    .line 14
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    check-cast p3, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {p3}, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;->getValue()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-interface {v0, v2, v3}, Landroidx/compose/runtime/SnapshotMutationPolicy;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p3}, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-interface {p2, p1, v0, v1}, Landroidx/compose/runtime/SnapshotMutationPolicy;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    invoke-virtual {p3}, Landroidx/compose/runtime/snapshots/StateRecord;->getSnapshotId$runtime()J

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    invoke-virtual {p3, v0, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;->create(J)Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;->setValue(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const/4 p1, 0x0

    .line 73
    move-object p2, p1

    .line 74
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
    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableStateImpl.StateStateRecord<T of androidx.compose.runtime.SnapshotMutableStateImpl>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    .line 7
    .line 8
    iput-object p1, p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;->next:Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    .line 9
    .line 10
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;->next:Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v1, v2, p1}, Landroidx/compose/runtime/SnapshotMutationPolicy;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;->next:Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    .line 24
    .line 25
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    monitor-enter v2

    .line 30
    :try_start_0
    sget-object v3, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 31
    .line 32
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {v1, p0, v3, v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->overwritableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;->setValue(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    monitor-exit v2

    .line 48
    invoke-static {v3, p0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->notifyWrite(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/StateObject;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    monitor-exit v2

    .line 54
    throw p1

    .line 55
    :cond_0
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;->next:Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "MutableState(value="

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;->getValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
