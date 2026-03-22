.class public final Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;
.super Ljava/lang/Object;
.source "DiscoverModuleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;-><init>()V

    return-void
.end method

.method private final f(Landroid/widget/TextView;)V
    .locals 3

    .line 1
    const/high16 v0, 0x40800000    # 4.0f

    .line 2
    .line 3
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1, v1, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final g(Landroid/widget/TextView;)V
    .locals 3

    .line 1
    sget-object v0, Lfk/v;->a:Lfk/v;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfk/v;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/high16 v1, 0x40800000    # 4.0f

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {v1}, Ljk/g;->a(F)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p1, v0, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {v1}, Ljk/g;->a(F)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p1, v2, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 25
    .line 26
    .line 27
    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 28
    .line 29
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/16 v0, -0x18

    .line 2
    .line 3
    if-eq p1, v0, :cond_6

    .line 4
    .line 5
    const/16 v0, -0x17

    .line 6
    .line 7
    if-eq p1, v0, :cond_6

    .line 8
    .line 9
    const/16 v0, -0x14

    .line 10
    .line 11
    if-eq p1, v0, :cond_5

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    if-eq p1, v0, :cond_4

    .line 15
    .line 16
    const/16 v0, 0xf

    .line 17
    .line 18
    if-eq p1, v0, :cond_3

    .line 19
    .line 20
    const/16 v0, -0xa

    .line 21
    .line 22
    if-eq p1, v0, :cond_2

    .line 23
    .line 24
    const/16 v0, -0x9

    .line 25
    .line 26
    if-eq p1, v0, :cond_1

    .line 27
    .line 28
    const/4 v0, -0x8

    .line 29
    if-eq p1, v0, :cond_0

    .line 30
    .line 31
    packed-switch p1, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    packed-switch p1, :pswitch_data_1

    .line 35
    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v1, "exception_style="

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    goto :goto_0

    .line 55
    :pswitch_0
    const-string p1, "discover_banner"

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :pswitch_1
    const-string p1, "limited_time_discount"

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :pswitch_2
    const-string p1, "category_filtering"

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :pswitch_3
    const-string p1, "double_row_three_columns"

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :pswitch_4
    const-string p1, "double_row_waterfall"

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :pswitch_5
    const-string p1, "coming_soon"

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :pswitch_6
    const-string p1, "ranking_list_horizontal_image"

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :pswitch_7
    const-string p1, "horizontal_image_icon"

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :pswitch_8
    const-string p1, "carousel"

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :pswitch_9
    const-string/jumbo p1, "single_row_circle"

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :pswitch_a
    const-string/jumbo p1, "vertical_carousel_minimized"

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :pswitch_b
    const-string p1, "horizontal_carousel"

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :pswitch_c
    const-string p1, "horizontal_video"

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :pswitch_d
    const-string p1, "horizontal_carousel_mini"

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_0
    const-string p1, "row_ranking"

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    const-string p1, "row_subtag_style2"

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    const-string p1, "row_subtag_style1"

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_3
    const-string p1, "ranking_list_tag"

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_4
    const-string p1, "horizontal_image"

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_5
    const-string p1, "left_picture"

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_6
    :pswitch_e
    const-string p1, "featured_double_row_multi_columns"

    .line 118
    .line 119
    :goto_0
    return-object p1

    .line 120
    nop

    .line 121
    :pswitch_data_0
    .packed-switch -0x21
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->Z()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final c()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->a0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final d(I)Landroid/util/Size;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->Y()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/util/Size;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/lit8 v1, p1, -0x1

    .line 25
    .line 26
    mul-int/lit8 v1, v1, 0xa

    .line 27
    .line 28
    int-to-float v1, v1

    .line 29
    const/high16 v2, 0x41800000    # 16.0f

    .line 30
    .line 31
    add-float/2addr v1, v2

    .line 32
    add-float/2addr v1, v2

    .line 33
    invoke-static {v1}, Ljk/g;->a(F)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    sub-int/2addr v0, v1

    .line 38
    div-int/2addr v0, p1

    .line 39
    new-instance p1, Landroid/util/Size;

    .line 40
    .line 41
    int-to-float v1, v0

    .line 42
    const v2, 0x3fa5ed07    # 1.296296f

    .line 43
    .line 44
    .line 45
    mul-float/2addr v1, v2

    .line 46
    invoke-static {v1}, Lbt/a;->c(F)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-direct {p1, v0, v1}, Landroid/util/Size;-><init>(II)V

    .line 51
    .line 52
    .line 53
    return-object p1
