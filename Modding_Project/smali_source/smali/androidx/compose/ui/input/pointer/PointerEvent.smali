.class public final Landroidx/compose/ui/input/pointer/PointerEvent;
.super Ljava/lang/Object;
.source "PointerEvent.android.kt"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final buttons:I

.field private final changes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final internalPointerEvent:Landroidx/compose/ui/input/pointer/InternalPointerEvent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final keyboardModifiers:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;)V"
        }
    .end annotation

    const-string v0, "changes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0}, Landroidx/compose/ui/input/pointer/PointerEvent;-><init>(Ljava/util/List;Landroidx/compose/ui/input/pointer/InternalPointerEvent;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroidx/compose/ui/input/pointer/InternalPointerEvent;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/input/pointer/InternalPointerEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;",
            "Landroidx/compose/ui/input/pointer/InternalPointerEvent;",
            ")V"
        }
    .end annotation

    const-string v0, "changes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 3
    iput-object p2, p0, Landroidx/compose/ui/input/pointer/PointerEvent;->internalPointerEvent:Landroidx/compose/ui/input/pointer/InternalPointerEvent;

    .line 4
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerEvent;->getMotionEvent$ui_release()Landroid/view/MotionEvent;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-static {p1}, Landroidx/compose/ui/input/pointer/PointerButtons;->constructor-impl(I)I

    move-result p1

    iput p1, p0, Landroidx/compose/ui/input/pointer/PointerEvent;->buttons:I

    .line 5
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerEvent;->getMotionEvent$ui_release()Landroid/view/MotionEvent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result p2

    :cond_1
    invoke-static {p2}, Landroidx/compose/ui/input/pointer/PointerKeyboardModifiers;->constructor-impl(I)I

    move-result p1

    iput p1, p0, Landroidx/compose/ui/input/pointer/PointerEvent;->keyboardModifiers:I

    .line 6
    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/PointerEvent;->calculatePointerEventType-7fucELk()I

    move-result p1

    iput p1, p0, Landroidx/compose/ui/input/pointer/PointerEvent;->type:I

    return-void
.end method

