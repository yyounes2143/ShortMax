.class final Landroidx/compose/foundation/layout/CrossAxisAlignment$AlignmentLineCrossAxisAlignment;
.super Landroidx/compose/foundation/layout/CrossAxisAlignment;
.source "RowColumnImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/layout/CrossAxisAlignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AlignmentLineCrossAxisAlignment"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final alignmentLineProvider:Landroidx/compose/foundation/layout/AlignmentLineProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/AlignmentLineProvider;)V
    .locals 1
    .param p1    # Landroidx/compose/foundation/layout/AlignmentLineProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "alignmentLineProvider"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Landroidx/compose/foundation/layout/CrossAxisAlignment;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Landroidx/compose/foundation/layout/CrossAxisAlignment$AlignmentLineCrossAxisAlignment;->alignmentLineProvider:Landroidx/compose/foundation/layout/AlignmentLineProvider;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public align$foundation_layout_release(ILandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/layout/Placeable;I)I
    .locals 1
    .param p2    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/layout/Placeable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "layoutDirection"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "placeable"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/foundation/layout/CrossAxisAlignment$AlignmentLineCrossAxisAlignment;->alignmentLineProvider:Landroidx/compose/foundation/layout/AlignmentLineProvider;

    .line 12
    .line 13
    invoke-virtual {v0, p3}, Landroidx/compose/foundation/layout/AlignmentLineProvider;->calculateAlignmentLinePosition(Landroidx/compose/ui/layout/Placeable;)I

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    const/high16 v0, -0x80000000

    .line 18
    .line 19
    if-eq p3, v0, :cond_0

    .line 20
    .line 21
    sub-int/2addr p4, p3

    .line 22
    sget-object p3, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    .line 23
    .line 24
    if-ne p2, p3, :cond_1

    .line 25
    .line 26
    sub-int p4, p1, p4

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p4, 0x0

    .line 30
    :cond_1
    :goto_0
    return p4
.end method

.method public calculateAlignmentLinePosition$foundation_layout_release(Landroidx/compose/ui/layout/Placeable;)Ljava/lang/Integer;
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/Placeable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "placeable"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/foundation/layout/CrossAxisAlignment$AlignmentLineCrossAxisAlignment;->alignmentLineProvider:Landroidx/compose/foundation/layout/AlignmentLineProvider;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/layout/AlignmentLineProvider;->calculateAlignmentLinePosition(Landroidx/compose/ui/layout/Placeable;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public final getAlignmentLineProvider()Landroidx/compose/foundation/layout/AlignmentLineProvider;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/CrossAxisAlignment$AlignmentLineCrossAxisAlignment;->alignmentLineProvider:Landroidx/compose/foundation/layout/AlignmentLineProvider;

    .line 2
    .line 3
    return-object v0
.end method

.method public isRelative$foundation_layout_release()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
