.class public final Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SubtitleView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/player/core/SubtitleView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSubtitleView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubtitleView.kt\ncom/startshorts/androidplayer/manager/player/core/SubtitleView\n+ 2 Context.kt\nandroidx/core/content/ContextKt\n+ 3 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,170:1\n59#2,2:171\n470#3:173\n470#3:174\n470#3:175\n470#3:176\n*S KotlinDebug\n*F\n+ 1 SubtitleView.kt\ncom/startshorts/androidplayer/manager/player/core/SubtitleView\n*L\n42#1:171,2\n109#1:173\n111#1:174\n114#1:175\n116#1:176\n*E\n"
    }
.end annotation


# static fields
.field public static final k:Lcom/startshorts/androidplayer/manager/player/core/SubtitleView$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Z

.field public b:Lcom/startshorts/androidplayer/databinding/ViewSubtitleBinding;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private g:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Z

.field private i:Z

.field private j:Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->k:Lcom/startshorts/androidplayer/manager/player/core/SubtitleView$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-static {}, Lcom/ss/ttvideoengine/utils/ScreenUtils;->getScreenWidth()I

    move-result v0

    iput v0, p0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->c:I

    const/high16 v0, 0x41e00000    # 28.0f

    .line 5
    invoke-static {v0}, Ljk/g;->a(F)I

    move-result v0

    iput v0, p0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->d:I

    const/high16 v0, 0x42600000    # 56.0f

    .line 6
    invoke-static {v0}, Ljk/g;->a(F)I

    move-result v0

    iput v0, p0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->e:I

    const/high16 v0, 0x42200000    # 40.0f

    .line 7
    invoke-static {v0}, Ljk/g;->a(F)I

    move-result v0

    iput v0, p0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->f:I

    .line 8
    new-instance v0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;

    const/16 v10, 0xff

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;-><init>(Ljava/lang/String;IILjava/lang/String;IIIFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->j:Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->t(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic q(Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->x(Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final r(F)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->f:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    mul-float/2addr v0, p1

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->d:I

    .line 6
    .line 7
    int-to-float v2, v1

    .line 8
    mul-float/2addr v2, p1

    .line 9
    iget-boolean v3, p0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->a:Z

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    :goto_0
    int-to-float v1, v1

    .line 14
    mul-float/2addr v1, p1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget v1, p0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->e:I

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :goto_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewSubtitleBinding;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/ViewSubtitleBinding;->d:Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    float-to-int v2, v2

    .line 32
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewSubtitleBinding;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ViewSubtitleBinding;->d:Landroid/view/View;

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewSubtitleBinding;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ViewSubtitleBinding;->b:Landroid/view/View;

    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    float-to-int v1, v1

    .line 56
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewSubtitleBinding;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ViewSubtitleBinding;->b:Landroid/view/View;

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->j:Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->getShadowColor()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_2
    move v4, v1

    .line 78
    goto :goto_3

    .line 79
    :catch_0
    const-string v1, "#000000"

    .line 80
    .line 81
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    goto :goto_2

    .line 86
    :goto_3
    :try_start_1
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->j:Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->getColor()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    goto :goto_4

    .line 97
    :catch_1
    const-string v1, "#ffffff"

    .line 98
    .line 99
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    :goto_4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewSubtitleBinding;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ViewSubtitleBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 108
    .line 109
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->j:Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;

    .line 110
    .line 111
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->getFontSize()I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    int-to-float v3, v3

    .line 116
    mul-float/2addr v3, p1

    .line 117
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewSubtitleBinding;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ViewSubtitleBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 125
    .line 126
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->j:Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;

    .line 127
    .line 128
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->getLetterSpacing()I

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    int-to-float v3, v3

    .line 133
    const/high16 v5, 0x42c80000    # 100.0f

    .line 134
    .line 135
    div-float/2addr v3, v5

    .line 136
    mul-float/2addr v3, p1

    .line 137
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewSubtitleBinding;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ViewSubtitleBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 145
    .line 146
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewSubtitleBinding;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    iget-object v3, v1, Lcom/startshorts/androidplayer/databinding/ViewSubtitleBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 154
    .line 155
    const-string/jumbo v1, "subtitleTv"

    .line 156
    .line 157
    .line 158
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->j:Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;

    .line 162
    .line 163
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->getShadowRadius()I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    int-to-float v1, v1

    .line 168
    mul-float v5, v1, p1

    .line 169
    .line 170
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->j:Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;

    .line 171
    .line 172
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->getShadowDx()I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    int-to-float v1, v1

    .line 177
    mul-float v6, v1, p1

    .line 178
    .line 179
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->j:Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;

    .line 180
    .line 181
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->getShadowDy()I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    int-to-float v1, v1

    .line 186
    mul-float v7, v1, p1

    .line 187
    .line 188
    move-object v2, p0

    .line 189
    invoke-direct/range {v2 .. v7}, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->v(Landroid/widget/TextView;IFFF)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewSubtitleBinding;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ViewSubtitleBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 197
    .line 198
    float-to-int v0, v0

    .line 199
    const/4 v1, 0x0

    .line 200
    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 201
    .line 202
    .line 203
    return-void
.end method

.method static synthetic s(Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;FILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/high16 p1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->r(F)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final v(Landroid/widget/TextView;IFFF)V
    .locals 0

    .line 1
    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final x(Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 v0, 0x3

    .line 10
    if-le p0, v0, :cond_0

    .line 11
    .line 12
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 13
    .line 14
    iget-object p0, p1, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->g:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 15
    .line 16
    invoke-virtual {v1, p0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const-string p0, "content"

    .line 21
    .line 22
    invoke-virtual {v3, p0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    const/4 v6, 0x4

    .line 28
    const/4 v7, 0x0

    .line 29
    const-string v2, "long_subtitles"

    .line 30
    .line 31
    const-wide/16 v4, 0x0

    .line 32
    .line 33
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method


# virtual methods
.method public final getAttached()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->i:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getBinding()Lcom/startshorts/androidplayer/databinding/ViewSubtitleBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->b:Lcom/startshorts/androidplayer/databinding/ViewSubtitleBinding;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "binding"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getEnableSubtitle()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getMEpisode()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->g:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getScreenWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->c:I

    .line 2
    .line 3
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->i:Z

    .line 6
    .line 7
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->i:Z

    .line 6
    .line 7
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->a:Z

    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->h:Z

    .line 9
    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    sub-int/2addr p4, p2

    .line 13
    int-to-float p1, p4

    .line 14
    iget p2, p0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->c:I

    .line 15
    .line 16
    int-to-float p2, p2

    .line 17
    div-float/2addr p1, p2

    .line 18
    const/high16 p2, 0x3f800000    # 1.0f

    .line 19
    .line 20
    cmpl-float p3, p1, p2

    .line 21
    .line 22
    if-gtz p3, :cond_0

    .line 23
    .line 24
    const/4 p3, 0x0

    .line 25
    cmpg-float p3, p1, p3

    .line 26
    .line 27
    if-gtz p3, :cond_1

    .line 28
    .line 29
    :cond_0
    move p1, p2

    .line 30
    :cond_1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->r(F)V

    .line 31
    .line 32
    .line 33
    :cond_2
    return-void
.end method

.method public final setAttached(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->i:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setBinding(Lcom/startshorts/androidplayer/databinding/ViewSubtitleBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/databinding/ViewSubtitleBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->b:Lcom/startshorts/androidplayer/databinding/ViewSubtitleBinding;

    .line 7
    .line 8
    return-void
.end method

.method public final setEnableSubtitle(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->h:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setMEpisode(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->g:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    return-void
.end method

.method public final t(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-static {v0, p0, v1}, Lcom/startshorts/androidplayer/databinding/ViewSubtitleBinding;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/startshorts/androidplayer/databinding/ViewSubtitleBinding;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->setBinding(Lcom/startshorts/androidplayer/databinding/ViewSubtitleBinding;)V

    .line 16
    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    sget-object v0, Lcom/startshorts/androidplayer/R$styleable;->SubtitleView:[I

    .line 21
    .line 22
    const-string v1, "SubtitleView"

    .line 23
    .line 24
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    sget p2, Lcom/startshorts/androidplayer/R$styleable;->SubtitleView_isFitScale:I

    .line 33
    .line 34
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    iput-boolean p2, p0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->a:Z

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public final u(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Z
    .locals 14
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->g:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->h:Z

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    if-eqz p1, :cond_7

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getSubtitlingConfig()Lcom/startshorts/androidplayer/bean/shorts/SubtitleConfig;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/SubtitleConfig;->getSubtitleStyle()Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-nez v2, :cond_2

    .line 23
    .line 24
    :cond_1
    new-instance v2, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;

    .line 25
    .line 26
    const/16 v12, 0xff

    .line 27
    .line 28
    const/4 v13, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v7, 0x0

    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v9, 0x0

    .line 35
    const/4 v10, 0x0

    .line 36
    const/4 v11, 0x0

    .line 37
    move-object v3, v2

    .line 38
    invoke-direct/range {v3 .. v13}, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;-><init>(Ljava/lang/String;IILjava/lang/String;IIIFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    iput-object v2, p0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->j:Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getSubtitlingConfig()Lcom/startshorts/androidplayer/bean/shorts/SubtitleConfig;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/SubtitleConfig;->isEnable()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    goto :goto_0

    .line 54
    :cond_3
    move p1, v0

    .line 55
    :goto_0
    if-nez p1, :cond_4

    .line 56
    .line 57
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->h:Z

    .line 58
    .line 59
    return v0

    .line 60
    :cond_4
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->j:Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->getTopPercentage()F

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    const/high16 v2, 0x3f800000    # 1.0f

    .line 67
    .line 68
    cmpl-float v2, p1, v2

    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    if-gtz v2, :cond_5

    .line 72
    .line 73
    cmpg-float v2, p1, v3

    .line 74
    .line 75
    if-gez v2, :cond_6

    .line 76
    .line 77
    :cond_5
    const p1, 0x3ea8f5c3    # 0.33f

    .line 78
    .line 79
    .line 80
    :cond_6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewSubtitleBinding;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ViewSubtitleBinding;->c:Landroidx/constraintlayout/widget/Guideline;

    .line 85
    .line 86
    int-to-float v4, v1

    .line 87
    sub-float/2addr v4, p1

    .line 88
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 89
    .line 90
    .line 91
    const/4 p1, 0x0

    .line 92
    invoke-static {p0, v3, v1, p1}, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->s(Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;FILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewSubtitleBinding;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ViewSubtitleBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 100
    .line 101
    const-string v2, ""

    .line 102
    .line 103
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    :cond_7
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->g:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 107
    .line 108
    if-eqz p1, :cond_8

    .line 109
    .line 110
    move v0, v1

    .line 111
    :cond_8
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->h:Z

    .line 112
    .line 113
    return v0
.end method

.method public final w(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "content"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->i:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->h:Z

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewSubtitleBinding;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewSubtitleBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Llf/b;

    .line 25
    .line 26
    invoke-direct {v1, v0, p0, p1}, Llf/b;-><init>(Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method
