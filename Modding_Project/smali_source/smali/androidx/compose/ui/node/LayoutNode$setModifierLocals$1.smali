.class final Landroidx/compose/ui/node/LayoutNode$setModifierLocals$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LayoutNode.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/node/LayoutNode;->setModifierLocals(Landroidx/compose/ui/Modifier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/node/ModifierLocalProviderEntity;",
        "Landroidx/compose/ui/Modifier$Element;",
        "Landroidx/compose/ui/node/ModifierLocalProviderEntity;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $consumers:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/node/ModifierLocalConsumerEntity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/ui/node/LayoutNode;


# direct methods
.method constructor <init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/runtime/collection/MutableVector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/node/ModifierLocalConsumerEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode$setModifierLocals$1;->this$0:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNode$setModifierLocals$1;->$consumers:Landroidx/compose/runtime/collection/MutableVector;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/node/ModifierLocalProviderEntity;Landroidx/compose/ui/Modifier$Element;)Landroidx/compose/ui/node/ModifierLocalProviderEntity;
    .locals 3
    .param p1    # Landroidx/compose/ui/node/ModifierLocalProviderEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier$Element;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "lastProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mod"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v0, p2, Landroidx/compose/ui/focus/FocusOrderModifier;

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode$setModifierLocals$1;->this$0:Landroidx/compose/ui/node/LayoutNode;

    move-object v1, p2

    check-cast v1, Landroidx/compose/ui/focus/FocusOrderModifier;

    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNode$setModifierLocals$1;->$consumers:Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v0, v1, v2}, Landroidx/compose/ui/node/LayoutNode;->access$findFocusPropertiesModifier(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/focus/FocusOrderModifier;Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/focus/FocusPropertiesModifier;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Landroidx/compose/ui/focus/FocusOrderModifierToProperties;

    invoke-direct {v0, v1}, Landroidx/compose/ui/focus/FocusOrderModifierToProperties;-><init>(Landroidx/compose/ui/focus/FocusOrderModifier;)V

    .line 5
    new-instance v1, Landroidx/compose/ui/focus/FocusPropertiesModifier;

    .line 6
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroidx/compose/ui/node/LayoutNode$setModifierLocals$1$invoke$lambda-1$$inlined$debugInspectorInfo$1;

    invoke-direct {v2, v0}, Landroidx/compose/ui/node/LayoutNode$setModifierLocals$1$invoke$lambda-1$$inlined$debugInspectorInfo$1;-><init>(Landroidx/compose/ui/focus/FocusOrderModifierToProperties;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    .line 7
    :goto_0
    invoke-direct {v1, v0, v2}, Landroidx/compose/ui/focus/FocusPropertiesModifier;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    move-object v0, v1

    .line 8
    :cond_1
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode$setModifierLocals$1;->this$0:Landroidx/compose/ui/node/LayoutNode;

    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNode$setModifierLocals$1;->$consumers:Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v1, v0, p1, v2}, Landroidx/compose/ui/node/LayoutNode;->access$addModifierLocalConsumer(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/modifier/ModifierLocalConsumer;Landroidx/compose/ui/node/ModifierLocalProviderEntity;Landroidx/compose/runtime/collection/MutableVector;)V

    .line 9
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode$setModifierLocals$1;->this$0:Landroidx/compose/ui/node/LayoutNode;

    invoke-static {v1, v0, p1}, Landroidx/compose/ui/node/LayoutNode;->access$addModifierLocalProvider(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/modifier/ModifierLocalProvider;Landroidx/compose/ui/node/ModifierLocalProviderEntity;)Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    move-result-object p1

    .line 10
    :cond_2
    instance-of v0, p2, Landroidx/compose/ui/modifier/ModifierLocalConsumer;

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode$setModifierLocals$1;->this$0:Landroidx/compose/ui/node/LayoutNode;

    move-object v1, p2

    check-cast v1, Landroidx/compose/ui/modifier/ModifierLocalConsumer;

    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNode$setModifierLocals$1;->$consumers:Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {v0, v1, p1, v2}, Landroidx/compose/ui/node/LayoutNode;->access$addModifierLocalConsumer(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/modifier/ModifierLocalConsumer;Landroidx/compose/ui/node/ModifierLocalProviderEntity;Landroidx/compose/runtime/collection/MutableVector;)V

    .line 12
    :cond_3
    instance-of v0, p2, Landroidx/compose/ui/modifier/ModifierLocalProvider;

    if-eqz v0, :cond_4

    .line 13
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode$setModifierLocals$1;->this$0:Landroidx/compose/ui/node/LayoutNode;

    check-cast p2, Landroidx/compose/ui/modifier/ModifierLocalProvider;

    invoke-static {v0, p2, p1}, Landroidx/compose/ui/node/LayoutNode;->access$addModifierLocalProvider(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/modifier/ModifierLocalProvider;Landroidx/compose/ui/node/ModifierLocalProviderEntity;)Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    check-cast p2, Landroidx/compose/ui/Modifier$Element;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/LayoutNode$setModifierLocals$1;->invoke(Landroidx/compose/ui/node/ModifierLocalProviderEntity;Landroidx/compose/ui/Modifier$Element;)Landroidx/compose/ui/node/ModifierLocalProviderEntity;

    move-result-object p1

    return-object p1
.end method
