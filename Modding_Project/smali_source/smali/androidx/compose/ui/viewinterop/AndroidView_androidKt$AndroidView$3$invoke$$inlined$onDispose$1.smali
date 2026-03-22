.class public final Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$invoke$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "Effects.kt"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3;->invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $entry$inlined:Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$invoke$$inlined$onDispose$1;->$entry$inlined:Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

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
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$AndroidView$3$invoke$$inlined$onDispose$1;->$entry$inlined:Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;->unregister()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
