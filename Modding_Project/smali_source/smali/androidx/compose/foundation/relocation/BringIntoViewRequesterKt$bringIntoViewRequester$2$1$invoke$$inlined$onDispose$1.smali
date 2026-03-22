.class public final Landroidx/compose/foundation/relocation/BringIntoViewRequesterKt$bringIntoViewRequester$2$1$invoke$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "Effects.kt"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/relocation/BringIntoViewRequesterKt$bringIntoViewRequester$2$1;->invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $bringIntoViewRequester$inlined:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

.field final synthetic $modifier$inlined:Landroidx/compose/foundation/relocation/BringIntoViewRequesterModifier;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/foundation/relocation/BringIntoViewRequesterModifier;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterKt$bringIntoViewRequester$2$1$invoke$$inlined$onDispose$1;->$bringIntoViewRequester$inlined:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterKt$bringIntoViewRequester$2$1$invoke$$inlined$onDispose$1;->$modifier$inlined:Landroidx/compose/foundation/relocation/BringIntoViewRequesterModifier;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterKt$bringIntoViewRequester$2$1$invoke$$inlined$onDispose$1;->$bringIntoViewRequester$inlined:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl;->getModifiers()Landroidx/compose/runtime/collection/MutableVector;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterKt$bringIntoViewRequester$2$1$invoke$$inlined$onDispose$1;->$modifier$inlined:Landroidx/compose/foundation/relocation/BringIntoViewRequesterModifier;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method
