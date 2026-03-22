.class public final Landroidx/compose/material/Strings_androidKt;
.super Ljava/lang/Object;
.source "Strings.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final getString-4foXLRw(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;
    .locals 2
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const p2, -0x2b4f9f6b

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalContext()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    check-cast p2, Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    sget-object v0, Landroidx/compose/material/Strings;->Companion:Landroidx/compose/material/Strings$Companion;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/compose/material/Strings$Companion;->getNavigationMenu-UdPEhr4()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-static {p0, v1}, Landroidx/compose/material/Strings;->equals-impl0(II)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    sget p0, Landroidx/compose/ui/R$string;->navigation_menu:I

    .line 41
    .line 42
    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    const-string p2, "resources.getString(R.string.navigation_menu)"

    .line 47
    .line 48
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/material/Strings$Companion;->getCloseDrawer-UdPEhr4()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-static {p0, v1}, Landroidx/compose/material/Strings;->equals-impl0(II)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    sget p0, Landroidx/compose/ui/R$string;->close_drawer:I

    .line 64
    .line 65
    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    const-string p2, "resources.getString(R.string.close_drawer)"

    .line 70
    .line 71
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_0

    .line 75
    .line 76
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/material/Strings$Companion;->getCloseSheet-UdPEhr4()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-static {p0, v1}, Landroidx/compose/material/Strings;->equals-impl0(II)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_2

    .line 85
    .line 86
    sget p0, Landroidx/compose/ui/R$string;->close_sheet:I

    .line 87
    .line 88
    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    const-string p2, "resources.getString(R.string.close_sheet)"

    .line 93
    .line 94
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/material/Strings$Companion;->getDefaultErrorMessage-UdPEhr4()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    invoke-static {p0, v1}, Landroidx/compose/material/Strings;->equals-impl0(II)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_3

    .line 107
    .line 108
    sget p0, Landroidx/compose/ui/R$string;->default_error_message:I

    .line 109
    .line 110
    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    const-string p2, "resources.getString(R.st\u2026ng.default_error_message)"

    .line 115
    .line 116
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/material/Strings$Companion;->getExposedDropdownMenu-UdPEhr4()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    invoke-static {p0, v1}, Landroidx/compose/material/Strings;->equals-impl0(II)Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_4

    .line 129
    .line 130
    sget p0, Landroidx/compose/ui/R$string;->dropdown_menu:I

    .line 131
    .line 132
    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    const-string p2, "resources.getString(R.string.dropdown_menu)"

    .line 137
    .line 138
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/material/Strings$Companion;->getSliderRangeStart-UdPEhr4()I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    invoke-static {p0, v1}, Landroidx/compose/material/Strings;->equals-impl0(II)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_5

    .line 151
    .line 152
    sget p0, Landroidx/compose/ui/R$string;->range_start:I

    .line 153
    .line 154
    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    const-string p2, "resources.getString(R.string.range_start)"

    .line 159
    .line 160
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_5
    invoke-virtual {v0}, Landroidx/compose/material/Strings$Companion;->getSliderRangeEnd-UdPEhr4()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    invoke-static {p0, v0}, Landroidx/compose/material/Strings;->equals-impl0(II)Z

    .line 169
    .line 170
    .line 171
    move-result p0

    .line 172
    if-eqz p0, :cond_6

    .line 173
    .line 174
    sget p0, Landroidx/compose/ui/R$string;->range_end:I

    .line 175
    .line 176
    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    const-string p2, "resources.getString(R.string.range_end)"

    .line 181
    .line 182
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    goto :goto_0

    .line 186
    :cond_6
    const-string p0, ""

    .line 187
    .line 188
    :goto_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 189
    .line 190
    .line 191
    return-object p0
.end method
