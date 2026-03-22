.class public final Lr1/b;
.super Ljava/lang/Object;
.source "AppEventsCAPIManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lr1/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ljava/lang/String;

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lr1/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lr1/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lr1/b;->a:Lr1/b;

    .line 7
    .line 8
    const-class v0, Lr1/b;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lr1/b;->b:Ljava/lang/String;

    .line 15
    .line 16
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

.method public static synthetic a(Lcom/facebook/b0;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lr1/b;->c(Lcom/facebook/b0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final b()V
    .locals 11

    .line 1
    const-string v0, "null cannot be cast to non-null type kotlin.String"

    .line 2
    .line 3
    :try_start_0
    new-instance v6, Lr1/a;

    .line 4
    .line 5
    invoke-direct {v6}, Lr1/a;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v10, Lcom/facebook/GraphRequest;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/facebook/v;->m()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, "/cloudbridge_settings"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    sget-object v5, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    .line 32
    .line 33
    const/16 v8, 0x20

    .line 34
    .line 35
    const/4 v9, 0x0

    .line 36
    const/4 v2, 0x0

    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v7, 0x0

    .line 39
    move-object v1, v10

    .line 40
    invoke-direct/range {v1 .. v9}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$b;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 41
    .line 42
    .line 43
    sget-object v1, Lcom/facebook/internal/i0;->e:Lcom/facebook/internal/i0$a;

    .line 44
    .line 45
    sget-object v2, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    .line 46
    .line 47
    sget-object v3, Lr1/b;->b:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string v4, " \n\nCreating Graph Request: \n=============\n%s\n\n "

    .line 53
    .line 54
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/facebook/internal/i0$a;->c(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v10}, Lcom/facebook/GraphRequest;->l()Lcom/facebook/z;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception v1

    .line 66
    sget-object v2, Lcom/facebook/internal/i0;->e:Lcom/facebook/internal/i0$a;

    .line 67
    .line 68
    sget-object v3, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    .line 69
    .line 70
    sget-object v4, Lr1/b;->b:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v1}, Lms/d;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const-string v1, " \n\nGraph Request Exception: \n=============\n%s\n\n "

    .line 84
    .line 85
    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/facebook/internal/i0$a;->c(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :goto_0
    return-void
.end method

.method private static final c(Lcom/facebook/b0;)V
    .locals 1

    .line 1
    const-string v0, "response"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lr1/b;->a:Lr1/b;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lr1/b;->d(Lcom/facebook/b0;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static final e()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-class v0, Lr1/b;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/v;->l()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v3, "com.facebook.sdk.CloudBridgeSavedCredentials"

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    return-object v2

    .line 25
    :cond_1
    sget-object v3, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->DATASETID:Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;

    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->getRawValue()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    sget-object v5, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->URL:Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;

    .line 36
    .line 37
    invoke-virtual {v5}, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->getRawValue()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-interface {v1, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    sget-object v7, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->ACCESSKEY:Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;

    .line 46
    .line 47
    invoke-virtual {v7}, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->getRawValue()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    invoke-interface {v1, v8, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-eqz v4, :cond_5

    .line 56
    .line 57
    invoke-static {v4}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    if-eqz v8, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    if-eqz v6, :cond_5

    .line 65
    .line 66
    invoke-static {v6}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    if-eqz v8, :cond_3

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    if-eqz v1, :cond_5

    .line 74
    .line 75
    invoke-static {v1}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    if-eqz v8, :cond_4

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 83
    .line 84
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5}, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->getRawValue()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-interface {v8, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->getRawValue()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-interface {v8, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v7}, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->getRawValue()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-interface {v8, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    sget-object v3, Lcom/facebook/internal/i0;->e:Lcom/facebook/internal/i0$a;

    .line 109
    .line 110
    sget-object v5, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    .line 111
    .line 112
    sget-object v7, Lr1/b;->b:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    const-string v9, " \n\nLoading Cloudbridge settings from saved Prefs: \n================\n DATASETID: %s\n URL: %s \n ACCESSKEY: %s \n\n "

    .line 119
    .line 120
    filled-new-array {v4, v6, v1}, [Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v3, v5, v7, v9, v1}, Lcom/facebook/internal/i0$a;->c(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .line 126
    .line 127
    return-object v8

    .line 128
    :catchall_0
    move-exception v1

    .line 129
    goto :goto_1

    .line 130
    :cond_5
    :goto_0
    return-object v2

    .line 131
    :goto_1
    invoke-static {v1, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    return-object v2
.end method


# virtual methods
.method public final d(Lcom/facebook/b0;)V
    .locals 8
    .param p1    # Lcom/facebook/b0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "response"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/facebook/b0;->b()Lcom/facebook/FacebookRequestError;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "null cannot be cast to non-null type kotlin.String"

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    sget-object v0, Lcom/facebook/internal/i0;->e:Lcom/facebook/internal/i0$a;

    .line 15
    .line 16
    sget-object v2, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    .line 17
    .line 18
    sget-object v3, Lr1/b;->b:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/facebook/b0;->b()Lcom/facebook/FacebookRequestError;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p1}, Lcom/facebook/b0;->b()Lcom/facebook/FacebookRequestError;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->e()Lcom/facebook/FacebookException;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    filled-new-array {v1, p1}, [Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string v1, " \n\nGraph Response Error: \n================\nResponse Error: %s\nResponse Error Exception: %s\n\n "

    .line 48
    .line 49
    invoke-virtual {v0, v2, v3, v1, p1}, Lcom/facebook/internal/i0$a;->c(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lr1/b;->e()Ljava/util/Map;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_0

    .line 57
    .line 58
    new-instance v0, Ljava/net/URL;

    .line 59
    .line 60
    sget-object v1, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->URL:Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->getRawValue()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    sget-object v1, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->DATASETID:Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->getRawValue()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v3, "://"

    .line 104
    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    sget-object v2, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->ACCESSKEY:Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;

    .line 120
    .line 121
    invoke-virtual {v2}, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->getRawValue()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-static {v1, v0, p1}, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformerWebRequests;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const/4 p1, 0x1

    .line 137
    sput-boolean p1, Lr1/b;->c:Z

    .line 138
    .line 139
    :cond_0
    return-void

    .line 140
    :cond_1
    sget-object v0, Lcom/facebook/internal/i0;->e:Lcom/facebook/internal/i0$a;

    .line 141
    .line 142
    sget-object v2, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    .line 143
    .line 144
    sget-object v3, Lr1/b;->b:Ljava/lang/String;

    .line 145
    .line 146
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const-string v1, " \n\nGraph Response Received: \n================\n%s\n\n "

    .line 150
    .line 151
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/facebook/internal/i0$a;->c(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Lcom/facebook/b0;->c()Lorg/json/JSONObject;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    const-string v1, "CloudBridge Settings API response is not a valid json: \n%s "

    .line 163
    .line 164
    const-string v4, "TAG"

    .line 165
    .line 166
    if-eqz p1, :cond_2

    .line 167
    .line 168
    :try_start_0
    const-string v5, "data"

    .line 169
    .line 170
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    goto :goto_0

    .line 175
    :catch_0
    move-exception p1

    .line 176
    goto/16 :goto_3

    .line 177
    .line 178
    :catch_1
    move-exception p1

    .line 179
    goto/16 :goto_4

    .line 180
    .line 181
    :cond_2
    const/4 p1, 0x0

    .line 182
    :goto_0
    const-string v5, "null cannot be cast to non-null type org.json.JSONArray"

    .line 183
    .line 184
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    check-cast p1, Lorg/json/JSONArray;

    .line 188
    .line 189
    invoke-static {p1}, Lcom/facebook/internal/u0;->n(Lorg/json/JSONArray;)Ljava/util/List;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    new-instance v5, Lorg/json/JSONObject;

    .line 194
    .line 195
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    check-cast p1, Ljava/lang/String;

    .line 200
    .line 201
    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-static {v5}, Lcom/facebook/internal/u0;->o(Lorg/json/JSONObject;)Ljava/util/Map;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    sget-object v5, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->URL:Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;

    .line 209
    .line 210
    invoke-virtual {v5}, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->getRawValue()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    check-cast v5, Ljava/lang/String;

    .line 219
    .line 220
    sget-object v6, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->DATASETID:Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;

    .line 221
    .line 222
    invoke-virtual {v6}, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->getRawValue()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    check-cast v6, Ljava/lang/String;

    .line 231
    .line 232
    sget-object v7, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->ACCESSKEY:Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;

    .line 233
    .line 234
    invoke-virtual {v7}, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->getRawValue()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v7

    .line 238
    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v7

    .line 242
    check-cast v7, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .line 244
    if-eqz v5, :cond_5

    .line 245
    .line 246
    if-eqz v6, :cond_5

    .line 247
    .line 248
    if-nez v7, :cond_3

    .line 249
    .line 250
    goto :goto_2

    .line 251
    :cond_3
    :try_start_1
    invoke-static {v6, v5, v7}, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformerWebRequests;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0, p1}, Lr1/b;->g(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2

    .line 255
    .line 256
    .line 257
    sget-object v0, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->ENABLED:Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;

    .line 258
    .line 259
    invoke-virtual {v0}, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->getRawValue()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    if-eqz v1, :cond_4

    .line 268
    .line 269
    invoke-virtual {v0}, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->getRawValue()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    .line 278
    .line 279
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    check-cast p1, Ljava/lang/Boolean;

    .line 283
    .line 284
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 285
    .line 286
    .line 287
    move-result p1

    .line 288
    goto :goto_1

    .line 289
    :cond_4
    const/4 p1, 0x0

    .line 290
    :goto_1
    sput-boolean p1, Lr1/b;->c:Z

    .line 291
    .line 292
    return-void

    .line 293
    :catch_2
    move-exception p1

    .line 294
    sget-object v0, Lcom/facebook/internal/i0;->e:Lcom/facebook/internal/i0$a;

    .line 295
    .line 296
    sget-object v1, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    .line 297
    .line 298
    sget-object v2, Lr1/b;->b:Ljava/lang/String;

    .line 299
    .line 300
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-static {p1}, Lms/d;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    const-string v3, "CloudBridge Settings API response doesn\'t have valid url\n %s "

    .line 312
    .line 313
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/facebook/internal/i0$a;->c(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    return-void

    .line 317
    :cond_5
    :goto_2
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    const-string p1, "CloudBridge Settings API response doesn\'t have valid data"

    .line 321
    .line 322
    invoke-virtual {v0, v2, v3, p1}, Lcom/facebook/internal/i0$a;->b(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    return-void

    .line 326
    :goto_3
    sget-object v0, Lcom/facebook/internal/i0;->e:Lcom/facebook/internal/i0$a;

    .line 327
    .line 328
    sget-object v2, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    .line 329
    .line 330
    sget-object v3, Lr1/b;->b:Ljava/lang/String;

    .line 331
    .line 332
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    invoke-static {p1}, Lms/d;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    invoke-virtual {v0, v2, v3, v1, p1}, Lcom/facebook/internal/i0$a;->c(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    .line 345
    .line 346
    return-void

    .line 347
    :goto_4
    sget-object v0, Lcom/facebook/internal/i0;->e:Lcom/facebook/internal/i0$a;

    .line 348
    .line 349
    sget-object v2, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    .line 350
    .line 351
    sget-object v3, Lr1/b;->b:Ljava/lang/String;

    .line 352
    .line 353
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-static {p1}, Lms/d;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    invoke-virtual {v0, v2, v3, v1, p1}, Lcom/facebook/internal/i0$a;->c(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    return-void
.end method

.method public final f()Z
    .locals 1

    .line 1
    sget-boolean v0, Lr1/b;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public final g(Ljava/util/Map;)V
    .locals 7
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/v;->l()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "com.facebook.sdk.CloudBridgeSavedCredentials"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    if-nez p1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    sget-object v1, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->DATASETID:Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->getRawValue()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    sget-object v3, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->URL:Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;

    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->getRawValue()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    sget-object v5, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->ACCESSKEY:Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;

    .line 49
    .line 50
    invoke-virtual {v5}, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->getRawValue()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    if-eqz v4, :cond_3

    .line 61
    .line 62
    if-nez p1, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v1}, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->getRawValue()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->getRawValue()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5}, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->getRawValue()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 100
    .line 101
    .line 102
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 103
    .line 104
    .line 105
    sget-object v0, Lcom/facebook/internal/i0;->e:Lcom/facebook/internal/i0$a;

    .line 106
    .line 107
    sget-object v1, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    .line 108
    .line 109
    sget-object v3, Lr1/b;->b:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    const-string v5, " \n\nSaving Cloudbridge settings from saved Prefs: \n================\n DATASETID: %s\n URL: %s \n ACCESSKEY: %s \n\n "

    .line 116
    .line 117
    filled-new-array {v2, v4, p1}, [Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {v0, v1, v3, v5, p1}, Lcom/facebook/internal/i0$a;->c(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    :cond_3
    :goto_0
    return-void
.end method
