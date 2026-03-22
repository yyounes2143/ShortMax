.class public final Landroidx/compose/foundation/text/KeyMappingKt$defaultKeyMapping$2$1;
.super Ljava/lang/Object;
.source "KeyMapping.kt"

# interfaces
.implements Landroidx/compose/foundation/text/KeyMapping;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/text/KeyMappingKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $common:Landroidx/compose/foundation/text/KeyMapping;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/KeyMapping;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/text/KeyMappingKt$defaultKeyMapping$2$1;->$common:Landroidx/compose/foundation/text/KeyMapping;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public map-ZmokQxo(Landroid/view/KeyEvent;)Landroidx/compose/foundation/text/KeyCommand;
    .locals 6
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->isShiftPressed-ZmokQxo(Landroid/view/KeyEvent;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->isCtrlPressed-ZmokQxo(Landroid/view/KeyEvent;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    sget-object v0, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getDirectionLeft-EK5gGoQ()J

    .line 26
    .line 27
    .line 28
    move-result-wide v4

    .line 29
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_LEFT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    .line 36
    .line 37
    goto/16 :goto_0

    .line 38
    .line 39
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getDirectionRight-EK5gGoQ()J

    .line 40
    .line 41
    .line 42
    move-result-wide v4

    .line 43
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_RIGHT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getDirectionUp-EK5gGoQ()J

    .line 54
    .line 55
    .line 56
    move-result-wide v4

    .line 57
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_2

    .line 62
    .line 63
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_PREV_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

    .line 64
    .line 65
    goto/16 :goto_0

    .line 66
    .line 67
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getDirectionDown-EK5gGoQ()J

    .line 68
    .line 69
    .line 70
    move-result-wide v4

    .line 71
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_d

    .line 76
    .line 77
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_NEXT_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

    .line 78
    .line 79
    goto/16 :goto_0

    .line 80
    .line 81
    :cond_3
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->isCtrlPressed-ZmokQxo(Landroid/view/KeyEvent;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_b

    .line 86
    .line 87
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    .line 88
    .line 89
    .line 90
    move-result-wide v2

    .line 91
    sget-object v0, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    .line 92
    .line 93
    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getDirectionLeft-EK5gGoQ()J

    .line 94
    .line 95
    .line 96
    move-result-wide v4

    .line 97
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_4

    .line 102
    .line 103
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->LEFT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    .line 104
    .line 105
    goto/16 :goto_0

    .line 106
    .line 107
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getDirectionRight-EK5gGoQ()J

    .line 108
    .line 109
    .line 110
    move-result-wide v4

    .line 111
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-eqz v4, :cond_5

    .line 116
    .line 117
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->RIGHT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    .line 118
    .line 119
    goto/16 :goto_0

    .line 120
    .line 121
    :cond_5
    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getDirectionUp-EK5gGoQ()J

    .line 122
    .line 123
    .line 124
    move-result-wide v4

    .line 125
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-eqz v4, :cond_6

    .line 130
    .line 131
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->PREV_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_6
    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getDirectionDown-EK5gGoQ()J

    .line 135
    .line 136
    .line 137
    move-result-wide v4

    .line 138
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-eqz v4, :cond_7

    .line 143
    .line 144
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->NEXT_PARAGRAPH:Landroidx/compose/foundation/text/KeyCommand;

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_7
    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getH-EK5gGoQ()J

    .line 148
    .line 149
    .line 150
    move-result-wide v4

    .line 151
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    if-eqz v4, :cond_8

    .line 156
    .line 157
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->DELETE_PREV_CHAR:Landroidx/compose/foundation/text/KeyCommand;

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_8
    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getDelete-EK5gGoQ()J

    .line 161
    .line 162
    .line 163
    move-result-wide v4

    .line 164
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    if-eqz v4, :cond_9

    .line 169
    .line 170
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->DELETE_NEXT_WORD:Landroidx/compose/foundation/text/KeyCommand;

    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_9
    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getBackspace-EK5gGoQ()J

    .line 174
    .line 175
    .line 176
    move-result-wide v4

    .line 177
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    if-eqz v4, :cond_a

    .line 182
    .line 183
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->DELETE_PREV_WORD:Landroidx/compose/foundation/text/KeyCommand;

    .line 184
    .line 185
    goto :goto_0

    .line 186
    :cond_a
    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getBackslash-EK5gGoQ()J

    .line 187
    .line 188
    .line 189
    move-result-wide v4

    .line 190
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-eqz v0, :cond_d

    .line 195
    .line 196
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->DESELECT:Landroidx/compose/foundation/text/KeyCommand;

    .line 197
    .line 198
    goto :goto_0

    .line 199
    :cond_b
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->isShiftPressed-ZmokQxo(Landroid/view/KeyEvent;)Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-eqz v0, :cond_d

    .line 204
    .line 205
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    .line 206
    .line 207
    .line 208
    move-result-wide v2

    .line 209
    sget-object v0, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    .line 210
    .line 211
    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getMoveHome-EK5gGoQ()J

    .line 212
    .line 213
    .line 214
    move-result-wide v4

    .line 215
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    if-eqz v4, :cond_c

    .line 220
    .line 221
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_HOME:Landroidx/compose/foundation/text/KeyCommand;

    .line 222
    .line 223
    goto :goto_0

    .line 224
    :cond_c
    invoke-virtual {v0}, Landroidx/compose/foundation/text/MappedKeys;->getMoveEnd-EK5gGoQ()J

    .line 225
    .line 226
    .line 227
    move-result-wide v4

    .line 228
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-eqz v0, :cond_d

    .line 233
    .line 234
    sget-object v1, Landroidx/compose/foundation/text/KeyCommand;->SELECT_END:Landroidx/compose/foundation/text/KeyCommand;

    .line 235
    .line 236
    :cond_d
    :goto_0
    if-nez v1, :cond_e

    .line 237
    .line 238
    iget-object v0, p0, Landroidx/compose/foundation/text/KeyMappingKt$defaultKeyMapping$2$1;->$common:Landroidx/compose/foundation/text/KeyMapping;

    .line 239
    .line 240
    invoke-interface {v0, p1}, Landroidx/compose/foundation/text/KeyMapping;->map-ZmokQxo(Landroid/view/KeyEvent;)Landroidx/compose/foundation/text/KeyCommand;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    :cond_e
    return-object v1
.end method
