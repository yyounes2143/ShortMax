.class public Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;
.super Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;
.source "ShortRatingLayout.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nShortRatingLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortRatingLayout.kt\ncom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,162:1\n1863#2,2:163\n1863#2,2:165\n*S KotlinDebug\n*F\n+ 1 ShortRatingLayout.kt\ncom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout\n*L\n125#1:163,2\n129#1:165,2\n*E\n"
    }
.end annotation


# instance fields
.field private b:Landroid/widget/LinearLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final v(Lcom/startshorts/androidplayer/bean/shorts/ShortContentRatingInfo;Landroid/widget/LinearLayout;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortContentRatingInfo;->getIcon()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, -0x2

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortContentRatingInfo;->getRatingsAbbreviation()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v3, "getContext(...)"

    .line 34
    .line 35
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v2}, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortContentRatingInfo;->getRatingsAbbreviation()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    const/4 p1, -0x1

    .line 53
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    .line 55
    .line 56
    const/4 p1, 0x2

    .line 57
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;->getMRatingIconTextSize()F

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 62
    .line 63
    .line 64
    sget-object p1, Lyf/a;->a:Lyf/a;

    .line 65
    .line 66
    invoke-virtual {p1}, Lyf/a;->a()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {v0, p1}, Ljk/y;->n(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 74
    .line 75
    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;->getMRatingIconSpace()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 83
    .line 84
    .line 85
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 86
    .line 87
    invoke-virtual {p2, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    :goto_0
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 92
    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-direct {v0, v2}, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;-><init>(Landroid/content/Context;)V

    .line 98
    .line 99
    .line 100
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;->getMResizeHeight()I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;->getMRatingIconSpace()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 114
    .line 115
    .line 116
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 117
    .line 118
    invoke-virtual {p2, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    .line 120
    .line 121
    sget-object p2, Lkk/f;->a:Lkk/f;

    .line 122
    .line 123
    new-instance v1, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 124
    .line 125
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortContentRatingInfo;->getIcon()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    new-instance p1, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout$a;

    .line 136
    .line 137
    invoke-direct {p1, v0, p0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout$a;-><init>(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setControllerListener(Lz2/a;)V

    .line 141
    .line 142
    .line 143
    const/4 p1, 0x1

    .line 144
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;->getMCornerRadius()F

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, v0, v1}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 155
    .line 156
    .line 157
    :goto_1
    return-void
.end method

.method private final x(Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;->b:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    const/16 v3, 0xa

    .line 6
    .line 7
    const-string v4, ""

    .line 8
    .line 9
    if-eqz v2, :cond_a

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;->getContentRatingResponse()Lcom/startshorts/androidplayer/bean/shorts/ShortContentRatingInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    if-eqz v5, :cond_1

    .line 19
    .line 20
    invoke-direct {p0, v5, v2}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;->v(Lcom/startshorts/androidplayer/bean/shorts/ShortContentRatingInfo;Landroid/widget/LinearLayout;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/shorts/ShortContentRatingInfo;->getDescriptionText()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    if-eqz v6, :cond_1

    .line 28
    .line 29
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-nez v6, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/shorts/ShortContentRatingInfo;->getDescriptionText()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    move-object v5, v4

    .line 46
    :goto_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;->getContentDescriptionResponseList()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    if-eqz v6, :cond_2

    .line 51
    .line 52
    check-cast v6, Ljava/lang/Iterable;

    .line 53
    .line 54
    const/4 v7, 0x3

    .line 55
    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt;->V0(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    if-eqz v6, :cond_2

    .line 60
    .line 61
    check-cast v6, Ljava/lang/Iterable;

    .line 62
    .line 63
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    if-eqz v7, :cond_2

    .line 72
    .line 73
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    check-cast v7, Lcom/startshorts/androidplayer/bean/shorts/ShortContentRatingInfo;

    .line 78
    .line 79
    invoke-direct {p0, v7, v2}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;->v(Lcom/startshorts/androidplayer/bean/shorts/ShortContentRatingInfo;Landroid/widget/LinearLayout;)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_2
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;->getContentDescriptionResponseList()Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    const/16 v7, 0x2c

    .line 88
    .line 89
    if-eqz v6, :cond_5

    .line 90
    .line 91
    check-cast v6, Ljava/lang/Iterable;

    .line 92
    .line 93
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    move-object v8, v4

    .line 98
    :cond_3
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    if-eqz v9, :cond_6

    .line 103
    .line 104
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    check-cast v9, Lcom/startshorts/androidplayer/bean/shorts/ShortContentRatingInfo;

    .line 109
    .line 110
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/shorts/ShortContentRatingInfo;->getDescriptionText()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    if-eqz v10, :cond_3

    .line 115
    .line 116
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    .line 117
    .line 118
    .line 119
    move-result v10

    .line 120
    if-nez v10, :cond_4

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/shorts/ShortContentRatingInfo;->getDescriptionText()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    goto :goto_3

    .line 146
    :cond_5
    move-object v8, v4

    .line 147
    :cond_6
    new-array v6, v1, [C

    .line 148
    .line 149
    aput-char v7, v6, v0

    .line 150
    .line 151
    invoke-static {v8, v6}, Lkotlin/text/StringsKt;->x1(Ljava/lang/String;[C)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    sget-object v7, Lqe/b;->a:Lqe/b;

    .line 156
    .line 157
    invoke-virtual {v7}, Lqe/b;->g()Lcom/startshorts/androidplayer/bean/configure/ServerController;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/configure/ServerController;->getCompany_name()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v8

    .line 165
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 166
    .line 167
    .line 168
    move-result v8

    .line 169
    if-lez v8, :cond_7

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;->getClassNum()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v8

    .line 176
    if-eqz v8, :cond_b

    .line 177
    .line 178
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 179
    .line 180
    .line 181
    move-result v8

    .line 182
    if-nez v8, :cond_8

    .line 183
    .line 184
    goto :goto_5

    .line 185
    :cond_8
    :goto_4
    new-instance v8, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 186
    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    const-string v10, "getContext(...)"

    .line 192
    .line 193
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-direct {v8, v9}, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;-><init>(Landroid/content/Context;)V

    .line 197
    .line 198
    .line 199
    new-instance v9, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v7}, Lqe/b;->g()Lcom/startshorts/androidplayer/bean/configure/ServerController;

    .line 205
    .line 206
    .line 207
    move-result-object v7

    .line 208
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/configure/ServerController;->getCompany_name()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v7

    .line 212
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;->getClassNum()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    if-nez p1, :cond_9

    .line 223
    .line 224
    move-object p1, v4

    .line 225
    :cond_9
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    new-array v1, v1, [C

    .line 233
    .line 234
    aput-char v3, v1, v0

    .line 235
    .line 236
    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->w1(Ljava/lang/String;[C)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-virtual {v8, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    .line 242
    .line 243
    const/4 p1, -0x1

    .line 244
    invoke-virtual {v8, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;->getMCompanyNameLineSpacing()I

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    int-to-float p1, p1

    .line 252
    const/high16 v0, 0x3f800000    # 1.0f

    .line 253
    .line 254
    invoke-virtual {v8, p1, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 255
    .line 256
    .line 257
    const/4 p1, 0x2

    .line 258
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;->getMCompanyNameTextSize()F

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    invoke-virtual {v8, p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 263
    .line 264
    .line 265
    sget-object p1, Lyf/a;->a:Lyf/a;

    .line 266
    .line 267
    invoke-virtual {p1}, Lyf/a;->c()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    invoke-static {v8, p1}, Ljk/y;->n(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 275
    .line 276
    const/4 v0, -0x2

    .line 277
    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;->getMCompanyNameMarginStart()I

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 285
    .line 286
    .line 287
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 288
    .line 289
    invoke-virtual {v2, v8, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    .line 291
    .line 292
    goto :goto_5

    .line 293
    :cond_a
    move-object v5, v4

    .line 294
    move-object v6, v5

    .line 295
    :cond_b
    :goto_5
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 296
    .line 297
    .line 298
    move-result p1

    .line 299
    if-lez p1, :cond_c

    .line 300
    .line 301
    new-instance p1, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .line 305
    .line 306
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v4

    .line 316
    :cond_c
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 317
    .line 318
    .line 319
    move-result p1

    .line 320
    if-lez p1, :cond_e

    .line 321
    .line 322
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 323
    .line 324
    .line 325
    move-result p1

    .line 326
    if-lez p1, :cond_d

    .line 327
    .line 328
    new-instance p1, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .line 332
    .line 333
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v4

    .line 343
    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .line 347
    .line 348
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v4

    .line 358
    :cond_e
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;->c:Landroid/widget/TextView;

    .line 359
    .line 360
    if-eqz p1, :cond_f

    .line 361
    .line 362
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    .line 364
    .line 365
    :cond_f
    return-void
.end method


# virtual methods
.method public getLayoutResource()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_short_rating:I

    .line 2
    .line 3
    return v0
.end method

.method public getMCompanyNameLineSpacing()I
    .locals 1

    .line 1
    const/high16 v0, 0x40900000    # 4.5f

    .line 2
    .line 3
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMCompanyNameMarginStart()I
    .locals 1

    .line 1
    sget-object v0, Lfk/z;->a:Lfk/z;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfk/z;->s()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMCompanyNameTextSize()F
    .locals 1

    .line 1
    const/high16 v0, 0x41300000    # 11.0f

    .line 2
    .line 3
    return v0
.end method

.method public getMCornerRadius()F
    .locals 1

    .line 1
    const/high16 v0, 0x40800000    # 4.0f

    .line 2
    .line 3
    invoke-static {v0}, Ljk/g;->b(F)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMRatingIconSpace()I
    .locals 1

    .line 1
    sget-object v0, Lfk/z;->a:Lfk/z;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfk/z;->m()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMRatingIconTextSize()F
    .locals 1

    .line 1
    const/high16 v0, 0x41500000    # 13.0f

    .line 2
    .line 3
    return v0
.end method

.method public getMResizeHeight()I
    .locals 1

    .line 1
    const/high16 v0, 0x42100000    # 36.0f

    .line 2
    .line 3
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public u(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p2, "context"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget p1, Lcom/startshorts/androidplayer/R$id;->rating_icon_ll:I

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/widget/LinearLayout;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;->b:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    sget p1, Lcom/startshorts/androidplayer/R$id;->content_desc_tv:I

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/widget/TextView;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;->c:Landroid/widget/TextView;

    .line 25
    .line 26
    return-void
.end method

.method public final w(Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "shortPlayContentInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;->x(Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
