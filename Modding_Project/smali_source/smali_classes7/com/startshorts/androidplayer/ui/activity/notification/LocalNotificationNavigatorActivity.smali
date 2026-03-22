.class public Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity;
.super Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;
.source "LocalNotificationNavigatorActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final l:Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private k:Lcom/startshorts/androidplayer/bean/notification/NotificationData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity;->l:Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final B()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity;->k:Lcom/startshorts/androidplayer/bean/notification/NotificationData;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "mData"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/notification/NotificationData;->getTargetUI()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v3, 0x1

    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :pswitch_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity;->L()V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :pswitch_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity;->E()V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :pswitch_2
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity;->C()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :pswitch_3
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity;->H()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :pswitch_4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity;->M()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :pswitch_5
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity;->N()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :pswitch_6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity;->F()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :pswitch_7
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity;->J()V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :pswitch_8
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity;->K()V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :pswitch_9
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity;->I()V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :pswitch_a
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity;->D()V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :pswitch_b
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity;->G()V

    .line 66
    .line 67
    .line 68
    :goto_0
    const/4 v3, 0x0

    .line 69
    :goto_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity;->k:Lcom/startshorts/androidplayer/bean/notification/NotificationData;

    .line 70
    .line 71
    if-nez v0, :cond_1

    .line 72
    .line 73
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_1
    move-object v1, v0

    .line 78
    :goto_2
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/NotificationData;->getTargetUI()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    const/4 v1, 0x5

    .line 83
    if-ne v0, v1, :cond_2

    .line 84
    .line 85
    const-string v0, "alert"

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_2
    const-string v0, "push"

    .line 89
    .line 90
    :goto_3
    invoke-direct {p0, v0, v3}, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity;->O(Ljava/lang/String;Z)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->t()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_3

    .line 98
    .line 99
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 100
    .line 101
    .line 102
    :cond_3
    return-void

    .line 103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final C()V
    .locals 10

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->a:Lcom/startshorts/androidplayer/manager/push/util/PushUtil;

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/manager/push/task/PushType;->BONUS_WILL_EXPIRED:Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->f(Lcom/startshorts/androidplayer/manager/push/task/PushType;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/PushManager;->a:Lcom/startshorts/androidplayer/manager/push/PushManager;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/push/PushManager;->l()V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lrf/c;->a:Lrf/c;

    .line 14
    .line 15
    invoke-virtual {v0}, Lrf/c;->a()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity;->k:Lcom/startshorts/androidplayer/bean/notification/NotificationData;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    const-string v1, "mData"

    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    :cond_0
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/NotificationData;->getExtras()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-class v2, Lcom/startshorts/androidplayer/bean/notification/BonusWillExpiredNotification;

    .line 33
    .line 34
    invoke-static {v1, v2}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/startshorts/androidplayer/bean/notification/BonusWillExpiredNotification;

    .line 39
    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    const-string v0, "executeBonusWillExpiredAction failed -> notification is null"

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->m(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    const/4 v2, 0x1

    .line 49
    invoke-virtual {v0, v2}, Lrf/c;->w(Z)V

    .line 50
    .line 51
    .line 52
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 53
    .line 54
    new-instance v5, Landroid/os/Bundle;

    .line 55
    .line 56
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v0, "push_name"

    .line 60
    .line 61
    const-string v2, "expiring_soon"

    .line 62
    .line 63
    invoke-virtual {v5, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v0, "title"

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/BonusWillExpiredNotification;->getTitle()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v5, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v0, "content"

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/BonusWillExpiredNotification;->getContent()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v5, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 85
    .line 86
    const/4 v8, 0x4

    .line 87
    const/4 v9, 0x0

    .line 88
    const-string v4, "push_open"

    .line 89
    .line 90
    const-wide/16 v6, 0x0

    .line 91
    .line 92
    invoke-static/range {v3 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method private final D()V
    .locals 10

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->a:Lcom/startshorts/androidplayer/manager/push/util/PushUtil;

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/manager/push/task/PushType;->CHECK_IN:Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->f(Lcom/startshorts/androidplayer/manager/push/task/PushType;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/PushManager;->a:Lcom/startshorts/androidplayer/manager/push/PushManager;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/push/PushManager;->l()V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lrf/c;->a:Lrf/c;

    .line 14
    .line 15
    invoke-virtual {v0}, Lrf/c;->a()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity;->k:Lcom/startshorts/androidplayer/bean/notification/NotificationData;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    const-string v1, "mData"

    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    :cond_0
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/NotificationData;->getExtras()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-class v2, Lcom/startshorts/androidplayer/bean/notification/CheckInNotification;

    .line 33
    .line 34
    invoke-static {v1, v2}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/startshorts/androidplayer/bean/notification/CheckInNotification;

    .line 39
    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    const-string v0, "executeNewShortsAction failed -> notification is null"

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->m(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    const/4 v2, 0x1

    .line 49
    invoke-virtual {v0, v2}, Lrf/c;->x(Z)V

    .line 50
    .line 51
    .line 52
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 53
    .line 54
    new-instance v5, Landroid/os/Bundle;

    .line 55
    .line 56
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v0, "push_name"

    .line 60
    .line 61
    const-string v2, "check_in_alert"

    .line 62
    .line 63
    invoke-virtual {v5, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v0, "title"

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/CheckInNotification;->getTitle()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v5, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v0, "content"

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/CheckInNotification;->getContent()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v5, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 85
    .line 86
    const/4 v8, 0x4

    .line 87
    const/4 v9, 0x0

    .line 88
    const-string v4, "push_open"

    .line 89
    .line 90
    const-wide/16 v6, 0x0

    .line 91
    .line 92
    invoke-static/range {v3 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method private final E()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity;->k:Lcom/startshorts/androidplayer/bean/notification/NotificationData;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "mData"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/notification/NotificationData;->getExtras()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-class v1, Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;

    .line 16
    .line 17
    invoke-static {v0, v1}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const-string v0, "executeCurPlayAction failed -> notification is null"

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->m(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    sget-object v1, Lrf/c;->a:Lrf/c;

    .line 32
    .line 33
    new-instance v2, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 34
    .line 35
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v3, "Push"

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setFrom(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;->getVideoType()Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const/4 v4, 0x4

    .line 48
    if-nez v3, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-ne v3, v4, :cond_3

    .line 56
    .line 57
    move v3, v4

    .line 58
    goto :goto_1

    .line 59
    :cond_3
    :goto_0
    const/4 v3, 0x3

    .line 60
    :goto_1
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setType(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;->getVideoType()Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const/4 v5, 0x0

    .line 68
    if-nez v3, :cond_4

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-ne v3, v4, :cond_6

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;->getEpisodeId()Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    if-eqz v3, :cond_5

    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    goto :goto_2

    .line 88
    :cond_5
    move v3, v5

    .line 89
    :goto_2
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setEpisodeId(I)V

    .line 90
    .line 91
    .line 92
    :cond_6
    :goto_3
    new-instance v3, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 93
    .line 94
    invoke-direct {v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;->getShortId()Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    if-eqz v4, :cond_7

    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    :cond_7
    invoke-virtual {v3, v5}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsId(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;->getCover()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setCover(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;->getVideoType()Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    if-eqz v4, :cond_8

    .line 122
    .line 123
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    goto :goto_4

    .line 128
    :cond_8
    const/4 v4, 0x1

    .line 129
    :goto_4
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setVideoType(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;->getShortPlayCode()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortPlayCode(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;->getUpack()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setUpack(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setShortsInfo(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v2}, Lrf/c;->u(Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V

    .line 150
    .line 151
    .line 152
    sget-object v5, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 153
    .line 154
    new-instance v7, Landroid/os/Bundle;

    .line 155
    .line 156
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 157
    .line 158
    .line 159
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 160
    .line 161
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->k()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    const-string v2, "country"

    .line 166
    .line 167
    invoke-virtual {v7, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    const-string v1, "device_type"

    .line 171
    .line 172
    const-string v2, "and"

    .line 173
    .line 174
    invoke-virtual {v7, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    const-string v1, "type"

    .line 178
    .line 179
    const-string v2, "Real_time_Watch"

    .line 180
    .line 181
    invoke-virtual {v7, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;->getShortPlayCode()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    const-string v2, "reel_id"

    .line 193
    .line 194
    invoke-virtual {v7, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;->getDramaNum()Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    const-string v1, "episode"

    .line 206
    .line 207
    invoke-virtual {v7, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 211
    .line 212
    const/4 v10, 0x4

    .line 213
    const/4 v11, 0x0

    .line 214
    const-string v6, "realtimeactivity_click"

    .line 215
    .line 216
    const-wide/16 v8, 0x0

    .line 217
    .line 218
    invoke-static/range {v5 .. v11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    return-void
.end method

.method private final F()V
    .locals 11

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/PushManager;->a:Lcom/startshorts/androidplayer/manager/push/PushManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/push/PushManager;->l()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lrf/c;->a:Lrf/c;

    .line 7
    .line 8
    invoke-virtual {v0}, Lrf/c;->a()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity;->k:Lcom/startshorts/androidplayer/bean/notification/NotificationData;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string v1, "mData"

    .line 16
    .line 17
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    :cond_0
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/NotificationData;->getExtras()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-class v2, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;

    .line 26
    .line 27
    invoke-static {v1, v2}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;

    .line 32
    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    const-string v0, "executeCustomAction failed -> notification is null"

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->m(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getUrl()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const-string v2, "push"

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Lrf/c;->s(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getUrl()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v0, v2}, Lrf/c;->r(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    :goto_0
    new-instance v2, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 76
    .line 77
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v3, "Push"

    .line 81
    .line 82
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setFrom(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const/4 v3, 0x3

    .line 86
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setType(I)V

    .line 87
    .line 88
    .line 89
    new-instance v3, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 90
    .line 91
    invoke-direct {v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getShortId()I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsId(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getShortPlayCode()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortPlayCode(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getUpack()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setUpack(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setShortsInfo(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getPushId()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setPushId(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v2}, Lrf/c;->u(Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V

    .line 142
    .line 143
    .line 144
    :goto_1
    sget-object v4, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 145
    .line 146
    new-instance v6, Landroid/os/Bundle;

    .line 147
    .line 148
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string v0, "push_name"

    .line 152
    .line 153
    const-string v2, "customize"

    .line 154
    .line 155
    invoke-virtual {v6, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getShortId()I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-lez v0, :cond_4

    .line 167
    .line 168
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getShortPlayCode()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    const-string v2, "reel_id"

    .line 177
    .line 178
    invoke-virtual {v6, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    :cond_4
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getPushId()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    const-string v2, "push_id"

    .line 190
    .line 191
    invoke-virtual {v6, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getTitle()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    const-string v2, "title"

    .line 203
    .line 204
    invoke-virtual {v6, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getContent()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    const-string v2, "content"

    .line 216
    .line 217
    invoke-virtual {v6, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 221
    .line 222
    const/4 v9, 0x4

    .line 223
    const/4 v10, 0x0

    .line 224
    const-string v5, "push_open"

    .line 225
    .line 226
    const-wide/16 v7, 0x0

    .line 227
    .line 228
    invoke-static/range {v4 .. v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getPushId()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    if-eqz v0, :cond_5

    .line 240
    .line 241
    sget-object v1, Lcom/startshorts/androidplayer/repo/push/PushRepo;->a:Lcom/startshorts/androidplayer/repo/push/PushRepo;

    .line 242
    .line 243
    const/4 v2, 0x1

    .line 244
    invoke-virtual {v1, v2, v0}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->D(ILjava/lang/String;)Lkotlinx/coroutines/r;

    .line 245
    .line 246
    .line 247
    :cond_5
    return-void
.end method

.method private final G()V
    .locals 9

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->a:Lcom/startshorts/androidplayer/manager/push/util/PushUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->d()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/PushManager;->a:Lcom/startshorts/androidplayer/manager/push/PushManager;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/push/PushManager;->l()V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lrf/c;->a:Lrf/c;

    .line 12
    .line 13
    invoke-virtual {v0}, Lrf/c;->a()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity;->k:Lcom/startshorts/androidplayer/bean/notification/NotificationData;

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const-string v1, "mData"

    .line 21
    .line 22
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    :cond_0
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/NotificationData;->getExtras()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-class v2, Lcom/startshorts/androidplayer/bean/notification/DaemonNotification;

    .line 31
    .line 32
    invoke-static {v1, v2}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/startshorts/androidplayer/bean/notification/DaemonNotification;

    .line 37
    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    const-string v0, "executeDiscoverAction failed -> notification is null"

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->m(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    const/4 v2, 0x1

    .line 47
    invoke-virtual {v0, v2}, Lrf/c;->y(Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/DaemonNotification;->getWakeUp()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 57
    .line 58
    new-instance v4, Landroid/os/Bundle;

    .line 59
    .line 60
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v0, "push_name"

    .line 64
    .line 65
    const-string v3, "wake_up"

    .line 66
    .line 67
    invoke-virtual {v4, v0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string v0, "title"

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/DaemonNotification;->getTitle()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v4, v0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string v0, "content"

    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/DaemonNotification;->getContent()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 89
    .line 90
    const/4 v7, 0x4

    .line 91
    const/4 v8, 0x0

    .line 92
    const-string v3, "push_open"

    .line 93
    .line 94
    const-wide/16 v5, 0x0

    .line 95
    .line 96
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    :cond_2
    return-void
.end method

.method private final H()V
    .locals 10

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->a:Lcom/startshorts/androidplayer/manager/push/util/PushUtil;

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/manager/push/task/PushType;->MISS_CHECK_IN:Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->f(Lcom/startshorts/androidplayer/manager/push/task/PushType;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/PushManager;->a:Lcom/startshorts/androidplayer/manager/push/PushManager;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/push/PushManager;->l()V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lrf/c;->a:Lrf/c;

    .line 14
    .line 15
    invoke-virtual {v0}, Lrf/c;->a()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity;->k:Lcom/startshorts/androidplayer/bean/notification/NotificationData;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    const-string v1, "mData"

    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    :cond_0
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/NotificationData;->getExtras()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-class v2, Lcom/startshorts/androidplayer/bean/notification/MissCheckInNotification;

    .line 33
    .line 34
    invoke-static {v1, v2}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/startshorts/androidplayer/bean/notification/MissCheckInNotification;

    .line 39
    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    const-string v0, "executeMissCheckInAction failed -> notification is null"

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->m(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    const/4 v2, 0x1

    .line 49
    invoke-virtual {v0, v2}, Lrf/c;->x(Z)V

    .line 50
    .line 51
    .line 52
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 53
    .line 54
    new-instance v5, Landroid/os/Bundle;

    .line 55
    .line 56
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v0, "push_name"

    .line 60
    .line 61
    const-string v2, "miss_check_in"

    .line 62
    .line 63
    invoke-virtual {v5, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v0, "title"

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/MissCheckInNotification;->getTitle()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v5, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v0, "content"

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/MissCheckInNotification;->getContent()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v5, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 85
    .line 86
    const/4 v8, 0x4

    .line 87
    const/4 v9, 0x0

    .line 88
    const-string v4, "push_open"

    .line 89
    .line 90
    const-wide/16 v6, 0x0

    .line 91
    .line 92
    invoke-static/range {v3 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method private final I()V
    .locals 12

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->a:Lcom/startshorts/androidplayer/manager/push/util/PushUtil;

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/manager/push/task/PushType;->NEW_SHORTS:Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->f(Lcom/startshorts/androidplayer/manager/push/task/PushType;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/PushManager;->a:Lcom/startshorts/androidplayer/manager/push/PushManager;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/push/PushManager;->l()V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lrf/c;->a:Lrf/c;

    .line 14
    .line 15
    invoke-virtual {v0}, Lrf/c;->a()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity;->k:Lcom/startshorts/androidplayer/bean/notification/NotificationData;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    const-string v1, "mData"

    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    :cond_0
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/NotificationData;->getExtras()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-class v2, Lcom/startshorts/androidplayer/bean/notification/NewShortsNotification;

    .line 33
    .line 34
    invoke-static {v1, v2}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/startshorts/androidplayer/bean/notification/NewShortsNotification;

    .line 39
    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    const-string v0, "executeNewShortsAction failed -> notification is null"

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->m(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    new-instance v2, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 49
    .line 50
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v3, "Push"

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setFrom(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getDramId()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-lez v3, :cond_2

    .line 63
    .line 64
    const/4 v3, 0x4

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/4 v3, 0x3

    .line 67
    :goto_0
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setType(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getDramId()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-lez v3, :cond_3

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getDramId()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setEpisodeId(I)V

    .line 81
    .line 82
    .line 83
    :cond_3
    new-instance v3, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 84
    .line 85
    invoke-direct {v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getShortPlayId()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsId(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getShortPlayCode()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortPlayCode(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getShortPlayName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsName(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getCoverId()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setCover(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getUpack()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setUpack(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setShortsInfo(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v2}, Lrf/c;->u(Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V

    .line 127
    .line 128
    .line 129
    sget-object v5, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 130
    .line 131
    new-instance v7, Landroid/os/Bundle;

    .line 132
    .line 133
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string v0, "push_name"

    .line 137
    .line 138
    const-string v2, "reel_update"

    .line 139
    .line 140
    invoke-virtual {v7, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const-string v0, "reel_id"

    .line 144
    .line 145
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getShortPlayCode()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {v7, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    const-string v0, "title"

    .line 153
    .line 154
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getTitle()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {v7, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getRecommendation()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    if-eqz v0, :cond_5

    .line 166
    .line 167
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-nez v0, :cond_4

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_4
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getRecommendation()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    goto :goto_2

    .line 179
    :cond_5
    :goto_1
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getSummary()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    :goto_2
    const-string v1, "content"

    .line 184
    .line 185
    invoke-virtual {v7, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 189
    .line 190
    const/4 v10, 0x4

    .line 191
    const/4 v11, 0x0

    .line 192
    const-string v6, "push_open"

    .line 193
    .line 194
    const-wide/16 v8, 0x0

    .line 195
    .line 196
    invoke-static/range {v5 .. v11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    return-void
.end method

.method private final J()V
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    const/4 v5, 0x6

    .line 4
    const/4 v6, 0x0

    .line 5
    const-string v1, "notificationBar_click"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/PushManager;->a:Lcom/startshorts/androidplayer/manager/push/PushManager;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/push/PushManager;->l()V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lrf/c;->a:Lrf/c;

    .line 19
    .line 20
    invoke-virtual {v0}, Lrf/c;->a()V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity;->k:Lcom/startshorts/androidplayer/bean/notification/NotificationData;

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    const-string v1, "mData"

    .line 28
    .line 29
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    :cond_0
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/NotificationData;->getExtras()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-class v2, Lcom/startshorts/androidplayer/bean/notification/PermanentShortsNotification;

    .line 38
    .line 39
    invoke-static {v1, v2}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/startshorts/androidplayer/bean/notification/PermanentShortsNotification;

    .line 44
    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    const-string v0, "executePermanentShortsAction failed -> notification is null"

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->m(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    new-instance v2, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 54
    .line 55
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v3, "alert"

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setFrom(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getDramId()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-lez v3, :cond_2

    .line 68
    .line 69
    const/4 v3, 0x4

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const/4 v3, 0x3

    .line 72
    :goto_0
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setType(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getDramId()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-lez v3, :cond_3

    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getDramId()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setEpisodeId(I)V

    .line 86
    .line 87
    .line 88
    :cond_3
    new-instance v3, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 89
    .line 90
    invoke-direct {v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getShortPlayId()I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsId(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getShortPlayCode()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortPlayCode(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getShortPlayName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsName(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getCoverId()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setCover(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getUpack()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v3, v1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setUpack(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setShortsInfo(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v2}, Lrf/c;->u(Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method private final K()V
    .locals 11

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->a:Lcom/startshorts/androidplayer/manager/push/util/PushUtil;

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/manager/push/task/PushType;->RECOMMEND_SHORTS:Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->f(Lcom/startshorts/androidplayer/manager/push/task/PushType;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/PushManager;->a:Lcom/startshorts/androidplayer/manager/push/PushManager;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/push/PushManager;->l()V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lrf/c;->a:Lrf/c;

    .line 14
    .line 15
    invoke-virtual {v0}, Lrf/c;->a()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity;->k:Lcom/startshorts/androidplayer/bean/notification/NotificationData;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    const-string v1, "mData"

    .line 24
    .line 25
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    move-object v1, v2

    .line 29
    :cond_0
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/NotificationData;->getExtras()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-class v3, Lcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;

    .line 34
    .line 35
    invoke-static {v1, v3}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;

    .line 40
    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    const-string v0, "executeRecommendShortsAction failed -> notification is null"

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->m(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    const/4 v3, 0x2

    .line 50
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->setRecommendPool(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;->setCover(Landroid/graphics/Bitmap;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lrf/c;->v(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 57
    .line 58
    .line 59
    sget-object v4, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 60
    .line 61
    invoke-virtual {v4, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    const-string v0, "push_name"

    .line 66
    .line 67
    const-string v2, "active_push"

    .line 68
    .line 69
    invoke-virtual {v6, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string v0, "title"

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;->getTitle()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v6, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;->getRecommendation()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_2

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;->getRecommendation()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    goto :goto_1

    .line 99
    :cond_3
    :goto_0
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getSummary()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    :goto_1
    const-string v1, "content"

    .line 104
    .line 105
    invoke-virtual {v6, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 109
    .line 110
    const/4 v9, 0x4

    .line 111
    const/4 v10, 0x0

    .line 112
    const-string v5, "push_open"

    .line 113
    .line 114
    const-wide/16 v7, 0x0

    .line 115
    .line 116
    invoke-static/range {v4 .. v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method private final L()V
    .locals 9

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/PushManager;->a:Lcom/startshorts/androidplayer/manager/push/PushManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/push/PushManager;->b()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/push/PushManager;->l()V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lrf/c;->a:Lrf/c;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Lrf/c;->D(Z)V

    .line 13
    .line 14
    .line 15
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 16
    .line 17
    new-instance v4, Landroid/os/Bundle;

    .line 18
    .line 19
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->k()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "country"

    .line 29
    .line 30
    invoke-virtual {v4, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v0, "device_type"

    .line 34
    .line 35
    const-string v1, "and"

    .line 36
    .line 37
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v0, "type"

    .line 41
    .line 42
    const-string v1, "Real_time_Rewards"

    .line 43
    .line 44
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 48
    .line 49
    const/4 v7, 0x4

    .line 50
    const/4 v8, 0x0

    .line 51
    const-string v3, "realtimeactivity_click"

    .line 52
    .line 53
    const-wide/16 v5, 0x0

    .line 54
    .line 55
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method private final M()V
    .locals 12

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->a:Lcom/startshorts/androidplayer/manager/push/util/PushUtil;

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/manager/push/task/PushType;->START_RECHARGING:Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->f(Lcom/startshorts/androidplayer/manager/push/task/PushType;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/PushManager;->a:Lcom/startshorts/androidplayer/manager/push/PushManager;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/push/PushManager;->l()V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lrf/c;->a:Lrf/c;

    .line 14
    .line 15
    invoke-virtual {v0}, Lrf/c;->a()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity;->k:Lcom/startshorts/androidplayer/bean/notification/NotificationData;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    const-string v1, "mData"

    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    :cond_0
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/NotificationData;->getExtras()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-class v2, Lcom/startshorts/androidplayer/bean/notification/StartRechargingNotification;

    .line 33
    .line 34
    invoke-static {v1, v2}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/startshorts/androidplayer/bean/notification/StartRechargingNotification;

    .line 39
    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    const-string v0, "executeStartRechargingAction failed -> notification is null"

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->m(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    new-instance v2, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 49
    .line 50
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v3, "Push"

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setFrom(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getDramId()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-lez v3, :cond_2

    .line 63
    .line 64
    const/4 v3, 0x4

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/4 v3, 0x3

    .line 67
    :goto_0
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setType(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getDramId()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-lez v3, :cond_3

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getDramId()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setEpisodeId(I)V

    .line 81
    .line 82
    .line 83
    :cond_3
    new-instance v3, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 84
    .line 85
    invoke-direct {v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getShortPlayId()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsId(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getShortPlayCode()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortPlayCode(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getShortPlayName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsName(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getCoverId()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setCover(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getUpack()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setUpack(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setShortsInfo(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v2}, Lrf/c;->u(Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V

    .line 127
    .line 128
    .line 129
    sget-object v5, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 130
    .line 131
    new-instance v7, Landroid/os/Bundle;

    .line 132
    .line 133
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string v0, "push_name"

    .line 137
    .line 138
    const-string v2, "start_charging"

    .line 139
    .line 140
    invoke-virtual {v7, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const-string v0, "reel_id"

    .line 144
    .line 145
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getShortPlayCode()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {v7, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    const-string v0, "title"

    .line 153
    .line 154
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getTitle()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {v7, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const-string v0, "content"

    .line 162
    .line 163
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/StartRechargingNotification;->getContent()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v7, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 171
    .line 172
    const/4 v10, 0x4

    .line 173
    const/4 v11, 0x0

    .line 174
    const-string v6, "push_open"

    .line 175
    .line 176
    const-wide/16 v8, 0x0

    .line 177
    .line 178
    invoke-static/range {v5 .. v11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    return-void
.end method

.method private final N()V
    .locals 9

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->a:Lcom/startshorts/androidplayer/manager/push/util/PushUtil;

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/manager/push/task/PushType;->SUBS_BONUS:Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->f(Lcom/startshorts/androidplayer/manager/push/task/PushType;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/PushManager;->a:Lcom/startshorts/androidplayer/manager/push/PushManager;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/push/PushManager;->l()V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lrf/c;->a:Lrf/c;

    .line 14
    .line 15
    invoke-virtual {v0}, Lrf/c;->a()V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Lrf/c;->y(Z)V

    .line 20
    .line 21
    .line 22
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 23
    .line 24
    new-instance v4, Landroid/os/Bundle;

    .line 25
    .line 26
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v0, "push_name"

    .line 30
    .line 31
    const-string v1, "subscribe"

    .line 32
    .line 33
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 37
    .line 38
    const/4 v7, 0x4

    .line 39
    const/4 v8, 0x0

    .line 40
    const-string v3, "push_open"

    .line 41
    .line 42
    const-wide/16 v5, 0x0

    .line 43
    .line 44
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private final O(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    sget-object v0, Lfk/a;->a:Lfk/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfk/a;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    sget-object v1, Lud/a;->a:Lud/a;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Lud/a;->Z(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0}, Lfk/a;->c()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lfk/a;->g(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    sget-object p1, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->A()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    invoke-virtual {v0, p1, p2}, Lfk/a;->i(ZZ)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {v0}, Lfk/a;->a()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    new-instance p2, Lcom/startshorts/androidplayer/bean/eventbus/HandleNotificationNavigatorCacheEvent;

    .line 48
    .line 49
    invoke-direct {p2}, Lcom/startshorts/androidplayer/bean/eventbus/HandleNotificationNavigatorCacheEvent;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Lau/c;->l(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p0}, Lfk/a;->f(Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    new-instance p1, Landroid/content/Intent;

    .line 60
    .line 61
    const-class v0, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;

    .line 62
    .line 63
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .line 65
    .line 66
    const-string v0, "quickly_pass"

    .line 67
    .line 68
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 72
    .line 73
    .line 74
    :goto_0
    return-void
.end method

.method private final P()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "data"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-class v1, Lcom/startshorts/androidplayer/bean/notification/NotificationData;

    .line 14
    .line 15
    invoke-static {v0, v1}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/startshorts/androidplayer/bean/notification/NotificationData;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-nez v0, :cond_1

    .line 24
    .line 25
    const-string v0, "data is null"

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->m(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    return v0

    .line 35
    :cond_1
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity;->k:Lcom/startshorts/androidplayer/bean/notification/NotificationData;

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    return v0
.end method


# virtual methods
.method public n()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity;->P()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v0, "data -> "

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity;->k:Lcom/startshorts/androidplayer/bean/notification/NotificationData;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const-string v0, "mData"

    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sget-object p1, Lrf/c;->a:Lrf/c;

    .line 42
    .line 43
    invoke-virtual {p1}, Lrf/c;->a()V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity;->B()V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "LocalNotificationNavigatorActivity"

    .line 2
    .line 3
    return-object v0
.end method
