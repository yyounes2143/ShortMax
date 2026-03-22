.class public final Luf/f;
.super Ljava/lang/Object;
.source "RemoteViewsUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Luf/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Luf/f;

    .line 2
    .line 3
    invoke-direct {v0}, Luf/f;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Luf/f;->a:Luf/f;

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

.method private final k()Landroid/content/Context;
    .locals 2

    .line 1
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfk/u;->b()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lfk/y;->a:Lfk/y;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lfk/y;->c(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    sget-object v1, Laa/a;->a:Laa/a;

    .line 16
    .line 17
    invoke-virtual {v1}, Laa/a;->d()Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/hades/aar/activity/IDActivity;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    move-object v0, v1

    .line 32
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(ILcom/startshorts/androidplayer/bean/notification/BonusWillExpiredNotification;)Landroid/widget/RemoteViews;
    .locals 3
    .param p2    # Lcom/startshorts/androidplayer/bean/notification/BonusWillExpiredNotification;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "notification"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Luf/f;->k()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Landroid/widget/RemoteViews;

    .line 11
    .line 12
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->B()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2, p1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/notification/BonusWillExpiredNotification;->getBitmap()Landroid/graphics/Bitmap;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    sget p1, Lcom/startshorts/androidplayer/R$id;->iv_icon:I

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/notification/BonusWillExpiredNotification;->getBitmap()Landroid/graphics/Bitmap;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    sget p1, Lcom/startshorts/androidplayer/R$id;->iv_icon:I

    .line 38
    .line 39
    sget v2, Lcom/startshorts/androidplayer/R$drawable;->ntf_coin_icon:I

    .line 40
    .line 41
    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 42
    .line 43
    .line 44
    :goto_0
    sget p1, Lcom/startshorts/androidplayer/R$id;->title_tv:I

    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/notification/BonusWillExpiredNotification;->getTitle()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    sget p1, Lcom/startshorts/androidplayer/R$id;->content_tv:I

    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/notification/BonusWillExpiredNotification;->getContent()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    sget p1, Lcom/startshorts/androidplayer/R$id;->check_in_button:I

    .line 63
    .line 64
    sget p2, Lcom/startshorts/androidplayer/R$string;->claim_now:I

    .line 65
    .line 66
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    return-object v1
.end method

.method public final b(ILcom/startshorts/androidplayer/bean/notification/CheckInNotification;)Landroid/widget/RemoteViews;
    .locals 3
    .param p2    # Lcom/startshorts/androidplayer/bean/notification/CheckInNotification;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "notification"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Luf/f;->k()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Landroid/widget/RemoteViews;

    .line 11
    .line 12
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->B()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2, p1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/notification/CheckInNotification;->getBitmap()Landroid/graphics/Bitmap;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    sget p1, Lcom/startshorts/androidplayer/R$id;->iv_icon:I

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/notification/CheckInNotification;->getBitmap()Landroid/graphics/Bitmap;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    sget p1, Lcom/startshorts/androidplayer/R$id;->iv_icon:I

    .line 38
    .line 39
    sget v2, Lcom/startshorts/androidplayer/R$drawable;->ntf_check_in_icon:I

    .line 40
    .line 41
    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 42
    .line 43
    .line 44
    :goto_0
    sget p1, Lcom/startshorts/androidplayer/R$id;->title_tv:I

    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/notification/CheckInNotification;->getTitle()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    sget p1, Lcom/startshorts/androidplayer/R$id;->content_tv:I

    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/notification/CheckInNotification;->getContent()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    sget p1, Lcom/startshorts/androidplayer/R$id;->check_in_button:I

    .line 63
    .line 64
    sget p2, Lcom/startshorts/androidplayer/R$string;->claim_now:I

    .line 65
    .line 66
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    return-object v1
.end method

.method public final c(ILcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;)Landroid/widget/RemoteViews;
    .locals 5
    .param p2    # Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "notification"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Luf/f;->k()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Landroid/widget/RemoteViews;

    .line 11
    .line 12
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->B()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2, p1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    sget p1, Lcom/startshorts/androidplayer/R$id;->title_tv:I

    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;->getTitle()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    sget p1, Lcom/startshorts/androidplayer/R$id;->tv_continue:I

    .line 31
    .line 32
    sget v2, Lcom/startshorts/androidplayer/R$string;->common_continue:I

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    sget p1, Lcom/startshorts/androidplayer/R$id;->enter_button:I

    .line 42
    .line 43
    sget v2, Lcom/startshorts/androidplayer/R$string;->continue_watching:I

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    sget p1, Lcom/startshorts/androidplayer/R$id;->tv_drama_content:I

    .line 53
    .line 54
    sget v2, Lcom/startshorts/androidplayer/R$string;->now_playing:I

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;->getDramaNum()Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const/4 v2, 0x0

    .line 68
    if-eqz p1, :cond_0

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    move p1, v2

    .line 76
    :goto_0
    if-lez p1, :cond_1

    .line 77
    .line 78
    sget v3, Lcom/startshorts/androidplayer/R$id;->tv_drama_num:I

    .line 79
    .line 80
    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 81
    .line 82
    .line 83
    sget v2, Lcom/startshorts/androidplayer/R$id;->tv_drama_num:I

    .line 84
    .line 85
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 86
    .line 87
    sget v3, Lcom/startshorts/androidplayer/R$string;->common_current_ep:I

    .line 88
    .line 89
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    const-string v4, "getString(...)"

    .line 94
    .line 95
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    const/4 v4, 0x1

    .line 107
    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    const-string v3, "format(...)"

    .line 116
    .line 117
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_1
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;->getVideoType()Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    if-nez p1, :cond_2

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    const/4 v3, 0x4

    .line 136
    if-ne p1, v3, :cond_3

    .line 137
    .line 138
    sget p1, Lcom/startshorts/androidplayer/R$id;->tv_drama_num:I

    .line 139
    .line 140
    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 141
    .line 142
    .line 143
    sget p1, Lcom/startshorts/androidplayer/R$id;->tv_drama_num:I

    .line 144
    .line 145
    sget v2, Lcom/startshorts/androidplayer/R$string;->shorts_fragment_trailer:I

    .line 146
    .line 147
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_3
    :goto_1
    sget p1, Lcom/startshorts/androidplayer/R$id;->tv_drama_num:I

    .line 156
    .line 157
    const/16 v2, 0x8

    .line 158
    .line 159
    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 160
    .line 161
    .line 162
    :goto_2
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;->getBitmap()Landroid/graphics/Bitmap;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    if-eqz p1, :cond_4

    .line 167
    .line 168
    sget p1, Lcom/startshorts/androidplayer/R$id;->custom_icon:I

    .line 169
    .line 170
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;->getBitmap()Landroid/graphics/Bitmap;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 175
    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_4
    sget p1, Lcom/startshorts/androidplayer/R$id;->custom_icon:I

    .line 179
    .line 180
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->ic_cover_placeholder:I

    .line 181
    .line 182
    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 183
    .line 184
    .line 185
    :goto_3
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    .line 186
    .line 187
    const-class p2, Lcom/startshorts/androidplayer/receiver/DismissNotificationBroadcastReceiver;

    .line 188
    .line 189
    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    .line 191
    .line 192
    const/16 p2, 0x2766

    .line 193
    .line 194
    const/high16 v2, 0x4000000

    .line 195
    .line 196
    invoke-static {v0, p2, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    sget p2, Lcom/startshorts/androidplayer/R$id;->iv_ntf_close:I

    .line 201
    .line 202
    invoke-virtual {v1, p2, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .line 204
    .line 205
    goto :goto_4

    .line 206
    :catch_0
    move-exception p1

    .line 207
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 208
    .line 209
    .line 210
    :goto_4
    return-object v1
.end method

.method public final d(ILcom/startshorts/androidplayer/bean/notification/CustomNotification;Z)Landroid/widget/RemoteViews;
    .locals 3
    .param p2    # Lcom/startshorts/androidplayer/bean/notification/CustomNotification;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "notification"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Luf/f;->k()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Landroid/widget/RemoteViews;

    .line 11
    .line 12
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->B()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2, p1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    sget p1, Lcom/startshorts/androidplayer/R$id;->title_tv:I

    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getTitle()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    sget p1, Lcom/startshorts/androidplayer/R$id;->content_tv:I

    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getContent()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    sget p1, Lcom/startshorts/androidplayer/R$id;->custom_icon:I

    .line 48
    .line 49
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getCover()Landroid/graphics/Bitmap;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 54
    .line 55
    .line 56
    if-eqz p3, :cond_0

    .line 57
    .line 58
    sget p1, Lcom/startshorts/androidplayer/R$id;->enter_button:I

    .line 59
    .line 60
    sget p2, Lcom/startshorts/androidplayer/R$string;->notification_watch_now:I

    .line 61
    .line 62
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    sget p1, Lcom/startshorts/androidplayer/R$id;->enter_button:I

    .line 71
    .line 72
    sget p2, Lcom/startshorts/androidplayer/R$string;->notification_go_now:I

    .line 73
    .line 74
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    :goto_0
    return-object v1
.end method

.method public final e(ILcom/startshorts/androidplayer/bean/notification/NewShortsNotification;)Landroid/widget/RemoteViews;
    .locals 3
    .param p2    # Lcom/startshorts/androidplayer/bean/notification/NewShortsNotification;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "notification"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Luf/f;->k()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Landroid/widget/RemoteViews;

    .line 11
    .line 12
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->B()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2, p1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/notification/NewShortsNotification;->getCover()Landroid/graphics/Bitmap;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    sget v2, Lcom/startshorts/androidplayer/R$id;->cover_iv:I

    .line 28
    .line 29
    invoke-virtual {v1, v2, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    sget p1, Lcom/startshorts/androidplayer/R$id;->title_tv:I

    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getTitle()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    sget p1, Lcom/startshorts/androidplayer/R$id;->watch_button:I

    .line 42
    .line 43
    sget v2, Lcom/startshorts/androidplayer/R$string;->notification_watch_now:I

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v1, p1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    sget p1, Lcom/startshorts/androidplayer/R$id;->content_tv:I

    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getRecommendation()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getRecommendation()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getSummary()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    :goto_1
    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    return-object v1
.end method

.method public final f(ILcom/startshorts/androidplayer/bean/notification/MissCheckInNotification;)Landroid/widget/RemoteViews;
    .locals 3
    .param p2    # Lcom/startshorts/androidplayer/bean/notification/MissCheckInNotification;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "notification"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Luf/f;->k()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Landroid/widget/RemoteViews;

    .line 11
    .line 12
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->B()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2, p1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/notification/MissCheckInNotification;->getBitmap()Landroid/graphics/Bitmap;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    sget p1, Lcom/startshorts/androidplayer/R$id;->iv_icon:I

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/notification/MissCheckInNotification;->getBitmap()Landroid/graphics/Bitmap;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    sget p1, Lcom/startshorts/androidplayer/R$id;->iv_icon:I

    .line 38
    .line 39
    sget v2, Lcom/startshorts/androidplayer/R$drawable;->ntf_missing_check_in:I

    .line 40
    .line 41
    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 42
    .line 43
    .line 44
    :goto_0
    sget p1, Lcom/startshorts/androidplayer/R$id;->title_tv:I

    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/notification/MissCheckInNotification;->getTitle()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    sget p1, Lcom/startshorts/androidplayer/R$id;->content_tv:I

    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/notification/MissCheckInNotification;->getContent()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    sget p1, Lcom/startshorts/androidplayer/R$id;->check_in_button:I

    .line 63
    .line 64
    sget p2, Lcom/startshorts/androidplayer/R$string;->claim_now:I

    .line 65
    .line 66
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    return-object v1
.end method

.method public final g(ILcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;)Landroid/widget/RemoteViews;
    .locals 3
    .param p2    # Lcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "notification"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Luf/f;->k()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Landroid/widget/RemoteViews;

    .line 11
    .line 12
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->B()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2, p1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;->getCover()Landroid/graphics/Bitmap;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    sget v2, Lcom/startshorts/androidplayer/R$id;->cover_iv:I

    .line 28
    .line 29
    invoke-virtual {v1, v2, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    sget p1, Lcom/startshorts/androidplayer/R$id;->title_tv:I

    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;->getTitle()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    sget p1, Lcom/startshorts/androidplayer/R$id;->watch_button:I

    .line 42
    .line 43
    sget v2, Lcom/startshorts/androidplayer/R$string;->notification_watch_now:I

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v1, p1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    sget p1, Lcom/startshorts/androidplayer/R$id;->content_tv:I

    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;->getRecommendation()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;->getRecommendation()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getSummary()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    :goto_1
    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    return-object v1
.end method

.method public final h(ILcom/startshorts/androidplayer/bean/notification/RewardsNotification;)Landroid/widget/RemoteViews;
    .locals 3
    .param p2    # Lcom/startshorts/androidplayer/bean/notification/RewardsNotification;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "notification"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Luf/f;->k()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Landroid/widget/RemoteViews;

    .line 11
    .line 12
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->B()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2, p1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    sget p1, Lcom/startshorts/androidplayer/R$id;->iv_icon:I

    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/notification/RewardsNotification;->getBonusIconResource()Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    sget v2, Lcom/startshorts/androidplayer/R$drawable;->ic_push_msg_rewards_gift:I

    .line 35
    .line 36
    :goto_0
    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 37
    .line 38
    .line 39
    sget p1, Lcom/startshorts/androidplayer/R$id;->title_tv:I

    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/notification/RewardsNotification;->getTitle()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    sget p1, Lcom/startshorts/androidplayer/R$id;->content_tv:I

    .line 49
    .line 50
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/notification/RewardsNotification;->getContent()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    sget p1, Lcom/startshorts/androidplayer/R$id;->check_in_button:I

    .line 58
    .line 59
    sget p2, Lcom/startshorts/androidplayer/R$string;->claim_now:I

    .line 60
    .line 61
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    return-object v1
.end method

.method public final i(ILcom/startshorts/androidplayer/bean/notification/StartRechargingNotification;)Landroid/widget/RemoteViews;
    .locals 3
    .param p2    # Lcom/startshorts/androidplayer/bean/notification/StartRechargingNotification;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "notification"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Luf/f;->k()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Landroid/widget/RemoteViews;

    .line 11
    .line 12
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->B()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2, p1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/notification/StartRechargingNotification;->getCover()Landroid/graphics/Bitmap;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    sget v2, Lcom/startshorts/androidplayer/R$id;->cover_iv:I

    .line 28
    .line 29
    invoke-virtual {v1, v2, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    sget p1, Lcom/startshorts/androidplayer/R$id;->title_tv:I

    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getTitle()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    sget p1, Lcom/startshorts/androidplayer/R$id;->content_tv:I

    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/notification/StartRechargingNotification;->getContent()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    sget p1, Lcom/startshorts/androidplayer/R$id;->watch_button:I

    .line 51
    .line 52
    sget p2, Lcom/startshorts/androidplayer/R$string;->notification_watch_now:I

    .line 53
    .line 54
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    return-object v1
.end method

.method public final j(ILcom/startshorts/androidplayer/bean/notification/SubsBonusNotification;)Landroid/widget/RemoteViews;
    .locals 3
    .param p2    # Lcom/startshorts/androidplayer/bean/notification/SubsBonusNotification;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "notification"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Luf/f;->k()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Landroid/widget/RemoteViews;

    .line 11
    .line 12
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->B()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2, p1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/notification/SubsBonusNotification;->getBitmap()Landroid/graphics/Bitmap;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    sget p1, Lcom/startshorts/androidplayer/R$id;->iv_icon:I

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/notification/SubsBonusNotification;->getBitmap()Landroid/graphics/Bitmap;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    sget p1, Lcom/startshorts/androidplayer/R$id;->iv_icon:I

    .line 38
    .line 39
    sget v2, Lcom/startshorts/androidplayer/R$drawable;->ntf_subscribe_icon:I

    .line 40
    .line 41
    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 42
    .line 43
    .line 44
    :goto_0
    sget p1, Lcom/startshorts/androidplayer/R$id;->title_tv:I

    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/notification/SubsBonusNotification;->getTitle()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    sget p1, Lcom/startshorts/androidplayer/R$id;->content_tv:I

    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/notification/SubsBonusNotification;->getContent()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    sget p1, Lcom/startshorts/androidplayer/R$id;->subs_bonus_button:I

    .line 63
    .line 64
    sget p2, Lcom/startshorts/androidplayer/R$string;->claim_now:I

    .line 65
    .line 66
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    return-object v1
.end method
