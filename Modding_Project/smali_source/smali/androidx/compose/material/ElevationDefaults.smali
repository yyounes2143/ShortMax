.class final Landroidx/compose/material/ElevationDefaults;
.super Ljava/lang/Object;
.source "Elevation.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/material/ElevationDefaults;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/material/ElevationDefaults;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/material/ElevationDefaults;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/material/ElevationDefaults;->INSTANCE:Landroidx/compose/material/ElevationDefaults;

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


# virtual methods
.method public final incomingAnimationSpecForInteraction(Landroidx/compose/foundation/interaction/Interaction;)Landroidx/compose/animation/core/AnimationSpec;
    .locals 1
    .param p1    # Landroidx/compose/foundation/interaction/Interaction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/interaction/Interaction;",
            ")",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "interaction"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {}, Landroidx/compose/material/ElevationKt;->access$getDefaultIncomingSpec$p()Landroidx/compose/animation/core/TweenSpec;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    instance-of v0, p1, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-static {}, Landroidx/compose/material/ElevationKt;->access$getDefaultIncomingSpec$p()Landroidx/compose/animation/core/TweenSpec;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    instance-of v0, p1, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-static {}, Landroidx/compose/material/ElevationKt;->access$getDefaultIncomingSpec$p()Landroidx/compose/animation/core/TweenSpec;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    instance-of p1, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 34
    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    invoke-static {}, Landroidx/compose/material/ElevationKt;->access$getDefaultIncomingSpec$p()Landroidx/compose/animation/core/TweenSpec;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    goto :goto_0

    .line 42
    :cond_3
    const/4 p1, 0x0

    .line 43
    :goto_0
    return-object p1
.end method

.method public final outgoingAnimationSpecForInteraction(Landroidx/compose/foundation/interaction/Interaction;)Landroidx/compose/animation/core/AnimationSpec;
    .locals 1
    .param p1    # Landroidx/compose/foundation/interaction/Interaction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/interaction/Interaction;",
            ")",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "interaction"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {}, Landroidx/compose/material/ElevationKt;->access$getDefaultOutgoingSpec$p()Landroidx/compose/animation/core/TweenSpec;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    instance-of v0, p1, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-static {}, Landroidx/compose/material/ElevationKt;->access$getDefaultOutgoingSpec$p()Landroidx/compose/animation/core/TweenSpec;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    instance-of v0, p1, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-static {}, Landroidx/compose/material/ElevationKt;->access$getHoveredOutgoingSpec$p()Landroidx/compose/animation/core/TweenSpec;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    instance-of p1, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 34
    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    invoke-static {}, Landroidx/compose/material/ElevationKt;->access$getDefaultOutgoingSpec$p()Landroidx/compose/animation/core/TweenSpec;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    goto :goto_0

    .line 42
    :cond_3
    const/4 p1, 0x0

    .line 43
    :goto_0
    return-object p1
.end method
