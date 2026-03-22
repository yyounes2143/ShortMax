.class public final Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$2$invoke$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "Effects.kt"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$2;->invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $state$inlined:Landroidx/compose/foundation/text/TextFieldState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text/TextFieldState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$2$invoke$$inlined$onDispose$1;->$state$inlined:Landroidx/compose/foundation/text/TextFieldState;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$2$invoke$$inlined$onDispose$1;->$state$inlined:Landroidx/compose/foundation/text/TextFieldState;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldState;->getHasFocus()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$2$invoke$$inlined$onDispose$1;->$state$inlined:Landroidx/compose/foundation/text/TextFieldState;

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/compose/foundation/text/CoreTextFieldKt;->access$onBlur(Landroidx/compose/foundation/text/TextFieldState;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
