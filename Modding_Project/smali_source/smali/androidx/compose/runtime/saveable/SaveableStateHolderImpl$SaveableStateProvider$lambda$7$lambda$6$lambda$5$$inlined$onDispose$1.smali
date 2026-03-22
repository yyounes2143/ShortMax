.class public final Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$SaveableStateProvider$lambda$7$lambda$6$lambda$5$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "Effects.kt"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->SaveableStateProvider(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nEffects.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope$onDispose$1\n+ 2 SaveableStateHolder.kt\nandroidx/compose/runtime/saveable/SaveableStateHolderImpl\n*L\n1#1,69:1\n92#2,4:70\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $key$inlined:Ljava/lang/Object;

.field final synthetic $registry$inlined:Landroidx/compose/runtime/saveable/SaveableStateRegistryWrapper;

.field final synthetic this$0:Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;Ljava/lang/Object;Landroidx/compose/runtime/saveable/SaveableStateRegistryWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$SaveableStateProvider$lambda$7$lambda$6$lambda$5$$inlined$onDispose$1;->this$0:Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$SaveableStateProvider$lambda$7$lambda$6$lambda$5$$inlined$onDispose$1;->$key$inlined:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$SaveableStateProvider$lambda$7$lambda$6$lambda$5$$inlined$onDispose$1;->$registry$inlined:Landroidx/compose/runtime/saveable/SaveableStateRegistryWrapper;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$SaveableStateProvider$lambda$7$lambda$6$lambda$5$$inlined$onDispose$1;->this$0:Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->access$getRegistries$p(Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;)Landroidx/collection/MutableScatterMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$SaveableStateProvider$lambda$7$lambda$6$lambda$5$$inlined$onDispose$1;->$key$inlined:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$SaveableStateProvider$lambda$7$lambda$6$lambda$5$$inlined$onDispose$1;->$registry$inlined:Landroidx/compose/runtime/saveable/SaveableStateRegistryWrapper;

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$SaveableStateProvider$lambda$7$lambda$6$lambda$5$$inlined$onDispose$1;->this$0:Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    .line 18
    .line 19
    invoke-static {v0}, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->access$getSavedStates$p(Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;)Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v3, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$SaveableStateProvider$lambda$7$lambda$6$lambda$5$$inlined$onDispose$1;->$key$inlined:Ljava/lang/Object;

    .line 24
    .line 25
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->access$saveTo(Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/util/Map;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
