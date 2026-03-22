.class public final Landroidx/compose/runtime/MovableContentStateReference;
.super Ljava/lang/Object;
.source "Composer.kt"


# annotations
.annotation build Landroidx/compose/runtime/InternalComposeApi;
.end annotation

.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final anchor:Landroidx/compose/runtime/Anchor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final composition:Landroidx/compose/runtime/ControlledComposition;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final content:Landroidx/compose/runtime/MovableContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MovableContent<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private invalidations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lkotlin/Pair<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final locals:Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final nestedReferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final parameter:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final slotTable:Landroidx/compose/runtime/SlotTable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/MovableContent;Ljava/lang/Object;Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/Anchor;Ljava/util/List;Landroidx/compose/runtime/PersistentCompositionLocalMap;Ljava/util/List;)V
    .locals 0
    .param p1    # Landroidx/compose/runtime/MovableContent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/ControlledComposition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/SlotTable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/runtime/Anchor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/runtime/PersistentCompositionLocalMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MovableContent<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Landroidx/compose/runtime/ControlledComposition;",
            "Landroidx/compose/runtime/SlotTable;",
            "Landroidx/compose/runtime/Anchor;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/Pair<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            "+",
            "Ljava/lang/Object;",
            ">;>;",
            "Landroidx/compose/runtime/PersistentCompositionLocalMap;",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/MovableContentStateReference;->content:Landroidx/compose/runtime/MovableContent;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/runtime/MovableContentStateReference;->parameter:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/runtime/MovableContentStateReference;->composition:Landroidx/compose/runtime/ControlledComposition;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/runtime/MovableContentStateReference;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/runtime/MovableContentStateReference;->anchor:Landroidx/compose/runtime/Anchor;

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/runtime/MovableContentStateReference;->invalidations:Ljava/util/List;

    .line 15
    .line 16
    iput-object p7, p0, Landroidx/compose/runtime/MovableContentStateReference;->locals:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 17
    .line 18
    iput-object p8, p0, Landroidx/compose/runtime/MovableContentStateReference;->nestedReferences:Ljava/util/List;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final getAnchor$runtime()Landroidx/compose/runtime/Anchor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/MovableContentStateReference;->anchor:Landroidx/compose/runtime/Anchor;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getComposition$runtime()Landroidx/compose/runtime/ControlledComposition;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/MovableContentStateReference;->composition:Landroidx/compose/runtime/ControlledComposition;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getContent$runtime()Landroidx/compose/runtime/MovableContent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/MovableContent<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/MovableContentStateReference;->content:Landroidx/compose/runtime/MovableContent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInvalidations$runtime()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/MovableContentStateReference;->invalidations:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLocals$runtime()Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/MovableContentStateReference;->locals:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNestedReferences$runtime()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/MovableContentStateReference;->nestedReferences:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getParameter$runtime()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/MovableContentStateReference;->parameter:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSlotTable$runtime()Landroidx/compose/runtime/SlotTable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/MovableContentStateReference;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setInvalidations$runtime(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/Pair<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            "+",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/MovableContentStateReference;->invalidations:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final transferPendingInvalidations$runtime()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/MovableContentStateReference;->invalidations:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Collection;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/runtime/MovableContentStateReference;->composition:Landroidx/compose/runtime/ControlledComposition;

    .line 6
    .line 7
    const-string v2, "null cannot be cast to non-null type androidx.compose.runtime.CompositionImpl"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v1, Landroidx/compose/runtime/CompositionImpl;

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/compose/runtime/MovableContentStateReference;->anchor:Landroidx/compose/runtime/Anchor;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/CompositionImpl;->extractInvalidationsOf$runtime(Landroidx/compose/runtime/Anchor;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/Iterable;

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->K0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Landroidx/compose/runtime/MovableContentStateReference;->invalidations:Ljava/util/List;

    .line 27
    .line 28
    return-void
.end method
