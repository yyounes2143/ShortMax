.class public final Ldh/a;
.super Ljava/lang/Object;
.source "ProfileLocalDS.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 18
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "context"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v9, Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;

    .line 14
    .line 15
    sget v2, Lcom/startshorts/androidplayer/R$drawable;->ic_profile_rewards:I

    .line 16
    .line 17
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    sget v2, Lcom/startshorts/androidplayer/R$string;->profile_fragment_rewards:I

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    const-string v10, "getString(...)"

    .line 28
    .line 29
    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/16 v7, 0x8

    .line 33
    .line 34
    const/4 v8, 0x0

    .line 35
    const/4 v3, 0x1

    .line 36
    const/4 v6, 0x0

    .line 37
    move-object v2, v9

    .line 38
    invoke-direct/range {v2 .. v8}, Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    sget-object v2, Luh/i0;->a:Luh/i0;

    .line 45
    .line 46
    invoke-virtual {v2}, Luh/i0;->b()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_0

    .line 51
    .line 52
    new-instance v2, Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;

    .line 53
    .line 54
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->ic_profile_download:I

    .line 55
    .line 56
    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    sget v3, Lcom/startshorts/androidplayer/R$string;->offline_download:I

    .line 61
    .line 62
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const/16 v8, 0x8

    .line 70
    .line 71
    const/4 v9, 0x0

    .line 72
    const/4 v4, 0x6

    .line 73
    const/4 v7, 0x0

    .line 74
    move-object v3, v2

    .line 75
    invoke-direct/range {v3 .. v9}, Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 76
    .line 77
    .line 78
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    :cond_0
    new-instance v2, Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;

    .line 82
    .line 83
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->ic_profile_faq:I

    .line 84
    .line 85
    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 86
    .line 87
    .line 88
    move-result-object v13

    .line 89
    sget v3, Lcom/startshorts/androidplayer/R$string;->profile_fragment_faq:I

    .line 90
    .line 91
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v14

    .line 95
    invoke-static {v14, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const/16 v16, 0x8

    .line 99
    .line 100
    const/16 v17, 0x0

    .line 101
    .line 102
    const/4 v12, 0x7

    .line 103
    const/4 v15, 0x0

    .line 104
    move-object v11, v2

    .line 105
    invoke-direct/range {v11 .. v17}, Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 106
    .line 107
    .line 108
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    new-instance v2, Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;

    .line 112
    .line 113
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->ic_profile_feedback:I

    .line 114
    .line 115
    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    sget v3, Lcom/startshorts/androidplayer/R$string;->profile_fragment_feedback:I

    .line 120
    .line 121
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    const/16 v8, 0x8

    .line 129
    .line 130
    const/4 v9, 0x0

    .line 131
    const/4 v4, 0x2

    .line 132
    const/4 v7, 0x0

    .line 133
    move-object v3, v2

    .line 134
    invoke-direct/range {v3 .. v9}, Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 135
    .line 136
    .line 137
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    sget-object v2, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 141
    .line 142
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->D0()Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-nez v2, :cond_1

    .line 147
    .line 148
    new-instance v2, Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;

    .line 149
    .line 150
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->ic_profile_language:I

    .line 151
    .line 152
    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    sget v3, Lcom/startshorts/androidplayer/R$string;->profile_fragment_language:I

    .line 157
    .line 158
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    const/16 v8, 0x8

    .line 166
    .line 167
    const/4 v9, 0x0

    .line 168
    const/4 v4, 0x3

    .line 169
    const/4 v7, 0x0

    .line 170
    move-object v3, v2

    .line 171
    invoke-direct/range {v3 .. v9}, Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 172
    .line 173
    .line 174
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    :cond_1
    new-instance v2, Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;

    .line 178
    .line 179
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->ic_profile_settings:I

    .line 180
    .line 181
    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 182
    .line 183
    .line 184
    move-result-object v13

    .line 185
    sget v3, Lcom/startshorts/androidplayer/R$string;->profile_fragment_settings:I

    .line 186
    .line 187
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v14

    .line 191
    invoke-static {v14, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    const/16 v16, 0x8

    .line 195
    .line 196
    const/16 v17, 0x0

    .line 197
    .line 198
    const/4 v12, 0x4

    .line 199
    const/4 v15, 0x0

    .line 200
    move-object v11, v2

    .line 201
    invoke-direct/range {v11 .. v17}, Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 202
    .line 203
    .line 204
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    return-object v1
.end method
