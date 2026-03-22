.class final synthetic Landroidx/compose/runtime/ActualAndroid_androidKt__MonotonicFrameClock_androidKt;
.super Ljava/lang/Object;
.source "MonotonicFrameClock.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final DefaultMonotonicFrameClock$delegate:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DisallowDefaultMonotonicFrameClock:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/runtime/a;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/runtime/a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Landroidx/compose/runtime/ActualAndroid_androidKt__MonotonicFrameClock_androidKt;->DefaultMonotonicFrameClock$delegate:Lms/i;

    .line 11
    .line 12
    return-void
.end method

.method private static final DefaultMonotonicFrameClock_delegate$lambda$0$ActualAndroid_androidKt__MonotonicFrameClock_androidKt()Landroidx/compose/runtime/MonotonicFrameClock;
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/runtime/DefaultChoreographerFrameClock;->INSTANCE:Landroidx/compose/runtime/DefaultChoreographerFrameClock;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Landroidx/compose/runtime/FallbackFrameClock;->INSTANCE:Landroidx/compose/runtime/FallbackFrameClock;

    .line 11
    .line 12
    :goto_0
    return-object v0
.end method

.method public static synthetic a()Landroidx/compose/runtime/MonotonicFrameClock;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/compose/runtime/ActualAndroid_androidKt__MonotonicFrameClock_androidKt;->DefaultMonotonicFrameClock_delegate$lambda$0$ActualAndroid_androidKt__MonotonicFrameClock_androidKt()Landroidx/compose/runtime/MonotonicFrameClock;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final getDefaultMonotonicFrameClock()Landroidx/compose/runtime/MonotonicFrameClock;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/runtime/ActualAndroid_androidKt__MonotonicFrameClock_androidKt;->DefaultMonotonicFrameClock$delegate:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/runtime/MonotonicFrameClock;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic getDefaultMonotonicFrameClock$annotations()V
    .locals 0
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    return-void
.end method
