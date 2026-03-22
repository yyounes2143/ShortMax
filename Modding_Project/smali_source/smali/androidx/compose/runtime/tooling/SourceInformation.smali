.class public final Landroidx/compose/runtime/tooling/SourceInformation;
.super Ljava/lang/Object;
.source "SourceInformation.kt"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation build Landroidx/compose/runtime/tooling/ComposeToolingApi;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final functionName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final isCall:Z

.field private final isInline:Z

.field private final locations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/tooling/LocationSourceInformation;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final packageHash:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/tooling/ParameterSourceInformation;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final rawData:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sourceFile:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/tooling/ParameterSourceInformation;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/tooling/LocationSourceInformation;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Landroidx/compose/runtime/tooling/SourceInformation;->isCall:Z

    .line 5
    .line 6
    iput-boolean p2, p0, Landroidx/compose/runtime/tooling/SourceInformation;->isInline:Z

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/runtime/tooling/SourceInformation;->functionName:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/runtime/tooling/SourceInformation;->sourceFile:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/runtime/tooling/SourceInformation;->parameters:Ljava/util/List;

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/runtime/tooling/SourceInformation;->packageHash:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p7, p0, Landroidx/compose/runtime/tooling/SourceInformation;->locations:Ljava/util/List;

    .line 17
    .line 18
    iput-object p8, p0, Landroidx/compose/runtime/tooling/SourceInformation;->rawData:Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final getFunctionName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/tooling/SourceInformation;->functionName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/tooling/LocationSourceInformation;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/tooling/SourceInformation;->locations:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPackageHash()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/tooling/SourceInformation;->packageHash:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/tooling/ParameterSourceInformation;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/tooling/SourceInformation;->parameters:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRawData()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/tooling/SourceInformation;->rawData:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSourceFile()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/tooling/SourceInformation;->sourceFile:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isCall()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/tooling/SourceInformation;->isCall:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isInline()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/tooling/SourceInformation;->isInline:Z

    .line 2
    .line 3
    return v0
.end method
