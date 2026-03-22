.class public final Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;
.super Ljava/lang/Object;
.source "RowColumnImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/layout/CrossAxisAlignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getCenter$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getEnd$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getStart$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    return-void
.end method


# virtual methods
.method public final AlignmentLine(Landroidx/compose/ui/layout/AlignmentLine;)Landroidx/compose/foundation/layout/CrossAxisAlignment;
    .locals 2
    .param p1    # Landroidx/compose/ui/layout/AlignmentLine;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "alignmentLine"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/compose/foundation/layout/CrossAxisAlignment$AlignmentLineCrossAxisAlignment;

    .line 7
    .line 8
    new-instance v1, Landroidx/compose/foundation/layout/AlignmentLineProvider$Value;

    .line 9
    .line 10
    invoke-direct {v1, p1}, Landroidx/compose/foundation/layout/AlignmentLineProvider$Value;-><init>(Landroidx/compose/ui/layout/AlignmentLine;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Landroidx/compose/foundation/layout/CrossAxisAlignment$AlignmentLineCrossAxisAlignment;-><init>(Landroidx/compose/foundation/layout/AlignmentLineProvider;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public final Relative$foundation_layout_release(Landroidx/compose/foundation/layout/AlignmentLineProvider;)Landroidx/compose/foundation/layout/CrossAxisAlignment;
    .locals 1
    .param p1    # Landroidx/compose/foundation/layout/AlignmentLineProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "alignmentLineProvider"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/compose/foundation/layout/CrossAxisAlignment$AlignmentLineCrossAxisAlignment;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Landroidx/compose/foundation/layout/CrossAxisAlignment$AlignmentLineCrossAxisAlignment;-><init>(Landroidx/compose/foundation/layout/AlignmentLineProvider;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final getCenter()Landroidx/compose/foundation/layout/CrossAxisAlignment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/foundation/layout/CrossAxisAlignment;->access$getCenter$cp()Landroidx/compose/foundation/layout/CrossAxisAlignment;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getEnd()Landroidx/compose/foundation/layout/CrossAxisAlignment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/foundation/layout/CrossAxisAlignment;->access$getEnd$cp()Landroidx/compose/foundation/layout/CrossAxisAlignment;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getStart()Landroidx/compose/foundation/layout/CrossAxisAlignment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/foundation/layout/CrossAxisAlignment;->access$getStart$cp()Landroidx/compose/foundation/layout/CrossAxisAlignment;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final horizontal$foundation_layout_release(Landroidx/compose/ui/Alignment$Horizontal;)Landroidx/compose/foundation/layout/CrossAxisAlignment;
    .locals 1
    .param p1    # Landroidx/compose/ui/Alignment$Horizontal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "horizontal"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/compose/foundation/layout/CrossAxisAlignment$HorizontalCrossAxisAlignment;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Landroidx/compose/foundation/layout/CrossAxisAlignment$HorizontalCrossAxisAlignment;-><init>(Landroidx/compose/ui/Alignment$Horizontal;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final vertical$foundation_layout_release(Landroidx/compose/ui/Alignment$Vertical;)Landroidx/compose/foundation/layout/CrossAxisAlignment;
    .locals 1
    .param p1    # Landroidx/compose/ui/Alignment$Vertical;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "vertical"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Landroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;-><init>(Landroidx/compose/ui/Alignment$Vertical;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
