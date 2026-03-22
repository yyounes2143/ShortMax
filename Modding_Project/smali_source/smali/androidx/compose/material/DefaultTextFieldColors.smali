.class final Landroidx/compose/material/DefaultTextFieldColors;
.super Ljava/lang/Object;
.source "TextFieldDefaults.kt"

# interfaces
.implements Landroidx/compose/material/TextFieldColors;


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final backgroundColor:J

.field private final cursorColor:J

.field private final disabledIndicatorColor:J

.field private final disabledLabelColor:J

.field private final disabledLeadingIconColor:J

.field private final disabledPlaceholderColor:J

.field private final disabledTextColor:J

.field private final disabledTrailingIconColor:J

.field private final errorCursorColor:J

.field private final errorIndicatorColor:J

.field private final errorLabelColor:J

.field private final errorLeadingIconColor:J

.field private final errorTrailingIconColor:J

.field private final focusedIndicatorColor:J

.field private final focusedLabelColor:J

.field private final leadingIconColor:J

.field private final placeholderColor:J

.field private final textColor:J

.field private final trailingIconColor:J

.field private final unfocusedIndicatorColor:J

.field private final unfocusedLabelColor:J


# direct methods
.method private constructor <init>(JJJJJJJJJJJJJJJJJJJJJ)V
    .locals 3

    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 3
    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->textColor:J

    move-wide v1, p3

    .line 4
    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->disabledTextColor:J

    move-wide v1, p5

    .line 5
    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->cursorColor:J

    move-wide v1, p7

    .line 6
    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->errorCursorColor:J

    move-wide v1, p9

    .line 7
    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->focusedIndicatorColor:J

    move-wide v1, p11

    .line 8
    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->unfocusedIndicatorColor:J

    move-wide/from16 v1, p13

    .line 9
    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->errorIndicatorColor:J

    move-wide/from16 v1, p15

    .line 10
    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->disabledIndicatorColor:J

    move-wide/from16 v1, p17

    .line 11
    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->leadingIconColor:J

    move-wide/from16 v1, p19

    .line 12
    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->disabledLeadingIconColor:J

    move-wide/from16 v1, p21

    .line 13
    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->errorLeadingIconColor:J

    move-wide/from16 v1, p23

    .line 14
    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->trailingIconColor:J

    move-wide/from16 v1, p25

    .line 15
    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->disabledTrailingIconColor:J

    move-wide/from16 v1, p27

    .line 16
    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->errorTrailingIconColor:J

    move-wide/from16 v1, p29

    .line 17
    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->backgroundColor:J

    move-wide/from16 v1, p31

    .line 18
    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->focusedLabelColor:J

    move-wide/from16 v1, p33

    .line 19
    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->unfocusedLabelColor:J

    move-wide/from16 v1, p35

    .line 20
    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->disabledLabelColor:J

    move-wide/from16 v1, p37

    .line 21
    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->errorLabelColor:J

    move-wide/from16 v1, p39

    .line 22
    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->placeholderColor:J

    move-wide/from16 v1, p41

    .line 23
    iput-wide v1, v0, Landroidx/compose/material/DefaultTextFieldColors;->disabledPlaceholderColor:J

    return-void
.end method

.method public synthetic constructor <init>(JJJJJJJJJJJJJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p42}, Landroidx/compose/material/DefaultTextFieldColors;-><init>(JJJJJJJJJJJJJJJJJJJJJ)V

    return-void
.end method

