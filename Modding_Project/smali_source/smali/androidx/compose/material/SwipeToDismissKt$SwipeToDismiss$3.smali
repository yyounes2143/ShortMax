.class final Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SwipeToDismiss.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SwipeToDismissKt;->SwipeToDismiss(Landroidx/compose/material/DismissState;Landroidx/compose/ui/Modifier;Ljava/util/Set;Lkotlin/jvm/functions/Function1;Lat/n;Lat/n;Landroidx/compose/runtime/Composer;II)V
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

.field final synthetic $$default:I

.field final synthetic $background:Lat/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lat/n<",
            "Landroidx/compose/foundation/layout/RowScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $directions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/compose/material/DismissDirection;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $dismissContent:Lat/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lat/n<",
            "Landroidx/compose/foundation/layout/RowScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $dismissThresholds:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/material/DismissDirection;",
            "Landroidx/compose/material/ThresholdConfig;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $state:Landroidx/compose/material/DismissState;


# direct methods
.method constructor <init>(Landroidx/compose/material/DismissState;Landroidx/compose/ui/Modifier;Ljava/util/Set;Lkotlin/jvm/functions/Function1;Lat/n;Lat/n;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/DismissState;",
            "Landroidx/compose/ui/Modifier;",
            "Ljava/util/Set<",
            "+",
            "Landroidx/compose/material/DismissDirection;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/material/DismissDirection;",
            "+",
            "Landroidx/compose/material/ThresholdConfig;",
            ">;",
            "Lat/n<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lat/n<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;II)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$3;->$state:Landroidx/compose/material/DismissState;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$3;->$modifier:Landroidx/compose/ui/Modifier;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$3;->$directions:Ljava/util/Set;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$3;->$dismissThresholds:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$3;->$background:Lat/n;

    .line 10
    .line 11
    iput-object p6, p0, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$3;->$dismissContent:Lat/n;

    .line 12
    .line 13
    iput p7, p0, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$3;->$$changed:I

    .line 14
    .line 15
    iput p8, p0, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$3;->$$default:I

    .line 16
    .line 17
    const/4 p1, 0x2

    .line 18
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 19
    .line 20
    .line 21
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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$3;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 9
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$3;->$state:Landroidx/compose/material/DismissState;

    iget-object v1, p0, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$3;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$3;->$directions:Ljava/util/Set;

    iget-object v3, p0, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$3;->$dismissThresholds:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$3;->$background:Lat/n;

    iget-object v5, p0, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$3;->$dismissContent:Lat/n;

    iget p2, p0, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$3;->$$changed:I

    or-int/lit8 v7, p2, 0x1

    iget v8, p0, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$3;->$$default:I

    move-object v6, p1

    invoke-static/range {v0 .. v8}, Landroidx/compose/material/SwipeToDismissKt;->SwipeToDismiss(Landroidx/compose/material/DismissState;Landroidx/compose/ui/Modifier;Ljava/util/Set;Lkotlin/jvm/functions/Function1;Lat/n;Lat/n;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method
