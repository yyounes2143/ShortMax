.class public final Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;
.super Ljava/lang/Object;
.source "PlatformHapticFeedback.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LongPress:I

.field private static final TextHandleMove:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->INSTANCE:Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {v0}, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->constructor-impl(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    sput v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->LongPress:I

    .line 14
    .line 15
    const/16 v0, 0x9

    .line 16
    .line 17
    invoke-static {v0}, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->constructor-impl(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    sput v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->TextHandleMove:I

    .line 22
    .line 23
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
.method public final getLongPress-5zf0vsI()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->LongPress:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTextHandleMove-5zf0vsI()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->TextHandleMove:I

    .line 2
    .line 3
    return v0
.end method
