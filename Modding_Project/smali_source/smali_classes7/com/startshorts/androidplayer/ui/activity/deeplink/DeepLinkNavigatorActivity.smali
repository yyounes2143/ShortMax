.class public final Lcom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity;
.super Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;
.source "DeepLinkNavigatorActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDeepLinkNavigatorActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeepLinkNavigatorActivity.kt\ncom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity\n+ 2 CharSequence.kt\nandroidx/core/text/CharSequenceKt\n*L\n1#1,359:1\n28#2:360\n*S KotlinDebug\n*F\n+ 1 DeepLinkNavigatorActivity.kt\ncom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity\n*L\n225#1:360\n*E\n"
    }
.end annotation


# static fields
.field public static final k:Lcom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity;->k:Lcom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity$a;

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

.method private final B(Z)V
    .locals 2

    .line 1
    const-string v0, "callAppToFront"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->m(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lfk/a;->a:Lfk/a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lfk/a;->c()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lfk/a;->g(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1, p1}, Lfk/a;->i(ZZ)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method static synthetic C(Lcom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity;->B(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    if-nez p5, :cond_0

    .line 8
    .line 9
    if-nez p4, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 13
    .line 14
    new-instance v2, Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 17
    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    const-string v1, "activity_id"

    .line 22
    .line 23
    invoke-virtual {v2, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    if-eqz p2, :cond_2

    .line 27
    .line 28
    const-string p1, "activity_name"

    .line 29
    .line 30
    invoke-virtual {v2, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_2
    if-eqz p5, :cond_3

    .line 34
    .line 35
    const-string p1, "channel"

    .line 36
    .line 37
    invoke-virtual {v2, p1, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_3
    if-eqz p3, :cond_4

    .line 41
    .line 42
    const-string p1, "sku_id"

    .line 43
    .line 44
    invoke-virtual {v2, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_4
    if-eqz p4, :cond_5

    .line 48
    .line 49
    const-string p1, "reel_id"

    .line 50
    .line 51
    invoke-virtual {v2, p1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 55
    .line 56
    const/4 v5, 0x4

    .line 57
    const/4 v6, 0x0

    .line 58
    const-string v1, "activity_enter_app"

    .line 59
    .line 60
    const-wide/16 v3, 0x0

    .line 61
    .line 62
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method private final E(Ljava/lang/String;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->e:Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->b()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "onlyActiveReport -> data("

    .line 23
    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/16 v3, 0x29

    .line 31
    .line 32
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v3, "CampaignNewTag"

    .line 40
    .line 41
    invoke-virtual {v0, v3, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sget-object v1, Lcom/startshorts/androidplayer/manager/push/PushManager;->a:Lcom/startshorts/androidplayer/manager/push/PushManager;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/push/PushManager;->l()V

    .line 47
    .line 48
    .line 49
    sget-object v1, Lrf/c;->a:Lrf/c;

    .line 50
    .line 51
    invoke-virtual {v1}, Lrf/c;->a()V

    .line 52
    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    invoke-virtual {v1, v4}, Lrf/c;->t(Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V

    .line 56
    .line 57
    .line 58
    sget-object v1, Lud/a;->a:Lud/a;

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Lud/a;->d0(Z)V

    .line 61
    .line 62
    .line 63
    sget-object v2, Lfk/g;->a:Lfk/g;

    .line 64
    .line 65
    const-string v4, "0"

    .line 66
    .line 67
    invoke-virtual {v2, v4}, Lfk/g;->a(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v4, "CampaignPullUp.allPullUp("

    .line 76
    .line 77
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v4, ") -- isInstallFirstOpen"

    .line 84
    .line 85
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Lud/a;->P()Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v0, v3, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Lud/a;->P()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-nez v0, :cond_0

    .line 107
    .line 108
    sget-object v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp;

    .line 109
    .line 110
    const/16 v6, 0xe

    .line 111
    .line 112
    const/4 v7, 0x0

    .line 113
    const/4 v3, 0x0

    .line 114
    const/4 v4, 0x0

    .line 115
    const/4 v5, 0x0

    .line 116
    move-object v2, p1

    .line 117
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp;->b(Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 118
    .line 119
    .line 120
    :cond_0
    return-void
.end method

.method private final F()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v2, v1

    .line 18
    :goto_0
    const-string v3, "/web/appFront"

    .line 19
    .line 20
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v5, "parseParams -> data("

    .line 30
    .line 31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v5, ") appFront("

    .line 38
    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const/16 v5, 0x29

    .line 46
    .line 47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {p0, v4}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->m(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 v4, 0x1

    .line 58
    const/4 v6, 0x0

    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    invoke-static {p0, v6, v4, v1}, Lcom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity;->C(Lcom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity;ZILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_10

    .line 65
    .line 66
    :cond_1
    if-eqz v0, :cond_2

    .line 67
    .line 68
    const-string v3, "shorttv_type"

    .line 69
    .line 70
    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    move-object v3, v1

    .line 76
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v8, "parseParams -> shorttvType("

    .line 82
    .line 83
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-virtual {p0, v7}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->m(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const-string v7, "1"

    .line 100
    .line 101
    if-eqz v3, :cond_b

    .line 102
    .line 103
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 104
    .line 105
    .line 106
    move-result v9

    .line 107
    if-nez v9, :cond_3

    .line 108
    .line 109
    goto/16 :goto_4

    .line 110
    .line 111
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v8, ") =="

    .line 123
    .line 124
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {p0, v2}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->m(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    if-eqz v3, :cond_a

    .line 135
    .line 136
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    packed-switch v2, :pswitch_data_0

    .line 141
    .line 142
    .line 143
    goto/16 :goto_3

    .line 144
    .line 145
    :pswitch_0
    const-string v2, "3"

    .line 146
    .line 147
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-nez v2, :cond_4

    .line 152
    .line 153
    goto/16 :goto_3

    .line 154
    .line 155
    :cond_4
    sget-object v2, Lfk/s;->a:Lfk/s;

    .line 156
    .line 157
    invoke-virtual {v2, v6}, Lfk/s;->i(Z)V

    .line 158
    .line 159
    .line 160
    sget-object v2, Lud/a;->a:Lud/a;

    .line 161
    .line 162
    invoke-virtual {v2, v6}, Lud/a;->p0(Z)V

    .line 163
    .line 164
    .line 165
    const-string v2, "orderNo"

    .line 166
    .line 167
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    const-string v3, "orderType"

    .line 172
    .line 173
    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    if-eqz v0, :cond_5

    .line 178
    .line 179
    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    if-eqz v3, :cond_5

    .line 184
    .line 185
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    :cond_5
    invoke-direct {p0, v4}, Lcom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity;->B(Z)V

    .line 194
    .line 195
    .line 196
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    new-instance v3, Lcom/startshorts/androidplayer/bean/eventbus/TTPResultEvent;

    .line 201
    .line 202
    invoke-direct {v3, v1, v2}, Lcom/startshorts/androidplayer/bean/eventbus/TTPResultEvent;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v3}, Lau/c;->l(Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    goto/16 :goto_10

    .line 209
    .line 210
    :pswitch_1
    const-string v2, "2"

    .line 211
    .line 212
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    if-nez v2, :cond_6

    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_6
    const-string v2, "extra"

    .line 220
    .line 221
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    const-string v3, "TYPE_ACT -> cookie("

    .line 231
    .line 232
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    invoke-virtual {p0, v2}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->m(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    if-eqz v0, :cond_8

    .line 249
    .line 250
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    if-nez v2, :cond_7

    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    const/16 v3, 0x64

    .line 262
    .line 263
    if-gt v2, v3, :cond_8

    .line 264
    .line 265
    sget-object v2, Lud/b;->a:Lud/b;

    .line 266
    .line 267
    invoke-virtual {v2, v0}, Lud/b;->n2(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    :cond_8
    :goto_2
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/PushManager;->a:Lcom/startshorts/androidplayer/manager/push/PushManager;

    .line 271
    .line 272
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/push/PushManager;->l()V

    .line 273
    .line 274
    .line 275
    invoke-static {p0, v6, v4, v1}, Lcom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity;->C(Lcom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity;ZILjava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    new-instance v1, Lcom/startshorts/androidplayer/bean/eventbus/RefreshActEvent;

    .line 283
    .line 284
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshActEvent;-><init>()V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, v1}, Lau/c;->l(Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    goto/16 :goto_10

    .line 291
    .line 292
    :pswitch_2
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-nez v0, :cond_9

    .line 297
    .line 298
    goto :goto_3

    .line 299
    :cond_9
    invoke-static {p0, v6, v4, v1}, Lcom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity;->C(Lcom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity;ZILjava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    goto/16 :goto_10

    .line 303
    .line 304
    :cond_a
    :goto_3
    invoke-static {p0, v6, v4, v1}, Lcom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity;->C(Lcom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity;ZILjava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    goto/16 :goto_10

    .line 308
    .line 309
    :cond_b
    :goto_4
    if-eqz v0, :cond_c

    .line 310
    .line 311
    const-string v3, "activityType"

    .line 312
    .line 313
    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    goto :goto_5

    .line 318
    :cond_c
    move-object v3, v1

    .line 319
    :goto_5
    const-string v8, "shortid"

    .line 320
    .line 321
    if-eqz v3, :cond_f

    .line 322
    .line 323
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 324
    .line 325
    .line 326
    move-result v9

    .line 327
    if-nez v9, :cond_d

    .line 328
    .line 329
    goto/16 :goto_6

    .line 330
    .line 331
    :cond_d
    invoke-static {p0, v6, v4, v1}, Lcom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity;->C(Lcom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity;ZILjava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    const-string v1, "parseParams -> outsideTheApp(H5) open ShortMax App"

    .line 335
    .line 336
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->m(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    if-eqz v1, :cond_20

    .line 344
    .line 345
    sget-object v1, Lud/b;->a:Lud/b;

    .line 346
    .line 347
    invoke-virtual {v1}, Lud/b;->z0()Z

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    if-nez v1, :cond_20

    .line 352
    .line 353
    const-string v1, "activityUrl"

    .line 354
    .line 355
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    .line 363
    .line 364
    const-string v2, "parseParams -> startActivity(ActActivity), h5-url("

    .line 365
    .line 366
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->m(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    if-eqz v0, :cond_20

    .line 383
    .line 384
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 385
    .line 386
    .line 387
    move-result v1

    .line 388
    if-nez v1, :cond_e

    .line 389
    .line 390
    goto/16 :goto_10

    .line 391
    .line 392
    :cond_e
    invoke-static {v0}, Ljk/v;->g(Ljava/lang/String;)Z

    .line 393
    .line 394
    .line 395
    move-result v1

    .line 396
    if-eqz v1, :cond_20

    .line 397
    .line 398
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    const-string v2, "activityId"

    .line 403
    .line 404
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v2

    .line 408
    const-string v3, "activityName"

    .line 409
    .line 410
    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v3

    .line 414
    const-string v4, "activitySkuId"

    .line 415
    .line 416
    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v4

    .line 420
    const-string v5, "channel"

    .line 421
    .line 422
    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v6

    .line 426
    invoke-virtual {v1, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v5

    .line 430
    move-object v1, p0

    .line 431
    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    sget-object v1, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;->B:Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$a;

    .line 435
    .line 436
    const/16 v6, 0x8

    .line 437
    .line 438
    const/4 v7, 0x0

    .line 439
    const-string v3, "outsideTheApp"

    .line 440
    .line 441
    const/4 v5, 0x0

    .line 442
    move-object v2, p0

    .line 443
    move-object v4, v0

    .line 444
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$a;->c(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;ILjava/lang/Object;)V

    .line 445
    .line 446
    .line 447
    goto/16 :goto_10

    .line 448
    .line 449
    :cond_f
    :goto_6
    if-eqz v0, :cond_10

    .line 450
    .line 451
    invoke-virtual {v0, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v3

    .line 455
    goto :goto_7

    .line 456
    :cond_10
    move-object v3, v1

    .line 457
    :goto_7
    if-eqz v0, :cond_11

    .line 458
    .line 459
    const-string v7, "isCpsLaHuo"

    .line 460
    .line 461
    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v7

    .line 465
    goto :goto_8

    .line 466
    :cond_11
    move-object v7, v1

    .line 467
    :goto_8
    const-string v8, "true"

    .line 468
    .line 469
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    move-result v7

    .line 473
    if-eqz v0, :cond_12

    .line 474
    .line 475
    const-string v8, "deep_link_value"

    .line 476
    .line 477
    invoke-virtual {v0, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v8

    .line 481
    goto :goto_9

    .line 482
    :cond_12
    move-object v8, v1

    .line 483
    :goto_9
    new-instance v9, Ljava/lang/StringBuilder;

    .line 484
    .line 485
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 486
    .line 487
    .line 488
    const-string v10, "parseParams -> shortsIdStr("

    .line 489
    .line 490
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    const-string v10, "), isPureActive("

    .line 497
    .line 498
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    const-string v10, "), deepLinkStr("

    .line 505
    .line 506
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v9

    .line 519
    invoke-virtual {p0, v9}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->m(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    :try_start_0
    sget-object v9, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->a:Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;

    .line 523
    .line 524
    invoke-virtual {v9, v8}, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->j(Ljava/lang/String;)Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;

    .line 525
    .line 526
    .line 527
    move-result-object v8

    .line 528
    if-eqz v3, :cond_13

    .line 529
    .line 530
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 531
    .line 532
    .line 533
    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    goto :goto_a

    .line 535
    :catch_0
    move-exception v0

    .line 536
    goto/16 :goto_f

    .line 537
    .line 538
    :cond_13
    const/4 v9, -0x1

    .line 539
    :goto_a
    const-string v10, ""

    .line 540
    .line 541
    if-lez v9, :cond_16

    .line 542
    .line 543
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 544
    .line 545
    .line 546
    move-result-object v7

    .line 547
    invoke-virtual {v7}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v7

    .line 551
    if-eqz v0, :cond_15

    .line 552
    .line 553
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    if-nez v0, :cond_14

    .line 558
    .line 559
    goto :goto_b

    .line 560
    :cond_14
    move-object v10, v0

    .line 561
    :cond_15
    :goto_b
    invoke-direct {p0, v10, v7, v2, v9}, Lcom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 562
    .line 563
    .line 564
    invoke-static {p0, v6, v4, v1}, Lcom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity;->C(Lcom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity;ZILjava/lang/Object;)V

    .line 565
    .line 566
    .line 567
    goto/16 :goto_10

    .line 568
    .line 569
    :cond_16
    if-eqz v7, :cond_19

    .line 570
    .line 571
    if-eqz v0, :cond_18

    .line 572
    .line 573
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    if-nez v0, :cond_17

    .line 578
    .line 579
    goto :goto_c

    .line 580
    :cond_17
    move-object v10, v0

    .line 581
    :cond_18
    :goto_c
    invoke-direct {p0, v10}, Lcom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity;->E(Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    invoke-static {p0, v6, v4, v1}, Lcom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity;->C(Lcom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity;ZILjava/lang/Object;)V

    .line 585
    .line 586
    .line 587
    goto/16 :goto_10

    .line 588
    .line 589
    :cond_19
    if-eqz v8, :cond_1f

    .line 590
    .line 591
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;->getShortPlayId()I

    .line 592
    .line 593
    .line 594
    move-result v7

    .line 595
    if-lez v7, :cond_1c

    .line 596
    .line 597
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 598
    .line 599
    .line 600
    move-result-object v7

    .line 601
    invoke-virtual {v7}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v7

    .line 605
    if-eqz v0, :cond_1b

    .line 606
    .line 607
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v0

    .line 611
    if-nez v0, :cond_1a

    .line 612
    .line 613
    goto :goto_d

    .line 614
    :cond_1a
    move-object v10, v0

    .line 615
    :cond_1b
    :goto_d
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;->getShortPlayId()I

    .line 616
    .line 617
    .line 618
    move-result v0

    .line 619
    invoke-direct {p0, v10, v7, v2, v0}, Lcom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 620
    .line 621
    .line 622
    invoke-static {p0, v6, v4, v1}, Lcom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity;->C(Lcom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity;ZILjava/lang/Object;)V

    .line 623
    .line 624
    .line 625
    goto :goto_10

    .line 626
    :cond_1c
    if-eqz v0, :cond_1e

    .line 627
    .line 628
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v0

    .line 632
    if-nez v0, :cond_1d

    .line 633
    .line 634
    goto :goto_e

    .line 635
    :cond_1d
    move-object v10, v0

    .line 636
    :cond_1e
    :goto_e
    invoke-direct {p0, v10}, Lcom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity;->E(Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    invoke-static {p0, v6, v4, v1}, Lcom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity;->C(Lcom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity;ZILjava/lang/Object;)V

    .line 640
    .line 641
    .line 642
    goto :goto_10

    .line 643
    :cond_1f
    invoke-static {p0, v6, v4, v1}, Lcom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity;->C(Lcom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity;ZILjava/lang/Object;)V

    .line 644
    .line 645
    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    .line 647
    .line 648
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 649
    .line 650
    .line 651
    const-string v2, "invalid shortsId("

    .line 652
    .line 653
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 660
    .line 661
    .line 662
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v0

    .line 666
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->m(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 667
    .line 668
    .line 669
    goto :goto_10

    .line 670
    :goto_f
    invoke-static {p0, v6, v4, v1}, Lcom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity;->C(Lcom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity;ZILjava/lang/Object;)V

    .line 671
    .line 672
    .line 673
    new-instance v1, Ljava/lang/StringBuilder;

    .line 674
    .line 675
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 676
    .line 677
    .line 678
    const-string v2, "parse shortsIdStr exception -> shortsIdStr("

    .line 679
    .line 680
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    .line 682
    .line 683
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    .line 685
    .line 686
    const-string v2, ") errMsg("

    .line 687
    .line 688
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    .line 690
    .line 691
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v0

    .line 695
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    .line 697
    .line 698
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 699
    .line 700
    .line 701
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object v0

    .line 705
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->m(Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    :cond_20
    :goto_10
    return-void

    .line 709
    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 16

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move/from16 v3, p4

    .line 8
    .line 9
    sget-object v4, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->e:Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;

    .line 10
    .line 11
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->b()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x1

    .line 17
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_3

    .line 22
    .line 23
    sget-object v4, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 24
    .line 25
    new-instance v7, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v8, "showImmersionActivity -> data("

    .line 31
    .line 32
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v8, ") scheme("

    .line 39
    .line 40
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v8, ") path("

    .line 47
    .line 48
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v8, ") shortsId("

    .line 55
    .line 56
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const/16 v8, 0x29

    .line 63
    .line 64
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    const-string v8, "CampaignNewTag"

    .line 72
    .line 73
    invoke-virtual {v4, v8, v7}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    sget-object v7, Lcom/startshorts/androidplayer/manager/push/PushManager;->a:Lcom/startshorts/androidplayer/manager/push/PushManager;

    .line 77
    .line 78
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/manager/push/PushManager;->l()V

    .line 79
    .line 80
    .line 81
    sget-object v7, Lrf/c;->a:Lrf/c;

    .line 82
    .line 83
    invoke-virtual {v7}, Lrf/c;->a()V

    .line 84
    .line 85
    .line 86
    const/4 v9, 0x0

    .line 87
    invoke-virtual {v7, v9}, Lrf/c;->t(Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V

    .line 88
    .line 89
    .line 90
    sget-object v10, Lud/a;->a:Lud/a;

    .line 91
    .line 92
    invoke-virtual {v10, v6}, Lud/a;->d0(Z)V

    .line 93
    .line 94
    .line 95
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    .line 96
    .line 97
    .line 98
    move-result v11

    .line 99
    const/4 v12, 0x3

    .line 100
    const/4 v13, 0x2

    .line 101
    const-string v14, "web"

    .line 102
    .line 103
    if-lez v11, :cond_1

    .line 104
    .line 105
    if-eqz v2, :cond_1

    .line 106
    .line 107
    invoke-static {v2, v14, v5, v13, v9}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v11

    .line 111
    if-nez v11, :cond_1

    .line 112
    .line 113
    sget-object v11, Lfk/g;->a:Lfk/g;

    .line 114
    .line 115
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v15

    .line 119
    invoke-virtual {v11, v15}, Lfk/g;->a(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v10, v6}, Lud/a;->v0(Z)V

    .line 123
    .line 124
    .line 125
    const-string v11, "isJumpImmersionThisActive = true"

    .line 126
    .line 127
    invoke-virtual {v4, v8, v11}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    new-instance v11, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 131
    .line 132
    invoke-direct {v11}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;-><init>()V

    .line 133
    .line 134
    .line 135
    if-eqz v0, :cond_0

    .line 136
    .line 137
    const-string v15, "https"

    .line 138
    .line 139
    invoke-static {v0, v15, v5, v13, v9}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-ne v0, v6, :cond_0

    .line 144
    .line 145
    const-string v0, "deeplink3"

    .line 146
    .line 147
    invoke-virtual {v11, v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setFrom(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_0
    const-string v0, "deeplink2"

    .line 152
    .line 153
    invoke-virtual {v11, v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setFrom(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    :goto_0
    invoke-virtual {v11, v12}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setType(I)V

    .line 157
    .line 158
    .line 159
    new-instance v0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 160
    .line 161
    invoke-direct {v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsId(I)V

    .line 165
    .line 166
    .line 167
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    invoke-virtual {v0, v6}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortPlayCode(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v11, v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setShortsInfo(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v7, v11}, Lrf/c;->t(Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_1
    new-instance v0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 182
    .line 183
    invoke-direct {v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;-><init>()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v14}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setFrom(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v12}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setType(I)V

    .line 190
    .line 191
    .line 192
    new-instance v6, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 193
    .line 194
    invoke-direct {v6}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v6, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsId(I)V

    .line 198
    .line 199
    .line 200
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v11

    .line 204
    invoke-virtual {v6, v11}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortPlayCode(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v6}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setShortsInfo(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v7, v0}, Lrf/c;->u(Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V

    .line 211
    .line 212
    .line 213
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-lez v0, :cond_3

    .line 218
    .line 219
    if-eqz v2, :cond_3

    .line 220
    .line 221
    invoke-static {v2, v14, v5, v13, v9}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-nez v0, :cond_3

    .line 226
    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .line 231
    .line 232
    const-string v2, "CampaignPullUp.allPullUp("

    .line 233
    .line 234
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v2, ") -- isInstallFirstOpen"

    .line 241
    .line 242
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v10}, Lud/a;->P()Z

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-virtual {v4, v8, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v10}, Lud/a;->P()Z

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-nez v0, :cond_2

    .line 264
    .line 265
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp;

    .line 266
    .line 267
    const/16 v5, 0xe

    .line 268
    .line 269
    const/4 v6, 0x0

    .line 270
    const/4 v2, 0x0

    .line 271
    const/4 v3, 0x0

    .line 272
    const/4 v4, 0x0

    .line 273
    move-object/from16 v1, p1

    .line 274
    .line 275
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp;->b(Lcom/startshorts/androidplayer/manager/attribution/CampaignPullUp;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 276
    .line 277
    .line 278
    goto :goto_2

    .line 279
    :cond_2
    sget-object v0, Lfk/g;->a:Lfk/g;

    .line 280
    .line 281
    const/16 v1, 0x8

    .line 282
    .line 283
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    invoke-virtual {v0, v1, v2}, Lfk/g;->b(ILjava/lang/String;)V

    .line 288
    .line 289
    .line 290
    :cond_3
    :goto_2
    return-void
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
    const-string p1, "DeepLinkNavigatorActivity onCreate"

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->m(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance v0, Lcom/adjust/sdk/AdjustDeeplink;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Lcom/adjust/sdk/AdjustDeeplink;-><init>(Landroid/net/Uri;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {v0, p1}, Lcom/adjust/sdk/Adjust;->processDeeplink(Lcom/adjust/sdk/AdjustDeeplink;Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity;->F()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance v0, Lcom/adjust/sdk/AdjustDeeplink;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Lcom/adjust/sdk/AdjustDeeplink;-><init>(Landroid/net/Uri;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {v0, p1}, Lcom/adjust/sdk/Adjust;->processDeeplink(Lcom/adjust/sdk/AdjustDeeplink;Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    const-string p1, "DeepLinkNavigatorActivity onNewIntent"

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->m(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    const-string v0, "DeepLinkNavigatorActivity onResume"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->m(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "DeepLinkNavigatorActivity"

    .line 2
    .line 3
    return-object v0
.end method
