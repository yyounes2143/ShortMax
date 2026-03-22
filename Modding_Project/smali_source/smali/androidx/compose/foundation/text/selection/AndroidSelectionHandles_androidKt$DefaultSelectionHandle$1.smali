.class final Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$DefaultSelectionHandle$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AndroidSelectionHandles.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->DefaultSelectionHandle(Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/style/ResolvedTextDirection;ZLandroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $direction:Landroidx/compose/ui/text/style/ResolvedTextDirection;

.field final synthetic $handlesCrossed:Z

.field final synthetic $isStartHandle:Z

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;


# direct methods
.method constructor <init>(Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/style/ResolvedTextDirection;ZI)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$DefaultSelectionHandle$1;->$modifier:Landroidx/compose/ui/Modifier;

    .line 2
    .line 3
    iput-boolean p2, p0, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$DefaultSelectionHandle$1;->$isStartHandle:Z

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$DefaultSelectionHandle$1;->$direction:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    .line 6
    .line 7
    iput-boolean p4, p0, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$DefaultSelectionHandle$1;->$handlesCrossed:Z

    .line 8
    .line 9
    iput p5, p0, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$DefaultSelectionHandle$1;->$$changed:I

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$DefaultSelectionHandle$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 6
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$DefaultSelectionHandle$1;->$modifier:Landroidx/compose/ui/Modifier;

    iget-boolean v1, p0, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$DefaultSelectionHandle$1;->$isStartHandle:Z

    iget-object v2, p0, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$DefaultSelectionHandle$1;->$direction:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    iget-boolean v3, p0, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$DefaultSelectionHandle$1;->$handlesCrossed:Z

    iget p2, p0, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt$DefaultSelectionHandle$1;->$$changed:I

    or-int/lit8 v5, p2, 0x1

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->DefaultSelectionHandle(Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/text/style/ResolvedTextDirection;ZLandroidx/compose/runtime/Composer;I)V

    return-void
.end method
