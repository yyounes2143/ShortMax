.class public final Landroidx/compose/runtime/CompositionDataImpl;
.super Ljava/lang/Object;
.source "Composer.kt"

# interfaces
.implements Landroidx/compose/runtime/tooling/CompositionData;
.implements Landroidx/compose/runtime/tooling/CompositionInstance;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nComposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Composer.kt\nandroidx/compose/runtime/CompositionDataImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,5012:1\n1#2:5013\n*E\n"
    }
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final composition:Landroidx/compose/runtime/Composition;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/Composition;)V
    .locals 0
    .param p1    # Landroidx/compose/runtime/Composition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/CompositionDataImpl;->composition:Landroidx/compose/runtime/Composition;

    .line 5
    .line 6
    return-void
.end method

.method private final getContext(Landroidx/compose/runtime/Composition;)Landroidx/compose/runtime/CompositionContext;
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/compose/runtime/CompositionImpl;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Landroidx/compose/runtime/CompositionImpl;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p1, v1

    .line 10
    :goto_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/compose/runtime/CompositionImpl;->getParent()Landroidx/compose/runtime/CompositionContext;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_1
    return-object v1
.end method

.method private final getParent(Landroidx/compose/runtime/Composition;)Landroidx/compose/runtime/Composition;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/compose/runtime/CompositionDataImpl;->getContext(Landroidx/compose/runtime/Composition;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/runtime/CompositionContext;->getComposition$runtime()Landroidx/compose/runtime/Composition;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final getSlotTable()Landroidx/compose/runtime/SlotTable;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionDataImpl;->composition:Landroidx/compose/runtime/Composition;

    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.CompositionImpl"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/runtime/CompositionImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionImpl;->getSlotTable$runtime()Landroidx/compose/runtime/SlotTable;

    move-result-object v0

    return-object v0
.end method

.method private final getSlotTable(Landroidx/compose/runtime/Composition;)Landroidx/compose/runtime/SlotTable;
    .locals 2

    .line 2
    instance-of v0, p1, Landroidx/compose/runtime/CompositionImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/runtime/CompositionImpl;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/compose/runtime/CompositionImpl;->getSlotTable$runtime()Landroidx/compose/runtime/SlotTable;

    move-result-object v1

    :cond_1
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Landroidx/compose/runtime/CompositionDataImpl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/runtime/CompositionDataImpl;->composition:Landroidx/compose/runtime/Composition;

    .line 6
    .line 7
    check-cast p1, Landroidx/compose/runtime/CompositionDataImpl;

    .line 8
    .line 9
    iget-object p1, p1, Landroidx/compose/runtime/CompositionDataImpl;->composition:Landroidx/compose/runtime/Composition;

    .line 10
    .line 11
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method public find(Ljava/lang/Object;)Landroidx/compose/runtime/tooling/CompositionGroup;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionDataImpl;->getSlotTable()Landroidx/compose/runtime/SlotTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SlotTable;->find(Ljava/lang/Object;)Landroidx/compose/runtime/tooling/CompositionGroup;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public findContextGroup()Landroidx/compose/runtime/tooling/CompositionGroup;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionDataImpl;->composition:Landroidx/compose/runtime/Composition;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroidx/compose/runtime/CompositionDataImpl;->getParent(Landroidx/compose/runtime/Composition;)Landroidx/compose/runtime/Composition;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    invoke-direct {p0, v0}, Landroidx/compose/runtime/CompositionDataImpl;->getSlotTable(Landroidx/compose/runtime/Composition;)Landroidx/compose/runtime/SlotTable;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v2, p0, Landroidx/compose/runtime/CompositionDataImpl;->composition:Landroidx/compose/runtime/Composition;

    .line 18
    .line 19
    invoke-direct {p0, v2}, Landroidx/compose/runtime/CompositionDataImpl;->getContext(Landroidx/compose/runtime/Composition;)Landroidx/compose/runtime/CompositionContext;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_1
    invoke-static {v0, v2}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilderKt;->findSubcompositionContextGroup(Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/CompositionContext;)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->compositionGroupOf(Landroidx/compose/runtime/SlotTable;I)Landroidx/compose/runtime/tooling/CompositionGroup;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :cond_2
    :goto_0
    return-object v1
.end method

.method public final getComposition()Landroidx/compose/runtime/Composition;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionDataImpl;->composition:Landroidx/compose/runtime/Composition;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCompositionGroups()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Landroidx/compose/runtime/tooling/CompositionGroup;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionDataImpl;->getSlotTable()Landroidx/compose/runtime/SlotTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->getCompositionGroups()Ljava/lang/Iterable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getData()Landroidx/compose/runtime/tooling/CompositionData;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public getParent()Landroidx/compose/runtime/tooling/CompositionInstance;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionDataImpl;->composition:Landroidx/compose/runtime/Composition;

    invoke-direct {p0, v0}, Landroidx/compose/runtime/CompositionDataImpl;->getParent(Landroidx/compose/runtime/Composition;)Landroidx/compose/runtime/Composition;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/compose/runtime/CompositionDataImpl;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/CompositionDataImpl;-><init>(Landroidx/compose/runtime/Composition;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/CompositionDataImpl;->composition:Landroidx/compose/runtime/Composition;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/CompositionDataImpl;->getSlotTable()Landroidx/compose/runtime/SlotTable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotTable;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method
