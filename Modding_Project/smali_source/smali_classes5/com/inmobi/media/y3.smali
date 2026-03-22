.class public final Lcom/inmobi/media/y3;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field public final a:B

.field public final b:Lcom/inmobi/media/z5;


# direct methods
.method public constructor <init>(Landroid/content/Context;BLcom/inmobi/media/z5;)V
    .locals 9

    .line 1
    const-string v0, "CustomView"

    .line 2
    .line 3
    const-string v1, "null drawable id while creating button - "

    .line 4
    .line 5
    const-string v2, "new customView - "

    .line 6
    .line 7
    const-string v3, "context"

    .line 8
    .line 9
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    iput-byte p2, p0, Lcom/inmobi/media/y3;->a:B

    .line 16
    .line 17
    iput-object p3, p0, Lcom/inmobi/media/y3;->b:Lcom/inmobi/media/z5;

    .line 18
    .line 19
    if-nez p2, :cond_0

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    const/4 p1, 0x1

    .line 23
    if-ne p2, p1, :cond_1

    .line 24
    .line 25
    goto :goto_3

    .line 26
    :cond_1
    const/4 p1, 0x2

    .line 27
    if-ne p2, p1, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/4 p1, 0x3

    .line 31
    if-ne p2, p1, :cond_3

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    const/4 p1, 0x4

    .line 35
    if-ne p2, p1, :cond_4

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_4
    const/4 p1, 0x5

    .line 39
    if-ne p2, p1, :cond_5

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_5
    const/4 p1, 0x6

    .line 43
    if-ne p2, p1, :cond_6

    .line 44
    .line 45
    :goto_0
    const/16 p1, 0x1e

    .line 46
    .line 47
    :goto_1
    move v8, p1

    .line 48
    goto :goto_4

    .line 49
    :cond_6
    const/16 p1, 0x9

    .line 50
    .line 51
    if-ne p2, p1, :cond_7

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_7
    const/16 p1, 0xa

    .line 55
    .line 56
    if-ne p2, p1, :cond_8

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_8
    const/4 p1, 0x7

    .line 60
    if-ne p2, p1, :cond_9

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_9
    const/16 p1, 0x8

    .line 64
    .line 65
    if-ne p2, p1, :cond_a

    .line 66
    .line 67
    :goto_2
    const/16 p1, 0xf

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_a
    :goto_3
    const/4 p1, 0x0

    .line 71
    goto :goto_1

    .line 72
    :goto_4
    :try_start_0
    invoke-static {p2}, Lcom/inmobi/media/y3;->a(B)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_b

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    move-object v3, p0

    .line 83
    move v5, v8

    .line 84
    move v6, v8

    .line 85
    move v7, v8

    .line 86
    invoke-virtual/range {v3 .. v8}, Lcom/inmobi/media/y3;->a(IIIII)V

    .line 87
    .line 88
    .line 89
    if-eqz p3, :cond_d

    .line 90
    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string p2, " created"

    .line 100
    .line 101
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p3, Lcom/inmobi/media/A5;

    .line 109
    .line 110
    invoke-virtual {p3, v0, p1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    goto :goto_6

    .line 114
    :catch_0
    move-exception p1

    .line 115
    goto :goto_5

    .line 116
    :cond_b
    if-eqz p3, :cond_d

    .line 117
    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    check-cast p3, Lcom/inmobi/media/A5;

    .line 131
    .line 132
    invoke-virtual {p3, v0, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .line 134
    .line 135
    goto :goto_6

    .line 136
    :goto_5
    iget-object p2, p0, Lcom/inmobi/media/y3;->b:Lcom/inmobi/media/z5;

    .line 137
    .line 138
    if-eqz p2, :cond_c

    .line 139
    .line 140
    check-cast p2, Lcom/inmobi/media/A5;

    .line 141
    .line 142
    const-string p3, "exception while building customView"

    .line 143
    .line 144
    invoke-virtual {p2, v0, p3, p1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 145
    .line 146
    .line 147
    :cond_c
    sget-object p2, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 148
    .line 149
    const-string p2, "event"

    .line 150
    .line 151
    invoke-static {p1, p2}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    sget-object p2, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    .line 156
    .line 157
    invoke-virtual {p2, p1}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    .line 158
    .line 159
    .line 160
    :cond_d
    :goto_6
    return-void
.end method

.method public static a(B)Ljava/lang/Integer;
    .locals 1

    if-nez p0, :cond_0

    .line 1
    sget p0, Lcom/inmobi/ads/R$drawable;->im_close_button:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 2
    sget p0, Lcom/inmobi/ads/R$drawable;->im_close_transparent:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 3
    sget p0, Lcom/inmobi/ads/R$drawable;->im_close_icon:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 4
    sget p0, Lcom/inmobi/ads/R$drawable;->im_refresh:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 5
    sget p0, Lcom/inmobi/ads/R$drawable;->im_back:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 6
    sget p0, Lcom/inmobi/ads/R$drawable;->im_forward_active:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 7
    sget p0, Lcom/inmobi/ads/R$drawable;->im_forward_inactive:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_6
    const/16 v0, 0x9

    if-ne p0, v0, :cond_7

    .line 8
    sget p0, Lcom/inmobi/ads/R$drawable;->im_mute:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_7
    const/16 v0, 0xa

    if-ne p0, v0, :cond_8

    .line 9
    sget p0, Lcom/inmobi/ads/R$drawable;->im_unmute:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_8
    const/4 v0, 0x7

    if-ne p0, v0, :cond_9

    .line 10
    sget p0, Lcom/inmobi/ads/R$drawable;->im_play:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_9
    const/16 v0, 0x8

    if-ne p0, v0, :cond_a

    .line 11
    sget p0, Lcom/inmobi/ads/R$drawable;->im_pause:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_a
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final a(Lcom/inmobi/media/y3;IIIII)V
    .locals 7

    .line 24
    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1

    .line 25
    iget-object p1, p0, Lcom/inmobi/media/y3;->b:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "CustomView drawable for "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte p0, p0, Lcom/inmobi/media/y3;->a:B

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " cannot be created"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p1, Lcom/inmobi/media/A5;

    const-string p2, "CustomView"

    invoke-virtual {p1, p2, p0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 26
    invoke-virtual/range {v1 .. v6}, Lcom/inmobi/media/y3;->a(Landroid/graphics/drawable/Drawable;IIII)V

    return-void
.end method

.method public static final a(Lcom/inmobi/media/y3;IIIILandroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p5, :cond_1

    .line 21
    iget-object p1, p0, Lcom/inmobi/media/y3;->b:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "drawable for "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte p0, p0, Lcom/inmobi/media/y3;->a:B

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is null"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p1, Lcom/inmobi/media/A5;

    const-string p2, "CustomView"

    invoke-virtual {p1, p2, p0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 22
    :cond_1
    invoke-virtual {p0, p5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 23
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public static final a(Lcom/inmobi/media/y3;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public final a(IIIII)V
    .locals 9

    .line 12
    sget-object v0, Lcom/inmobi/media/L3;->a:Lcom/inmobi/media/L3;

    invoke-virtual {v0}, Lcom/inmobi/media/L3;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 15
    new-instance v7, Lub/n8;

    move-object v1, v7

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lub/n8;-><init>(Lcom/inmobi/media/y3;IIII)V

    .line 16
    sget-object p2, Lcom/inmobi/media/z4;->d:Lms/i;

    invoke-interface {p2}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/inmobi/media/o7;

    .line 17
    iget-object p2, p2, Lcom/inmobi/media/o7;->a:Landroid/os/Handler;

    .line 18
    invoke-virtual {p1, v0, v7, p2}, Landroid/graphics/drawable/Icon;->loadDrawableAsync(Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    goto :goto_0

    .line 19
    :cond_0
    sget-object v0, Lcom/inmobi/media/z4;->c:Lms/i;

    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 20
    new-instance v8, Lub/o8;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lub/o8;-><init>(Lcom/inmobi/media/y3;IIIII)V

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 8

    .line 27
    new-instance v7, Lub/m8;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lub/m8;-><init>(Lcom/inmobi/media/y3;Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {p0, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
