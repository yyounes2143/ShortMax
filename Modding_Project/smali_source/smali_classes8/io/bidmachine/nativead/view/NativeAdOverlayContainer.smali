.class public final Lio/bidmachine/nativead/view/NativeAdOverlayContainer;
.super Landroid/widget/FrameLayout;
.source "NativeAdOverlayContainer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/nativead/view/NativeAdOverlayContainer$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/bidmachine/nativead/view/NativeAdOverlayContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lio/bidmachine/nativead/view/NativeAdOverlayContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/nativead/view/NativeAdOverlayContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/PrivacySheetData;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/nativead/view/NativeAdOverlayContainer;->c(Lio/bidmachine/PrivacySheetData;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final c(Lio/bidmachine/PrivacySheetData;Landroid/view/View;)V
    .locals 2

    .line 1
    const-string v0, "$privacySheetData"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "v"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lio/bidmachine/rendering/view/PrivacySheetDialog;->c:Lio/bidmachine/rendering/view/PrivacySheetDialog$d;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1, p1}, Lio/bidmachine/core/g;->o(Landroid/content/Context;Landroid/view/View;)Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v1, "findDialogContext(v.context, v)"

    .line 22
    .line 23
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lio/bidmachine/PrivacySheetData;->getPrivacySheetParams()Lio/bidmachine/rendering/model/PrivacySheetParams;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v0, p1, p0}, Lio/bidmachine/rendering/view/PrivacySheetDialog$d;->a(Landroid/content/Context;Lio/bidmachine/rendering/model/PrivacySheetParams;)Lio/bidmachine/rendering/view/PrivacySheetDialog;

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private final d(Lio/bidmachine/LabelData;II)Landroid/widget/ImageView;
    .locals 5

    .line 1
    new-instance v0, Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lio/bidmachine/LabelData;->getImage()Landroid/graphics/Bitmap;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v3, "context"

    .line 29
    .line 30
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lio/bidmachine/LabelData;->getWidthDp()F

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-static {v2, v4}, Lyq/s;->j(Landroid/content/Context;F)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lio/bidmachine/LabelData;->getHeightDp()F

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-static {v4, p1}, Lyq/s;->j(Landroid/content/Context;F)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    invoke-direct {v1, v2, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 57
    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    invoke-virtual {v1, p2, p1, p3, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    .line 65
    .line 66
    return-object v0
.end method


# virtual methods
.method public final b(Lmp/e;)V
    .locals 11
    .param p1    # Lmp/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "nativeData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Lmp/e;->m()Lio/bidmachine/LabelData;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {v2}, Lio/bidmachine/LabelData;->getPositionData()Lio/bidmachine/PositionData;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    new-instance v5, Landroid/widget/LinearLayout;

    .line 30
    .line 31
    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, v2, v3, v3}, Lio/bidmachine/nativead/view/NativeAdOverlayContainer;->d(Lio/bidmachine/LabelData;II)Landroid/widget/ImageView;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-interface {p1}, Lmp/e;->a()Lio/bidmachine/PrivacySheetData;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v2, "context"

    .line 52
    .line 53
    if-eqz p1, :cond_6

    .line 54
    .line 55
    invoke-virtual {p1}, Lio/bidmachine/PrivacySheetData;->getLabelData()Lio/bidmachine/LabelData;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v4}, Lio/bidmachine/LabelData;->getPositionData()Lio/bidmachine/PositionData;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    check-cast v6, Landroid/widget/LinearLayout;

    .line 68
    .line 69
    if-nez v6, :cond_1

    .line 70
    .line 71
    new-instance v6, Landroid/widget/LinearLayout;

    .line 72
    .line 73
    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 77
    .line 78
    .line 79
    :cond_1
    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const/high16 v7, 0x40a00000    # 5.0f

    .line 86
    .line 87
    invoke-static {v0, v7}, Lyq/s;->j(Landroid/content/Context;F)I

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    sget-object v9, Lio/bidmachine/PositionData;->TopLeft:Lio/bidmachine/PositionData;

    .line 96
    .line 97
    if-eq v5, v9, :cond_4

    .line 98
    .line 99
    sget-object v9, Lio/bidmachine/PositionData;->BottomLeft:Lio/bidmachine/PositionData;

    .line 100
    .line 101
    if-ne v5, v9, :cond_2

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    if-lez v8, :cond_3

    .line 109
    .line 110
    move v10, v7

    .line 111
    move v7, v3

    .line 112
    move v3, v10

    .line 113
    goto :goto_1

    .line 114
    :cond_3
    move v7, v3

    .line 115
    goto :goto_1

    .line 116
    :cond_4
    :goto_0
    move v5, v3

    .line 117
    if-lez v8, :cond_5

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_5
    move v7, v5

    .line 121
    :goto_1
    invoke-direct {p0, v4, v3, v7}, Lio/bidmachine/nativead/view/NativeAdOverlayContainer;->d(Lio/bidmachine/LabelData;II)Landroid/widget/ImageView;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-virtual {v6, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 126
    .line 127
    .line 128
    new-instance v4, Lio/bidmachine/nativead/view/h;

    .line 129
    .line 130
    invoke-direct {v4, p1}, Lio/bidmachine/nativead/view/h;-><init>(Lio/bidmachine/PrivacySheetData;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    .line 135
    .line 136
    :cond_6
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const/high16 p1, 0x41000000    # 8.0f

    .line 140
    .line 141
    invoke-static {v0, p1}, Lyq/s;->j(Landroid/content/Context;F)I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-eqz v1, :cond_b

    .line 158
    .line 159
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    check-cast v1, Ljava/util/Map$Entry;

    .line 164
    .line 165
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    check-cast v2, Lio/bidmachine/PositionData;

    .line 170
    .line 171
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    check-cast v1, Landroid/widget/LinearLayout;

    .line 176
    .line 177
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 178
    .line 179
    const/4 v4, -0x2

    .line 180
    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3, p1, p1, p1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 184
    .line 185
    .line 186
    sget-object v4, Lio/bidmachine/nativead/view/NativeAdOverlayContainer$a;->$EnumSwitchMapping$0:[I

    .line 187
    .line 188
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    aget v2, v4, v2

    .line 193
    .line 194
    const/4 v4, 0x1

    .line 195
    if-eq v2, v4, :cond_a

    .line 196
    .line 197
    const/4 v4, 0x2

    .line 198
    if-eq v2, v4, :cond_9

    .line 199
    .line 200
    const/4 v4, 0x3

    .line 201
    if-eq v2, v4, :cond_8

    .line 202
    .line 203
    const/4 v4, 0x4

    .line 204
    if-eq v2, v4, :cond_7

    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_7
    const/16 v2, 0x55

    .line 208
    .line 209
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_8
    const/16 v2, 0x53

    .line 213
    .line 214
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_9
    const/16 v2, 0x35

    .line 218
    .line 219
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_a
    const/16 v2, 0x33

    .line 223
    .line 224
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 225
    .line 226
    :goto_3
    invoke-virtual {p0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_b
    return-void
.end method
