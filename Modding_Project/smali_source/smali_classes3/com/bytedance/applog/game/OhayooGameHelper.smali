.class public Lcom/bytedance/applog/game/OhayooGameHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final GAME_ACTIVITY:Ljava/lang/String; = "ohayoo_game_activity"

.field public static final GAME_BUTTONCLICK:Ljava/lang/String; = "ohayoo_game_buttonclick"

.field public static final GAME_GUILD:Ljava/lang/String; = "ohayoo_game_guild"

.field public static final GAME_RANK:Ljava/lang/String; = "ohayoo_game_rank"

.field public static final GAME_SHARE:Ljava/lang/String; = "ohayoo_game_share"

.field public static final GAME_SNS:Ljava/lang/String; = "ohayoo_game_sns"

.field public static final GAME_TASK:Ljava/lang/String; = "ohayoo_game_task"

.field public static final GAME_UNLOCK:Ljava/lang/String; = "ohayoo_game_unlock"

.field public static final KEY_LEVEL:Ljava/lang/String; = "ohayoo_level"

.field public static final KEY_PACKAGE_CHANNEL:Ljava/lang/String; = "ohayoo_packagechannel"

.field public static final KEY_ROLE_ID:Ljava/lang/String; = "ohayoo_roleid"

.field public static final KEY_SDK_OPEN_ID:Ljava/lang/String; = "ohayoo_sdk_open_id"

.field public static final KEY_SERVER_ID:Ljava/lang/String; = "ohayoo_serverid"

.field public static final KEY_USER_TYPE:Ljava/lang/String; = "ohayoo_usertype"

