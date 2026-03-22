.class public final Landroidx/compose/runtime/tooling/LocationSourceInformation;
.super Ljava/lang/Object;
.source "SourceInformation.kt"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x1
.end annotation

.annotation build Landroidx/compose/runtime/tooling/ComposeToolingApi;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final isRepeatable:Z

.field private final length:I

.field private final lineNumber:I

.field private final offset:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/runtime/tooling/LocationSourceInformation;->lineNumber:I

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/runtime/tooling/LocationSourceInformation;->offset:I

    .line 7
    .line 8
    iput p3, p0, Landroidx/compose/runtime/tooling/LocationSourceInformation;->length:I

    .line 9
    .line 10
    iput-boolean p4, p0, Landroidx/compose/runtime/tooling/LocationSourceInformation;->isRepeatable:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getLength()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/tooling/LocationSourceInformation;->length:I

    .line 2
    .line 3
    return v0
.end method

.method public final getLineNumber()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/tooling/LocationSourceInformation;->lineNumber:I

    .line 2
    .line 3
    return v0
.end method

.method public final getOffset()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/tooling/LocationSourceInformation;->offset:I

    .line 2
    .line 3
    return v0
.end method

.method public final isRepeatable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/tooling/LocationSourceInformation;->isRepeatable:Z

    .line 2
    .line 3
    return v0
.end method
