.class final Landroidx/compose/runtime/AnchoredGroupPath;
.super Landroidx/compose/runtime/SourceInformationGroupPath;
.source "SlotTable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final group:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/compose/runtime/SourceInformationGroupPath;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    iput p1, p0, Landroidx/compose/runtime/AnchoredGroupPath;->group:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final getGroup()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/AnchoredGroupPath;->group:I

    .line 2
    .line 3
    return v0
.end method

.method public getIdentity(Landroidx/compose/runtime/SlotTable;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroidx/compose/runtime/SlotTable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/compose/runtime/AnchoredGroupPath;->group:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/SlotTable;->anchor(I)Landroidx/compose/runtime/Anchor;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
