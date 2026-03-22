.class public final Landroidx/compose/foundation/HoverableKt$hoverable$2$1$invoke$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "Effects.kt"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/HoverableKt$hoverable$2$1;->invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $hoverInteraction$delegate$inlined:Landroidx/compose/runtime/MutableState;

.field final synthetic $interactionSource$inlined:Landroidx/compose/foundation/interaction/MutableInteractionSource;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2$1$invoke$$inlined$onDispose$1;->$hoverInteraction$delegate$inlined:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2$1$invoke$$inlined$onDispose$1;->$interactionSource$inlined:Landroidx/compose/foundation/interaction/MutableInteractionSource;

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
    iget-object v0, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2$1$invoke$$inlined$onDispose$1;->$hoverInteraction$delegate$inlined:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2$1$invoke$$inlined$onDispose$1;->$interactionSource$inlined:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/compose/foundation/HoverableKt$hoverable$2;->access$invoke$tryEmitExit(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
