.class public final Landroidx/compose/ui/focus/FocusOrderModifierKt;
.super Ljava/lang/Object;
.source "FocusOrderModifier.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/FocusOrderModifierKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final customFocusSearch--OM-vw8(Landroidx/compose/ui/focus/FocusModifier;ILandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/focus/FocusRequester;
    .locals 5
    .param p0    # Landroidx/compose/ui/focus/FocusModifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "$this$customFocusSearch"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "layoutDirection"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getNext-dhqQ-8s()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->getFocusProperties()Landroidx/compose/ui/focus/FocusProperties;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-interface {p0}, Landroidx/compose/ui/focus/FocusProperties;->getNext()Landroidx/compose/ui/focus/FocusRequester;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    goto/16 :goto_4

    .line 32
    .line 33
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getPrevious-dhqQ-8s()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->getFocusProperties()Landroidx/compose/ui/focus/FocusProperties;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-interface {p0}, Landroidx/compose/ui/focus/FocusProperties;->getPrevious()Landroidx/compose/ui/focus/FocusRequester;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    goto/16 :goto_4

    .line 52
    .line 53
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getUp-dhqQ-8s()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->getFocusProperties()Landroidx/compose/ui/focus/FocusProperties;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-interface {p0}, Landroidx/compose/ui/focus/FocusProperties;->getUp()Landroidx/compose/ui/focus/FocusRequester;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    goto/16 :goto_4

    .line 72
    .line 73
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getDown-dhqQ-8s()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->getFocusProperties()Landroidx/compose/ui/focus/FocusProperties;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-interface {p0}, Landroidx/compose/ui/focus/FocusProperties;->getDown()Landroidx/compose/ui/focus/FocusRequester;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    goto/16 :goto_4

    .line 92
    .line 93
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getLeft-dhqQ-8s()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    const/4 v2, 0x0

    .line 102
    const/4 v3, 0x2

    .line 103
    const/4 v4, 0x1

    .line 104
    if-eqz v1, :cond_8

    .line 105
    .line 106
    sget-object p1, Landroidx/compose/ui/focus/FocusOrderModifierKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 107
    .line 108
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    aget p1, p1, p2

    .line 113
    .line 114
    if-eq p1, v4, :cond_5

    .line 115
    .line 116
    if-ne p1, v3, :cond_4

    .line 117
    .line 118
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->getFocusProperties()Landroidx/compose/ui/focus/FocusProperties;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-interface {p1}, Landroidx/compose/ui/focus/FocusProperties;->getEnd()Landroidx/compose/ui/focus/FocusRequester;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    goto :goto_0

    .line 127
    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 128
    .line 129
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 130
    .line 131
    .line 132
    throw p0

    .line 133
    :cond_5
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->getFocusProperties()Landroidx/compose/ui/focus/FocusProperties;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-interface {p1}, Landroidx/compose/ui/focus/FocusProperties;->getStart()Landroidx/compose/ui/focus/FocusRequester;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    :goto_0
    sget-object p2, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    .line 142
    .line 143
    invoke-virtual {p2}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result p2

    .line 151
    if-nez p2, :cond_6

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_6
    move-object p1, v2

    .line 155
    :goto_1
    if-nez p1, :cond_7

    .line 156
    .line 157
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->getFocusProperties()Landroidx/compose/ui/focus/FocusProperties;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-interface {p0}, Landroidx/compose/ui/focus/FocusProperties;->getLeft()Landroidx/compose/ui/focus/FocusRequester;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    goto/16 :goto_4

    .line 166
    .line 167
    :cond_7
    move-object p0, p1

    .line 168
    goto :goto_4

    .line 169
    :cond_8
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getRight-dhqQ-8s()I

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-eqz v1, :cond_c

    .line 178
    .line 179
    sget-object p1, Landroidx/compose/ui/focus/FocusOrderModifierKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 180
    .line 181
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 182
    .line 183
    .line 184
    move-result p2

    .line 185
    aget p1, p1, p2

    .line 186
    .line 187
    if-eq p1, v4, :cond_a

    .line 188
    .line 189
    if-ne p1, v3, :cond_9

    .line 190
    .line 191
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->getFocusProperties()Landroidx/compose/ui/focus/FocusProperties;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-interface {p1}, Landroidx/compose/ui/focus/FocusProperties;->getStart()Landroidx/compose/ui/focus/FocusRequester;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    goto :goto_2

    .line 200
    :cond_9
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 201
    .line 202
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 203
    .line 204
    .line 205
    throw p0

    .line 206
    :cond_a
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->getFocusProperties()Landroidx/compose/ui/focus/FocusProperties;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-interface {p1}, Landroidx/compose/ui/focus/FocusProperties;->getEnd()Landroidx/compose/ui/focus/FocusRequester;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    :goto_2
    sget-object p2, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    .line 215
    .line 216
    invoke-virtual {p2}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result p2

    .line 224
    if-nez p2, :cond_b

    .line 225
    .line 226
    goto :goto_3

    .line 227
    :cond_b
    move-object p1, v2

    .line 228
    :goto_3
    if-nez p1, :cond_7

    .line 229
    .line 230
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusModifier;->getFocusProperties()Landroidx/compose/ui/focus/FocusProperties;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    invoke-interface {p0}, Landroidx/compose/ui/focus/FocusProperties;->getRight()Landroidx/compose/ui/focus/FocusRequester;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    goto :goto_4

    .line 239
    :cond_c
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getIn-dhqQ-8s()I

    .line 240
    .line 241
    .line 242
    move-result p0

    .line 243
    invoke-static {p1, p0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 244
    .line 245
    .line 246
    move-result p0

    .line 247
    if-eqz p0, :cond_d

    .line 248
    .line 249
    sget-object p0, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    .line 250
    .line 251
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    .line 252
    .line 253
    .line 254
    move-result-object p0

    .line 255
    goto :goto_4

    .line 256
    :cond_d
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getOut-dhqQ-8s()I

    .line 257
    .line 258
    .line 259
    move-result p0

    .line 260
    invoke-static {p1, p0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    .line 261
    .line 262
    .line 263
    move-result p0

    .line 264
    if-eqz p0, :cond_e

    .line 265
    .line 266
    sget-object p0, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    .line 267
    .line 268
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    .line 269
    .line 270
    .line 271
    move-result-object p0

    .line 272
    :goto_4
    return-object p0

    .line 273
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 274
    .line 275
    const-string p1, "invalid FocusDirection"

    .line 276
    .line 277
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    throw p0
.end method

.method public static final focusOrder(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;
    .locals 1
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/focus/FocusRequester;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "focusRequester"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusRequesterModifierKt;->focusRequester(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final focusOrder(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
    .locals 1
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/focus/FocusRequester;
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
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/focus/FocusRequester;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/focus/FocusOrder;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .annotation runtime Lms/c;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "focusRequester"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "focusOrderReceiver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusRequesterModifierKt;->focusRequester(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    .line 4
    new-instance p1, Landroidx/compose/ui/focus/FocusOrderToProperties;

    invoke-direct {p1, p2}, Landroidx/compose/ui/focus/FocusOrderToProperties;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusPropertiesKt;->focusProperties(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final focusOrder(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
    .locals 1
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/focus/FocusOrder;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .annotation runtime Lms/c;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "focusOrderReceiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroidx/compose/ui/focus/FocusOrderToProperties;

    invoke-direct {v0, p1}, Landroidx/compose/ui/focus/FocusOrderToProperties;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {p0, v0}, Landroidx/compose/ui/focus/FocusPropertiesKt;->focusProperties(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
