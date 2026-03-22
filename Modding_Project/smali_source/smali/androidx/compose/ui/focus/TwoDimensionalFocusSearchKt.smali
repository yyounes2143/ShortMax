.class public final Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;
.super Ljava/lang/Object;
.source "TwoDimensionalFocusSearch.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final InvalidFocusDirection:Ljava/lang/String; = "This function should only be used for 2-D focus search"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final NoActiveChild:Ljava/lang/String; = "ActiveParent must have a focusedChild"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static final synthetic access$searchChildren-4C6V_qg(Landroidx/compose/ui/focus/FocusModifier;Landroidx/compose/ui/focus/FocusModifier;ILkotlin/jvm/functions/Function1;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->searchChildren-4C6V_qg(Landroidx/compose/ui/focus/FocusModifier;Landroidx/compose/ui/focus/FocusModifier;ILkotlin/jvm/functions/Function1;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final activeNode(Landroidx/compose/ui/focus/FocusModifier;)Landroidx/compose/ui/focus/FocusModifier;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->ActiveParent:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->DeactivatedParent:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v0, "Check failed."

    .line 21
    .line 22
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0

    .line 26
    :cond_1
    :goto_0
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusModifier;)Landroidx/compose/ui/focus/FocusModifier;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-eqz p0, :cond_2

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    const-string v0, "ActiveParent must have a focusedChild"

    .line 36
    .line 37
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p0
.end method

