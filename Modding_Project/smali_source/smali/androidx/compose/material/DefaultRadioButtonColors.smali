.class final Landroidx/compose/material/DefaultRadioButtonColors;
.super Ljava/lang/Object;
.source "RadioButton.kt"

# interfaces
.implements Landroidx/compose/material/RadioButtonColors;


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final disabledColor:J

.field private final selectedColor:J

.field private final unselectedColor:J


# direct methods
.method private constructor <init>(JJJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Landroidx/compose/material/DefaultRadioButtonColors;->selectedColor:J

    .line 4
    iput-wide p3, p0, Landroidx/compose/material/DefaultRadioButtonColors;->unselectedColor:J

    .line 5
    iput-wide p5, p0, Landroidx/compose/material/DefaultRadioButtonColors;->disabledColor:J

    return-void
.end method

.method public synthetic constructor <init>(JJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Landroidx/compose/material/DefaultRadioButtonColors;-><init>(JJJ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_5

    .line 7
    .line 8
    const-class v2, Landroidx/compose/material/DefaultRadioButtonColors;

    .line 9
    .line 10
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    check-cast p1, Landroidx/compose/material/DefaultRadioButtonColors;

    .line 30
    .line 31
    iget-wide v2, p0, Landroidx/compose/material/DefaultRadioButtonColors;->selectedColor:J

    .line 32
    .line 33
    iget-wide v4, p1, Landroidx/compose/material/DefaultRadioButtonColors;->selectedColor:J

    .line 34
    .line 35
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_2

    .line 40
    .line 41
    return v1

    .line 42
    :cond_2
    iget-wide v2, p0, Landroidx/compose/material/DefaultRadioButtonColors;->unselectedColor:J

    .line 43
    .line 44
    iget-wide v4, p1, Landroidx/compose/material/DefaultRadioButtonColors;->unselectedColor:J

    .line 45
    .line 46
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_3

    .line 51
    .line 52
    return v1

    .line 53
    :cond_3
    iget-wide v2, p0, Landroidx/compose/material/DefaultRadioButtonColors;->disabledColor:J

    .line 54
    .line 55
    iget-wide v4, p1, Landroidx/compose/material/DefaultRadioButtonColors;->disabledColor:J

    .line 56
    .line 57
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_4

    .line 62
    .line 63
    return v1

    .line 64
    :cond_4
    return v0

    .line 65
    :cond_5
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-wide v0, p0, Landroidx/compose/material/DefaultRadioButtonColors;->selectedColor:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-wide v1, p0, Landroidx/compose/material/DefaultRadioButtonColors;->unselectedColor:J

    .line 10
    .line 11
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-wide v1, p0, Landroidx/compose/material/DefaultRadioButtonColors;->disabledColor:J

    .line 19
    .line 20
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    return v0
.end method

.method public radioColor(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 9
    .param p3    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const p4, 0x4a1d1c8a    # 2574114.5f

    .line 2
    .line 3
    .line 4
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Landroidx/compose/material/DefaultRadioButtonColors;->disabledColor:J

    .line 10
    .line 11
    :goto_0
    move-wide v2, v0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    if-nez p2, :cond_1

    .line 14
    .line 15
    iget-wide v0, p0, Landroidx/compose/material/DefaultRadioButtonColors;->unselectedColor:J

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-wide v0, p0, Landroidx/compose/material/DefaultRadioButtonColors;->selectedColor:J

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :goto_1
    const/4 p2, 0x0

    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    const p1, -0x3ec070f2

    .line 25
    .line 26
    .line 27
    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 28
    .line 29
    .line 30
    const/16 p1, 0x64

    .line 31
    .line 32
    const/4 p4, 0x6

    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-static {p1, p2, v0, p4, v0}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const/16 v7, 0x30

    .line 39
    .line 40
    const/4 v8, 0x4

    .line 41
    const/4 v5, 0x0

    .line 42
    move-object v6, p3

    .line 43
    invoke-static/range {v2 .. v8}, Landroidx/compose/animation/SingleValueAnimationKt;->animateColorAsState-KTwxG1Y(JLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const p1, -0x3ec07089

    .line 52
    .line 53
    .line 54
    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 55
    .line 56
    .line 57
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p1, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 66
    .line 67
    .line 68
    :goto_2
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 69
    .line 70
    .line 71
    return-object p1
.end method
