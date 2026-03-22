.class public abstract Landroidx/compose/runtime/snapshots/StateObjectImpl;
.super Ljava/lang/Object;
.source "StateObjectImpl.kt"

# interfaces
.implements Landroidx/compose/runtime/snapshots/StateObject;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nStateObjectImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateObjectImpl.kt\nandroidx/compose/runtime/snapshots/StateObjectImpl\n+ 2 StateObjectImpl.kt\nandroidx/compose/runtime/snapshots/ReaderKind\n*L\n1#1,63:1\n50#2:64\n47#2:65\n50#2:66\n*S KotlinDebug\n*F\n+ 1 StateObjectImpl.kt\nandroidx/compose/runtime/snapshots/StateObjectImpl\n*L\n34#1:64\n36#1:65\n41#1:66\n*E\n"
    }
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final readerKind:Landroidx/compose/runtime/internal/AtomicInt;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/compose/runtime/internal/AtomicInt;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Landroidx/compose/runtime/internal/AtomicInt;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/compose/runtime/snapshots/StateObjectImpl;->readerKind:Landroidx/compose/runtime/internal/AtomicInt;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final isReadIn-h_f27i8$runtime(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/StateObjectImpl;->readerKind:Landroidx/compose/runtime/internal/AtomicInt;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/ReaderKind;->constructor-impl(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    and-int/2addr p1, v0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    return p1
.end method

.method public final recordReadIn-h_f27i8$runtime(I)V
    .locals 3

    .line 1
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/StateObjectImpl;->readerKind:Landroidx/compose/runtime/internal/AtomicInt;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/ReaderKind;->constructor-impl(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    and-int v1, v0, p1

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    or-int v1, v0, p1

    .line 17
    .line 18
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/ReaderKind;->constructor-impl(I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget-object v2, p0, Landroidx/compose/runtime/snapshots/StateObjectImpl;->readerKind:Landroidx/compose/runtime/internal/AtomicInt;

    .line 23
    .line 24
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    return-void
.end method
