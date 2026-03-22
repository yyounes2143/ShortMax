.class public final Lcom/startshorts/androidplayer/ui/activity/notification/FCMNotificationNavigatorActivity;
.super Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;
.source "FCMNotificationNavigatorActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/activity/notification/FCMNotificationNavigatorActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final m:Lcom/startshorts/androidplayer/ui/activity/notification/FCMNotificationNavigatorActivity$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private l:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/notification/FCMNotificationNavigatorActivity$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/notification/FCMNotificationNavigatorActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/notification/FCMNotificationNavigatorActivity;->m:Lcom/startshorts/androidplayer/ui/activity/notification/FCMNotificationNavigatorActivity$a;

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

.method private final B(Lcom/startshorts/androidplayer/bean/notification/RevealShortsNotification;)V
    .locals 9

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
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Lrf/c;->w(Z)V

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
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getPushName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "push_name"

    .line 27
    .line 28
    invoke-virtual {v4, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "title"

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getTitle()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getRecommendation()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getRecommendation()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getSummary()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    :goto_1
    const-string v0, "content"

    .line 63
    .line 64
    invoke-virtual {v4, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 68
    .line 69
    const/4 v7, 0x4

    .line 70
    const/4 v8, 0x0

    .line 71
    const-string v3, "push_open"

    .line 72
    .line 73
    const-wide/16 v5, 0x0

    .line 74
    .line 75
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method private final C(Lcom/startshorts/androidplayer/bean/notification/RevealShortsNotification;)V
    .locals 9

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
    const-string v1, "push"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lrf/c;->s(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getActUrl()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lrf/c;->r(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 24
    .line 25
    new-instance v4, Landroid/os/Bundle;

    .line 26
    .line 27
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v0, "push_name"

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getPushName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v0, "push_id"

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getPushId()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v0, "title"

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getTitle()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getRecommendation()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_0

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getRecommendation()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getSummary()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    :goto_1
    const-string v0, "content"

    .line 80
    .line 81
    invoke-virtual {v4, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 85
    .line 86
    const/4 v7, 0x4

    .line 87
    const/4 v8, 0x0

    .line 88
    const-string v3, "push_open"

    .line 89
    .line 90
    const-wide/16 v5, 0x0

    .line 91
    .line 92
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method private final D(Lcom/startshorts/androidplayer/bean/notification/RevealShortsNotification;)V
    .locals 9

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
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Lrf/c;->y(Z)V

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
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getPushName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "push_name"

    .line 27
    .line 28
    invoke-virtual {v4, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "title"

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getTitle()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getRecommendation()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getRecommendation()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getSummary()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    :goto_1
    const-string v0, "content"

    .line 63
    .line 64
    invoke-virtual {v4, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 68
    .line 69
    const/4 v7, 0x4

    .line 70
    const/4 v8, 0x0

    .line 71
    const-string v3, "push_open"

    .line 72
    .line 73
    const-wide/16 v5, 0x0

    .line 74
    .line 75
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method private final E(Lcom/startshorts/androidplayer/bean/notification/RevealShortsNotification;)V
    .locals 9

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
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Lrf/c;->x(Z)V

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
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getPushName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "push_name"

    .line 27
    .line 28
    invoke-virtual {v4, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "title"

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getTitle()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getRecommendation()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getRecommendation()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getSummary()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    :goto_1
    const-string v0, "content"

    .line 63
    .line 64
    invoke-virtual {v4, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 68
    .line 69
    const/4 v7, 0x4

    .line 70
    const/4 v8, 0x0

    .line 71
    const-string v3, "push_open"

    .line 72
    .line 73
    const-wide/16 v5, 0x0

    .line 74
    .line 75
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method private final F(Lcom/startshorts/androidplayer/bean/notification/RevealShortsNotification;)V
    .locals 9

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
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Lrf/c;->A(Z)V

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
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getPushName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "push_name"

    .line 27
    .line 28
    invoke-virtual {v4, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "title"

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getTitle()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getRecommendation()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getRecommendation()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getSummary()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    :goto_1
    const-string v0, "content"

    .line 63
    .line 64
    invoke-virtual {v4, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 68
    .line 69
    const/4 v7, 0x4

    .line 70
    const/4 v8, 0x0

    .line 71
    const-string v3, "push_open"

    .line 72
    .line 73
    const-wide/16 v5, 0x0

    .line 74
    .line 75
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method private final G(Lcom/startshorts/androidplayer/bean/notification/RevealShortsNotification;)V
    .locals 9

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
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Lrf/c;->B(Z)V

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
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getPushName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "push_name"

    .line 27
    .line 28
    invoke-virtual {v4, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "title"

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getTitle()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getRecommendation()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getRecommendation()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getSummary()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    :goto_1
    const-string v0, "content"

    .line 63
    .line 64
    invoke-virtual {v4, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 68
    .line 69
    const/4 v7, 0x4

    .line 70
    const/4 v8, 0x0

    .line 71
    const-string v3, "push_open"

    .line 72
    .line 73
    const-wide/16 v5, 0x0

    .line 74
    .line 75
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method private final H(Lcom/startshorts/androidplayer/bean/notification/RevealShortsNotification;)V
    .locals 9

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
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Lrf/c;->C(Z)V

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
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getPushName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "push_name"

    .line 27
    .line 28
    invoke-virtual {v4, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "title"

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getTitle()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getRecommendation()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getRecommendation()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getSummary()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    :goto_1
    const-string v0, "content"

    .line 63
    .line 64
    invoke-virtual {v4, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 68
    .line 69
    const/4 v7, 0x4

    .line 70
    const/4 v8, 0x0

    .line 71
    const-string v3, "push_open"

    .line 72
    .line 73
    const-wide/16 v5, 0x0

    .line 74
    .line 75
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method private final I(Lcom/startshorts/androidplayer/bean/notification/RevealShortsNotification;)V
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
    new-instance v1, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "Push"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setFrom(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getDramId()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-lez v2, :cond_0

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v2, 0x3

    .line 30
    :goto_0
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setType(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getDramId()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-lez v2, :cond_1

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getDramId()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setEpisodeId(I)V

    .line 44
    .line 45
    .line 46
    :cond_1
    new-instance v2, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 47
    .line 48
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getShortPlayId()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsId(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getShortPlayCode()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortPlayCode(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getShortPlayName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsName(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getCoverId()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setCover(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getUpack()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setUpack(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setShortsInfo(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lrf/c;->u(Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V

    .line 90
    .line 91
    .line 92
    sget-object v4, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 93
    .line 94
    new-instance v6, Landroid/os/Bundle;

    .line 95
    .line 96
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v0, "push_name"

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getPushName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v6, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string v0, "reel_id"

    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getShortPlayCode()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v6, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const-string v0, "title"

    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getTitle()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v6, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getRecommendation()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    if-eqz v0, :cond_3

    .line 131
    .line 132
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-nez v0, :cond_2

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_2
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getRecommendation()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    goto :goto_2

    .line 144
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getSummary()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    :goto_2
    const-string v0, "content"

    .line 149
    .line 150
    invoke-virtual {v6, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 154
    .line 155
    const/4 v9, 0x4

    .line 156
    const/4 v10, 0x0

    .line 157
    const-string v5, "push_open"

    .line 158
    .line 159
    const-wide/16 v7, 0x0

    .line 160
    .line 161
    invoke-static/range {v4 .. v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    return-void
.end method

.method private final J(Lcom/startshorts/androidplayer/bean/notification/RevealShortsNotification;)V
    .locals 9

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
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Lrf/c;->E(Z)V

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
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getPushName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "push_name"

    .line 27
    .line 28
    invoke-virtual {v4, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "title"

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getTitle()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getRecommendation()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getRecommendation()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getSummary()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    :goto_1
    const-string v0, "content"

    .line 63
    .line 64
    invoke-virtual {v4, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 68
    .line 69
    const/4 v7, 0x4

    .line 70
    const/4 v8, 0x0

    .line 71
    const-string v3, "push_open"

    .line 72
    .line 73
    const-wide/16 v5, 0x0

    .line 74
    .line 75
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method private final K(Lcom/startshorts/androidplayer/bean/notification/RevealShortsNotification;)V
    .locals 9

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
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Lrf/c;->F(Z)V

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
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getPushName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "push_name"

    .line 27
    .line 28
    invoke-virtual {v4, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "title"

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getTitle()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getRecommendation()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getRecommendation()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getSummary()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    :goto_1
    const-string v0, "content"

    .line 63
    .line 64
    invoke-virtual {v4, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 68
    .line 69
    const/4 v7, 0x4

    .line 70
    const/4 v8, 0x0

    .line 71
    const-string v3, "push_open"

    .line 72
    .line 73
    const-wide/16 v5, 0x0

    .line 74
    .line 75
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method private final L(Lcom/startshorts/androidplayer/bean/notification/RevealShortsNotification;)V
    .locals 9

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
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Lrf/c;->G(Z)V

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
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getPushName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "push_name"

    .line 27
    .line 28
    invoke-virtual {v4, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "title"

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getTitle()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getRecommendation()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getRecommendation()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getSummary()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    :goto_1
    const-string v0, "content"

    .line 63
    .line 64
    invoke-virtual {v4, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 68
    .line 69
    const/4 v7, 0x4

    .line 70
    const/4 v8, 0x0

    .line 71
    const-string v3, "push_open"

    .line 72
    .line 73
    const-wide/16 v5, 0x0

    .line 74
    .line 75
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method private final M(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-class v1, Lcom/startshorts/androidplayer/bean/notification/RevealShortsNotification;

    .line 6
    .line 7
    sparse-switch v0, :sswitch_data_0

    .line 8
    .line 9
    .line 10
    goto/16 :goto_0

    .line 11
    .line 12
    :sswitch_0
    const-string v0, "reel_reveal"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    goto/16 :goto_0

    .line 21
    .line 22
    :cond_0
    invoke-static {p2, v1}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/startshorts/androidplayer/bean/notification/RevealShortsNotification;

    .line 27
    .line 28
    if-eqz p1, :cond_b

    .line 29
    .line 30
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/notification/FCMNotificationNavigatorActivity;->I(Lcom/startshorts/androidplayer/bean/notification/RevealShortsNotification;)V

    .line 31
    .line 32
    .line 33
    goto/16 :goto_0

    .line 34
    .line 35
    :sswitch_1
    const-string v0, "customize"

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    goto/16 :goto_0

    .line 44
    .line 45
    :cond_1
    invoke-static {p2, v1}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lcom/startshorts/androidplayer/bean/notification/RevealShortsNotification;

    .line 50
    .line 51
    if-eqz p1, :cond_b

    .line 52
    .line 53
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/notification/FCMNotificationNavigatorActivity;->C(Lcom/startshorts/androidplayer/bean/notification/RevealShortsNotification;)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_0

    .line 57
    .line 58
    :sswitch_2
    const-string v0, "show_my_list_page"

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_2

    .line 65
    .line 66
    goto/16 :goto_0

    .line 67
    .line 68
    :cond_2
    invoke-static {p2, v1}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Lcom/startshorts/androidplayer/bean/notification/RevealShortsNotification;

    .line 73
    .line 74
    if-eqz p1, :cond_b

    .line 75
    .line 76
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/notification/FCMNotificationNavigatorActivity;->F(Lcom/startshorts/androidplayer/bean/notification/RevealShortsNotification;)V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_0

    .line 80
    .line 81
    :sswitch_3
    const-string v0, "expiring_soon"

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_3

    .line 88
    .line 89
    goto/16 :goto_0

    .line 90
    .line 91
    :cond_3
    invoke-static {p2, v1}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Lcom/startshorts/androidplayer/bean/notification/RevealShortsNotification;

    .line 96
    .line 97
    if-eqz p1, :cond_b

    .line 98
    .line 99
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/notification/FCMNotificationNavigatorActivity;->B(Lcom/startshorts/androidplayer/bean/notification/RevealShortsNotification;)V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_0

    .line 103
    .line 104
    :sswitch_4
    const-string v0, "show_discover_page"

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-nez p1, :cond_4

    .line 111
    .line 112
    goto/16 :goto_0

    .line 113
    .line 114
    :cond_4
    invoke-static {p2, v1}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Lcom/startshorts/androidplayer/bean/notification/RevealShortsNotification;

    .line 119
    .line 120
    if-eqz p1, :cond_b

    .line 121
    .line 122
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/notification/FCMNotificationNavigatorActivity;->D(Lcom/startshorts/androidplayer/bean/notification/RevealShortsNotification;)V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_0

    .line 126
    .line 127
    :sswitch_5
    const-string v0, "show_shorts_page"

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-nez p1, :cond_5

    .line 134
    .line 135
    goto/16 :goto_0

    .line 136
    .line 137
    :cond_5
    invoke-static {p2, v1}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    check-cast p1, Lcom/startshorts/androidplayer/bean/notification/RevealShortsNotification;

    .line 142
    .line 143
    if-eqz p1, :cond_b

    .line 144
    .line 145
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/notification/FCMNotificationNavigatorActivity;->J(Lcom/startshorts/androidplayer/bean/notification/RevealShortsNotification;)V

    .line 146
    .line 147
    .line 148
    goto/16 :goto_0

    .line 149
    .line 150
    :sswitch_6
    const-string v0, "show_subsdetail_page"

    .line 151
    .line 152
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-nez p1, :cond_6

    .line 157
    .line 158
    goto/16 :goto_0

    .line 159
    .line 160
    :cond_6
    invoke-static {p2, v1}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    check-cast p1, Lcom/startshorts/androidplayer/bean/notification/RevealShortsNotification;

    .line 165
    .line 166
    if-eqz p1, :cond_b

    .line 167
    .line 168
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/notification/FCMNotificationNavigatorActivity;->K(Lcom/startshorts/androidplayer/bean/notification/RevealShortsNotification;)V

    .line 169
    .line 170
    .line 171
    goto :goto_0

    .line 172
    :sswitch_7
    const-string v0, "show_topup_page"

    .line 173
    .line 174
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-nez p1, :cond_7

    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_7
    invoke-static {p2, v1}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    check-cast p1, Lcom/startshorts/androidplayer/bean/notification/RevealShortsNotification;

    .line 186
    .line 187
    if-eqz p1, :cond_b

    .line 188
    .line 189
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/notification/FCMNotificationNavigatorActivity;->L(Lcom/startshorts/androidplayer/bean/notification/RevealShortsNotification;)V

    .line 190
    .line 191
    .line 192
    goto :goto_0

    .line 193
    :sswitch_8
    const-string v0, "miss_check_in"

    .line 194
    .line 195
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    if-nez p1, :cond_9

    .line 200
    .line 201
    goto :goto_0

    .line 202
    :sswitch_9
    const-string v0, "show_my_recent_page"

    .line 203
    .line 204
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    if-nez p1, :cond_8

    .line 209
    .line 210
    goto :goto_0

    .line 211
    :cond_8
    invoke-static {p2, v1}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    check-cast p1, Lcom/startshorts/androidplayer/bean/notification/RevealShortsNotification;

    .line 216
    .line 217
    if-eqz p1, :cond_b

    .line 218
    .line 219
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/notification/FCMNotificationNavigatorActivity;->G(Lcom/startshorts/androidplayer/bean/notification/RevealShortsNotification;)V

    .line 220
    .line 221
    .line 222
    goto :goto_0

    .line 223
    :sswitch_a
    const-string v0, "show_reward_page"

    .line 224
    .line 225
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result p1

    .line 229
    if-nez p1, :cond_9

    .line 230
    .line 231
    goto :goto_0

    .line 232
    :cond_9
    invoke-static {p2, v1}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    check-cast p1, Lcom/startshorts/androidplayer/bean/notification/RevealShortsNotification;

    .line 237
    .line 238
    if-eqz p1, :cond_b

    .line 239
    .line 240
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/notification/FCMNotificationNavigatorActivity;->E(Lcom/startshorts/androidplayer/bean/notification/RevealShortsNotification;)V

    .line 241
    .line 242
    .line 243
    goto :goto_0

    .line 244
    :sswitch_b
    const-string v0, "show_profile_page"

    .line 245
    .line 246
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    if-nez p1, :cond_a

    .line 251
    .line 252
    goto :goto_0

    .line 253
    :cond_a
    invoke-static {p2, v1}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    check-cast p1, Lcom/startshorts/androidplayer/bean/notification/RevealShortsNotification;

    .line 258
    .line 259
    if-eqz p1, :cond_b

    .line 260
    .line 261
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/notification/FCMNotificationNavigatorActivity;->H(Lcom/startshorts/androidplayer/bean/notification/RevealShortsNotification;)V

    .line 262
    .line 263
    .line 264
    :cond_b
    :goto_0
    return-void

    .line 265
    :sswitch_data_0
    .sparse-switch
        -0x60a2ba99 -> :sswitch_b
        -0x4bca68a3 -> :sswitch_a
        -0x4a99869e -> :sswitch_9
        -0x499f0861 -> :sswitch_8
        -0x41d55ac0 -> :sswitch_7
        -0x150c3398 -> :sswitch_6
        -0x12d3b7eb -> :sswitch_5
        -0x877a49d -> :sswitch_4
        0x1d1ad17e -> :sswitch_3
        0x5b7110bf -> :sswitch_2
        0x600e8c43 -> :sswitch_1
        0x6a8ed992 -> :sswitch_0
    .end sparse-switch
.end method

.method private final N()V
    .locals 4

    .line 1
    sget-object v0, Lfk/c;->a:Lfk/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    invoke-static {v0, v2, v3, v1}, Lfk/c;->c(Lfk/c;ZILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Laf/i;->a:Laf/i;

    .line 10
    .line 11
    invoke-virtual {v0}, Laf/i;->g()V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lfk/a;->a:Lfk/a;

    .line 15
    .line 16
    invoke-virtual {v0}, Lfk/a;->a()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    sget-object v1, Lud/a;->a:Lud/a;

    .line 23
    .line 24
    const-string v2, "push"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lud/a;->Z(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {v0}, Lfk/a;->c()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Lfk/a;->g(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    sget-object v1, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->A()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0, v3, v3}, Lfk/a;->i(ZZ)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {v0}, Lfk/a;->a()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    new-instance v2, Lcom/startshorts/androidplayer/bean/eventbus/HandleNotificationNavigatorCacheEvent;

    .line 62
    .line 63
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/eventbus/HandleNotificationNavigatorCacheEvent;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Lau/c;->l(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p0}, Lfk/a;->f(Landroid/content/Context;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    new-instance v0, Landroid/content/Intent;

    .line 74
    .line 75
    const-class v1, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;

    .line 76
    .line 77
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 81
    .line 82
    .line 83
    :goto_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    return-void
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
    sget-object p1, Led/a;->a:Led/a;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, p0, v0}, Led/a;->b(Landroid/app/Activity;Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p0}, Led/a;->a(Landroid/app/Activity;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "pushType"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/FCMNotificationNavigatorActivity;->k:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v0, "pushParam"

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/FCMNotificationNavigatorActivity;->l:Ljava/lang/String;

    .line 36
    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v0, "mPushType("

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/notification/FCMNotificationNavigatorActivity;->k:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, ") mPushParam("

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/notification/FCMNotificationNavigatorActivity;->l:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const/16 v0, 0x29

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/FCMNotificationNavigatorActivity;->k:Ljava/lang/String;

    .line 75
    .line 76
    if-eqz p1, :cond_2

    .line 77
    .line 78
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_0

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/FCMNotificationNavigatorActivity;->l:Ljava/lang/String;

    .line 86
    .line 87
    if-eqz p1, :cond_2

    .line 88
    .line 89
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-nez p1, :cond_1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/FCMNotificationNavigatorActivity;->k:Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/notification/FCMNotificationNavigatorActivity;->l:Ljava/lang/String;

    .line 102
    .line 103
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/activity/notification/FCMNotificationNavigatorActivity;->M(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/notification/FCMNotificationNavigatorActivity;->N()V

    .line 110
    .line 111
    .line 112
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->t()Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_3

    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 119
    .line 120
    .line 121
    :cond_3
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "FCMNotificationNavigatorActivity"

    .line 2
    .line 3
    return-object v0
.end method
