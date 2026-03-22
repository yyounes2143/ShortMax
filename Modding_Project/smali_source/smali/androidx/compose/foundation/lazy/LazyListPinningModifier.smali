.class final Landroidx/compose/foundation/lazy/LazyListPinningModifier;
.super Ljava/lang/Object;
.source "LazyListPinningModifier.kt"

# interfaces
.implements Landroidx/compose/ui/modifier/ModifierLocalProvider;
.implements Landroidx/compose/ui/modifier/ModifierLocalConsumer;
.implements Landroidx/compose/foundation/lazy/layout/PinnableParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/LazyListPinningModifier$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/ui/modifier/ModifierLocalProvider<",
        "Landroidx/compose/foundation/lazy/layout/PinnableParent;",
        ">;",
        "Landroidx/compose/ui/modifier/ModifierLocalConsumer;",
        "Landroidx/compose/foundation/lazy/layout/PinnableParent;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/foundation/lazy/LazyListPinningModifier$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final EmptyPinnedItemsHandle:Landroidx/compose/foundation/lazy/LazyListPinningModifier$Companion$EmptyPinnedItemsHandle$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final beyondBoundsInfo:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pinnableGrandParent:Landroidx/compose/foundation/lazy/layout/PinnableParent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final state:Landroidx/compose/foundation/lazy/LazyListState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListPinningModifier$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/foundation/lazy/LazyListPinningModifier$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/foundation/lazy/LazyListPinningModifier;->Companion:Landroidx/compose/foundation/lazy/LazyListPinningModifier$Companion;

    .line 8
    .line 9
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListPinningModifier$Companion$EmptyPinnedItemsHandle$1;

    .line 10
    .line 11
    invoke-direct {v0}, Landroidx/compose/foundation/lazy/LazyListPinningModifier$Companion$EmptyPinnedItemsHandle$1;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Landroidx/compose/foundation/lazy/LazyListPinningModifier;->EmptyPinnedItemsHandle:Landroidx/compose/foundation/lazy/LazyListPinningModifier$Companion$EmptyPinnedItemsHandle$1;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;)V
    .locals 1
    .param p1    # Landroidx/compose/foundation/lazy/LazyListState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "state"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "beyondBoundsInfo"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListPinningModifier;->state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 15
    .line 16
    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListPinningModifier;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;

    .line 17
    .line 18
    return-void
.end method

.method public static final synthetic access$getState$p(Landroidx/compose/foundation/lazy/LazyListPinningModifier;)Landroidx/compose/foundation/lazy/LazyListState;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListPinningModifier;->state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public getKey()Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/ui/modifier/ProvidableModifierLocal<",
            "Landroidx/compose/foundation/lazy/layout/PinnableParent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/foundation/lazy/layout/PinnableParentKt;->getModifierLocalPinnableParent()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getPinnableGrandParent()Landroidx/compose/foundation/lazy/layout/PinnableParent;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListPinningModifier;->pinnableGrandParent:Landroidx/compose/foundation/lazy/layout/PinnableParent;

    .line 2
    .line 3
    return-object v0
.end method

.method public getValue()Landroidx/compose/foundation/lazy/layout/PinnableParent;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListPinningModifier;->getValue()Landroidx/compose/foundation/lazy/layout/PinnableParent;

    move-result-object v0

    return-object v0
.end method

.method public onModifierLocalsUpdated(Landroidx/compose/ui/modifier/ModifierLocalReadScope;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/modifier/ModifierLocalReadScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "scope"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroidx/compose/foundation/lazy/layout/PinnableParentKt;->getModifierLocalPinnableParent()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {p1, v0}, Landroidx/compose/ui/modifier/ModifierLocalReadScope;->getCurrent(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroidx/compose/foundation/lazy/layout/PinnableParent;

    .line 15
    .line 16
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListPinningModifier;->pinnableGrandParent:Landroidx/compose/foundation/lazy/layout/PinnableParent;

    .line 17
    .line 18
    return-void
.end method

.method public pinItems()Landroidx/compose/foundation/lazy/layout/PinnableParent$PinnedItemsHandle;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListPinningModifier;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->hasIntervals()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Landroidx/compose/foundation/lazy/LazyListPinningModifier$pinItems$1$1;

    .line 10
    .line 11
    invoke-direct {v1, p0, v0}, Landroidx/compose/foundation/lazy/LazyListPinningModifier$pinItems$1$1;-><init>(Landroidx/compose/foundation/lazy/LazyListPinningModifier;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListPinningModifier;->pinnableGrandParent:Landroidx/compose/foundation/lazy/layout/PinnableParent;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/PinnableParent;->pinItems()Landroidx/compose/foundation/lazy/layout/PinnableParent$PinnedItemsHandle;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    :cond_1
    sget-object v1, Landroidx/compose/foundation/lazy/LazyListPinningModifier;->EmptyPinnedItemsHandle:Landroidx/compose/foundation/lazy/LazyListPinningModifier$Companion$EmptyPinnedItemsHandle$1;

    .line 26
    .line 27
    :cond_2
    :goto_0
    return-object v1
.end method

.method public final setPinnableGrandParent(Landroidx/compose/foundation/lazy/layout/PinnableParent;)V
    .locals 0
    .param p1    # Landroidx/compose/foundation/lazy/layout/PinnableParent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListPinningModifier;->pinnableGrandParent:Landroidx/compose/foundation/lazy/layout/PinnableParent;

    .line 2
    .line 3
    return-void
.end method
