.class final Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider$childConstraints$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LazyMeasuredLineProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;-><init>(ZLjava/util/List;IIILandroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;Landroidx/compose/foundation/lazy/grid/MeasuredLineFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/ui/unit/Constraints;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $crossAxisSpacing:I

.field final synthetic $slotSizesSums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;


# direct methods
.method constructor <init>(Ljava/util/List;ILandroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider$childConstraints$1;->$slotSizesSums:Ljava/util/List;

    .line 2
    .line 3
    iput p2, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider$childConstraints$1;->$crossAxisSpacing:I

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider$childConstraints$1;->this$0:Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    check-cast p2, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider$childConstraints$1;->invoke-JhjzzOo(II)J

    .line 14
    .line 15
    .line 16
    move-result-wide p1

    .line 17
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->box-impl(J)Landroidx/compose/ui/unit/Constraints;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public final invoke-JhjzzOo(II)J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider$childConstraints$1;->$slotSizesSums:Ljava/util/List;

    .line 2
    .line 3
    add-int v1, p1, p2

    .line 4
    .line 5
    add-int/lit8 v1, v1, -0x1

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Number;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider$childConstraints$1;->$slotSizesSums:Ljava/util/List;

    .line 22
    .line 23
    add-int/lit8 p1, p1, -0x1

    .line 24
    .line 25
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Ljava/lang/Number;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    :goto_0
    sub-int/2addr v0, p1

    .line 36
    iget p1, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider$childConstraints$1;->$crossAxisSpacing:I

    .line 37
    .line 38
    add-int/lit8 p2, p2, -0x1

    .line 39
    .line 40
    mul-int/2addr p1, p2

    .line 41
    add-int/2addr v0, p1

    .line 42
    iget-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider$childConstraints$1;->this$0:Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;

    .line 43
    .line 44
    invoke-static {p1}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->access$isVertical$p(Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    sget-object p1, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroidx/compose/ui/unit/Constraints$Companion;->fixedWidth-OenEA2s(I)J

    .line 53
    .line 54
    .line 55
    move-result-wide p1

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    sget-object p1, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroidx/compose/ui/unit/Constraints$Companion;->fixedHeight-OenEA2s(I)J

    .line 60
    .line 61
    .line 62
    move-result-wide p1

    .line 63
    :goto_1
    return-wide p1
.end method
