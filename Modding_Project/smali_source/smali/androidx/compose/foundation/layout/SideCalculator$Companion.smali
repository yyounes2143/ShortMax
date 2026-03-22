.class public final Landroidx/compose/foundation/layout/SideCalculator$Companion;
.super Ljava/lang/Object;
.source "WindowInsetsConnection.android.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/layout/SideCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/compose/foundation/layout/SideCalculator$Companion;

.field private static final BottomSideCalculator:Landroidx/compose/foundation/layout/SideCalculator$Companion$BottomSideCalculator$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LeftSideCalculator:Landroidx/compose/foundation/layout/SideCalculator$Companion$LeftSideCalculator$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final RightSideCalculator:Landroidx/compose/foundation/layout/SideCalculator$Companion$RightSideCalculator$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TopSideCalculator:Landroidx/compose/foundation/layout/SideCalculator$Companion$TopSideCalculator$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/SideCalculator$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/foundation/layout/SideCalculator$Companion;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/foundation/layout/SideCalculator$Companion;->$$INSTANCE:Landroidx/compose/foundation/layout/SideCalculator$Companion;

    .line 7
    .line 8
    new-instance v0, Landroidx/compose/foundation/layout/SideCalculator$Companion$LeftSideCalculator$1;

    .line 9
    .line 10
    invoke-direct {v0}, Landroidx/compose/foundation/layout/SideCalculator$Companion$LeftSideCalculator$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroidx/compose/foundation/layout/SideCalculator$Companion;->LeftSideCalculator:Landroidx/compose/foundation/layout/SideCalculator$Companion$LeftSideCalculator$1;

    .line 14
    .line 15
    new-instance v0, Landroidx/compose/foundation/layout/SideCalculator$Companion$TopSideCalculator$1;

    .line 16
    .line 17
    invoke-direct {v0}, Landroidx/compose/foundation/layout/SideCalculator$Companion$TopSideCalculator$1;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Landroidx/compose/foundation/layout/SideCalculator$Companion;->TopSideCalculator:Landroidx/compose/foundation/layout/SideCalculator$Companion$TopSideCalculator$1;

    .line 21
    .line 22
    new-instance v0, Landroidx/compose/foundation/layout/SideCalculator$Companion$RightSideCalculator$1;

    .line 23
    .line 24
    invoke-direct {v0}, Landroidx/compose/foundation/layout/SideCalculator$Companion$RightSideCalculator$1;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Landroidx/compose/foundation/layout/SideCalculator$Companion;->RightSideCalculator:Landroidx/compose/foundation/layout/SideCalculator$Companion$RightSideCalculator$1;

    .line 28
    .line 29
    new-instance v0, Landroidx/compose/foundation/layout/SideCalculator$Companion$BottomSideCalculator$1;

    .line 30
    .line 31
    invoke-direct {v0}, Landroidx/compose/foundation/layout/SideCalculator$Companion$BottomSideCalculator$1;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Landroidx/compose/foundation/layout/SideCalculator$Companion;->BottomSideCalculator:Landroidx/compose/foundation/layout/SideCalculator$Companion$BottomSideCalculator$1;

    .line 35
    .line 36
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


# virtual methods
.method public final chooseCalculator-ni1skBw(ILandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/foundation/layout/SideCalculator;
    .locals 2
    .param p2    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "layoutDirection"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Companion:Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;->getLeft-JoeWqyM()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {p1, v1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->equals-impl0(II)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    sget-object p1, Landroidx/compose/foundation/layout/SideCalculator$Companion;->LeftSideCalculator:Landroidx/compose/foundation/layout/SideCalculator$Companion$LeftSideCalculator$1;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;->getTop-JoeWqyM()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {p1, v1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->equals-impl0(II)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    sget-object p1, Landroidx/compose/foundation/layout/SideCalculator$Companion;->TopSideCalculator:Landroidx/compose/foundation/layout/SideCalculator$Companion$TopSideCalculator$1;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;->getRight-JoeWqyM()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-static {p1, v1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->equals-impl0(II)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    sget-object p1, Landroidx/compose/foundation/layout/SideCalculator$Companion;->RightSideCalculator:Landroidx/compose/foundation/layout/SideCalculator$Companion$RightSideCalculator$1;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;->getBottom-JoeWqyM()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-static {p1, v1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->equals-impl0(II)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    sget-object p1, Landroidx/compose/foundation/layout/SideCalculator$Companion;->BottomSideCalculator:Landroidx/compose/foundation/layout/SideCalculator$Companion$BottomSideCalculator$1;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;->getStart-JoeWqyM()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-static {p1, v1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->equals-impl0(II)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_5

    .line 69
    .line 70
    sget-object p1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 71
    .line 72
    if-ne p2, p1, :cond_4

    .line 73
    .line 74
    sget-object p1, Landroidx/compose/foundation/layout/SideCalculator$Companion;->LeftSideCalculator:Landroidx/compose/foundation/layout/SideCalculator$Companion$LeftSideCalculator$1;

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    sget-object p1, Landroidx/compose/foundation/layout/SideCalculator$Companion;->RightSideCalculator:Landroidx/compose/foundation/layout/SideCalculator$Companion$RightSideCalculator$1;

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_5
    invoke-virtual {v0}, Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;->getEnd-JoeWqyM()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    invoke-static {p1, v0}, Landroidx/compose/foundation/layout/WindowInsetsSides;->equals-impl0(II)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_7

    .line 89
    .line 90
    sget-object p1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 91
    .line 92
    if-ne p2, p1, :cond_6

    .line 93
    .line 94
    sget-object p1, Landroidx/compose/foundation/layout/SideCalculator$Companion;->RightSideCalculator:Landroidx/compose/foundation/layout/SideCalculator$Companion$RightSideCalculator$1;

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_6
    sget-object p1, Landroidx/compose/foundation/layout/SideCalculator$Companion;->LeftSideCalculator:Landroidx/compose/foundation/layout/SideCalculator$Companion$LeftSideCalculator$1;

    .line 98
    .line 99
    :goto_0
    return-object p1

    .line 100
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 101
    .line 102
    const-string p2, "Only Left, Top, Right, Bottom, Start and End are allowed"

    .line 103
    .line 104
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p1
.end method
