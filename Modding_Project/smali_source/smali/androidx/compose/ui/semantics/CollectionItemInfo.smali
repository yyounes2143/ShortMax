.class public final Landroidx/compose/ui/semantics/CollectionItemInfo;
.super Ljava/lang/Object;
.source "SemanticsProperties.kt"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final columnIndex:I

.field private final columnSpan:I

.field private final rowIndex:I

.field private final rowSpan:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/ui/semantics/CollectionItemInfo;->rowIndex:I

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/ui/semantics/CollectionItemInfo;->rowSpan:I

    .line 7
    .line 8
    iput p3, p0, Landroidx/compose/ui/semantics/CollectionItemInfo;->columnIndex:I

    .line 9
    .line 10
    iput p4, p0, Landroidx/compose/ui/semantics/CollectionItemInfo;->columnSpan:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getColumnIndex()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/semantics/CollectionItemInfo;->columnIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public final getColumnSpan()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/semantics/CollectionItemInfo;->columnSpan:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRowIndex()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/semantics/CollectionItemInfo;->rowIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRowSpan()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/semantics/CollectionItemInfo;->rowSpan:I

    .line 2
    .line 3
    return v0
.end method
