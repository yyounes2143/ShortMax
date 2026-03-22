.class public final Landroidx/compose/ui/platform/InspectorInfo;
.super Ljava/lang/Object;
.source "InspectableValue.kt"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final properties:Landroidx/compose/ui/platform/ValueElementSequence;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/compose/ui/platform/ValueElementSequence;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/compose/ui/platform/ValueElementSequence;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/compose/ui/platform/InspectorInfo;->properties:Landroidx/compose/ui/platform/ValueElementSequence;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/InspectorInfo;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getProperties()Landroidx/compose/ui/platform/ValueElementSequence;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/InspectorInfo;->properties:Landroidx/compose/ui/platform/ValueElementSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/InspectorInfo;->value:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/platform/InspectorInfo;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/platform/InspectorInfo;->value:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method