.field public static final KEY_ZONE_ID:Ljava/lang/String; = "ohayoo_zoneid"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static fillOtherParams(Ljava/util/HashMap;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/util/Map$Entry;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/lang/CharSequence;

    .line 34
    .line 35
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Ljava/lang/String;

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    return-void
.end method

.method public static onEventGameActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLjava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "activitytype"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    const-string p0, "actid"

    .line 12
    .line 13
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    const-string p0, "actname"

    .line 17
    .line 18
    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    const-string p0, "actdesc"

    .line 22
    .line 23
    invoke-virtual {v0, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    const-string p0, "actresult"

    .line 27
    .line 28
    invoke-virtual {v0, p0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    const-string p0, "actreward"

    .line 32
    .line 33
    invoke-virtual {v0, p0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    .line 35
    .line 36
    const-string p0, "starttime"

    .line 37
    .line 38
    invoke-virtual {v0, p0, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    const-string p0, "endtime"

    .line 42
    .line 43
    invoke-virtual {v0, p0, p8, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    invoke-static {p10, v0}, Lcom/bytedance/applog/game/OhayooGameHelper;->fillOtherParams(Ljava/util/HashMap;Lorg/json/JSONObject;)V

    .line 47
    .line 48
    .line 49
    const-string p0, "ohayoo_game_activity"

    .line 50
    .line 51
    invoke-static {p0, v0}, Lcom/bytedance/applog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p0

    .line 56
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string p2, "OhayooGameHelper"

    .line 61
    .line 62
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    const/4 p3, 0x0

    .line 67
    new-array p3, p3, [Ljava/lang/Object;

    .line 68
    .line 69
    const-string p4, "JSON handle failed"

    .line 70
    .line 71
    invoke-interface {p1, p2, p4, p0, p3}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :goto_0
    return-void
.end method

.method public static onEventGameButtonClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "buttontype"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    const-string p0, "buttonid"

    .line 12
    .line 13
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    const-string p0, "buttonname"

    .line 17
    .line 18
    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    const-string p0, "buttonresult"

    .line 22
    .line 23
    invoke-virtual {v0, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    invoke-static {p4, v0}, Lcom/bytedance/applog/game/OhayooGameHelper;->fillOtherParams(Ljava/util/HashMap;Lorg/json/JSONObject;)V

    .line 27
    .line 28
    .line 29
    const-string p0, "ohayoo_game_buttonclick"

    .line 30
    .line 31
    invoke-static {p0, v0}, Lcom/bytedance/applog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string p2, "OhayooGameHelper"

    .line 41
    .line 42
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    const/4 p3, 0x0

    .line 47
    new-array p3, p3, [Ljava/lang/Object;

    .line 48
    .line 49
    const-string p4, "JSON handle failed"

    .line 50
    .line 51
    invoke-interface {p1, p2, p4, p0, p3}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method public static onEventGameGuild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "membergrade"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    const-string p0, "guildid"

    .line 12
    .line 13
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    const-string p0, "guildname"

    .line 17
    .line 18
    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    const-string p0, "guildlevel"

    .line 22
    .line 23
    invoke-virtual {v0, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    const-string p0, "guildresult"

    .line 27
    .line 28
    invoke-virtual {v0, p0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    const-string p0, "guildrank"

    .line 32
    .line 33
    invoke-virtual {v0, p0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 34
    .line 35
    .line 36
    invoke-static {p6, v0}, Lcom/bytedance/applog/game/OhayooGameHelper;->fillOtherParams(Ljava/util/HashMap;Lorg/json/JSONObject;)V

    .line 37
    .line 38
    .line 39
    const-string p0, "ohayoo_game_guild"

    .line 40
    .line 41
    invoke-static {p0, v0}, Lcom/bytedance/applog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string p2, "OhayooGameHelper"

    .line 51
    .line 52
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    const/4 p3, 0x0

    .line 57
    new-array p3, p3, [Ljava/lang/Object;

    .line 58
    .line 59
    const-string p4, "JSON handle failed"

    .line 60
    .line 61
    invoke-interface {p1, p2, p4, p0, p3}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void
.end method

.method public static onEventGameRank(Ljava/lang/String;IIIIIILjava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIIII",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ranktype"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    const-string p0, "rankid"

    .line 12
    .line 13
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    const-string p0, "rank"

    .line 17
    .line 18
    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    const-string p0, "befrank"

    .line 22
    .line 23
    invoke-virtual {v0, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    const-string p0, "point"

    .line 27
    .line 28
    invoke-virtual {v0, p0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    const-string p0, "befpoint"

    .line 32
    .line 33
    invoke-virtual {v0, p0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 34
    .line 35
    .line 36
    const-string p0, "allpoint"

    .line 37
    .line 38
    invoke-virtual {v0, p0, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    invoke-static {p7, v0}, Lcom/bytedance/applog/game/OhayooGameHelper;->fillOtherParams(Ljava/util/HashMap;Lorg/json/JSONObject;)V

    .line 42
    .line 43
    .line 44
    const-string p0, "ohayoo_game_rank"

    .line 45
    .line 46
    invoke-static {p0, v0}, Lcom/bytedance/applog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception p0

    .line 51
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-string p2, "OhayooGameHelper"

    .line 56
    .line 57
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    const/4 p3, 0x0

    .line 62
    new-array p3, p3, [Ljava/lang/Object;

    .line 63
    .line 64
    const-string p4, "JSON handle failed"

    .line 65
    .line 66
    invoke-interface {p1, p2, p4, p0, p3}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :goto_0
    return-void
.end method

.method public static onEventGameShare(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "sharetype"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    const-string p0, "sharefocus"

    .line 12
    .line 13
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    const-string p0, "shareresult"

    .line 17
    .line 18
    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    const-string p0, "shareid"

    .line 22
    .line 23
    invoke-virtual {v0, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    const-string p0, "shareidentify"

    .line 27
    .line 28
    invoke-virtual {v0, p0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    invoke-static {p5, v0}, Lcom/bytedance/applog/game/OhayooGameHelper;->fillOtherParams(Ljava/util/HashMap;Lorg/json/JSONObject;)V

    .line 32
    .line 33
    .line 34
    const-string p0, "ohayoo_game_share"

    .line 35
    .line 36
    invoke-static {p0, v0}, Lcom/bytedance/applog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string p2, "OhayooGameHelper"

    .line 46
    .line 47
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    const/4 p3, 0x0

    .line 52
    new-array p3, p3, [Ljava/lang/Object;

    .line 53
    .line 54
    const-string p4, "JSON handle failed"

    .line 55
    .line 56
    invoke-interface {p1, p2, p4, p0, p3}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method

.method public static onEventGameSns(IILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "recnum"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    const-string p0, "count"

    .line 12
    .line 13
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    const-string p0, "snstype"

    .line 17
    .line 18
    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    const-string p0, "snssubtype"

    .line 22
    .line 23
    invoke-virtual {v0, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    invoke-static {p4, v0}, Lcom/bytedance/applog/game/OhayooGameHelper;->fillOtherParams(Ljava/util/HashMap;Lorg/json/JSONObject;)V

    .line 27
    .line 28
    .line 29
    const-string p0, "ohayoo_game_sns"

    .line 30
    .line 31
    invoke-static {p0, v0}, Lcom/bytedance/applog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string p2, "OhayooGameHelper"

    .line 41
    .line 42
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    const/4 p3, 0x0

    .line 47
    new-array p3, p3, [Ljava/lang/Object;

    .line 48
    .line 49
    const-string p4, "JSON handle failed"

    .line 50
    .line 51
    invoke-interface {p1, p2, p4, p0, p3}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method public static onEventGameTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "tasktype"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    const-string p0, "taskid"

    .line 12
    .line 13
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    const-string p0, "taskname"

    .line 17
    .line 18
    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    const-string p0, "taskdesc"

    .line 22
    .line 23
    invoke-virtual {v0, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    const-string p0, "taskresult"

    .line 27
    .line 28
    invoke-virtual {v0, p0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    invoke-static {p5, v0}, Lcom/bytedance/applog/game/OhayooGameHelper;->fillOtherParams(Ljava/util/HashMap;Lorg/json/JSONObject;)V

    .line 32
    .line 33
    .line 34
    const-string p0, "ohayoo_game_task"

    .line 35
    .line 36
    invoke-static {p0, v0}, Lcom/bytedance/applog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string p2, "OhayooGameHelper"

    .line 46
    .line 47
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    const/4 p3, 0x0

    .line 52
    new-array p3, p3, [Ljava/lang/Object;

    .line 53
    .line 54
    const-string p4, "JSON handle failed"

    .line 55
    .line 56
    invoke-interface {p1, p2, p4, p0, p3}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method

.method public static onEventGameUnlock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "unlocktype"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    const-string p0, "unlockid"

    .line 12
    .line 13
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    const-string p0, "unlockname"

    .line 17
    .line 18
    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    invoke-static {p3, v0}, Lcom/bytedance/applog/game/OhayooGameHelper;->fillOtherParams(Ljava/util/HashMap;Lorg/json/JSONObject;)V

    .line 22
    .line 23
    .line 24
    const-string p0, "ohayoo_game_unlock"

    .line 25
    .line 26
    invoke-static {p0, v0}, Lcom/bytedance/applog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string p2, "OhayooGameHelper"

    .line 36
    .line 37
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    const/4 p3, 0x0

    .line 42
    new-array p3, p3, [Ljava/lang/Object;

    .line 43
    .line 44
    const-string v0, "JSON handle failed"

    .line 45
    .line 46
    invoke-interface {p1, p2, v0, p0, p3}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method

.method public static setOhayooCustomHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/bytedance/applog/AppLog;->setHeaderInfo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
