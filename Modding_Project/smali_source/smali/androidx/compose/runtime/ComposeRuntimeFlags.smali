.class public final Landroidx/compose/runtime/ComposeRuntimeFlags;
.super Ljava/lang/Object;
.source "ComposeRuntimeFlags.kt"


# annotations
.annotation build Landroidx/compose/runtime/ExperimentalComposeApi;
.end annotation

.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/runtime/ComposeRuntimeFlags;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static isMovingNestedMovableContentEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/runtime/ComposeRuntimeFlags;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/runtime/ComposeRuntimeFlags;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/runtime/ComposeRuntimeFlags;->INSTANCE:Landroidx/compose/runtime/ComposeRuntimeFlags;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    sput-boolean v0, Landroidx/compose/runtime/ComposeRuntimeFlags;->isMovingNestedMovableContentEnabled:Z

    .line 10
    .line 11
    const/16 v0, 0x8

    .line 12
    .line 13
    sput v0, Landroidx/compose/runtime/ComposeRuntimeFlags;->$stable:I

    .line 14
    .line 15
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

.method public static synthetic isMovingNestedMovableContentEnabled$annotations()V
    .locals 0

    .line 1
    return-void
.end method
