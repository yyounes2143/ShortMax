.class public final Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$4$1$invoke$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "Effects.kt"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$4$1;->invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $currentlyVisible$inlined:Landroidx/compose/runtime/snapshots/SnapshotStateList;

.field final synthetic $rootScope$inlined:Landroidx/compose/animation/AnimatedContentScope;

.field final synthetic $stateForContent$inlined:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/snapshots/SnapshotStateList;Ljava/lang/Object;Landroidx/compose/animation/AnimatedContentScope;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$4$1$invoke$$inlined$onDispose$1;->$currentlyVisible$inlined:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$4$1$invoke$$inlined$onDispose$1;->$stateForContent$inlined:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$4$1$invoke$$inlined$onDispose$1;->$rootScope$inlined:Landroidx/compose/animation/AnimatedContentScope;

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
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$4$1$invoke$$inlined$onDispose$1;->$currentlyVisible$inlined:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$4$1$invoke$$inlined$onDispose$1;->$stateForContent$inlined:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$4$1$invoke$$inlined$onDispose$1;->$rootScope$inlined:Landroidx/compose/animation/AnimatedContentScope;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/animation/AnimatedContentScope;->getTargetSizeMap$animation_release()Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1$4$1$invoke$$inlined$onDispose$1;->$stateForContent$inlined:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    return-void
.end method
