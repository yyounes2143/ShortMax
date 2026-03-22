.class public final Landroidx/compose/ui/semantics/CollectionInfo;
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
.field private final columnCount:I

.field private final rowCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/ui/semantics/CollectionInfo;->rowCount:I

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/ui/semantics/CollectionInfo;->columnCount:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getColumnCount()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/semantics/CollectionInfo;->columnCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRowCount()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/semantics/CollectionInfo;->rowCount:I

    .line 2
    .line 3
    return v0
.end method
