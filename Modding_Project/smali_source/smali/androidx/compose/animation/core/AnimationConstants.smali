.class public final Landroidx/compose/animation/core/AnimationConstants;
.super Ljava/lang/Object;
.source "AnimationSpec.kt"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final $stable:I = 0x0

.field public static final DefaultDurationMillis:I = 0x12c

.field public static final INSTANCE:Landroidx/compose/animation/core/AnimationConstants;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final UnspecifiedTime:J = -0x8000000000000000L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/animation/core/AnimationConstants;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/animation/core/AnimationConstants;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/animation/core/AnimationConstants;->INSTANCE:Landroidx/compose/animation/core/AnimationConstants;

    .line 7
    .line 8
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