.method private static final indicatorColor$lambda-0(Landroidx/compose/runtime/State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static final labelColor$lambda-1(Landroidx/compose/runtime/State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method


# virtual methods
.method public backgroundColor(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 2
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
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
    const p1, -0x54df94fd

    .line 2
    .line 3
    .line 4
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    iget-wide v0, p0, Landroidx/compose/material/DefaultTextFieldColors;->backgroundColor:J

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 p3, 0x0

    .line 14
    invoke-static {p1, p2, p3}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 19
    .line 20
    .line 21
    return-object p1
.end method

.method public cursorColor(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 2
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
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
    const p3, -0x5636a7d5

    .line 2
    .line 3
    .line 4
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Landroidx/compose/material/DefaultTextFieldColors;->errorCursorColor:J

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-wide v0, p0, Landroidx/compose/material/DefaultTextFieldColors;->cursorColor:J

    .line 13
    .line 14
    :goto_0
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 p3, 0x0

    .line 19
    invoke-static {p1, p2, p3}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 24
    .line 25
    .line 26
    return-object p1
.end method

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
    if-eqz p1, :cond_17

    .line 7
    .line 8
    const-class v2, Landroidx/compose/material/DefaultTextFieldColors;

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
    goto/16 :goto_0

    .line 29
    .line 30
    :cond_1
    check-cast p1, Landroidx/compose/material/DefaultTextFieldColors;

    .line 31
    .line 32
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->textColor:J

    .line 33
    .line 34
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->textColor:J

    .line 35
    .line 36
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_2

    .line 41
    .line 42
    return v1

    .line 43
    :cond_2
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->disabledTextColor:J

    .line 44
    .line 45
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->disabledTextColor:J

    .line 46
    .line 47
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_3

    .line 52
    .line 53
    return v1

    .line 54
    :cond_3
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->cursorColor:J

    .line 55
    .line 56
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->cursorColor:J

    .line 57
    .line 58
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_4

    .line 63
    .line 64
    return v1

    .line 65
    :cond_4
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->errorCursorColor:J

    .line 66
    .line 67
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->errorCursorColor:J

    .line 68
    .line 69
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-nez v2, :cond_5

    .line 74
    .line 75
    return v1

    .line 76
    :cond_5
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->focusedIndicatorColor:J

    .line 77
    .line 78
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->focusedIndicatorColor:J

    .line 79
    .line 80
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-nez v2, :cond_6

    .line 85
    .line 86
    return v1

    .line 87
    :cond_6
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->unfocusedIndicatorColor:J

    .line 88
    .line 89
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->unfocusedIndicatorColor:J

    .line 90
    .line 91
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-nez v2, :cond_7

    .line 96
    .line 97
    return v1

    .line 98
    :cond_7
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->errorIndicatorColor:J

    .line 99
    .line 100
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->errorIndicatorColor:J

    .line 101
    .line 102
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-nez v2, :cond_8

    .line 107
    .line 108
    return v1

    .line 109
    :cond_8
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->disabledIndicatorColor:J

    .line 110
    .line 111
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->disabledIndicatorColor:J

    .line 112
    .line 113
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-nez v2, :cond_9

    .line 118
    .line 119
    return v1

    .line 120
    :cond_9
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->leadingIconColor:J

    .line 121
    .line 122
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->leadingIconColor:J

    .line 123
    .line 124
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-nez v2, :cond_a

    .line 129
    .line 130
    return v1

    .line 131
    :cond_a
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->disabledLeadingIconColor:J

    .line 132
    .line 133
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->disabledLeadingIconColor:J

    .line 134
    .line 135
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-nez v2, :cond_b

    .line 140
    .line 141
    return v1

    .line 142
    :cond_b
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->errorLeadingIconColor:J

    .line 143
    .line 144
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->errorLeadingIconColor:J

    .line 145
    .line 146
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-nez v2, :cond_c

    .line 151
    .line 152
    return v1

    .line 153
    :cond_c
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->trailingIconColor:J

    .line 154
    .line 155
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->trailingIconColor:J

    .line 156
    .line 157
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-nez v2, :cond_d

    .line 162
    .line 163
    return v1

    .line 164
    :cond_d
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->disabledTrailingIconColor:J

    .line 165
    .line 166
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->disabledTrailingIconColor:J

    .line 167
    .line 168
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-nez v2, :cond_e

    .line 173
    .line 174
    return v1

    .line 175
    :cond_e
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->errorTrailingIconColor:J

    .line 176
    .line 177
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->errorTrailingIconColor:J

    .line 178
    .line 179
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    if-nez v2, :cond_f

    .line 184
    .line 185
    return v1

    .line 186
    :cond_f
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->backgroundColor:J

    .line 187
    .line 188
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->backgroundColor:J

    .line 189
    .line 190
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    if-nez v2, :cond_10

    .line 195
    .line 196
    return v1

    .line 197
    :cond_10
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->focusedLabelColor:J

    .line 198
    .line 199
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->focusedLabelColor:J

    .line 200
    .line 201
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-nez v2, :cond_11

    .line 206
    .line 207
    return v1

    .line 208
    :cond_11
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->unfocusedLabelColor:J

    .line 209
    .line 210
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->unfocusedLabelColor:J

    .line 211
    .line 212
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    if-nez v2, :cond_12

    .line 217
    .line 218
    return v1

    .line 219
    :cond_12
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->disabledLabelColor:J

    .line 220
    .line 221
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->disabledLabelColor:J

    .line 222
    .line 223
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    if-nez v2, :cond_13

    .line 228
    .line 229
    return v1

    .line 230
    :cond_13
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->errorLabelColor:J

    .line 231
    .line 232
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->errorLabelColor:J

    .line 233
    .line 234
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    if-nez v2, :cond_14

    .line 239
    .line 240
    return v1

    .line 241
    :cond_14
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->placeholderColor:J

    .line 242
    .line 243
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->placeholderColor:J

    .line 244
    .line 245
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    if-nez v2, :cond_15

    .line 250
    .line 251
    return v1

    .line 252
    :cond_15
    iget-wide v2, p0, Landroidx/compose/material/DefaultTextFieldColors;->disabledPlaceholderColor:J

    .line 253
    .line 254
    iget-wide v4, p1, Landroidx/compose/material/DefaultTextFieldColors;->disabledPlaceholderColor:J

    .line 255
    .line 256
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 257
    .line 258
    .line 259
    move-result p1

    .line 260
    if-nez p1, :cond_16

    .line 261
    .line 262
    return v1

    .line 263
    :cond_16
    return v0

    .line 264
    :cond_17
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-wide v0, p0, Landroidx/compose/material/DefaultTextFieldColors;->textColor:J

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
    iget-wide v1, p0, Landroidx/compose/material/DefaultTextFieldColors;->disabledTextColor:J

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
    iget-wide v1, p0, Landroidx/compose/material/DefaultTextFieldColors;->cursorColor:J

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
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-wide v1, p0, Landroidx/compose/material/DefaultTextFieldColors;->errorCursorColor:J

    .line 28
    .line 29
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget-wide v1, p0, Landroidx/compose/material/DefaultTextFieldColors;->focusedIndicatorColor:J

    .line 37
    .line 38
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-wide v1, p0, Landroidx/compose/material/DefaultTextFieldColors;->unfocusedIndicatorColor:J

    .line 46
    .line 47
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/2addr v0, v1

    .line 52
    mul-int/lit8 v0, v0, 0x1f

    .line 53
    .line 54
    iget-wide v1, p0, Landroidx/compose/material/DefaultTextFieldColors;->errorIndicatorColor:J

    .line 55
    .line 56
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    add-int/2addr v0, v1

    .line 61
    mul-int/lit8 v0, v0, 0x1f

    .line 62
    .line 63
    iget-wide v1, p0, Landroidx/compose/material/DefaultTextFieldColors;->disabledIndicatorColor:J

    .line 64
    .line 65
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    add-int/2addr v0, v1

    .line 70
    mul-int/lit8 v0, v0, 0x1f

    .line 71
    .line 72
    iget-wide v1, p0, Landroidx/compose/material/DefaultTextFieldColors;->leadingIconColor:J

    .line 73
    .line 74
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    add-int/2addr v0, v1

    .line 79
    mul-int/lit8 v0, v0, 0x1f

    .line 80
    .line 81
    iget-wide v1, p0, Landroidx/compose/material/DefaultTextFieldColors;->disabledLeadingIconColor:J

    .line 82
    .line 83
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    add-int/2addr v0, v1

    .line 88
    mul-int/lit8 v0, v0, 0x1f

    .line 89
    .line 90
    iget-wide v1, p0, Landroidx/compose/material/DefaultTextFieldColors;->errorLeadingIconColor:J

    .line 91
    .line 92
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    add-int/2addr v0, v1

    .line 97
    mul-int/lit8 v0, v0, 0x1f

    .line 98
    .line 99
    iget-wide v1, p0, Landroidx/compose/material/DefaultTextFieldColors;->trailingIconColor:J

    .line 100
    .line 101
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    add-int/2addr v0, v1

    .line 106
    mul-int/lit8 v0, v0, 0x1f

    .line 107
    .line 108
    iget-wide v1, p0, Landroidx/compose/material/DefaultTextFieldColors;->disabledTrailingIconColor:J

    .line 109
    .line 110
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    add-int/2addr v0, v1

    .line 115
    mul-int/lit8 v0, v0, 0x1f

    .line 116
    .line 117
    iget-wide v1, p0, Landroidx/compose/material/DefaultTextFieldColors;->errorTrailingIconColor:J

    .line 118
    .line 119
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    add-int/2addr v0, v1

    .line 124
    mul-int/lit8 v0, v0, 0x1f

    .line 125
    .line 126
    iget-wide v1, p0, Landroidx/compose/material/DefaultTextFieldColors;->backgroundColor:J

    .line 127
    .line 128
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    add-int/2addr v0, v1

    .line 133
    mul-int/lit8 v0, v0, 0x1f

    .line 134
    .line 135
    iget-wide v1, p0, Landroidx/compose/material/DefaultTextFieldColors;->focusedLabelColor:J

    .line 136
    .line 137
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    add-int/2addr v0, v1

    .line 142
    mul-int/lit8 v0, v0, 0x1f

    .line 143
    .line 144
    iget-wide v1, p0, Landroidx/compose/material/DefaultTextFieldColors;->unfocusedLabelColor:J

    .line 145
    .line 146
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    add-int/2addr v0, v1

    .line 151
    mul-int/lit8 v0, v0, 0x1f

    .line 152
    .line 153
    iget-wide v1, p0, Landroidx/compose/material/DefaultTextFieldColors;->disabledLabelColor:J

    .line 154
    .line 155
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    add-int/2addr v0, v1

    .line 160
    mul-int/lit8 v0, v0, 0x1f

    .line 161
    .line 162
    iget-wide v1, p0, Landroidx/compose/material/DefaultTextFieldColors;->errorLabelColor:J

    .line 163
    .line 164
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    add-int/2addr v0, v1

    .line 169
    mul-int/lit8 v0, v0, 0x1f

    .line 170
    .line 171
    iget-wide v1, p0, Landroidx/compose/material/DefaultTextFieldColors;->placeholderColor:J

    .line 172
    .line 173
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    add-int/2addr v0, v1

    .line 178
    mul-int/lit8 v0, v0, 0x1f

    .line 179
    .line 180
    iget-wide v1, p0, Landroidx/compose/material/DefaultTextFieldColors;->disabledPlaceholderColor:J

    .line 181
    .line 182
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    add-int/2addr v0, v1

    .line 187
    return v0
.end method

.method public indicatorColor(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 8
    .param p3    # Landroidx/compose/foundation/interaction/InteractionSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
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
    const-string v0, "interactionSource"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x3b86960b

    .line 7
    .line 8
    .line 9
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x6

    .line 13
    shr-int/2addr p5, v0

    .line 14
    and-int/lit8 p5, p5, 0xe

    .line 15
    .line 16
    invoke-static {p3, p4, p5}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->collectIsFocusedAsState(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    iget-wide p2, p0, Landroidx/compose/material/DefaultTextFieldColors;->disabledIndicatorColor:J

    .line 23
    .line 24
    :goto_0
    move-wide v1, p2

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    if-eqz p2, :cond_1

    .line 27
    .line 28
    iget-wide p2, p0, Landroidx/compose/material/DefaultTextFieldColors;->errorIndicatorColor:J

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-static {p3}, Landroidx/compose/material/DefaultTextFieldColors;->indicatorColor$lambda-0(Landroidx/compose/runtime/State;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_2

    .line 36
    .line 37
    iget-wide p2, p0, Landroidx/compose/material/DefaultTextFieldColors;->focusedIndicatorColor:J

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget-wide p2, p0, Landroidx/compose/material/DefaultTextFieldColors;->unfocusedIndicatorColor:J

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :goto_1
    const/4 p2, 0x0

    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    const p1, -0x7a70755a

    .line 47
    .line 48
    .line 49
    invoke-interface {p4, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 50
    .line 51
    .line 52
    const/16 p1, 0x96

    .line 53
    .line 54
    const/4 p3, 0x0

    .line 55
    invoke-static {p1, p2, p3, v0, p3}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    const/16 v6, 0x30

    .line 60
    .line 61
    const/4 v7, 0x4

    .line 62
    const/4 v4, 0x0

    .line 63
    move-object v5, p4

    .line 64
    invoke-static/range {v1 .. v7}, Landroidx/compose/animation/SingleValueAnimationKt;->animateColorAsState-KTwxG1Y(JLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    const p1, -0x7a7074f1

    .line 73
    .line 74
    .line 75
    invoke-interface {p4, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 76
    .line 77
    .line 78
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {p1, p4, p2}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 87
    .line 88
    .line 89
    :goto_2
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 90
    .line 91
    .line 92
    return-object p1
.end method

.method public labelColor(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 1
    .param p3    # Landroidx/compose/foundation/interaction/InteractionSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
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
    const-string v0, "interactionSource"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x2b568ab0

    .line 7
    .line 8
    .line 9
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 10
    .line 11
    .line 12
    shr-int/lit8 p5, p5, 0x6

    .line 13
    .line 14
    and-int/lit8 p5, p5, 0xe

    .line 15
    .line 16
    invoke-static {p3, p4, p5}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->collectIsFocusedAsState(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    iget-wide p1, p0, Landroidx/compose/material/DefaultTextFieldColors;->disabledLabelColor:J

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    if-eqz p2, :cond_1

    .line 26
    .line 27
    iget-wide p1, p0, Landroidx/compose/material/DefaultTextFieldColors;->errorLabelColor:J

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-static {p3}, Landroidx/compose/material/DefaultTextFieldColors;->labelColor$lambda-1(Landroidx/compose/runtime/State;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    iget-wide p1, p0, Landroidx/compose/material/DefaultTextFieldColors;->focusedLabelColor:J

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iget-wide p1, p0, Landroidx/compose/material/DefaultTextFieldColors;->unfocusedLabelColor:J

    .line 40
    .line 41
    :goto_0
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const/4 p2, 0x0

    .line 46
    invoke-static {p1, p4, p2}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 51
    .line 52
    .line 53
    return-object p1
.end method

.method public leadingIconColor(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 0
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
    const p4, 0x3c918b3c

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
    iget-wide p1, p0, Landroidx/compose/material/DefaultTextFieldColors;->disabledLeadingIconColor:J

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    if-eqz p2, :cond_1

    .line 13
    .line 14
    iget-wide p1, p0, Landroidx/compose/material/DefaultTextFieldColors;->errorLeadingIconColor:J

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-wide p1, p0, Landroidx/compose/material/DefaultTextFieldColors;->leadingIconColor:J

    .line 18
    .line 19
    :goto_0
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 p2, 0x0

    .line 24
    invoke-static {p1, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 29
    .line 30
    .line 31
    return-object p1
.end method

.method public placeholderColor(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 2
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
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
    const p3, 0xfc885ec

    .line 2
    .line 3
    .line 4
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Landroidx/compose/material/DefaultTextFieldColors;->placeholderColor:J

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-wide v0, p0, Landroidx/compose/material/DefaultTextFieldColors;->disabledPlaceholderColor:J

    .line 13
    .line 14
    :goto_0
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 p3, 0x0

    .line 19
    invoke-static {p1, p2, p3}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 24
    .line 25
    .line 26
    return-object p1
.end method

.method public textColor(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 2
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
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
    const p3, 0x959a82

    .line 2
    .line 3
    .line 4
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Landroidx/compose/material/DefaultTextFieldColors;->textColor:J

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-wide v0, p0, Landroidx/compose/material/DefaultTextFieldColors;->disabledTextColor:J

    .line 13
    .line 14
    :goto_0
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 p3, 0x0

    .line 19
    invoke-static {p1, p2, p3}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 24
    .line 25
    .line 26
    return-object p1
.end method

.method public trailingIconColor(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 0
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
    const p4, 0xd6d2e2e

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
    iget-wide p1, p0, Landroidx/compose/material/DefaultTextFieldColors;->disabledTrailingIconColor:J

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    if-eqz p2, :cond_1

    .line 13
    .line 14
    iget-wide p1, p0, Landroidx/compose/material/DefaultTextFieldColors;->errorTrailingIconColor:J

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-wide p1, p0, Landroidx/compose/material/DefaultTextFieldColors;->trailingIconColor:J

    .line 18
    .line 19
    :goto_0
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 p2, 0x0

    .line 24
    invoke-static {p1, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 29
    .line 30
    .line 31
    return-object p1
.end method