.end method

.method public final e(Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;)V
    .locals 8
    .param p1    # Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "rankLabel"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 12
    .line 13
    new-instance v3, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayCode()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    const-string p1, ""

    .line 25
    .line 26
    :cond_0
    const-string v0, "reel_id"

    .line 27
    .line 28
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;->getRankingId()Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 p1, 0x0

    .line 43
    :goto_0
    const-string v0, "ranking_list_zi_id"

    .line 44
    .line 45
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    const-string p1, "ranking_list_zi_name"

    .line 49
    .line 50
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;->getLabelName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {v3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 58
    .line 59
    const/4 v6, 0x4

    .line 60
    const/4 v7, 0x0

    .line 61
    const-string v2, "ranking_list_zi_click"

    .line 62
    .line 63
    const-wide/16 v4, 0x0

    .line 64
    .line 65
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final h(Landroid/widget/TextView;ILjava/lang/String;)V
    .locals 2
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "view"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-eq p2, v1, :cond_3

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    if-eq p2, v1, :cond_2

    .line 16
    .line 17
    const/4 v1, 0x5

    .line 18
    if-eq p2, v1, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x6

    .line 21
    if-eq p2, v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    sget v1, Lcom/startshorts/androidplayer/R$color;->drama_member_only_label:I

    .line 29
    .line 30
    invoke-virtual {p2, v1}, Landroid/content/Context;->getColor(I)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_member_only_label:I

    .line 42
    .line 43
    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;->g(Landroid/widget/TextView;)V

    .line 51
    .line 52
    .line 53
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->bg_label_style_member_only:I

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    sget v0, Lcom/startshorts/androidplayer/R$color;->color_common_white:I

    .line 64
    .line 65
    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;->f(Landroid/widget/TextView;)V

    .line 73
    .line 74
    .line 75
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->bg_label_style_new:I

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    sget v0, Lcom/startshorts/androidplayer/R$color;->color_common_white:I

    .line 86
    .line 87
    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;->f(Landroid/widget/TextView;)V

    .line 95
    .line 96
    .line 97
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->bg_label_style_hot:I

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    sget v1, Lcom/startshorts/androidplayer/R$color;->color_common_white:I

    .line 108
    .line 109
    invoke-virtual {p2, v1}, Landroid/content/Context;->getColor(I)I

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_excusive_label:I

    .line 121
    .line 122
    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 127
    .line 128
    .line 129
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;->g(Landroid/widget/TextView;)V

    .line 130
    .line 131
    .line 132
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->bg_label_style_exclusive:I

    .line 133
    .line 134
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 135
    .line 136
    .line 137
    :goto_0
    if-eqz p3, :cond_5

    .line 138
    .line 139
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    if-nez p2, :cond_4

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_4
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    .line 148
    .line 149
    const/4 p2, 0x0

    .line 150
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_5
    :goto_1
    const/4 p2, 0x4

    .line 155
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 156
    .line 157
    .line 158
    :goto_2
    return-void
.end method

.method public final i(Landroid/widget/TextView;Ljava/lang/Long;)V
    .locals 3
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    if-nez p2, :cond_1

    .line 5
    .line 6
    const/16 p2, 0x8

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    sget-object v0, Lfk/w;->a:Lfk/w;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    invoke-virtual {v0, v1, v2}, Lfk/w;->a(J)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    const/4 p2, 0x0

    .line 26
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method
