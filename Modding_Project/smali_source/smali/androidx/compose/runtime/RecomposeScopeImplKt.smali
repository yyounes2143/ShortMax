.class public final Landroidx/compose/runtime/RecomposeScopeImplKt;
.super Ljava/lang/Object;
.source "RecomposeScopeImpl.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRecomposeScopeImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecomposeScopeImpl.kt\nandroidx/compose/runtime/RecomposeScopeImplKt\n+ 2 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n*L\n1#1,442:1\n25#2,5:443\n*S KotlinDebug\n*F\n+ 1 RecomposeScopeImpl.kt\nandroidx/compose/runtime/RecomposeScopeImplKt\n*L\n77#1:443,5\n*E\n"
    }
.end annotation


# static fields
.field private static final DefaultsInScopeFlag:I = 0x2

.field private static final DefaultsInvalidFlag:I = 0x4

.field private static final ForceReusing:I = 0x80

.field private static final ForcedRecomposeFlag:I = 0x40

.field private static final Paused:I = 0x100

.field private static final RequiresRecomposeFlag:I = 0x8

.field private static final RereadingFlag:I = 0x20

.field private static final ResetReusing:I = 0x400

.field private static final Resuming:I = 0x200

.field private static final SkippedFlag:I = 0x10

.field private static final UsedFlag:I = 0x1

.field private static final callbackLock:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final changedHighBitMask:I = 0x24924924

.field private static final changedLowBitMask:I = 0x12492492

.field private static final changedMask:I = -0x36db6db7


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/runtime/RecomposeScopeImplKt;->callbackLock:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public static final updateChangedFlags(I)I
    .locals 3

    .line 1
    const v0, 0x12492492

    .line 2
    .line 3
    .line 4
    and-int/2addr v0, p0

    .line 5
    const v1, 0x24924924

    .line 6
    .line 7
    .line 8
    and-int/2addr v1, p0

    .line 9
    const v2, -0x36db6db7

    .line 10
    .line 11
    .line 12
    and-int/2addr p0, v2

    .line 13
    shr-int/lit8 v2, v1, 0x1

    .line 14
    .line 15
    or-int/2addr v2, v0

    .line 16
    or-int/2addr p0, v2

    .line 17
    shl-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    and-int/2addr v0, v1

    .line 20
    or-int/2addr p0, v0

    .line 21
    return p0
.end method
