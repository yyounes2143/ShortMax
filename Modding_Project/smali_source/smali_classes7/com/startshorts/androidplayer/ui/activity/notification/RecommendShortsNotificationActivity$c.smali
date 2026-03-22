.class public final Lcom/startshorts/androidplayer/ui/activity/notification/RecommendShortsNotificationActivity$c;
.super Lyd/d;
.source "RecommendShortsNotificationActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/notification/RecommendShortsNotificationActivity;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/activity/notification/RecommendShortsNotificationActivity;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/notification/RecommendShortsNotificationActivity;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/RecommendShortsNotificationActivity$c;->e:Lcom/startshorts/androidplayer/ui/activity/notification/RecommendShortsNotificationActivity;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    invoke-direct {p0, v1, v2, p1, v0}, Lyd/d;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 9

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->a:Lcom/startshorts/androidplayer/manager/push/util/PushUtil;

    .line 7
    .line 8
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/task/PushType;->RECOMMEND_SHORTS:Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->f(Lcom/startshorts/androidplayer/manager/push/task/PushType;)V

    .line 11
    .line 12
    .line 13
    sget-object p1, Lcom/startshorts/androidplayer/manager/push/PushManager;->a:Lcom/startshorts/androidplayer/manager/push/PushManager;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/push/PushManager;->l()V

    .line 16
    .line 17
    .line 18
    sget-object p1, Lrf/c;->a:Lrf/c;

    .line 19
    .line 20
    invoke-virtual {p1}, Lrf/c;->a()V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/RecommendShortsNotificationActivity$c;->e:Lcom/startshorts/androidplayer/ui/activity/notification/RecommendShortsNotificationActivity;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/notification/RecommendShortsNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/RecommendShortsNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v7, "mNotification"

    .line 32
    .line 33
    const/4 v8, 0x0

    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    move-object v1, v8

    .line 40
    :cond_0
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/RecommendShortsNotificationActivity$c;->e:Lcom/startshorts/androidplayer/ui/activity/notification/RecommendShortsNotificationActivity;

    .line 45
    .line 46
    const-string v3, "push_name"

    .line 47
    .line 48
    const-string v4, "active_push"

    .line 49
    .line 50
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/notification/RecommendShortsNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/RecommendShortsNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    if-nez v3, :cond_1

    .line 58
    .line 59
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    move-object v3, v8

    .line 63
    :cond_1
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;->getTitle()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const-string v4, "title"

    .line 68
    .line 69
    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/notification/RecommendShortsNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/RecommendShortsNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    if-nez v3, :cond_2

    .line 77
    .line 78
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    move-object v3, v8

    .line 82
    :cond_2
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;->getRecommendation()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    if-eqz v3, :cond_5

    .line 87
    .line 88
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-nez v3, :cond_3

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/notification/RecommendShortsNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/RecommendShortsNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    if-nez v1, :cond_4

    .line 100
    .line 101
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    move-object v1, v8

    .line 105
    :cond_4
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;->getRecommendation()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    goto :goto_1

    .line 110
    :cond_5
    :goto_0
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/notification/RecommendShortsNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/RecommendShortsNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    if-nez v1, :cond_6

    .line 115
    .line 116
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    move-object v1, v8

    .line 120
    :cond_6
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getSummary()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    :goto_1
    const-string v3, "content"

    .line 125
    .line 126
    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 130
    .line 131
    const/4 v5, 0x4

    .line 132
    const/4 v6, 0x0

    .line 133
    const-string v1, "push_open"

    .line 134
    .line 135
    const-wide/16 v3, 0x0

    .line 136
    .line 137
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/notification/RecommendShortsNotificationActivity$c;->e:Lcom/startshorts/androidplayer/ui/activity/notification/RecommendShortsNotificationActivity;

    .line 141
    .line 142
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/notification/RecommendShortsNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/RecommendShortsNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    if-nez v0, :cond_7

    .line 147
    .line 148
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    move-object v0, v8

    .line 152
    :cond_7
    const/4 v1, 0x2

    .line 153
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->setRecommendPool(I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v8}, Lcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;->setCover(Landroid/graphics/Bitmap;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v0}, Lrf/c;->v(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 160
    .line 161
    .line 162
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/RecommendShortsNotificationActivity$c;->e:Lcom/startshorts/androidplayer/ui/activity/notification/RecommendShortsNotificationActivity;

    .line 163
    .line 164
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/notification/BaseNotificationActivity;->H()V

    .line 165
    .line 166
    .line 167
    return-void
.end method
