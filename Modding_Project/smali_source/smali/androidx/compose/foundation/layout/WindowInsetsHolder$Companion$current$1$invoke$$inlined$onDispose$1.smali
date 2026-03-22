.class public final Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion$current$1$invoke$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "Effects.kt"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion$current$1;->invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $insets$inlined:Landroidx/compose/foundation/layout/WindowInsetsHolder;

.field final synthetic $view$inlined:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/WindowInsetsHolder;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion$current$1$invoke$$inlined$onDispose$1;->$insets$inlined:Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion$current$1$invoke$$inlined$onDispose$1;->$view$inlined:Landroid/view/View;

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
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion$current$1$invoke$$inlined$onDispose$1;->$insets$inlined:Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion$current$1$invoke$$inlined$onDispose$1;->$view$inlined:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/layout/WindowInsetsHolder;->decrementAccessors(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
