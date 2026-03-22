.class final Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;
.super Lkotlin/jvm/internal/Lambda;
.source "LazyList.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/LazyListKt;->LazyList(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V
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

.field final synthetic $$changed1:I

.field final synthetic $$default:I

.field final synthetic $content:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/foundation/lazy/LazyListScope;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field final synthetic $flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

.field final synthetic $horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

.field final synthetic $horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field final synthetic $isVertical:Z

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $reverseLayout:Z

.field final synthetic $state:Landroidx/compose/foundation/lazy/LazyListState;

.field final synthetic $userScrollEnabled:Z

.field final synthetic $verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

.field final synthetic $verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;


# direct methods
.method constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;III)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/lazy/LazyListState;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "ZZ",
            "Landroidx/compose/foundation/gestures/FlingBehavior;",
            "Z",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/ui/Alignment$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/lazy/LazyListScope;",
            "Lkotlin/Unit;",
            ">;III)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    iput-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$modifier:Landroidx/compose/ui/Modifier;

    .line 4
    .line 5
    move-object v1, p2

    .line 6
    iput-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 7
    .line 8
    move-object v1, p3

    .line 9
    iput-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 10
    .line 11
    move v1, p4

    .line 12
    iput-boolean v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$reverseLayout:Z

    .line 13
    .line 14
    move v1, p5

    .line 15
    iput-boolean v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$isVertical:Z

    .line 16
    .line 17
    move-object v1, p6

    .line 18
    iput-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 19
    .line 20
    move v1, p7

    .line 21
    iput-boolean v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$userScrollEnabled:Z

    .line 22
    .line 23
    move-object v1, p8

    .line 24
    iput-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    .line 25
    .line 26
    move-object v1, p9

    .line 27
    iput-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 28
    .line 29
    move-object v1, p10

    .line 30
    iput-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    .line 31
    .line 32
    move-object v1, p11

    .line 33
    iput-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 34
    .line 35
    move-object v1, p12

    .line 36
    iput-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$content:Lkotlin/jvm/functions/Function1;

    .line 37
    .line 38
    move v1, p13

    .line 39
    iput v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$$changed:I

    .line 40
    .line 41
    move/from16 v1, p14

    .line 42
    .line 43
    iput v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$$changed1:I

    .line 44
    .line 45
    move/from16 v1, p15

    .line 46
    .line 47
    iput v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$$default:I

    .line 48
    .line 49
    const/4 v1, 0x2

    .line 50
    invoke-direct {p0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 51
    .line 52
    .line 53
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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 17
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v3, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    iget-boolean v4, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$reverseLayout:Z

    iget-boolean v5, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$isVertical:Z

    iget-object v6, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    iget-boolean v7, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$userScrollEnabled:Z

    iget-object v8, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    iget-object v9, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iget-object v10, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    iget-object v11, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iget-object v12, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$content:Lkotlin/jvm/functions/Function1;

    iget v13, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$$changed:I

    or-int/lit8 v14, v13, 0x1

    iget v15, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$$changed1:I

    iget v13, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$2;->$$default:I

    move/from16 v16, v13

    move-object/from16 v13, p1

    invoke-static/range {v1 .. v16}, Landroidx/compose/foundation/lazy/LazyListKt;->LazyList(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    return-void
.end method
