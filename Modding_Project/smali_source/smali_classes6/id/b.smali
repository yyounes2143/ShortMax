.class public final Lid/b;
.super Ljava/lang/Object;
.source "SLanguageList.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lid/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/settings/AppLanguage;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 31

    .line 1
    new-instance v0, Lid/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lid/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lid/b;->a:Lid/b;

    .line 7
    .line 8
    new-instance v1, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;

    .line 9
    .line 10
    move-object v7, v1

    .line 11
    const/4 v5, 0x4

    .line 12
    const/4 v6, 0x0

    .line 13
    const-string v2, "en"

    .line 14
    .line 15
    const-string v3, "English"

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 19
    .line 20
    .line 21
    new-instance v9, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;

    .line 22
    .line 23
    move-object v8, v9

    .line 24
    const/4 v13, 0x4

    .line 25
    const/4 v14, 0x0

    .line 26
    const-string/jumbo v10, "zh"

    .line 27
    .line 28
    .line 29
    const-string/jumbo v11, "\u4e2d\u6587\u7e41\u9ad4"

    .line 30
    .line 31
    .line 32
    const/4 v12, 0x0

    .line 33
    invoke-direct/range {v9 .. v14}, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;

    .line 37
    .line 38
    move-object v9, v0

    .line 39
    const/4 v4, 0x4

    .line 40
    const/4 v5, 0x0

    .line 41
    const-string/jumbo v1, "zh_cn"

    .line 42
    .line 43
    .line 44
    const-string/jumbo v2, "\u4e2d\u6587\u7b80\u4f53"

    .line 45
    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 49
    .line 50
    .line 51
    new-instance v11, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;

    .line 52
    .line 53
    move-object v10, v11

    .line 54
    const/4 v15, 0x4

    .line 55
    const/16 v16, 0x0

    .line 56
    .line 57
    const-string v12, "fil"

    .line 58
    .line 59
    const-string v13, "Filipino"

    .line 60
    .line 61
    invoke-direct/range {v11 .. v16}, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 62
    .line 63
    .line 64
    new-instance v0, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;

    .line 65
    .line 66
    move-object v11, v0

    .line 67
    const-string v1, "hi"

    .line 68
    .line 69
    const-string/jumbo v2, "\u0939\u093f\u0928\u094d\u0926\u0940"

    .line 70
    .line 71
    .line 72
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 73
    .line 74
    .line 75
    new-instance v13, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;

    .line 76
    .line 77
    move-object v12, v13

    .line 78
    const/16 v17, 0x4

    .line 79
    .line 80
    const/16 v18, 0x0

    .line 81
    .line 82
    const-string v14, "in"

    .line 83
    .line 84
    const-string v15, "Bahasa Indonesia"

    .line 85
    .line 86
    invoke-direct/range {v13 .. v18}, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 87
    .line 88
    .line 89
    new-instance v0, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;

    .line 90
    .line 91
    move-object v13, v0

    .line 92
    const-string v1, "ja"

    .line 93
    .line 94
    const-string/jumbo v2, "\u65e5\u672c\u8a9e"

    .line 95
    .line 96
    .line 97
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 98
    .line 99
    .line 100
    new-instance v15, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;

    .line 101
    .line 102
    move-object v14, v15

    .line 103
    const/16 v19, 0x4

    .line 104
    .line 105
    const/16 v20, 0x0

    .line 106
    .line 107
    const-string v16, "ko"

    .line 108
    .line 109
    const-string/jumbo v17, "\ud55c\uad6d\uc5b4"

    .line 110
    .line 111
    .line 112
    invoke-direct/range {v15 .. v20}, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 113
    .line 114
    .line 115
    new-instance v0, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;

    .line 116
    .line 117
    move-object v15, v0

    .line 118
    const-string/jumbo v1, "th"

    .line 119
    .line 120
    .line 121
    const-string/jumbo v2, "\u0e20\u0e32\u0e29\u0e32\u0e44\u0e17\u0e22"

    .line 122
    .line 123
    .line 124
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 125
    .line 126
    .line 127
    new-instance v17, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;

    .line 128
    .line 129
    move-object/from16 v16, v17

    .line 130
    .line 131
    const/16 v21, 0x4

    .line 132
    .line 133
    const/16 v22, 0x0

    .line 134
    .line 135
    const-string v18, "ar"

    .line 136
    .line 137
    const-string/jumbo v19, "\u0639\u0631\u0628\u064a"

    .line 138
    .line 139
    .line 140
    invoke-direct/range {v17 .. v22}, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 141
    .line 142
    .line 143
    new-instance v0, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;

    .line 144
    .line 145
    move-object/from16 v17, v0

    .line 146
    .line 147
    const-string v1, "pt"

    .line 148
    .line 149
    const-string v2, "Portugu\u00eas"

    .line 150
    .line 151
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 152
    .line 153
    .line 154
    new-instance v19, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;

    .line 155
    .line 156
    move-object/from16 v18, v19

    .line 157
    .line 158
    const/16 v23, 0x4

    .line 159
    .line 160
    const/16 v24, 0x0

    .line 161
    .line 162
    const-string v20, "es"

    .line 163
    .line 164
    const-string v21, "Espa\u00f1ol"

    .line 165
    .line 166
    invoke-direct/range {v19 .. v24}, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 167
    .line 168
    .line 169
    new-instance v0, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;

    .line 170
    .line 171
    move-object/from16 v19, v0

    .line 172
    .line 173
    const-string/jumbo v1, "vi"

    .line 174
    .line 175
    .line 176
    const-string v2, "Ti\u1ebfng Vi\u1ec7t"

    .line 177
    .line 178
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 179
    .line 180
    .line 181
    new-instance v21, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;

    .line 182
    .line 183
    move-object/from16 v20, v21

    .line 184
    .line 185
    const/16 v25, 0x4

    .line 186
    .line 187
    const/16 v26, 0x0

    .line 188
    .line 189
    const-string v22, "de"

    .line 190
    .line 191
    const-string v23, "Deutsch"

    .line 192
    .line 193
    invoke-direct/range {v21 .. v26}, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 194
    .line 195
    .line 196
    new-instance v0, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;

    .line 197
    .line 198
    move-object/from16 v21, v0

    .line 199
    .line 200
    const-string v1, "fr"

    .line 201
    .line 202
    const-string v2, "Fran\u00e7ais"

    .line 203
    .line 204
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 205
    .line 206
    .line 207
    new-instance v23, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;

    .line 208
    .line 209
    move-object/from16 v22, v23

    .line 210
    .line 211
    const/16 v27, 0x4

    .line 212
    .line 213
    const/16 v28, 0x0

    .line 214
    .line 215
    const-string v24, "ms"

    .line 216
    .line 217
    const-string v25, "Malaysia"

    .line 218
    .line 219
    invoke-direct/range {v23 .. v28}, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 220
    .line 221
    .line 222
    new-instance v0, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;

    .line 223
    .line 224
    move-object/from16 v23, v0

    .line 225
    .line 226
    const-string v1, "ru"

    .line 227
    .line 228
    const-string/jumbo v2, "\u0420\u0443\u0441\u0441\u043a\u0438\u0439"

    .line 229
    .line 230
    .line 231
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 232
    .line 233
    .line 234
    new-instance v25, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;

    .line 235
    .line 236
    move-object/from16 v24, v25

    .line 237
    .line 238
    const/16 v29, 0x4

    .line 239
    .line 240
    const/16 v30, 0x0

    .line 241
    .line 242
    const-string v26, "it"

    .line 243
    .line 244
    const-string v27, "Italiano"

    .line 245
    .line 246
    invoke-direct/range {v25 .. v30}, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 247
    .line 248
    .line 249
    new-instance v0, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;

    .line 250
    .line 251
    move-object/from16 v25, v0

    .line 252
    .line 253
    const-string/jumbo v1, "tr"

    .line 254
    .line 255
    .line 256
    const-string v2, "T\u00fcrk\u00e7e"

    .line 257
    .line 258
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 259
    .line 260
    .line 261
    filled-new-array/range {v7 .. v25}, [Lcom/startshorts/androidplayer/bean/settings/AppLanguage;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    sput-object v0, Lid/b;->b:Ljava/util/List;

    .line 270
    .line 271
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
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/settings/AppLanguage;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lid/b;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;
    .locals 23
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "code"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "context"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget v2, Lcom/startshorts/androidplayer/R$string;->language_en:I

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v3, "en"

    .line 22
    .line 23
    invoke-static {v3, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    sget v2, Lcom/startshorts/androidplayer/R$string;->language_zh_traditional:I

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string/jumbo v3, "zh"

    .line 34
    .line 35
    .line 36
    invoke-static {v3, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    sget v2, Lcom/startshorts/androidplayer/R$string;->language_zh_simplified:I

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-string/jumbo v3, "zh_cn"

    .line 47
    .line 48
    .line 49
    invoke-static {v3, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    sget v2, Lcom/startshorts/androidplayer/R$string;->language_fil:I

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const-string v3, "fil"

    .line 60
    .line 61
    invoke-static {v3, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    sget v2, Lcom/startshorts/androidplayer/R$string;->language_hi:I

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const-string v3, "hi"

    .line 72
    .line 73
    invoke-static {v3, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    sget v2, Lcom/startshorts/androidplayer/R$string;->language_in:I

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    const-string v3, "in"

    .line 84
    .line 85
    invoke-static {v3, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    sget v2, Lcom/startshorts/androidplayer/R$string;->language_ja:I

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    const-string v3, "ja"

    .line 96
    .line 97
    invoke-static {v3, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 98
    .line 99
    .line 100
    move-result-object v10

    .line 101
    sget v2, Lcom/startshorts/androidplayer/R$string;->language_ko:I

    .line 102
    .line 103
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    const-string v3, "ko"

    .line 108
    .line 109
    invoke-static {v3, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 110
    .line 111
    .line 112
    move-result-object v11

    .line 113
    sget v2, Lcom/startshorts/androidplayer/R$string;->language_th:I

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    const-string/jumbo v3, "th"

    .line 120
    .line 121
    .line 122
    invoke-static {v3, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 123
    .line 124
    .line 125
    move-result-object v12

    .line 126
    sget v2, Lcom/startshorts/androidplayer/R$string;->language_es:I

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    const-string v3, "es"

    .line 133
    .line 134
    invoke-static {v3, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 135
    .line 136
    .line 137
    move-result-object v13

    .line 138
    sget v2, Lcom/startshorts/androidplayer/R$string;->language_pt:I

    .line 139
    .line 140
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    const-string v3, "pt"

    .line 145
    .line 146
    invoke-static {v3, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 147
    .line 148
    .line 149
    move-result-object v14

    .line 150
    sget v2, Lcom/startshorts/androidplayer/R$string;->language_vi:I

    .line 151
    .line 152
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    const-string/jumbo v3, "vi"

    .line 157
    .line 158
    .line 159
    invoke-static {v3, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 160
    .line 161
    .line 162
    move-result-object v15

    .line 163
    sget v2, Lcom/startshorts/androidplayer/R$string;->language_ar:I

    .line 164
    .line 165
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    const-string v3, "ar"

    .line 170
    .line 171
    invoke-static {v3, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 172
    .line 173
    .line 174
    move-result-object v16

    .line 175
    sget v2, Lcom/startshorts/androidplayer/R$string;->language_de:I

    .line 176
    .line 177
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    const-string v3, "de"

    .line 182
    .line 183
    invoke-static {v3, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 184
    .line 185
    .line 186
    move-result-object v17

    .line 187
    sget v2, Lcom/startshorts/androidplayer/R$string;->language_fr:I

    .line 188
    .line 189
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    const-string v3, "fr"

    .line 194
    .line 195
    invoke-static {v3, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 196
    .line 197
    .line 198
    move-result-object v18

    .line 199
    sget v2, Lcom/startshorts/androidplayer/R$string;->language_ms:I

    .line 200
    .line 201
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    const-string v3, "ms"

    .line 206
    .line 207
    invoke-static {v3, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 208
    .line 209
    .line 210
    move-result-object v19

    .line 211
    sget v2, Lcom/startshorts/androidplayer/R$string;->language_ru:I

    .line 212
    .line 213
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    const-string v3, "ru"

    .line 218
    .line 219
    invoke-static {v3, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 220
    .line 221
    .line 222
    move-result-object v20

    .line 223
    sget v2, Lcom/startshorts/androidplayer/R$string;->language_it:I

    .line 224
    .line 225
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    const-string v3, "it"

    .line 230
    .line 231
    invoke-static {v3, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 232
    .line 233
    .line 234
    move-result-object v21

    .line 235
    sget v2, Lcom/startshorts/androidplayer/R$string;->language_tr:I

    .line 236
    .line 237
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    const-string/jumbo v3, "tr"

    .line 242
    .line 243
    .line 244
    invoke-static {v3, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 245
    .line 246
    .line 247
    move-result-object v22

    .line 248
    filled-new-array/range {v4 .. v22}, [Lkotlin/Pair;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    invoke-static {v2}, Lkotlin/collections/p0;->o([Lkotlin/Pair;)Ljava/util/Map;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    check-cast v3, Ljava/lang/String;

    .line 261
    .line 262
    if-eqz v3, :cond_0

    .line 263
    .line 264
    sget v3, Lcom/startshorts/androidplayer/R$string;->language_app:I

    .line 265
    .line 266
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    :cond_0
    return-object v2
.end method
