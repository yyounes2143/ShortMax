.class public final Landroidx/compose/ui/Alignment$Companion;
.super Ljava/lang/Object;
.source "Alignment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/Alignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/compose/ui/Alignment$Companion;

.field private static final Bottom:Landroidx/compose/ui/Alignment$Vertical;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BottomCenter:Landroidx/compose/ui/Alignment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BottomEnd:Landroidx/compose/ui/Alignment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BottomStart:Landroidx/compose/ui/Alignment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Center:Landroidx/compose/ui/Alignment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final CenterEnd:Landroidx/compose/ui/Alignment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final CenterHorizontally:Landroidx/compose/ui/Alignment$Horizontal;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final CenterStart:Landroidx/compose/ui/Alignment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final CenterVertically:Landroidx/compose/ui/Alignment$Vertical;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final End:Landroidx/compose/ui/Alignment$Horizontal;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Start:Landroidx/compose/ui/Alignment$Horizontal;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Top:Landroidx/compose/ui/Alignment$Vertical;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TopCenter:Landroidx/compose/ui/Alignment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TopEnd:Landroidx/compose/ui/Alignment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TopStart:Landroidx/compose/ui/Alignment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/compose/ui/Alignment$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/ui/Alignment$Companion;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->$$INSTANCE:Landroidx/compose/ui/Alignment$Companion;

    .line 7
    .line 8
    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    .line 9
    .line 10
    const/high16 v1, -0x40800000    # -1.0f

    .line 11
    .line 12
    invoke-direct {v0, v1, v1}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/Alignment;

    .line 16
    .line 17
    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-direct {v0, v2, v1}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->TopCenter:Landroidx/compose/ui/Alignment;

    .line 24
    .line 25
    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    .line 26
    .line 27
    const/high16 v3, 0x3f800000    # 1.0f

    .line 28
    .line 29
    invoke-direct {v0, v3, v1}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->TopEnd:Landroidx/compose/ui/Alignment;

    .line 33
    .line 34
    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    .line 35
    .line 36
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterStart:Landroidx/compose/ui/Alignment;

    .line 40
    .line 41
    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    .line 42
    .line 43
    invoke-direct {v0, v2, v2}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    .line 44
    .line 45
    .line 46
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/Alignment;

    .line 47
    .line 48
    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    .line 49
    .line 50
    invoke-direct {v0, v3, v2}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    .line 51
    .line 52
    .line 53
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterEnd:Landroidx/compose/ui/Alignment;

    .line 54
    .line 55
    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    .line 56
    .line 57
    invoke-direct {v0, v1, v3}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    .line 58
    .line 59
    .line 60
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->BottomStart:Landroidx/compose/ui/Alignment;

    .line 61
    .line 62
    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    .line 63
    .line 64
    invoke-direct {v0, v2, v3}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    .line 65
    .line 66
    .line 67
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->BottomCenter:Landroidx/compose/ui/Alignment;

    .line 68
    .line 69
    new-instance v0, Landroidx/compose/ui/BiasAlignment;

    .line 70
    .line 71
    invoke-direct {v0, v3, v3}, Landroidx/compose/ui/BiasAlignment;-><init>(FF)V

    .line 72
    .line 73
    .line 74
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->BottomEnd:Landroidx/compose/ui/Alignment;

    .line 75
    .line 76
    new-instance v0, Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 77
    .line 78
    invoke-direct {v0, v1}, Landroidx/compose/ui/BiasAlignment$Vertical;-><init>(F)V

    .line 79
    .line 80
    .line 81
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/Alignment$Vertical;

    .line 82
    .line 83
    new-instance v0, Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 84
    .line 85
    invoke-direct {v0, v2}, Landroidx/compose/ui/BiasAlignment$Vertical;-><init>(F)V

    .line 86
    .line 87
    .line 88
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/Alignment$Vertical;

    .line 89
    .line 90
    new-instance v0, Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 91
    .line 92
    invoke-direct {v0, v3}, Landroidx/compose/ui/BiasAlignment$Vertical;-><init>(F)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->Bottom:Landroidx/compose/ui/Alignment$Vertical;

    .line 96
    .line 97
    new-instance v0, Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 98
    .line 99
    invoke-direct {v0, v1}, Landroidx/compose/ui/BiasAlignment$Horizontal;-><init>(F)V

    .line 100
    .line 101
    .line 102
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/Alignment$Horizontal;

    .line 103
    .line 104
    new-instance v0, Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 105
    .line 106
    invoke-direct {v0, v2}, Landroidx/compose/ui/BiasAlignment$Horizontal;-><init>(F)V

    .line 107
    .line 108
    .line 109
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/Alignment$Horizontal;

    .line 110
    .line 111
    new-instance v0, Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 112
    .line 113
    invoke-direct {v0, v3}, Landroidx/compose/ui/BiasAlignment$Horizontal;-><init>(F)V

    .line 114
    .line 115
    .line 116
    sput-object v0, Landroidx/compose/ui/Alignment$Companion;->End:Landroidx/compose/ui/Alignment$Horizontal;

    .line 117
    .line 118
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

.method public static synthetic getBottom$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getBottomCenter$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getBottomEnd$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getBottomStart$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getCenter$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getCenterEnd$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getCenterHorizontally$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getCenterStart$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getCenterVertically$annotations()V
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

.method public static synthetic getTop$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getTopCenter$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getTopEnd$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getTopStart$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    return-void
.end method


# virtual methods
.method public final getBottom()Landroidx/compose/ui/Alignment$Vertical;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->Bottom:Landroidx/compose/ui/Alignment$Vertical;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBottomCenter()Landroidx/compose/ui/Alignment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->BottomCenter:Landroidx/compose/ui/Alignment;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBottomEnd()Landroidx/compose/ui/Alignment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->BottomEnd:Landroidx/compose/ui/Alignment;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBottomStart()Landroidx/compose/ui/Alignment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->BottomStart:Landroidx/compose/ui/Alignment;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCenter()Landroidx/compose/ui/Alignment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/Alignment;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCenterEnd()Landroidx/compose/ui/Alignment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterEnd:Landroidx/compose/ui/Alignment;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCenterHorizontally()Landroidx/compose/ui/Alignment$Horizontal;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/Alignment$Horizontal;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCenterStart()Landroidx/compose/ui/Alignment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterStart:Landroidx/compose/ui/Alignment;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/Alignment$Vertical;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEnd()Landroidx/compose/ui/Alignment$Horizontal;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->End:Landroidx/compose/ui/Alignment$Horizontal;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStart()Landroidx/compose/ui/Alignment$Horizontal;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/Alignment$Horizontal;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTop()Landroidx/compose/ui/Alignment$Vertical;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/Alignment$Vertical;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTopCenter()Landroidx/compose/ui/Alignment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->TopCenter:Landroidx/compose/ui/Alignment;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTopEnd()Landroidx/compose/ui/Alignment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->TopEnd:Landroidx/compose/ui/Alignment;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTopStart()Landroidx/compose/ui/Alignment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/Alignment;

    .line 2
    .line 3
    return-object v0
.end method
