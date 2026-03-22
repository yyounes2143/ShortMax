.class public final Landroidx/compose/material/NavigationRailDefaults;
.super Ljava/lang/Object;
.source "NavigationRail.kt"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final $stable:I

.field private static final Elevation:F

.field public static final INSTANCE:Landroidx/compose/material/NavigationRailDefaults;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/material/NavigationRailDefaults;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/material/NavigationRailDefaults;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/material/NavigationRailDefaults;->INSTANCE:Landroidx/compose/material/NavigationRailDefaults;

    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    int-to-float v0, v0

    .line 11
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput v0, Landroidx/compose/material/NavigationRailDefaults;->Elevation:F

    .line 16
    .line 17
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
.method public final getElevation-D9Ej5fM()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/NavigationRailDefaults;->Elevation:F

    .line 2
    .line 3
    return v0
.end method
