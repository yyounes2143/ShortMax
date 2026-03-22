.class public final Landroidx/compose/ui/node/ModifierLocalProviderEntity;
.super Ljava/lang/Object;
.source "ModifierLocalProviderEntity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final consumers:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/node/ModifierLocalConsumerEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isAttached:Z

.field private final layoutNode:Landroidx/compose/ui/node/LayoutNode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final modifier:Landroidx/compose/ui/modifier/ModifierLocalProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/modifier/ModifierLocalProvider<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private next:Landroidx/compose/ui/node/ModifierLocalProviderEntity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private prev:Landroidx/compose/ui/node/ModifierLocalProviderEntity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/modifier/ModifierLocalProvider;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/modifier/ModifierLocalProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Landroidx/compose/ui/modifier/ModifierLocalProvider<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "layoutNode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "modifier"

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
    iput-object p1, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 15
    .line 16
    iput-object p2, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->modifier:Landroidx/compose/ui/modifier/ModifierLocalProvider;

    .line 17
    .line 18
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    .line 19
    .line 20
    const/16 p2, 0x10

    .line 21
    .line 22
    new-array p2, p2, [Landroidx/compose/ui/node/ModifierLocalConsumerEntity;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-direct {p1, p2, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->consumers:Landroidx/compose/runtime/collection/MutableVector;

    .line 29
    .line 30
    return-void
.end method

.method private final invalidateConsumersOf(Landroidx/compose/ui/modifier/ModifierLocal;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/modifier/ModifierLocal<",
            "*>;Z)V"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->modifier:Landroidx/compose/ui/modifier/ModifierLocalProvider;

    .line 4
    .line 5
    invoke-interface {p2}, Landroidx/compose/ui/modifier/ModifierLocalProvider;->getKey()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p2, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->consumers:Landroidx/compose/runtime/collection/MutableVector;

    .line 17
    .line 18
    invoke-virtual {p2}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x1

    .line 24
    if-lez v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {p2}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    move v3, v1

    .line 31
    :cond_1
    aget-object v4, p2, v3

    .line 32
    .line 33
    check-cast v4, Landroidx/compose/ui/node/ModifierLocalConsumerEntity;

    .line 34
    .line 35
    invoke-virtual {v4, p1}, Landroidx/compose/ui/node/ModifierLocalConsumerEntity;->invalidateConsumersOf(Landroidx/compose/ui/modifier/ModifierLocal;)V

    .line 36
    .line 37
    .line 38
    add-int/2addr v3, v2

    .line 39
    if-lt v3, v0, :cond_1

    .line 40
    .line 41
    :cond_2
    iget-object p2, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->next:Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 42
    .line 43
    if-eqz p2, :cond_3

    .line 44
    .line 45
    invoke-direct {p2, p1, v2}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->invalidateConsumersOf(Landroidx/compose/ui/modifier/ModifierLocal;Z)V

    .line 46
    .line 47
    .line 48
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    const/4 p2, 0x0

    .line 52
    :goto_0
    if-nez p2, :cond_5

    .line 53
    .line 54
    iget-object p2, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 55
    .line 56
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p2}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-lez v0, :cond_5

    .line 65
    .line 66
    invoke-virtual {p2}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    :cond_4
    aget-object v3, p2, v1

    .line 71
    .line 72
    check-cast v3, Landroidx/compose/ui/node/LayoutNode;

    .line 73
    .line 74
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getModifierLocalsHead$ui_release()Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-direct {v3, p1, v2}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->invalidateConsumersOf(Landroidx/compose/ui/modifier/ModifierLocal;Z)V

    .line 79
    .line 80
    .line 81
    add-int/2addr v1, v2

    .line 82
    if-lt v1, v0, :cond_4

    .line 83
    .line 84
    :cond_5
    return-void
.end method


# virtual methods
.method public final attach()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->isAttached:Z

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->modifier:Landroidx/compose/ui/modifier/ModifierLocalProvider;

    .line 5
    .line 6
    invoke-interface {v1}, Landroidx/compose/ui/modifier/ModifierLocalProvider;->getKey()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {p0, v1, v2}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->invalidateConsumersOf(Landroidx/compose/ui/modifier/ModifierLocal;Z)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->consumers:Landroidx/compose/runtime/collection/MutableVector;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-lez v3, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :cond_0
    aget-object v4, v1, v2

    .line 27
    .line 28
    check-cast v4, Landroidx/compose/ui/node/ModifierLocalConsumerEntity;

    .line 29
    .line 30
    invoke-virtual {v4}, Landroidx/compose/ui/node/ModifierLocalConsumerEntity;->attach()V

    .line 31
    .line 32
    .line 33
    add-int/2addr v2, v0

    .line 34
    if-lt v2, v3, :cond_0

    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public final attachDelayed()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->isAttached:Z

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getOwner$ui_release()Landroidx/compose/ui/node/Owner;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-interface {v1, p0}, Landroidx/compose/ui/node/Owner;->registerOnEndApplyChangesListener(Lkotlin/jvm/functions/Function0;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->consumers:Landroidx/compose/runtime/collection/MutableVector;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-lez v2, :cond_2

    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v3, 0x0

    .line 28
    :cond_1
    aget-object v4, v1, v3

    .line 29
    .line 30
    check-cast v4, Landroidx/compose/ui/node/ModifierLocalConsumerEntity;

    .line 31
    .line 32
    invoke-virtual {v4}, Landroidx/compose/ui/node/ModifierLocalConsumerEntity;->attachDelayed()V

    .line 33
    .line 34
    .line 35
    add-int/2addr v3, v0

    .line 36
    if-lt v3, v2, :cond_1

    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method public final detach()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->isAttached:Z

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->consumers:Landroidx/compose/runtime/collection/MutableVector;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-lez v2, :cond_1

    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    move v3, v0

    .line 17
    :cond_0
    aget-object v4, v1, v3

    .line 18
    .line 19
    check-cast v4, Landroidx/compose/ui/node/ModifierLocalConsumerEntity;

    .line 20
    .line 21
    invoke-virtual {v4}, Landroidx/compose/ui/node/ModifierLocalConsumerEntity;->detach()V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v3, v3, 0x1

    .line 25
    .line 26
    if-lt v3, v2, :cond_0

    .line 27
    .line 28
    :cond_1
    iget-object v1, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->modifier:Landroidx/compose/ui/modifier/ModifierLocalProvider;

    .line 29
    .line 30
    invoke-interface {v1}, Landroidx/compose/ui/modifier/ModifierLocalProvider;->getKey()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-direct {p0, v1, v0}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->invalidateConsumersOf(Landroidx/compose/ui/modifier/ModifierLocal;Z)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final findModifierLocalProvider(Landroidx/compose/ui/modifier/ModifierLocal;)Landroidx/compose/ui/modifier/ModifierLocalProvider;
    .locals 1
    .param p1    # Landroidx/compose/ui/modifier/ModifierLocal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/modifier/ModifierLocal<",
            "*>;)",
            "Landroidx/compose/ui/modifier/ModifierLocalProvider<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "local"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->modifier:Landroidx/compose/ui/modifier/ModifierLocalProvider;

    .line 7
    .line 8
    invoke-interface {v0}, Landroidx/compose/ui/modifier/ModifierLocalProvider;->getKey()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->modifier:Landroidx/compose/ui/modifier/ModifierLocalProvider;

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->prev:Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->findModifierLocalProvider(Landroidx/compose/ui/modifier/ModifierLocal;)Landroidx/compose/ui/modifier/ModifierLocalProvider;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getModifierLocalsTail$ui_release()Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->findModifierLocalProvider(Landroidx/compose/ui/modifier/ModifierLocal;)Landroidx/compose/ui/modifier/ModifierLocalProvider;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 v0, 0x0

    .line 51
    :cond_3
    :goto_0
    return-object v0
.end method

.method public final getConsumers()Landroidx/compose/runtime/collection/MutableVector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/node/ModifierLocalConsumerEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->consumers:Landroidx/compose/runtime/collection/MutableVector;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLayoutNode()Landroidx/compose/ui/node/LayoutNode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getModifier()Landroidx/compose/ui/modifier/ModifierLocalProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/ui/modifier/ModifierLocalProvider<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->modifier:Landroidx/compose/ui/modifier/ModifierLocalProvider;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNext()Landroidx/compose/ui/node/ModifierLocalProviderEntity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->next:Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPrev()Landroidx/compose/ui/node/ModifierLocalProviderEntity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->prev:Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public invoke()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->isAttached:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->modifier:Landroidx/compose/ui/modifier/ModifierLocalProvider;

    invoke-interface {v0}, Landroidx/compose/ui/modifier/ModifierLocalProvider;->getKey()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->invalidateConsumersOf(Landroidx/compose/ui/modifier/ModifierLocal;Z)V

    :cond_0
    return-void
.end method

.method public final isAttached()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->isAttached:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setNext(Landroidx/compose/ui/node/ModifierLocalProviderEntity;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/node/ModifierLocalProviderEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->next:Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 2
    .line 3
    return-void
.end method

.method public final setPrev(Landroidx/compose/ui/node/ModifierLocalProviderEntity;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/node/ModifierLocalProviderEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/node/ModifierLocalProviderEntity;->prev:Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    .line 2
    .line 3
    return-void
.end method
