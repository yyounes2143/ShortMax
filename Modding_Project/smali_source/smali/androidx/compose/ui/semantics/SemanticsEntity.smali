.class public final Landroidx/compose/ui/semantics/SemanticsEntity;
.super Landroidx/compose/ui/node/LayoutNodeEntity;
.source "SemanticsEntity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/LayoutNodeEntity<",
        "Landroidx/compose/ui/semantics/SemanticsEntity;",
        "Landroidx/compose/ui/semantics/SemanticsModifier;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/semantics/SemanticsModifier;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/node/LayoutNodeWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/semantics/SemanticsModifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "wrapped"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "modifier"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/LayoutNodeEntity;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/Modifier;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final getUseMinimumTouchTarget()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->getModifier()Landroidx/compose/ui/Modifier;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsModifier;

    .line 6
    .line 7
    invoke-interface {v0}, Landroidx/compose/ui/semantics/SemanticsModifier;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsActions;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsActions;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsActions;->getOnClick()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method


# virtual methods
.method public final collapsedSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->getNext()Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsEntity;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->getLayoutNodeWrapper()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_6

    .line 19
    .line 20
    :goto_0
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getEntities-CHwCgZE()[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    sget-object v3, Landroidx/compose/ui/node/EntityList;->Companion:Landroidx/compose/ui/node/EntityList$Companion;

    .line 27
    .line 28
    invoke-virtual {v3}, Landroidx/compose/ui/node/EntityList$Companion;->getSemanticsEntityType-EEbPh1w()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-static {v2, v3}, Landroidx/compose/ui/node/EntityList;->has-0OSVbXo([Landroidx/compose/ui/node/LayoutNodeEntity;I)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    if-eqz v0, :cond_6

    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getEntities-CHwCgZE()[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sget-object v2, Landroidx/compose/ui/node/EntityList;->Companion:Landroidx/compose/ui/node/EntityList$Companion;

    .line 50
    .line 51
    invoke-virtual {v2}, Landroidx/compose/ui/node/EntityList$Companion;->getSemanticsEntityType-EEbPh1w()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-static {v0, v2}, Landroidx/compose/ui/node/EntityList;->head-0OSVbXo([Landroidx/compose/ui/node/LayoutNodeEntity;I)Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsEntity;

    .line 60
    .line 61
    if-eqz v0, :cond_6

    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeEntity;->getLayoutNodeWrapper()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    :goto_1
    if-eqz v2, :cond_6

    .line 68
    .line 69
    if-eqz v0, :cond_1

    .line 70
    .line 71
    :goto_2
    move-object v1, v0

    .line 72
    goto :goto_4

    .line 73
    :cond_1
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    if-eqz v2, :cond_2

    .line 78
    .line 79
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getEntities-CHwCgZE()[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    sget-object v3, Landroidx/compose/ui/node/EntityList;->Companion:Landroidx/compose/ui/node/EntityList$Companion;

    .line 84
    .line 85
    invoke-virtual {v3}, Landroidx/compose/ui/node/EntityList$Companion;->getSemanticsEntityType-EEbPh1w()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    invoke-static {v0, v3}, Landroidx/compose/ui/node/EntityList;->head-0OSVbXo([Landroidx/compose/ui/node/LayoutNodeEntity;I)Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsEntity;

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    move-object v0, v1

    .line 97
    goto :goto_1

    .line 98
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeEntity;->getLayoutNodeWrapper()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    :goto_3
    if-eqz v2, :cond_6

    .line 103
    .line 104
    if-eqz v0, :cond_4

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_4
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    if-eqz v2, :cond_5

    .line 112
    .line 113
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getEntities-CHwCgZE()[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    sget-object v3, Landroidx/compose/ui/node/EntityList;->Companion:Landroidx/compose/ui/node/EntityList$Companion;

    .line 118
    .line 119
    invoke-virtual {v3}, Landroidx/compose/ui/node/EntityList$Companion;->getSemanticsEntityType-EEbPh1w()I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    invoke-static {v0, v3}, Landroidx/compose/ui/node/EntityList;->head-0OSVbXo([Landroidx/compose/ui/node/LayoutNodeEntity;I)Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsEntity;

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_5
    move-object v0, v1

    .line 131
    goto :goto_3

    .line 132
    :cond_6
    :goto_4
    if-eqz v1, :cond_8

    .line 133
    .line 134
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->getModifier()Landroidx/compose/ui/Modifier;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsModifier;

    .line 139
    .line 140
    invoke-interface {v0}, Landroidx/compose/ui/semantics/SemanticsModifier;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isClearingSemantics()Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_7

    .line 149
    .line 150
    goto :goto_5

    .line 151
    :cond_7
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->getModifier()Landroidx/compose/ui/Modifier;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsModifier;

    .line 156
    .line 157
    invoke-interface {v0}, Landroidx/compose/ui/semantics/SemanticsModifier;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->copy()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsEntity;->collapsedSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->collapsePeer$ui_release(Landroidx/compose/ui/semantics/SemanticsConfiguration;)V

    .line 170
    .line 171
    .line 172
    return-object v0

    .line 173
    :cond_8
    :goto_5
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->getModifier()Landroidx/compose/ui/Modifier;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsModifier;

    .line 178
    .line 179
    invoke-interface {v0}, Landroidx/compose/ui/semantics/SemanticsModifier;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    return-object v0
.end method

.method public final nearestSemantics$ui_release(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/semantics/SemanticsEntity;
    .locals 4
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/semantics/SemanticsEntity;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/compose/ui/semantics/SemanticsEntity;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "predicate"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->getLayoutNodeWrapper()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    move-object v1, p0

    .line 11
    :goto_0
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    :goto_1
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_0
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeEntity;->getNext()Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroidx/compose/ui/semantics/SemanticsEntity;

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getWrapped$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getEntities-CHwCgZE()[Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    sget-object v2, Landroidx/compose/ui/node/EntityList;->Companion:Landroidx/compose/ui/node/EntityList$Companion;

    .line 47
    .line 48
    invoke-virtual {v2}, Landroidx/compose/ui/node/EntityList$Companion;->getSemanticsEntityType-EEbPh1w()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-static {v1, v2}, Landroidx/compose/ui/node/EntityList;->head-0OSVbXo([Landroidx/compose/ui/node/LayoutNodeEntity;I)Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Landroidx/compose/ui/semantics/SemanticsEntity;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    move-object v1, v2

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    return-object v2
.end method

.method public onAttach()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->onAttach()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getOwner$ui_release()Landroidx/compose/ui/node/Owner;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->onSemanticsChange()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->onDetach()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getOwner$ui_release()Landroidx/compose/ui/node/Owner;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->onSemanticsChange()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " id: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->getModifier()Landroidx/compose/ui/Modifier;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroidx/compose/ui/semantics/SemanticsModifier;

    .line 23
    .line 24
    invoke-interface {v1}, Landroidx/compose/ui/semantics/SemanticsModifier;->getId()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, " config: "

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->getModifier()Landroidx/compose/ui/Modifier;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroidx/compose/ui/semantics/SemanticsModifier;

    .line 41
    .line 42
    invoke-interface {v1}, Landroidx/compose/ui/semantics/SemanticsModifier;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0
.end method

.method public final touchBoundsInRoot()Landroidx/compose/ui/geometry/Rect;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->isAttached()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-direct {p0}, Landroidx/compose/ui/semantics/SemanticsEntity;->getUseMinimumTouchTarget()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->getLayoutNodeWrapper()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->boundsInRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0

    .line 29
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->getLayoutNodeWrapper()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->touchBoundsInRoot()Landroidx/compose/ui/geometry/Rect;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method
