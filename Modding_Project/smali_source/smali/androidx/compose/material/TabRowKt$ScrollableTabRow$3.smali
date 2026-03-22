.class final Landroidx/compose/material/TabRowKt$ScrollableTabRow$3;
.super Lkotlin/jvm/internal/Lambda;
.source "TabRow.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/TabRowKt;->ScrollableTabRow-sKfQg0A(ILandroidx/compose/ui/Modifier;JJFLat/n;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
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

.field final synthetic $backgroundColor:J

.field final synthetic $contentColor:J

.field final synthetic $divider:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $edgePadding:F

.field final synthetic $indicator:Lat/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lat/n<",
            "Ljava/util/List<",
            "Landroidx/compose/material/TabPosition;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $selectedTabIndex:I

.field final synthetic $tabs:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILandroidx/compose/ui/Modifier;JJFLat/n;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/ui/Modifier;",
            "JJF",
            "Lat/n<",
            "-",
            "Ljava/util/List<",
            "Landroidx/compose/material/TabPosition;",
            ">;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;II)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$3;->$selectedTabIndex:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$3;->$modifier:Landroidx/compose/ui/Modifier;

    .line 4
    .line 5
    iput-wide p3, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$3;->$backgroundColor:J

    .line 6
    .line 7
    iput-wide p5, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$3;->$contentColor:J

    .line 8
    .line 9
    iput p7, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$3;->$edgePadding:F

    .line 10
    .line 11
    iput-object p8, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$3;->$indicator:Lat/n;

    .line 12
    .line 13
    iput-object p9, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$3;->$divider:Lkotlin/jvm/functions/Function2;

    .line 14
    .line 15
    iput-object p10, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$3;->$tabs:Lkotlin/jvm/functions/Function2;

    .line 16
    .line 17
    iput p11, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$3;->$$changed:I

    .line 18
    .line 19
    iput p12, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$3;->$$default:I

    .line 20
    .line 21
    const/4 p1, 0x2

    .line 22
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 23
    .line 24
    .line 25
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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/TabRowKt$ScrollableTabRow$3;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 13
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    iget v0, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$3;->$selectedTabIndex:I

    iget-object v1, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$3;->$modifier:Landroidx/compose/ui/Modifier;

    iget-wide v2, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$3;->$backgroundColor:J

    iget-wide v4, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$3;->$contentColor:J

    iget v6, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$3;->$edgePadding:F

    iget-object v7, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$3;->$indicator:Lat/n;

    iget-object v8, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$3;->$divider:Lkotlin/jvm/functions/Function2;

    iget-object v9, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$3;->$tabs:Lkotlin/jvm/functions/Function2;

    iget p2, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$3;->$$changed:I

    or-int/lit8 v11, p2, 0x1

    iget v12, p0, Landroidx/compose/material/TabRowKt$ScrollableTabRow$3;->$$default:I

    move-object v10, p1

    invoke-static/range {v0 .. v12}, Landroidx/compose/material/TabRowKt;->ScrollableTabRow-sKfQg0A(ILandroidx/compose/ui/Modifier;JJFLat/n;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method