.method private static final beamBeats-I7lrPNg(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;I)Z
    .locals 4

    .line 1
    invoke-static {p2, p3, p0}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->beamBeats_I7lrPNg$inSourceBeam(Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/geometry/Rect;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    invoke-static {p1, p3, p0}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->beamBeats_I7lrPNg$inSourceBeam(Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/geometry/Rect;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-static {p2, p3, p0}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->beamBeats_I7lrPNg$isInDirectionOfSearch(Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/geometry/Rect;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v2, 0x1

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    :cond_1
    :goto_0
    move v1, v2

    .line 23
    goto :goto_1

    .line 24
    :cond_2
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getLeft-dhqQ-8s()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-static {p3, v3}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getRight-dhqQ-8s()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-static {p3, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    invoke-static {p1, p3, p0}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->beamBeats_I7lrPNg$majorAxisDistance-3(Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/geometry/Rect;)F

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-static {p2, p3, p0}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->beamBeats_I7lrPNg$majorAxisDistanceToFarEdge(Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/geometry/Rect;)F

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    cmpg-float p0, p1, p0

    .line 56
    .line 57
    if-gez p0, :cond_4

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    :goto_1
    return v1
.end method

.method private static final beamBeats_I7lrPNg$inSourceBeam(Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/geometry/Rect;)Z
    .locals 4

    .line 1
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getLeft-dhqQ-8s()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    move v1, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getRight-dhqQ-8s()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    :goto_0
    const/4 v3, 0x0

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    cmpl-float p1, p1, v0

    .line 36
    .line 37
    if-lez p1, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    cmpg-float p0, p0, p1

    .line 48
    .line 49
    if-gez p0, :cond_1

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_1
    move v2, v3

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getUp-dhqQ-8s()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    move p1, v2

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getDown-dhqQ-8s()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    :goto_1
    if-eqz p1, :cond_4

    .line 75
    .line 76
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    cmpl-float p1, p1, v0

    .line 85
    .line 86
    if-lez p1, :cond_1

    .line 87
    .line 88
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    cmpg-float p0, p0, p1

    .line 97
    .line 98
    if-gez p0, :cond_1

    .line 99
    .line 100
    :goto_2
    return v2

    .line 101
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 102
    .line 103
    const-string p1, "This function should only be used for 2-D focus search"

    .line 104
    .line 105
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p0
.end method

.method private static final beamBeats_I7lrPNg$isInDirectionOfSearch(Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/geometry/Rect;)Z
    .locals 4

    .line 1
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getLeft-dhqQ-8s()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    cmpl-float p0, p1, p0

    .line 24
    .line 25
    if-ltz p0, :cond_3

    .line 26
    .line 27
    :goto_0
    move v2, v3

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getRight-dhqQ-8s()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    cmpg-float p0, p1, p0

    .line 48
    .line 49
    if-gtz p0, :cond_3

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getUp-dhqQ-8s()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    cmpl-float p0, p1, p0

    .line 71
    .line 72
    if-ltz p0, :cond_3

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getDown-dhqQ-8s()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_4

    .line 84
    .line 85
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    cmpg-float p0, p1, p0

    .line 94
    .line 95
    if-gtz p0, :cond_3

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    :goto_1
    return v2

    .line 99
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 100
    .line 101
    const-string p1, "This function should only be used for 2-D focus search"

    .line 102
    .line 103
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p0
.end method

.method private static final beamBeats_I7lrPNg$majorAxisDistance-3(Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/geometry/Rect;)F
    .locals 2

    .line 1
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getLeft-dhqQ-8s()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    :goto_0
    sub-float/2addr p1, p0

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getRight-dhqQ-8s()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    :goto_1
    sub-float p1, p0, p1

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getUp-dhqQ-8s()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getDown-dhqQ-8s()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    goto :goto_1

    .line 82
    :goto_2
    const/4 p0, 0x0

    .line 83
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    return p0

    .line 88
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 89
    .line 90
    const-string p1, "This function should only be used for 2-D focus search"

    .line 91
    .line 92
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p0
.end method

.method private static final beamBeats_I7lrPNg$majorAxisDistanceToFarEdge(Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/geometry/Rect;)F
    .locals 2

    .line 1
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getLeft-dhqQ-8s()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    :goto_0
    sub-float/2addr p1, p0

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getRight-dhqQ-8s()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    :goto_1
    sub-float p1, p0, p1

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getUp-dhqQ-8s()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getDown-dhqQ-8s()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    goto :goto_1

    .line 82
    :goto_2
    const/high16 p0, 0x3f800000    # 1.0f

    .line 83
    .line 84
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    return p0

    .line 89
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 90
    .line 91
    const-string p1, "This function should only be used for 2-D focus search"

    .line 92
    .line 93
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p0
.end method

.method private static final bottomRight(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;
    .locals 4

    .line 1
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method private static final findBestCandidate-4WY_MpI(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/geometry/Rect;I)Landroidx/compose/ui/focus/FocusModifier;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/focus/FocusModifier;",
            ">;",
            "Landroidx/compose/ui/geometry/Rect;",
            "I)",
            "Landroidx/compose/ui/focus/FocusModifier;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getLeft-dhqQ-8s()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {p2, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getWidth()F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    int-to-float v1, v3

    .line 20
    add-float/2addr v0, v1

    .line 21
    invoke-virtual {p1, v0, v2}, Landroidx/compose/ui/geometry/Rect;->translate(FF)Landroidx/compose/ui/geometry/Rect;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getRight-dhqQ-8s()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-static {p2, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getWidth()F

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    int-to-float v1, v3

    .line 41
    add-float/2addr v0, v1

    .line 42
    neg-float v0, v0

    .line 43
    invoke-virtual {p1, v0, v2}, Landroidx/compose/ui/geometry/Rect;->translate(FF)Landroidx/compose/ui/geometry/Rect;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getUp-dhqQ-8s()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-static {p2, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getHeight()F

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    int-to-float v1, v3

    .line 63
    add-float/2addr v0, v1

    .line 64
    invoke-virtual {p1, v2, v0}, Landroidx/compose/ui/geometry/Rect;->translate(FF)Landroidx/compose/ui/geometry/Rect;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getDown-dhqQ-8s()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    invoke-static {p2, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_6

    .line 78
    .line 79
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getHeight()F

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    int-to-float v1, v3

    .line 84
    add-float/2addr v0, v1

    .line 85
    neg-float v0, v0

    .line 86
    invoke-virtual {p1, v2, v0}, Landroidx/compose/ui/geometry/Rect;->translate(FF)Landroidx/compose/ui/geometry/Rect;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    const/4 v2, 0x0

    .line 95
    if-lez v1, :cond_5

    .line 96
    .line 97
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    const/4 v3, 0x0

    .line 102
    :cond_3
    aget-object v4, p0, v3

    .line 103
    .line 104
    check-cast v4, Landroidx/compose/ui/focus/FocusModifier;

    .line 105
    .line 106
    invoke-static {v4}, Landroidx/compose/ui/focus/FocusTraversalKt;->isEligibleForFocusSearch(Landroidx/compose/ui/focus/FocusModifier;)Z

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-eqz v5, :cond_4

    .line 111
    .line 112
    invoke-static {v4}, Landroidx/compose/ui/focus/FocusTraversalKt;->focusRect(Landroidx/compose/ui/focus/FocusModifier;)Landroidx/compose/ui/geometry/Rect;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-static {v5, v0, p1, p2}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->isBetterCandidate-I7lrPNg(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;I)Z

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    if-eqz v6, :cond_4

    .line 121
    .line 122
    move-object v2, v4

    .line 123
    move-object v0, v5

    .line 124
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 125
    .line 126
    if-lt v3, v1, :cond_3

    .line 127
    .line 128
    :cond_5
    return-object v2

    .line 129
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 130
    .line 131
    const-string p1, "This function should only be used for 2-D focus search"

    .line 132
    .line 133
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p0
.end method

.method private static final generateAndSearchChildren-4C6V_qg(Landroidx/compose/ui/focus/FocusModifier;Landroidx/compose/ui/focus/FocusModifier;ILkotlin/jvm/functions/Function1;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/focus/FocusModifier;",
            "Landroidx/compose/ui/focus/FocusModifier;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/focus/FocusModifier;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->searchChildren-4C6V_qg(Landroidx/compose/ui/focus/FocusModifier;Landroidx/compose/ui/focus/FocusModifier;ILkotlin/jvm/functions/Function1;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    new-instance v0, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt$generateAndSearchChildren$1;

    .line 10
    .line 11
    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt$generateAndSearchChildren$1;-><init>(Landroidx/compose/ui/focus/FocusModifier;Landroidx/compose/ui/focus/FocusModifier;ILkotlin/jvm/functions/Function1;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0, p2, v0}, Landroidx/compose/ui/focus/BeyondBoundsLayoutKt;->searchBeyondBounds--OM-vw8(Landroidx/compose/ui/focus/FocusModifier;ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Ljava/lang/Boolean;

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0
.end method

.method private static final isBetterCandidate-I7lrPNg(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;I)Z
    .locals 5

    .line 1
    invoke-static {p0, p3, p2}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->isBetterCandidate_I7lrPNg$isCandidate(Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/geometry/Rect;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    invoke-static {p1, p3, p2}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->isBetterCandidate_I7lrPNg$isCandidate(Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/geometry/Rect;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    :goto_0
    move v1, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    invoke-static {p2, p0, p1, p3}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->beamBeats-I7lrPNg(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;I)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    invoke-static {p2, p1, p0, p3}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->beamBeats-I7lrPNg(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;I)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_3
    invoke-static {p3, p2, p0}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->isBetterCandidate_I7lrPNg$weightedDistance(ILandroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    invoke-static {p3, p2, p1}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->isBetterCandidate_I7lrPNg$weightedDistance(ILandroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)J

    .line 37
    .line 38
    .line 39
    move-result-wide p0

    .line 40
    cmp-long p0, v3, p0

    .line 41
    .line 42
    if-gez p0, :cond_4

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_4
    :goto_1
    return v1
.end method

.method private static final isBetterCandidate_I7lrPNg$isCandidate(Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/geometry/Rect;)Z
    .locals 4

    .line 1
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getLeft-dhqQ-8s()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    cmpl-float p1, p1, v0

    .line 24
    .line 25
    if-gtz p1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    cmpl-float p1, p1, v0

    .line 36
    .line 37
    if-ltz p1, :cond_7

    .line 38
    .line 39
    :cond_0
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    cmpl-float p0, p1, p0

    .line 48
    .line 49
    if-lez p0, :cond_7

    .line 50
    .line 51
    :goto_0
    move v2, v3

    .line 52
    goto/16 :goto_1

    .line 53
    .line 54
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getRight-dhqQ-8s()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    cmpg-float p1, p1, v0

    .line 73
    .line 74
    if-ltz p1, :cond_2

    .line 75
    .line 76
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    cmpg-float p1, p1, v0

    .line 85
    .line 86
    if-gtz p1, :cond_7

    .line 87
    .line 88
    :cond_2
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    cmpg-float p0, p1, p0

    .line 97
    .line 98
    if-gez p0, :cond_7

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getUp-dhqQ-8s()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_5

    .line 110
    .line 111
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    cmpl-float p1, p1, v0

    .line 120
    .line 121
    if-gtz p1, :cond_4

    .line 122
    .line 123
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    cmpl-float p1, p1, v0

    .line 132
    .line 133
    if-ltz p1, :cond_7

    .line 134
    .line 135
    :cond_4
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    cmpl-float p0, p1, p0

    .line 144
    .line 145
    if-lez p0, :cond_7

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_5
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getDown-dhqQ-8s()I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-eqz p1, :cond_8

    .line 157
    .line 158
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    cmpg-float p1, p1, v0

    .line 167
    .line 168
    if-ltz p1, :cond_6

    .line 169
    .line 170
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    cmpg-float p1, p1, v0

    .line 179
    .line 180
    if-gtz p1, :cond_7

    .line 181
    .line 182
    :cond_6
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    .line 187
    .line 188
    .line 189
    move-result p0

    .line 190
    cmpg-float p0, p1, p0

    .line 191
    .line 192
    if-gez p0, :cond_7

    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :cond_7
    :goto_1
    return v2

    .line 197
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 198
    .line 199
    const-string p1, "This function should only be used for 2-D focus search"

    .line 200
    .line 201
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    throw p0
.end method

.method private static final isBetterCandidate_I7lrPNg$majorAxisDistance(Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/geometry/Rect;)F
    .locals 2

    .line 1
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getLeft-dhqQ-8s()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    :goto_0
    sub-float/2addr p1, p0

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getRight-dhqQ-8s()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    :goto_1
    sub-float p1, p0, p1

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getUp-dhqQ-8s()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getDown-dhqQ-8s()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    goto :goto_1

    .line 82
    :goto_2
    const/4 p0, 0x0

    .line 83
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    return p0

    .line 88
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 89
    .line 90
    const-string p1, "This function should only be used for 2-D focus search"

    .line 91
    .line 92
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p0
.end method

.method private static final isBetterCandidate_I7lrPNg$minorAxisDistance(Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/geometry/Rect;)F
    .locals 4

    .line 1
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getLeft-dhqQ-8s()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    move v1, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getRight-dhqQ-8s()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    :goto_0
    const/4 v3, 0x2

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getHeight()F

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    int-to-float v0, v3

    .line 36
    div-float/2addr p2, v0

    .line 37
    add-float/2addr p1, p2

    .line 38
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getHeight()F

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    :goto_1
    div-float/2addr p0, v0

    .line 47
    add-float/2addr p2, p0

    .line 48
    sub-float/2addr p1, p2

    .line 49
    goto :goto_3

    .line 50
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getUp-dhqQ-8s()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getDown-dhqQ-8s()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    :goto_2
    if-eqz v2, :cond_3

    .line 70
    .line 71
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getWidth()F

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    int-to-float v0, v3

    .line 80
    div-float/2addr p2, v0

    .line 81
    add-float/2addr p1, p2

    .line 82
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getWidth()F

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    goto :goto_1

    .line 91
    :goto_3
    return p1

    .line 92
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 93
    .line 94
    const-string p1, "This function should only be used for 2-D focus search"

    .line 95
    .line 96
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p0
.end method

.method private static final isBetterCandidate_I7lrPNg$weightedDistance(ILandroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;)J
    .locals 4

    .line 1
    invoke-static {p2, p0, p1}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->isBetterCandidate_I7lrPNg$majorAxisDistance(Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/geometry/Rect;)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    float-to-long v0, v0

    .line 10
    invoke-static {p2, p0, p1}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->isBetterCandidate_I7lrPNg$minorAxisDistance(Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/geometry/Rect;)F

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    float-to-long p0, p0

    .line 19
    const/16 p2, 0xd

    .line 20
    .line 21
    int-to-long v2, p2

    .line 22
    mul-long/2addr v2, v0

    .line 23
    mul-long/2addr v2, v0

    .line 24
    mul-long/2addr p0, p0

    .line 25
    add-long/2addr v2, p0

    .line 26
    return-wide v2
.end method

.method private static final searchChildren-4C6V_qg(Landroidx/compose/ui/focus/FocusModifier;Landroidx/compose/ui/focus/FocusModifier;ILkotlin/jvm/functions/Function1;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/focus/FocusModifier;",
            "Landroidx/compose/ui/focus/FocusModifier;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/focus/FocusModifier;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->getChildren()Landroidx/compose/runtime/collection/MutableVector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    .line 10
    .line 11
    new-array v0, v0, [Landroidx/compose/ui/focus/FocusModifier;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, v0, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->getChildren()Landroidx/compose/runtime/collection/MutableVector;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {v1, v0, p0}, Landroidx/compose/runtime/collection/MutableVector;->addAll(ILandroidx/compose/runtime/collection/MutableVector;)Z

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_3

    .line 33
    .line 34
    invoke-static {p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->focusRect(Landroidx/compose/ui/focus/FocusModifier;)Landroidx/compose/ui/geometry/Rect;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {v1, p0, p2}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->findBestCandidate-4WY_MpI(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/geometry/Rect;I)Landroidx/compose/ui/focus/FocusModifier;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-nez p0, :cond_0

    .line 43
    .line 44
    return v2

    .line 45
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusStateImpl;->isDeactivated()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_1

    .line 54
    .line 55
    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    return p0

    .line 66
    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->generateAndSearchChildren-4C6V_qg(Landroidx/compose/ui/focus/FocusModifier;Landroidx/compose/ui/focus/FocusModifier;ILkotlin/jvm/functions/Function1;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    const/4 p0, 0x1

    .line 73
    return p0

    .line 74
    :cond_2
    invoke-virtual {v1, p0}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    return v2
.end method

.method private static final topLeft(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;
    .locals 4

    .line 1
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public static final twoDimensionalFocusSearch--OM-vw8(Landroidx/compose/ui/focus/FocusModifier;ILkotlin/jvm/functions/Function1;)Z
    .locals 6
    .param p0    # Landroidx/compose/ui/focus/FocusModifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/focus/FocusModifier;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/focus/FocusModifier;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const-string v0, "$this$twoDimensionalFocusSearch"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "onFound"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    aget v0, v1, v0

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    const/4 v3, 0x0

    .line 25
    packed-switch v0, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 29
    .line 30
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 31
    .line 32
    .line 33
    throw p0

    .line 34
    :pswitch_0
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    return p0

    .line 45
    :pswitch_1
    return v3

    .line 46
    :pswitch_2
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->activatedChildren(Landroidx/compose/ui/focus/FocusModifier;)Landroidx/compose/runtime/collection/MutableVector;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-gt v1, v2, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-eqz p0, :cond_0

    .line 61
    .line 62
    const/4 p0, 0x0

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    aget-object p0, p0, v3

    .line 69
    .line 70
    :goto_0
    check-cast p0, Landroidx/compose/ui/focus/FocusModifier;

    .line 71
    .line 72
    if-eqz p0, :cond_1

    .line 73
    .line 74
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    check-cast p0, Ljava/lang/Boolean;

    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    :cond_1
    return v3

    .line 85
    :cond_2
    sget-object v1, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    .line 86
    .line 87
    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getRight-dhqQ-8s()I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    invoke-static {p1, v4}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-eqz v4, :cond_3

    .line 96
    .line 97
    move v4, v2

    .line 98
    goto :goto_1

    .line 99
    :cond_3
    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getDown-dhqQ-8s()I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    invoke-static {p1, v4}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    :goto_1
    if-eqz v4, :cond_4

    .line 108
    .line 109
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->focusRect(Landroidx/compose/ui/focus/FocusModifier;)Landroidx/compose/ui/geometry/Rect;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-static {p0}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->topLeft(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    goto :goto_3

    .line 118
    :cond_4
    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getLeft-dhqQ-8s()I

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    invoke-static {p1, v4}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-eqz v4, :cond_5

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_5
    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getUp-dhqQ-8s()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    :goto_2
    if-eqz v2, :cond_7

    .line 138
    .line 139
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->focusRect(Landroidx/compose/ui/focus/FocusModifier;)Landroidx/compose/ui/geometry/Rect;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-static {p0}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->bottomRight(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    :goto_3
    invoke-static {v0, p0, p1}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->findBestCandidate-4WY_MpI(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/geometry/Rect;I)Landroidx/compose/ui/focus/FocusModifier;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    if-eqz p0, :cond_6

    .line 152
    .line 153
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    check-cast p0, Ljava/lang/Boolean;

    .line 158
    .line 159
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    :cond_6
    return v3

    .line 164
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 165
    .line 166
    const-string p1, "This function should only be used for 2-D focus search"

    .line 167
    .line 168
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw p0

    .line 172
    :pswitch_3
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->getFocusedChild()Landroidx/compose/ui/focus/FocusModifier;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    const-string v4, "ActiveParent must have a focusedChild"

    .line 177
    .line 178
    if-eqz v0, :cond_a

    .line 179
    .line 180
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusModifier;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 185
    .line 186
    .line 187
    move-result v5

    .line 188
    aget v1, v1, v5

    .line 189
    .line 190
    packed-switch v1, :pswitch_data_1

    .line 191
    .line 192
    .line 193
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 194
    .line 195
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 196
    .line 197
    .line 198
    throw p0

    .line 199
    :pswitch_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 200
    .line 201
    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    throw p0

    .line 205
    :pswitch_5
    invoke-static {p0, v0, p1, p2}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->generateAndSearchChildren-4C6V_qg(Landroidx/compose/ui/focus/FocusModifier;Landroidx/compose/ui/focus/FocusModifier;ILkotlin/jvm/functions/Function1;)Z

    .line 206
    .line 207
    .line 208
    move-result p0

    .line 209
    return p0

    .line 210
    :pswitch_6
    invoke-static {v0, p1, p2}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->twoDimensionalFocusSearch--OM-vw8(Landroidx/compose/ui/focus/FocusModifier;ILkotlin/jvm/functions/Function1;)Z

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    if-nez v1, :cond_9

    .line 215
    .line 216
    invoke-static {v0}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->activeNode(Landroidx/compose/ui/focus/FocusModifier;)Landroidx/compose/ui/focus/FocusModifier;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-static {p0, v0, p1, p2}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->generateAndSearchChildren-4C6V_qg(Landroidx/compose/ui/focus/FocusModifier;Landroidx/compose/ui/focus/FocusModifier;ILkotlin/jvm/functions/Function1;)Z

    .line 221
    .line 222
    .line 223
    move-result p0

    .line 224
    if-eqz p0, :cond_8

    .line 225
    .line 226
    goto :goto_4

    .line 227
    :cond_8
    move v2, v3

    .line 228
    :cond_9
    :goto_4
    return v2

    .line 229
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 230
    .line 231
    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw p0

    .line 235
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
