.class public final Landroidx/compose/runtime/snapshots/StateMapMutableEntriesIterator$next$1;
.super Ljava/lang/Object;
.source "SnapshotStateMap.kt"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Lkotlin/jvm/internal/markers/KMutableMap$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/snapshots/StateMapMutableEntriesIterator;->next()Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;",
        "Lkotlin/jvm/internal/markers/KMutableMap$Entry;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSnapshotStateMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotStateMap.kt\nandroidx/compose/runtime/snapshots/StateMapMutableEntriesIterator$next$1\n+ 2 SnapshotStateMap.kt\nandroidx/compose/runtime/snapshots/StateMapMutableIterator\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,416:1\n360#2,4:417\n1#3:421\n*S KotlinDebug\n*F\n+ 1 SnapshotStateMap.kt\nandroidx/compose/runtime/snapshots/StateMapMutableEntriesIterator$next$1\n*L\n378#1:417,4\n378#1:421\n*E\n"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/runtime/snapshots/StateMapMutableEntriesIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/snapshots/StateMapMutableEntriesIterator<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/runtime/snapshots/StateMapMutableEntriesIterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/snapshots/StateMapMutableEntriesIterator<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/StateMapMutableEntriesIterator$next$1;->this$0:Landroidx/compose/runtime/snapshots/StateMapMutableEntriesIterator;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/StateMapMutableIterator;->getCurrent()Ljava/util/Map$Entry;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Landroidx/compose/runtime/snapshots/StateMapMutableEntriesIterator$next$1;->key:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/StateMapMutableIterator;->getCurrent()Ljava/util/Map$Entry;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/StateMapMutableEntriesIterator$next$1;->value:Ljava/lang/Object;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/StateMapMutableEntriesIterator$next$1;->key:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/StateMapMutableEntriesIterator$next$1;->value:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/StateMapMutableEntriesIterator$next$1;->this$0:Landroidx/compose/runtime/snapshots/StateMapMutableEntriesIterator;

    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/StateMapMutableIterator;->getMap()Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->getModification$runtime()I

    move-result v1

    invoke-static {v0}, Landroidx/compose/runtime/snapshots/StateMapMutableIterator;->access$getModification(Landroidx/compose/runtime/snapshots/StateMapMutableIterator;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/StateMapMutableEntriesIterator$next$1;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/StateMapMutableIterator;->getMap()Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/StateMapMutableEntriesIterator$next$1;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/StateMapMutableEntriesIterator$next$1;->setValue(Ljava/lang/Object;)V

    return-object v1

    .line 7
    :cond_0
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/StateMapMutableEntriesIterator$next$1;->value:Ljava/lang/Object;

    return-void
.end method
