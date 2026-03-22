.class public final Lag/a;
.super Ljava/lang/Object;
.source "ReelShowEventManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lag/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lag/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lag/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lag/a;->a:Lag/a;

    .line 7
    .line 8
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

.method public static synthetic c(Lag/a;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;IILcom/startshorts/androidplayer/bean/discover/DiscoverTab;Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 11

    .line 1
    move/from16 v0, p9

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x4

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    move v5, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v5, p3

    .line 11
    :goto_0
    and-int/lit8 v1, v0, 0x8

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    move-object v6, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move-object v6, p4

    .line 19
    :goto_1
    and-int/lit8 v1, v0, 0x10

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    move-object v7, v2

    .line 24
    goto :goto_2

    .line 25
    :cond_2
    move-object/from16 v7, p5

    .line 26
    .line 27
    :goto_2
    and-int/lit8 v1, v0, 0x20

    .line 28
    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    move-object v8, v2

    .line 32
    goto :goto_3

    .line 33
    :cond_3
    move-object/from16 v8, p6

    .line 34
    .line 35
    :goto_3
    and-int/lit8 v1, v0, 0x40

    .line 36
    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    move-object v9, v2

    .line 40
    goto :goto_4

    .line 41
    :cond_4
    move-object/from16 v9, p7

    .line 42
    .line 43
    :goto_4
    and-int/lit16 v0, v0, 0x80

    .line 44
    .line 45
    if-eqz v0, :cond_5

    .line 46
    .line 47
    const-string v0, "discover"

    .line 48
    .line 49
    move-object v10, v0

    .line 50
    goto :goto_5

    .line 51
    :cond_5
    move-object/from16 v10, p8

    .line 52
    .line 53
    :goto_5
    move-object v2, p0

    .line 54
    move-object v3, p1

    .line 55
    move v4, p2

    .line 56
    invoke-virtual/range {v2 .. v10}, Lag/a;->a(Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;IILcom/startshorts/androidplayer/bean/discover/DiscoverTab;Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public static synthetic d(Lag/a;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;ILcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 13

    .line 1
    move/from16 v0, p10

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x4

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move-object v6, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object/from16 v6, p3

    .line 11
    .line 12
    :goto_0
    and-int/lit8 v1, v0, 0x8

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    move v7, v1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move/from16 v7, p4

    .line 20
    .line 21
    :goto_1
    and-int/lit8 v1, v0, 0x10

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    move-object v8, v2

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move-object/from16 v8, p5

    .line 28
    .line 29
    :goto_2
    and-int/lit8 v1, v0, 0x20

    .line 30
    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    move-object v9, v2

    .line 34
    goto :goto_3

    .line 35
    :cond_3
    move-object/from16 v9, p6

    .line 36
    .line 37
    :goto_3
    and-int/lit8 v1, v0, 0x40

    .line 38
    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    move-object v10, v2

    .line 42
    goto :goto_4

    .line 43
    :cond_4
    move-object/from16 v10, p7

    .line 44
    .line 45
    :goto_4
    and-int/lit16 v1, v0, 0x80

    .line 46
    .line 47
    const-string v2, ""

    .line 48
    .line 49
    if-eqz v1, :cond_5

    .line 50
    .line 51
    move-object v11, v2

    .line 52
    goto :goto_5

    .line 53
    :cond_5
    move-object/from16 v11, p8

    .line 54
    .line 55
    :goto_5
    and-int/lit16 v0, v0, 0x100

    .line 56
    .line 57
    if-eqz v0, :cond_6

    .line 58
    .line 59
    move-object v12, v2

    .line 60
    goto :goto_6

    .line 61
    :cond_6
    move-object/from16 v12, p9

    .line 62
    .line 63
    :goto_6
    move-object v3, p0

    .line 64
    move-object v4, p1

    .line 65
    move-object v5, p2

    .line 66
    invoke-virtual/range {v3 .. v12}, Lag/a;->b(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;ILcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public static synthetic f(Lag/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)V
    .locals 7

    .line 1
    and-int/lit8 p8, p7, 0x8

    .line 2
    .line 3
    if-eqz p8, :cond_0

    .line 4
    .line 5
    const/4 p4, 0x1

    .line 6
    :cond_0
    move v4, p4

    .line 7
    and-int/lit8 p4, p7, 0x20

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    const/4 p6, 0x0

    .line 12
    :cond_1
    move-object v6, p6

    .line 13
    move-object v0, p0

    .line 14
    move-object v1, p1

    .line 15
    move v2, p2

    .line 16
    move-object v3, p3

    .line 17
    move-object v5, p5

    .line 18
    invoke-virtual/range {v0 .. v6}, Lag/a;->e(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a(Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;IILcom/startshorts/androidplayer/bean/discover/DiscoverTab;Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "shorts"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 8
    .line 9
    invoke-virtual {v0, p4}, Lcom/startshorts/androidplayer/manager/event/EventManager;->B(Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;)Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object p4

    .line 13
    invoke-virtual {v0, p5}, Lcom/startshorts/androidplayer/manager/event/EventManager;->A(Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;)Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    move-result-object p5

    .line 17
    invoke-static {p4, p5}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 18
    .line 19
    .line 20
    move-result-object p4

    .line 21
    const/4 p5, 0x4

    .line 22
    const-string v1, "reel_id"

    .line 23
    .line 24
    const-string/jumbo v2, "type"

    .line 25
    .line 26
    .line 27
    if-ne p3, p5, :cond_0

    .line 28
    .line 29
    const-string/jumbo p3, "trailer"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p4, v2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->getTrailerId()I

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    invoke-virtual {p4, v1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const-string p3, "positive"

    .line 48
    .line 49
    invoke-virtual {p4, v2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayCode()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    invoke-virtual {p4, v1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    const-string p3, "scene"

    .line 60
    .line 61
    invoke-virtual {p4, p3, p8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->getModuleId()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    const-string p5, "module_id"

    .line 69
    .line 70
    invoke-virtual {p4, p5, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string p3, "module_name"

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->getModuleName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p5

    .line 79
    invoke-virtual {p4, p3, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const/4 p3, 0x1

    .line 83
    add-int/2addr p2, p3

    .line 84
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    const-string p5, "position_id"

    .line 89
    .line 90
    invoke-virtual {p4, p5, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpack()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    if-nez p2, :cond_1

    .line 102
    .line 103
    const-string/jumbo p2, "upack"

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpack()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p5

    .line 110
    invoke-virtual {p4, p2, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->getRecommendId()Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    if-eqz p1, :cond_2

    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-lez p1, :cond_2

    .line 124
    .line 125
    const-string p2, "audiences_recommend_id"

    .line 126
    .line 127
    invoke-virtual {p4, p2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 128
    .line 129
    .line 130
    :cond_2
    const/4 p1, 0x0

    .line 131
    if-eqz p6, :cond_3

    .line 132
    .line 133
    invoke-virtual {p6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    goto :goto_1

    .line 138
    :cond_3
    move-object p2, p1

    .line 139
    :goto_1
    const-string p5, "module_list"

    .line 140
    .line 141
    invoke-virtual {p4, p5, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const-string p2, "module_list_type"

    .line 145
    .line 146
    if-nez p7, :cond_4

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_4
    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    .line 150
    .line 151
    .line 152
    move-result p5

    .line 153
    const/4 p6, 0x2

    .line 154
    if-ne p5, p6, :cond_5

    .line 155
    .line 156
    const-string p1, "close"

    .line 157
    .line 158
    invoke-virtual {p4, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_5
    :goto_2
    if-nez p7, :cond_6

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_6
    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    .line 166
    .line 167
    .line 168
    move-result p5

    .line 169
    if-ne p5, p3, :cond_7

    .line 170
    .line 171
    const-string p1, "open"

    .line 172
    .line 173
    invoke-virtual {p4, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_7
    :goto_3
    invoke-virtual {p4, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 181
    .line 182
    const/4 p6, 0x4

    .line 183
    const/4 p7, 0x0

    .line 184
    const-string p2, "reel_show"

    .line 185
    .line 186
    const-wide/16 v1, 0x0

    .line 187
    .line 188
    move-object p1, v0

    .line 189
    move-object p3, p4

    .line 190
    move-wide p4, v1

    .line 191
    invoke-static/range {p1 .. p7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;ILcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/act/ActResource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "scene"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x0

    .line 11
    invoke-static {v1, p3, v2, v3, v4}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    invoke-virtual {v1, p5}, Lcom/startshorts/androidplayer/manager/event/EventManager;->A(Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;)Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    move-result-object p5

    .line 19
    invoke-static {p3, p5}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    invoke-virtual {p3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string p1, "reel_id"

    .line 27
    .line 28
    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    const-string/jumbo p1, "upack"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3, p1, p8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-static {p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_1

    .line 48
    .line 49
    const-string p1, "query"

    .line 50
    .line 51
    invoke-virtual {p3, p1, p9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    const/4 p1, 0x4

    .line 55
    const-string/jumbo p2, "type"

    .line 56
    .line 57
    .line 58
    if-ne p4, p1, :cond_2

    .line 59
    .line 60
    const-string/jumbo p1, "trailer"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    const-string p1, "positive"

    .line 68
    .line 69
    invoke-virtual {p3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    if-eqz p6, :cond_3

    .line 73
    .line 74
    invoke-virtual {p6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    move-object p1, v4

    .line 80
    :goto_1
    const-string p2, "module_list"

    .line 81
    .line 82
    invoke-virtual {p3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string p1, "module_list_type"

    .line 86
    .line 87
    if-nez p7, :cond_4

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_4
    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    if-ne p2, v3, :cond_5

    .line 95
    .line 96
    const-string p2, "close"

    .line 97
    .line 98
    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_5
    :goto_2
    if-nez p7, :cond_6

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_6
    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    const/4 p4, 0x1

    .line 110
    if-ne p2, p4, :cond_7

    .line 111
    .line 112
    const-string p2, "open"

    .line 113
    .line 114
    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_7
    :goto_3
    invoke-virtual {p3, p1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 122
    .line 123
    const/4 p6, 0x4

    .line 124
    const/4 p7, 0x0

    .line 125
    const-string p2, "reel_show"

    .line 126
    .line 127
    const-wide/16 p4, 0x0

    .line 128
    .line 129
    move-object p1, v1

    .line 130
    invoke-static/range {p1 .. p7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    return-void
.end method

.method public final e(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "scene"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 7
    .line 8
    new-instance v3, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    const-string/jumbo v2, "upack"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v2, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string p1, "reel_id"

    .line 29
    .line 30
    invoke-virtual {v3, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x4

    .line 34
    const-string/jumbo p3, "type"

    .line 35
    .line 36
    .line 37
    if-ne p4, p1, :cond_1

    .line 38
    .line 39
    const-string/jumbo p1, "trailer"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, p3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const-string p1, "positive"

    .line 47
    .line 48
    invoke-virtual {v3, p3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    add-int/lit8 p2, p2, 0x1

    .line 52
    .line 53
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string p2, "position_id"

    .line 58
    .line 59
    invoke-virtual {v3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    if-eqz p6, :cond_2

    .line 63
    .line 64
    invoke-virtual {v3, p6}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 68
    .line 69
    const/4 v6, 0x4

    .line 70
    const/4 v7, 0x0

    .line 71
    const-string v2, "reel_show"

    .line 72
    .line 73
    const-wide/16 v4, 0x0

    .line 74
    .line 75
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method
