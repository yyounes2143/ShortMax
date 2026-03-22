.class public final Landroidx/compose/ui/input/pointer/PointerIconDefaults;
.super Ljava/lang/Object;
.source "PointerIcon.kt"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation runtime Landroidx/compose/ui/ExperimentalComposeUiApi;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final $stable:I

.field private static final Crosshair:Landroidx/compose/ui/input/pointer/PointerIcon;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Default:Landroidx/compose/ui/input/pointer/PointerIcon;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Hand:Landroidx/compose/ui/input/pointer/PointerIcon;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Landroidx/compose/ui/input/pointer/PointerIconDefaults;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Text:Landroidx/compose/ui/input/pointer/PointerIcon;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/input/pointer/PointerIconDefaults;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/ui/input/pointer/PointerIconDefaults;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/ui/input/pointer/PointerIconDefaults;->INSTANCE:Landroidx/compose/ui/input/pointer/PointerIconDefaults;

    .line 7
    .line 8
    invoke-static {}, Landroidx/compose/ui/input/pointer/PointerIcon_androidKt;->getPointerIconDefault()Landroidx/compose/ui/input/pointer/PointerIcon;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Landroidx/compose/ui/input/pointer/PointerIconDefaults;->Default:Landroidx/compose/ui/input/pointer/PointerIcon;

    .line 13
    .line 14
    invoke-static {}, Landroidx/compose/ui/input/pointer/PointerIcon_androidKt;->getPointerIconCrosshair()Landroidx/compose/ui/input/pointer/PointerIcon;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Landroidx/compose/ui/input/pointer/PointerIconDefaults;->Crosshair:Landroidx/compose/ui/input/pointer/PointerIcon;

    .line 19
    .line 20
    invoke-static {}, Landroidx/compose/ui/input/pointer/PointerIcon_androidKt;->getPointerIconText()Landroidx/compose/ui/input/pointer/PointerIcon;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Landroidx/compose/ui/input/pointer/PointerIconDefaults;->Text:Landroidx/compose/ui/input/pointer/PointerIcon;

    .line 25
    .line 26
    invoke-static {}, Landroidx/compose/ui/input/pointer/PointerIcon_androidKt;->getPointerIconHand()Landroidx/compose/ui/input/pointer/PointerIcon;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Landroidx/compose/ui/input/pointer/PointerIconDefaults;->Hand:Landroidx/compose/ui/input/pointer/PointerIcon;

    .line 31
    .line 32
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
.method public final getCrosshair()Landroidx/compose/ui/input/pointer/PointerIcon;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerIconDefaults;->Crosshair:Landroidx/compose/ui/input/pointer/PointerIcon;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDefault()Landroidx/compose/ui/input/pointer/PointerIcon;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerIconDefaults;->Default:Landroidx/compose/ui/input/pointer/PointerIcon;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHand()Landroidx/compose/ui/input/pointer/PointerIcon;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerIconDefaults;->Hand:Landroidx/compose/ui/input/pointer/PointerIcon;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getText()Landroidx/compose/ui/input/pointer/PointerIcon;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerIconDefaults;->Text:Landroidx/compose/ui/input/pointer/PointerIcon;

    .line 2
    .line 3
    return-object v0
.end method
