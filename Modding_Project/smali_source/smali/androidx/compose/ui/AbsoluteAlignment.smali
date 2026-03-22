.class public final Landroidx/compose/ui/AbsoluteAlignment;
.super Ljava/lang/Object;
.source "Alignment.kt"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final $stable:I

.field private static final BottomLeft:Landroidx/compose/ui/Alignment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BottomRight:Landroidx/compose/ui/Alignment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final CenterLeft:Landroidx/compose/ui/Alignment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final CenterRight:Landroidx/compose/ui/Alignment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Landroidx/compose/ui/AbsoluteAlignment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Left:Landroidx/compose/ui/Alignment$Horizontal;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Right:Landroidx/compose/ui/Alignment$Horizontal;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TopLeft:Landroidx/compose/ui/Alignment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TopRight:Landroidx/compose/ui/Alignment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/compose/ui/AbsoluteAlignment;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/ui/AbsoluteAlignment;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/ui/AbsoluteAlignment;->INSTANCE:Landroidx/compose/ui/AbsoluteAlignment;

    .line 7
    .line 8
    new-instance v0, Landroidx/compose/ui/BiasAbsoluteAlignment;

    .line 9
    .line 10
    const/high16 v1, -0x40800000    # -1.0f

    .line 11
    .line 12
    invoke-direct {v0, v1, v1}, Landroidx/compose/ui/BiasAbsoluteAlignment;-><init>(FF)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroidx/compose/ui/AbsoluteAlignment;->TopLeft:Landroidx/compose/ui/Alignment;

    .line 16
    .line 17
    new-instance v0, Landroidx/compose/ui/BiasAbsoluteAlignment;

    .line 18
    .line 19
    const/high16 v2, 0x3f800000    # 1.0f

    .line 20
    .line 21
    invoke-direct {v0, v2, v1}, Landroidx/compose/ui/BiasAbsoluteAlignment;-><init>(FF)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Landroidx/compose/ui/AbsoluteAlignment;->TopRight:Landroidx/compose/ui/Alignment;

    .line 25
    .line 26
    new-instance v0, Landroidx/compose/ui/BiasAbsoluteAlignment;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-direct {v0, v1, v3}, Landroidx/compose/ui/BiasAbsoluteAlignment;-><init>(FF)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Landroidx/compose/ui/AbsoluteAlignment;->CenterLeft:Landroidx/compose/ui/Alignment;

    .line 33
    .line 34
    new-instance v0, Landroidx/compose/ui/BiasAbsoluteAlignment;

    .line 35
    .line 36
    invoke-direct {v0, v2, v3}, Landroidx/compose/ui/BiasAbsoluteAlignment;-><init>(FF)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Landroidx/compose/ui/AbsoluteAlignment;->CenterRight:Landroidx/compose/ui/Alignment;

    .line 40
    .line 41
    new-instance v0, Landroidx/compose/ui/BiasAbsoluteAlignment;

    .line 42
    .line 43
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/BiasAbsoluteAlignment;-><init>(FF)V

    .line 44
    .line 45
    .line 46
    sput-object v0, Landroidx/compose/ui/AbsoluteAlignment;->BottomLeft:Landroidx/compose/ui/Alignment;

    .line 47
    .line 48
    new-instance v0, Landroidx/compose/ui/BiasAbsoluteAlignment;

    .line 49
    .line 50
    invoke-direct {v0, v2, v2}, Landroidx/compose/ui/BiasAbsoluteAlignment;-><init>(FF)V

    .line 51
    .line 52
    .line 53
    sput-object v0, Landroidx/compose/ui/AbsoluteAlignment;->BottomRight:Landroidx/compose/ui/Alignment;

    .line 54
    .line 55
    new-instance v0, Landroidx/compose/ui/BiasAbsoluteAlignment$Horizontal;

    .line 56
    .line 57
    invoke-direct {v0, v1}, Landroidx/compose/ui/BiasAbsoluteAlignment$Horizontal;-><init>(F)V

    .line 58
    .line 59
    .line 60
    sput-object v0, Landroidx/compose/ui/AbsoluteAlignment;->Left:Landroidx/compose/ui/Alignment$Horizontal;

    .line 61
    .line 62
    new-instance v0, Landroidx/compose/ui/BiasAbsoluteAlignment$Horizontal;

    .line 63
    .line 64
    invoke-direct {v0, v2}, Landroidx/compose/ui/BiasAbsoluteAlignment$Horizontal;-><init>(F)V

    .line 65
    .line 66
    .line 67
    sput-object v0, Landroidx/compose/ui/AbsoluteAlignment;->Right:Landroidx/compose/ui/Alignment$Horizontal;

    .line 68
    .line 69
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic getBottomLeft$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getBottomRight$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getCenterLeft$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getCenterRight$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getLeft$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getRight$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getTopLeft$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getTopRight$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    return-void
.end method


# virtual methods
.method public final getBottomLeft()Landroidx/compose/ui/Alignment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/AbsoluteAlignment;->BottomLeft:Landroidx/compose/ui/Alignment;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBottomRight()Landroidx/compose/ui/Alignment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/AbsoluteAlignment;->BottomRight:Landroidx/compose/ui/Alignment;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCenterLeft()Landroidx/compose/ui/Alignment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/AbsoluteAlignment;->CenterLeft:Landroidx/compose/ui/Alignment;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCenterRight()Landroidx/compose/ui/Alignment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/AbsoluteAlignment;->CenterRight:Landroidx/compose/ui/Alignment;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLeft()Landroidx/compose/ui/Alignment$Horizontal;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/AbsoluteAlignment;->Left:Landroidx/compose/ui/Alignment$Horizontal;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRight()Landroidx/compose/ui/Alignment$Horizontal;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/AbsoluteAlignment;->Right:Landroidx/compose/ui/Alignment$Horizontal;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTopLeft()Landroidx/compose/ui/Alignment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/AbsoluteAlignment;->TopLeft:Landroidx/compose/ui/Alignment;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTopRight()Landroidx/compose/ui/Alignment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/AbsoluteAlignment;->TopRight:Landroidx/compose/ui/Alignment;

    .line 2
    .line 3
    return-object v0
.end method