.method private final calculatePointerEventType-7fucELk()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerEvent;->getMotionEvent$ui_release()Landroid/view/MotionEvent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getUnknown-7fucELk()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    goto :goto_0

    .line 29
    :pswitch_0
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getExit-7fucELk()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    goto :goto_0

    .line 36
    :pswitch_1
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getEnter-7fucELk()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    goto :goto_0

    .line 43
    :pswitch_2
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getScroll-7fucELk()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    :pswitch_3
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getMove-7fucELk()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    :pswitch_4
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getRelease-7fucELk()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    :pswitch_5
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getPress-7fucELk()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    :goto_0
    return v0

    .line 71
    :cond_3
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    const/4 v2, 0x0

    .line 78
    :goto_1
    if-ge v2, v1, :cond_6

    .line 79
    .line 80
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 85
    .line 86
    invoke-static {v3}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-eqz v4, :cond_4

    .line 91
    .line 92
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    .line 93
    .line 94
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getRelease-7fucELk()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    return v0

    .line 99
    :cond_4
    invoke-static {v3}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToDownIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_5

    .line 104
    .line 105
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    .line 106
    .line 107
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getPress-7fucELk()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    return v0

    .line 112
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_6
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    .line 116
    .line 117
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getMove-7fucELk()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    return v0

    .line 122
    nop

    .line 123
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/util/List;Landroid/view/MotionEvent;)Landroidx/compose/ui/input/pointer/PointerEvent;
    .locals 27
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;",
            "Landroid/view/MotionEvent;",
            ")",
            "Landroidx/compose/ui/input/pointer/PointerEvent;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "changes"

    .line 8
    .line 9
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    new-instance v2, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-direct {v2, v1, v3}, Landroidx/compose/ui/input/pointer/PointerEvent;-><init>(Ljava/util/List;Landroidx/compose/ui/input/pointer/InternalPointerEvent;)V

    .line 18
    .line 19
    .line 20
    goto/16 :goto_3

    .line 21
    .line 22
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/PointerEvent;->getMotionEvent$ui_release()Landroid/view/MotionEvent;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    new-instance v2, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 33
    .line 34
    iget-object v3, v0, Landroidx/compose/ui/input/pointer/PointerEvent;->internalPointerEvent:Landroidx/compose/ui/input/pointer/InternalPointerEvent;

    .line 35
    .line 36
    invoke-direct {v2, v1, v3}, Landroidx/compose/ui/input/pointer/PointerEvent;-><init>(Ljava/util/List;Landroidx/compose/ui/input/pointer/InternalPointerEvent;)V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_3

    .line 40
    .line 41
    :cond_1
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 42
    .line 43
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    const/4 v6, 0x0

    .line 51
    :goto_0
    if-ge v6, v4, :cond_2

    .line 52
    .line 53
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 58
    .line 59
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 60
    .line 61
    .line 62
    move-result-wide v8

    .line 63
    invoke-static {v8, v9}, Landroidx/compose/ui/input/pointer/PointerId;->box-impl(J)Landroidx/compose/ui/input/pointer/PointerId;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    invoke-interface {v3, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    add-int/lit8 v6, v6, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    .line 81
    .line 82
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    const/4 v7, 0x0

    .line 87
    :goto_1
    if-ge v7, v6, :cond_4

    .line 88
    .line 89
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 94
    .line 95
    new-instance v14, Landroidx/compose/ui/input/pointer/PointerInputEventData;

    .line 96
    .line 97
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 98
    .line 99
    .line 100
    move-result-wide v10

    .line 101
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getUptimeMillis()J

    .line 102
    .line 103
    .line 104
    move-result-wide v12

    .line 105
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    .line 106
    .line 107
    .line 108
    move-result-wide v15

    .line 109
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    .line 110
    .line 111
    .line 112
    move-result-wide v17

    .line 113
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    .line 114
    .line 115
    .line 116
    move-result v19

    .line 117
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getType-T8wyACA()I

    .line 118
    .line 119
    .line 120
    move-result v20

    .line 121
    iget-object v9, v0, Landroidx/compose/ui/input/pointer/PointerEvent;->internalPointerEvent:Landroidx/compose/ui/input/pointer/InternalPointerEvent;

    .line 122
    .line 123
    move/from16 v26, v6

    .line 124
    .line 125
    if-eqz v9, :cond_3

    .line 126
    .line 127
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 128
    .line 129
    .line 130
    move-result-wide v5

    .line 131
    invoke-virtual {v9, v5, v6}, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->issuesEnterExitEvent-0FcD4WY(J)Z

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    const/4 v6, 0x1

    .line 136
    if-ne v5, v6, :cond_3

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_3
    const/4 v6, 0x0

    .line 140
    :goto_2
    const/16 v24, 0x180

    .line 141
    .line 142
    const/16 v25, 0x0

    .line 143
    .line 144
    const/16 v21, 0x0

    .line 145
    .line 146
    const-wide/16 v22, 0x0

    .line 147
    .line 148
    move-object v9, v14

    .line 149
    move-object v5, v14

    .line 150
    move-wide v14, v15

    .line 151
    move-wide/from16 v16, v17

    .line 152
    .line 153
    move/from16 v18, v19

    .line 154
    .line 155
    move/from16 v19, v20

    .line 156
    .line 157
    move/from16 v20, v6

    .line 158
    .line 159
    invoke-direct/range {v9 .. v25}, Landroidx/compose/ui/input/pointer/PointerInputEventData;-><init>(JJJJZIZLjava/util/List;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 160
    .line 161
    .line 162
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    add-int/lit8 v7, v7, 0x1

    .line 166
    .line 167
    move/from16 v6, v26

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_4
    new-instance v5, Landroidx/compose/ui/input/pointer/PointerInputEvent;

    .line 171
    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 173
    .line 174
    .line 175
    move-result-wide v6

    .line 176
    invoke-direct {v5, v6, v7, v4, v2}, Landroidx/compose/ui/input/pointer/PointerInputEvent;-><init>(JLjava/util/List;Landroid/view/MotionEvent;)V

    .line 177
    .line 178
    .line 179
    new-instance v2, Landroidx/compose/ui/input/pointer/InternalPointerEvent;

    .line 180
    .line 181
    invoke-direct {v2, v3, v5}, Landroidx/compose/ui/input/pointer/InternalPointerEvent;-><init>(Ljava/util/Map;Landroidx/compose/ui/input/pointer/PointerInputEvent;)V

    .line 182
    .line 183
    .line 184
    new-instance v3, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 185
    .line 186
    invoke-direct {v3, v1, v2}, Landroidx/compose/ui/input/pointer/PointerEvent;-><init>(Ljava/util/List;Landroidx/compose/ui/input/pointer/InternalPointerEvent;)V

    .line 187
    .line 188
    .line 189
    move-object v2, v3

    .line 190
    :goto_3
    return-object v2
.end method

.method public final getButtons-ry648PA()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/input/pointer/PointerEvent;->buttons:I

    .line 2
    .line 3
    return v0
.end method

.method public final getChanges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInternalPointerEvent$ui_release()Landroidx/compose/ui/input/pointer/InternalPointerEvent;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerEvent;->internalPointerEvent:Landroidx/compose/ui/input/pointer/InternalPointerEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getKeyboardModifiers-k7X9c1A()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/input/pointer/PointerEvent;->keyboardModifiers:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMotionEvent$ui_release()Landroid/view/MotionEvent;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerEvent;->internalPointerEvent:Landroidx/compose/ui/input/pointer/InternalPointerEvent;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->getMotionEvent()Landroid/view/MotionEvent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public final getType-7fucELk()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/input/pointer/PointerEvent;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public final setType-EhbLWgg$ui_release(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/input/pointer/PointerEvent;->type:I

    .line 2
    .line 3
    return-void
.end method
