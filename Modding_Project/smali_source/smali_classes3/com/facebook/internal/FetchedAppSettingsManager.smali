.class public final Lcom/facebook/internal/FetchedAppSettingsManager;
.super Ljava/lang/Object;
.source "FetchedAppSettingsManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;,
        Lcom/facebook/internal/FetchedAppSettingsManager$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFetchedAppSettingsManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchedAppSettingsManager.kt\ncom/facebook/internal/FetchedAppSettingsManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,564:1\n1#2:565\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/facebook/internal/FetchedAppSettingsManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/p;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final f:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/facebook/internal/FetchedAppSettingsManager$a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static g:Z

.field private static h:Lorg/json/JSONArray;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 1
    new-instance v0, Lcom/facebook/internal/FetchedAppSettingsManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/internal/FetchedAppSettingsManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->a:Lcom/facebook/internal/FetchedAppSettingsManager;

    .line 7
    .line 8
    const-class v0, Lcom/facebook/internal/FetchedAppSettingsManager;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->b:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v1, "app_events_config.os_version("

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const/16 v1, 0x29

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v19

    .line 40
    const-string v2, "supports_implicit_sdk_logging"

    .line 41
    .line 42
    const-string v3, "gdpv4_nux_content"

    .line 43
    .line 44
    const-string v4, "gdpv4_nux_enabled"

    .line 45
    .line 46
    const-string v5, "android_dialog_configs"

    .line 47
    .line 48
    const-string v6, "android_sdk_error_categories"

    .line 49
    .line 50
    const-string v7, "app_events_session_timeout"

    .line 51
    .line 52
    const-string v8, "app_events_feature_bitmask"

    .line 53
    .line 54
    const-string v9, "auto_event_mapping_android"

    .line 55
    .line 56
    const-string v10, "seamless_login"

    .line 57
    .line 58
    const-string v11, "smart_login_bookmark_icon_url"

    .line 59
    .line 60
    const-string v12, "smart_login_menu_icon_url"

    .line 61
    .line 62
    const-string v13, "restrictive_data_filter_params"

    .line 63
    .line 64
    const-string v14, "aam_rules"

    .line 65
    .line 66
    const-string v15, "suggested_events_setting"

    .line 67
    .line 68
    const-string v16, "protected_mode_rules"

    .line 69
    .line 70
    const-string v17, "auto_log_app_events_default"

    .line 71
    .line 72
    const-string v18, "auto_log_app_events_enabled"

    .line 73
    .line 74
    filled-new-array/range {v2 .. v19}, [Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->c:Ljava/util/List;

    .line 83
    .line 84
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 85
    .line 86
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 87
    .line 88
    .line 89
    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->d:Ljava/util/Map;

    .line 90
    .line 91
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 92
    .line 93
    sget-object v1, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->NOT_LOADED:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    .line 94
    .line 95
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 99
    .line 100
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 101
    .line 102
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 103
    .line 104
    .line 105
    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 106
    .line 107
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

.method public static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/facebook/internal/FetchedAppSettingsManager;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/facebook/internal/FetchedAppSettingsManager$a;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/internal/FetchedAppSettingsManager;->s(Lcom/facebook/internal/FetchedAppSettingsManager$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/facebook/internal/FetchedAppSettingsManager$a;Lcom/facebook/internal/p;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/facebook/internal/FetchedAppSettingsManager;->t(Lcom/facebook/internal/FetchedAppSettingsManager$a;Lcom/facebook/internal/p;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final d(Lcom/facebook/internal/FetchedAppSettingsManager$a;)V
    .locals 1
    .param p0    # Lcom/facebook/internal/FetchedAppSettingsManager$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/facebook/internal/FetchedAppSettingsManager;->h()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final e(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance p1, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/facebook/internal/FetchedAppSettingsManager;->c:Ljava/util/List;

    .line 12
    .line 13
    check-cast v1, Ljava/util/Collection;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    .line 17
    .line 18
    const-string v1, ","

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "fields"

    .line 25
    .line 26
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-object v0, Lcom/facebook/GraphRequest;->n:Lcom/facebook/GraphRequest$c;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    const-string v2, "app"

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2, v1}, Lcom/facebook/GraphRequest$c;->x(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-virtual {v0, v1}, Lcom/facebook/GraphRequest;->E(Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lcom/facebook/GraphRequest;->H(Landroid/os/Bundle;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->k()Lcom/facebook/b0;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/facebook/b0;->d()Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-nez p1, :cond_0

    .line 54
    .line 55
    new-instance p1, Lorg/json/JSONObject;

    .line 56
    .line 57
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 58
    .line 59
    .line 60
    :cond_0
    return-object p1
.end method

.method public static final f(Ljava/lang/String;)Lcom/facebook/internal/p;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->d:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/facebook/internal/p;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return-object p0
.end method

.method public static final g()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/v;->l()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/facebook/v;->m()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "com.facebook.internal.APP_SETTINGS.%s"

    .line 21
    .line 22
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "format(format, *args)"

    .line 27
    .line 28
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v2, "com.facebook.internal.preferences.APP_SETTINGS"

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/facebook/internal/u0;->d0(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 52
    .line 53
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    const-string v1, "FacebookSDK"

    .line 59
    .line 60
    invoke-static {v1, v0}, Lcom/facebook/internal/u0;->j0(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 61
    .line 62
    .line 63
    move-object v1, v2

    .line 64
    :goto_0
    if-eqz v1, :cond_1

    .line 65
    .line 66
    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->a:Lcom/facebook/internal/FetchedAppSettingsManager;

    .line 67
    .line 68
    invoke-direct {v0, v1}, Lcom/facebook/internal/FetchedAppSettingsManager;->p(Lorg/json/JSONObject;)Ljava/util/Map;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    return-object v0

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 74
    .line 75
    const-string v1, "Required value was null."

    .line 76
    .line 77
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw v0

    .line 81
    :cond_1
    return-object v2
.end method

.method public static final h()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/facebook/v;->l()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/facebook/v;->m()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/facebook/internal/u0;->d0(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    .line 17
    sget-object v1, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->ERROR:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->a:Lcom/facebook/internal/FetchedAppSettingsManager;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/facebook/internal/FetchedAppSettingsManager;->r()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    sget-object v2, Lcom/facebook/internal/FetchedAppSettingsManager;->d:Ljava/util/Map;

    .line 29
    .line 30
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 37
    .line 38
    sget-object v1, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->SUCCESS:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->a:Lcom/facebook/internal/FetchedAppSettingsManager;

    .line 44
    .line 45
    invoke-direct {v0}, Lcom/facebook/internal/FetchedAppSettingsManager;->r()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    sget-object v2, Lcom/facebook/internal/FetchedAppSettingsManager;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 50
    .line 51
    sget-object v3, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->NOT_LOADED:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    .line 52
    .line 53
    sget-object v4, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->LOADING:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    .line 54
    .line 55
    invoke-static {v2, v3, v4}, Landroidx/compose/animation/core/a;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-nez v3, :cond_3

    .line 60
    .line 61
    sget-object v3, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->ERROR:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    .line 62
    .line 63
    invoke-static {v2, v3, v4}, Landroidx/compose/animation/core/a;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->a:Lcom/facebook/internal/FetchedAppSettingsManager;

    .line 71
    .line 72
    invoke-direct {v0}, Lcom/facebook/internal/FetchedAppSettingsManager;->r()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_3
    :goto_0
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 77
    .line 78
    const/4 v2, 0x1

    .line 79
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    const-string v3, "com.facebook.internal.APP_SETTINGS.%s"

    .line 88
    .line 89
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    const-string v3, "format(format, *args)"

    .line 94
    .line 95
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-static {}, Lcom/facebook/v;->u()Ljava/util/concurrent/Executor;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    new-instance v4, Lcom/facebook/internal/q;

    .line 103
    .line 104
    invoke-direct {v4, v0, v2, v1}, Lcom/facebook/internal/q;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method private static final i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "$context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$settingsKey"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "$applicationId"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "com.facebook.internal.preferences.APP_SETTINGS"

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Lcom/facebook/internal/u0;->d0(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 37
    .line 38
    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v1

    .line 43
    const-string v2, "FacebookSDK"

    .line 44
    .line 45
    invoke-static {v2, v1}, Lcom/facebook/internal/u0;->j0(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 46
    .line 47
    .line 48
    move-object v2, v0

    .line 49
    :goto_0
    if-eqz v2, :cond_1

    .line 50
    .line 51
    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->a:Lcom/facebook/internal/FetchedAppSettingsManager;

    .line 52
    .line 53
    invoke-virtual {v0, p2, v2}, Lcom/facebook/internal/FetchedAppSettingsManager;->j(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/p;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    const-string p1, "Required value was null."

    .line 61
    .line 62
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p0

    .line 66
    :cond_1
    :goto_1
    sget-object v1, Lcom/facebook/internal/FetchedAppSettingsManager;->a:Lcom/facebook/internal/FetchedAppSettingsManager;

    .line 67
    .line 68
    invoke-direct {v1, p2}, Lcom/facebook/internal/FetchedAppSettingsManager;->e(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    if-eqz v2, :cond_2

    .line 73
    .line 74
    invoke-virtual {v1, p2, v2}, Lcom/facebook/internal/FetchedAppSettingsManager;->j(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/p;

    .line 75
    .line 76
    .line 77
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 90
    .line 91
    .line 92
    :cond_2
    const/4 p0, 0x1

    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/facebook/internal/p;->t()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    sget-boolean v0, Lcom/facebook/internal/FetchedAppSettingsManager;->g:Z

    .line 100
    .line 101
    if-nez v0, :cond_3

    .line 102
    .line 103
    if-eqz p1, :cond_3

    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-lez v0, :cond_3

    .line 110
    .line 111
    sput-boolean p0, Lcom/facebook/internal/FetchedAppSettingsManager;->g:Z

    .line 112
    .line 113
    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->b:Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    :cond_3
    invoke-static {p2, p0}, Lcom/facebook/internal/o;->m(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 119
    .line 120
    .line 121
    invoke-static {}, La2/i;->h()V

    .line 122
    .line 123
    .line 124
    sget-object p0, Lcom/facebook/internal/FetchedAppSettingsManager;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 125
    .line 126
    sget-object p1, Lcom/facebook/internal/FetchedAppSettingsManager;->d:Ljava/util/Map;

    .line 127
    .line 128
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-eqz p1, :cond_4

    .line 133
    .line 134
    sget-object p1, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->SUCCESS:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_4
    sget-object p1, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->ERROR:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    .line 138
    .line 139
    :goto_2
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    invoke-direct {v1}, Lcom/facebook/internal/FetchedAppSettingsManager;->r()V

    .line 143
    .line 144
    .line 145
    return-void
.end method

.method private final k(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    const-string v1, "value"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    :try_start_0
    const-string v3, "iap_manual_and_auto_log_dedup_keys"

    .line 9
    .line 10
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object p1, v2

    .line 16
    :goto_0
    if-nez p1, :cond_1

    .line 17
    .line 18
    return-object v2

    .line 19
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x0

    .line 24
    move v5, v4

    .line 25
    :goto_1
    if-ge v5, v3, :cond_6

    .line 26
    .line 27
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    const-string v8, "prod_keys"

    .line 36
    .line 37
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-nez v7, :cond_2

    .line 42
    .line 43
    goto :goto_4

    .line 44
    :cond_2
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    move v8, v4

    .line 53
    :goto_2
    if-ge v8, v7, :cond_5

    .line 54
    .line 55
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    invoke-static {v10, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    if-nez v10, :cond_3

    .line 68
    .line 69
    add-int/lit8 v8, v8, 0x1

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    new-instance p2, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    :goto_3
    if-ge v4, v0, :cond_4

    .line 86
    .line 87
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    add-int/lit8 v4, v4, 0x1

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    .line 109
    return-object p1

    .line 110
    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :catch_0
    :cond_6
    return-object v2
.end method

.method private final l(Lorg/json/JSONObject;Z)Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "key"

    .line 4
    .line 5
    const-string v2, "value"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    :try_start_0
    const-string v4, "iap_manual_and_auto_log_dedup_keys"

    .line 11
    .line 12
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v0, v3

    .line 18
    :goto_0
    if-nez v0, :cond_1

    .line 19
    .line 20
    return-object v3

    .line 21
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    move-object v7, v3

    .line 26
    const/4 v6, 0x0

    .line 27
    :goto_1
    if-ge v6, v4, :cond_9

    .line 28
    .line 29
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    move-result-object v8

    .line 33
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v9

    .line 37
    const-string v10, "prod_keys"

    .line 38
    .line 39
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v10

    .line 43
    if-eqz v10, :cond_2

    .line 44
    .line 45
    if-nez p2, :cond_8

    .line 46
    .line 47
    :cond_2
    const-string v10, "test_keys"

    .line 48
    .line 49
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    if-eqz v9, :cond_3

    .line 54
    .line 55
    if-nez p2, :cond_3

    .line 56
    .line 57
    goto :goto_5

    .line 58
    :cond_3
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    const/4 v10, 0x0

    .line 67
    :goto_2
    if-ge v10, v9, :cond_8

    .line 68
    .line 69
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 70
    .line 71
    .line 72
    move-result-object v11

    .line 73
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v12

    .line 77
    const-string v13, "_valueToSum"

    .line 78
    .line 79
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v13

    .line 83
    if-nez v13, :cond_7

    .line 84
    .line 85
    const-string v13, "fb_currency"

    .line 86
    .line 87
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v13

    .line 91
    if-eqz v13, :cond_4

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_4
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 95
    .line 96
    .line 97
    move-result-object v11

    .line 98
    new-instance v13, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    .line 104
    .line 105
    .line 106
    move-result v14

    .line 107
    const/4 v15, 0x0

    .line 108
    :goto_3
    if-ge v15, v14, :cond_5

    .line 109
    .line 110
    invoke-virtual {v11, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    add-int/lit8 v15, v15, 0x1

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_5
    if-nez v7, :cond_6

    .line 125
    .line 126
    new-instance v7, Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .line 130
    .line 131
    :cond_6
    new-instance v5, Lkotlin/Pair;

    .line 132
    .line 133
    invoke-direct {v5, v12, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .line 138
    .line 139
    :cond_7
    :goto_4
    add-int/lit8 v10, v10, 0x1

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_8
    :goto_5
    add-int/lit8 v6, v6, 0x1

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_9
    return-object v7

    .line 146
    :catch_0
    return-object v3
.end method

.method static synthetic m(Lcom/facebook/internal/FetchedAppSettingsManager;Lorg/json/JSONObject;ZILjava/lang/Object;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/FetchedAppSettingsManager;->l(Lorg/json/JSONObject;Z)Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private final n(Lorg/json/JSONObject;)Ljava/lang/Long;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    const-string v1, "iap_manual_and_auto_log_dedup_window_millis"

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    nop

    .line 15
    :catch_0
    :cond_0
    return-object v0
.end method

.method private final o(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/p$b;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    const-string v1, "data"

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_2

    .line 15
    .line 16
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-ge v2, v1, :cond_2

    .line 22
    .line 23
    sget-object v3, Lcom/facebook/internal/p$b;->e:Lcom/facebook/internal/p$b$a;

    .line 24
    .line 25
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const-string v5, "dialogConfigData.optJSONObject(i)"

    .line 30
    .line 31
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v4}, Lcom/facebook/internal/p$b$a;->a(Lorg/json/JSONObject;)Lcom/facebook/internal/p$b;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    if-nez v3, :cond_0

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    invoke-virtual {v3}, Lcom/facebook/internal/p$b;->a()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    check-cast v5, Ljava/util/Map;

    .line 50
    .line 51
    if-nez v5, :cond_1

    .line 52
    .line 53
    new-instance v5, Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-virtual {v3}, Lcom/facebook/internal/p$b;->b()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    return-object v0
.end method

.method private final p(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "auto_log_app_events_default"

    .line 11
    .line 12
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const-string v4, "FacebookSDK"

    .line 17
    .line 18
    if-nez v3, :cond_1

    .line 19
    .line 20
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v2

    .line 33
    invoke-static {v4, v2}, Lcom/facebook/internal/u0;->j0(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    const-string v2, "auto_log_app_events_enabled"

    .line 37
    .line 38
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_2

    .line 43
    .line 44
    :try_start_1
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catch_1
    move-exception p1

    .line 57
    invoke-static {v4, p1}, Lcom/facebook/internal/u0;->j0(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    move-object v0, v1

    .line 68
    :goto_2
    return-object v0
.end method

.method private final q(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    return-object p1
.end method

.method private final declared-synchronized r()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    .line 9
    .line 10
    sget-object v1, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->NOT_LOADED:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    .line 11
    .line 12
    if-eq v1, v0, :cond_4

    .line 13
    .line 14
    sget-object v1, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->LOADING:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    .line 15
    .line 16
    if-ne v1, v0, :cond_0

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_0
    invoke-static {}, Lcom/facebook/v;->m()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sget-object v2, Lcom/facebook/internal/FetchedAppSettingsManager;->d:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/facebook/internal/p;

    .line 30
    .line 31
    new-instance v2, Landroid/os/Handler;

    .line 32
    .line 33
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 38
    .line 39
    .line 40
    sget-object v3, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->ERROR:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    .line 41
    .line 42
    if-ne v3, v0, :cond_2

    .line 43
    .line 44
    :goto_0
    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lcom/facebook/internal/FetchedAppSettingsManager$a;

    .line 57
    .line 58
    new-instance v1, Lcom/facebook/internal/r;

    .line 59
    .line 60
    invoke-direct {v1, v0}, Lcom/facebook/internal/r;-><init>(Lcom/facebook/internal/FetchedAppSettingsManager$a;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    goto :goto_3

    .line 69
    :cond_1
    monitor-exit p0

    .line 70
    return-void

    .line 71
    :cond_2
    :goto_1
    :try_start_1
    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-nez v3, :cond_3

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Lcom/facebook/internal/FetchedAppSettingsManager$a;

    .line 84
    .line 85
    new-instance v3, Lcom/facebook/internal/s;

    .line 86
    .line 87
    invoke-direct {v3, v0, v1}, Lcom/facebook/internal/s;-><init>(Lcom/facebook/internal/FetchedAppSettingsManager$a;Lcom/facebook/internal/p;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    monitor-exit p0

    .line 95
    return-void

    .line 96
    :cond_4
    :goto_2
    monitor-exit p0

    .line 97
    return-void

    .line 98
    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    throw v0
.end method

.method private static final s(Lcom/facebook/internal/FetchedAppSettingsManager$a;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/facebook/internal/FetchedAppSettingsManager$a;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final t(Lcom/facebook/internal/FetchedAppSettingsManager$a;Lcom/facebook/internal/p;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lcom/facebook/internal/FetchedAppSettingsManager$a;->b(Lcom/facebook/internal/p;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final u(Ljava/lang/String;Z)Lcom/facebook/internal/p;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "applicationId"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    sget-object p1, Lcom/facebook/internal/FetchedAppSettingsManager;->d:Ljava/util/Map;

    .line 9
    .line 10
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lcom/facebook/internal/p;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    sget-object p1, Lcom/facebook/internal/FetchedAppSettingsManager;->a:Lcom/facebook/internal/FetchedAppSettingsManager;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Lcom/facebook/internal/FetchedAppSettingsManager;->e(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, p0, v0}, Lcom/facebook/internal/FetchedAppSettingsManager;->j(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/p;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {}, Lcom/facebook/v;->m()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    sget-object p0, Lcom/facebook/internal/FetchedAppSettingsManager;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 44
    .line 45
    sget-object v1, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->SUCCESS:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    .line 46
    .line 47
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p1}, Lcom/facebook/internal/FetchedAppSettingsManager;->r()V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final j(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/p;
    .locals 41
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "applicationId"

    .line 8
    .line 9
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "settingsJSON"

    .line 13
    .line 14
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v3, "android_sdk_error_categories"

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    sget-object v4, Lcom/facebook/internal/i;->g:Lcom/facebook/internal/i$a;

    .line 24
    .line 25
    invoke-virtual {v4, v3}, Lcom/facebook/internal/i$a;->a(Lorg/json/JSONArray;)Lcom/facebook/internal/i;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    invoke-virtual {v4}, Lcom/facebook/internal/i$a;->b()Lcom/facebook/internal/i;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    :cond_0
    move-object v12, v3

    .line 36
    const-string v3, "app_events_feature_bitmask"

    .line 37
    .line 38
    const/4 v11, 0x0

    .line 39
    invoke-virtual {v2, v3, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    and-int/lit8 v4, v3, 0x8

    .line 44
    .line 45
    if-eqz v4, :cond_1

    .line 46
    .line 47
    const/16 v16, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move/from16 v16, v11

    .line 51
    .line 52
    :goto_0
    and-int/lit8 v4, v3, 0x10

    .line 53
    .line 54
    if-eqz v4, :cond_2

    .line 55
    .line 56
    const/16 v17, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    move/from16 v17, v11

    .line 60
    .line 61
    :goto_1
    and-int/lit8 v4, v3, 0x20

    .line 62
    .line 63
    if-eqz v4, :cond_3

    .line 64
    .line 65
    const/16 v19, 0x1

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    move/from16 v19, v11

    .line 69
    .line 70
    :goto_2
    and-int/lit16 v4, v3, 0x100

    .line 71
    .line 72
    if-eqz v4, :cond_4

    .line 73
    .line 74
    const/16 v20, 0x1

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_4
    move/from16 v20, v11

    .line 78
    .line 79
    :goto_3
    and-int/lit16 v3, v3, 0x4000

    .line 80
    .line 81
    if-eqz v3, :cond_5

    .line 82
    .line 83
    const/4 v3, 0x1

    .line 84
    goto :goto_4

    .line 85
    :cond_5
    move v3, v11

    .line 86
    :goto_4
    const-string v4, "auto_event_mapping_android"

    .line 87
    .line 88
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 89
    .line 90
    .line 91
    move-result-object v37

    .line 92
    sput-object v37, Lcom/facebook/internal/FetchedAppSettingsManager;->h:Lorg/json/JSONArray;

    .line 93
    .line 94
    if-eqz v37, :cond_7

    .line 95
    .line 96
    invoke-static {}, Lcom/facebook/internal/f0;->b()Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-eqz v4, :cond_7

    .line 101
    .line 102
    if-eqz v37, :cond_6

    .line 103
    .line 104
    invoke-virtual/range {v37 .. v37}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    goto :goto_5

    .line 109
    :cond_6
    const/4 v4, 0x0

    .line 110
    :goto_5
    invoke-static {v4}, Lt1/c;->c(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_7
    const-string v13, "app_events_config"

    .line 114
    .line 115
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 116
    .line 117
    .line 118
    move-result-object v10

    .line 119
    new-instance v9, Lcom/facebook/internal/p;

    .line 120
    .line 121
    move-object v4, v9

    .line 122
    const-string v5, "supports_implicit_sdk_logging"

    .line 123
    .line 124
    invoke-virtual {v2, v5, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    const-string v6, "gdpv4_nux_content"

    .line 129
    .line 130
    const-string v7, ""

    .line 131
    .line 132
    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    move-object v6, v7

    .line 137
    const-string v8, "settingsJSON.optString(A\u2026_SETTING_NUX_CONTENT, \"\")"

    .line 138
    .line 139
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const-string v7, "gdpv4_nux_enabled"

    .line 143
    .line 144
    invoke-virtual {v2, v7, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    const-string v8, "app_events_session_timeout"

    .line 149
    .line 150
    invoke-static {}, La2/j;->a()I

    .line 151
    .line 152
    .line 153
    move-result v14

    .line 154
    invoke-virtual {v2, v8, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    sget-object v14, Lcom/facebook/internal/SmartLoginOption;->Companion:Lcom/facebook/internal/SmartLoginOption$a;

    .line 159
    .line 160
    const-string v15, "seamless_login"

    .line 161
    .line 162
    move-object/from16 v38, v12

    .line 163
    .line 164
    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 165
    .line 166
    .line 167
    move-result-wide v11

    .line 168
    invoke-virtual {v14, v11, v12}, Lcom/facebook/internal/SmartLoginOption$a;->a(J)Ljava/util/EnumSet;

    .line 169
    .line 170
    .line 171
    move-result-object v11

    .line 172
    move-object v15, v9

    .line 173
    move-object v9, v11

    .line 174
    const-string v11, "android_dialog_configs"

    .line 175
    .line 176
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 177
    .line 178
    .line 179
    move-result-object v11

    .line 180
    invoke-direct {v0, v11}, Lcom/facebook/internal/FetchedAppSettingsManager;->o(Lorg/json/JSONObject;)Ljava/util/Map;

    .line 181
    .line 182
    .line 183
    move-result-object v11

    .line 184
    move-object v12, v10

    .line 185
    move-object v10, v11

    .line 186
    const-string v11, "smart_login_bookmark_icon_url"

    .line 187
    .line 188
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v11

    .line 192
    move-object v14, v13

    .line 193
    move-object v13, v11

    .line 194
    move-object/from16 v21, v14

    .line 195
    .line 196
    const-string v14, "settingsJSON.optString(S\u2026_LOGIN_BOOKMARK_ICON_URL)"

    .line 197
    .line 198
    invoke-static {v11, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    const-string v11, "smart_login_menu_icon_url"

    .line 202
    .line 203
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v11

    .line 207
    move-object/from16 v39, v15

    .line 208
    .line 209
    move-object/from16 v40, v21

    .line 210
    .line 211
    const/4 v15, 0x0

    .line 212
    move-object v14, v11

    .line 213
    const-string v15, "settingsJSON.optString(SMART_LOGIN_MENU_ICON_URL)"

    .line 214
    .line 215
    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    const-string v11, "sdk_update_message"

    .line 219
    .line 220
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v11

    .line 224
    move-object/from16 v18, v11

    .line 225
    .line 226
    const-string v15, "settingsJSON.optString(SDK_UPDATE_MESSAGE)"

    .line 227
    .line 228
    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    const-string v11, "aam_rules"

    .line 232
    .line 233
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v21

    .line 237
    const-string v11, "suggested_events_setting"

    .line 238
    .line 239
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v22

    .line 243
    const-string v11, "restrictive_data_filter_params"

    .line 244
    .line 245
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v23

    .line 249
    const-string v11, "protected_mode_rules"

    .line 250
    .line 251
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 252
    .line 253
    .line 254
    move-result-object v15

    .line 255
    const-string v1, "standard_params"

    .line 256
    .line 257
    invoke-direct {v0, v15, v1}, Lcom/facebook/internal/FetchedAppSettingsManager;->q(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    .line 258
    .line 259
    .line 260
    move-result-object v24

    .line 261
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    const-string v15, "maca_rules"

    .line 266
    .line 267
    invoke-direct {v0, v1, v15}, Lcom/facebook/internal/FetchedAppSettingsManager;->q(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    .line 268
    .line 269
    .line 270
    move-result-object v25

    .line 271
    invoke-direct {v0, v2}, Lcom/facebook/internal/FetchedAppSettingsManager;->p(Lorg/json/JSONObject;)Ljava/util/Map;

    .line 272
    .line 273
    .line 274
    move-result-object v26

    .line 275
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    const-string v15, "blocklist_events"

    .line 280
    .line 281
    invoke-direct {v0, v1, v15}, Lcom/facebook/internal/FetchedAppSettingsManager;->q(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    .line 282
    .line 283
    .line 284
    move-result-object v27

    .line 285
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    const-string v15, "redacted_events"

    .line 290
    .line 291
    invoke-direct {v0, v1, v15}, Lcom/facebook/internal/FetchedAppSettingsManager;->q(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    .line 292
    .line 293
    .line 294
    move-result-object v28

    .line 295
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    const-string v15, "sensitive_params"

    .line 300
    .line 301
    invoke-direct {v0, v1, v15}, Lcom/facebook/internal/FetchedAppSettingsManager;->q(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    .line 302
    .line 303
    .line 304
    move-result-object v29

    .line 305
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    const-string v15, "standard_params_schema"

    .line 310
    .line 311
    invoke-direct {v0, v1, v15}, Lcom/facebook/internal/FetchedAppSettingsManager;->q(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    .line 312
    .line 313
    .line 314
    move-result-object v30

    .line 315
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    const-string v11, "standard_params_blocked"

    .line 320
    .line 321
    invoke-direct {v0, v1, v11}, Lcom/facebook/internal/FetchedAppSettingsManager;->q(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    .line 322
    .line 323
    .line 324
    move-result-object v31

    .line 325
    const-string v1, "fb_currency"

    .line 326
    .line 327
    invoke-direct {v0, v12, v1}, Lcom/facebook/internal/FetchedAppSettingsManager;->k(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    .line 328
    .line 329
    .line 330
    move-result-object v32

    .line 331
    const-string v1, "_valueToSum"

    .line 332
    .line 333
    invoke-direct {v0, v12, v1}, Lcom/facebook/internal/FetchedAppSettingsManager;->k(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    .line 334
    .line 335
    .line 336
    move-result-object v33

    .line 337
    const/4 v1, 0x2

    .line 338
    const/4 v11, 0x0

    .line 339
    const/4 v15, 0x0

    .line 340
    invoke-static {v0, v12, v11, v1, v15}, Lcom/facebook/internal/FetchedAppSettingsManager;->m(Lcom/facebook/internal/FetchedAppSettingsManager;Lorg/json/JSONObject;ZILjava/lang/Object;)Ljava/util/ArrayList;

    .line 341
    .line 342
    .line 343
    move-result-object v34

    .line 344
    const/4 v1, 0x1

    .line 345
    invoke-direct {v0, v12, v1}, Lcom/facebook/internal/FetchedAppSettingsManager;->l(Lorg/json/JSONObject;Z)Ljava/util/ArrayList;

    .line 346
    .line 347
    .line 348
    move-result-object v35

    .line 349
    move-object/from16 v1, v40

    .line 350
    .line 351
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    invoke-direct {v0, v1}, Lcom/facebook/internal/FetchedAppSettingsManager;->n(Lorg/json/JSONObject;)Ljava/lang/Long;

    .line 356
    .line 357
    .line 358
    move-result-object v36

    .line 359
    move/from16 v11, v16

    .line 360
    .line 361
    move-object/from16 v12, v38

    .line 362
    .line 363
    move-object/from16 v1, v39

    .line 364
    .line 365
    move/from16 v15, v17

    .line 366
    .line 367
    move/from16 v16, v19

    .line 368
    .line 369
    move-object/from16 v17, v37

    .line 370
    .line 371
    move/from16 v19, v20

    .line 372
    .line 373
    move/from16 v20, v3

    .line 374
    .line 375
    invoke-direct/range {v4 .. v36}, Lcom/facebook/internal/p;-><init>(ZLjava/lang/String;ZILjava/util/EnumSet;Ljava/util/Map;ZLcom/facebook/internal/i;Ljava/lang/String;Ljava/lang/String;ZZLorg/json/JSONArray;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/util/Map;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;)V

    .line 376
    .line 377
    .line 378
    sget-object v2, Lcom/facebook/internal/FetchedAppSettingsManager;->d:Ljava/util/Map;

    .line 379
    .line 380
    move-object/from16 v3, p1

    .line 381
    .line 382
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    return-object v1
.end method
