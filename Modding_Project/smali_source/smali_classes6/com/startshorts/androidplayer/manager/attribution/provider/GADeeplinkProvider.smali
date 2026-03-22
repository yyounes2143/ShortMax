.class public final Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;
.super Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;
.source "GADeeplinkProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGADeeplinkProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GADeeplinkProvider.kt\ncom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,165:1\n116#2,11:166\n*S KotlinDebug\n*F\n+ 1 GADeeplinkProvider.kt\ncom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider\n*L\n45#1:166,11\n*E\n"
    }
.end annotation


# static fields
.field public static final l:Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final g:Lqt/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private h:Landroid/content/SharedPreferences;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:I

.field private volatile k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->l:Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v2, v0, v1}, Lqt/d;->b(ZILjava/lang/Object;)Lqt/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->g:Lqt/a;

    .line 12
    .line 13
    return-void
.end method

.method private final A(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "handleQueryFailed -> "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "CampaignNewTag"

    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->E()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->g(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->o()V

    .line 32
    .line 33
    .line 34
    const-string p1, ""

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->n(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private final B(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "GADeeplinkProvider handleQuerySuccess -> "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "CampaignNewTag"

    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->E()V

    .line 26
    .line 27
    .line 28
    iget v0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->j:I

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->h(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->o()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->n(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->H(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method

.method private final C()V
    .locals 5

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    const-string v1, "release"

    .line 4
    .line 5
    const-string v2, "CampaignNewTag"

    .line 6
    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->E()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->i:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->h:Landroid/content/SharedPreferences;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 27
    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v4, "release exception -> "

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v1, v2, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->i:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 54
    .line 55
    return-void
.end method

.method private final D()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->E()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->j:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->k:Z

    .line 9
    .line 10
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 11
    .line 12
    const-string v1, "CampaignNewTag"

    .line 13
    .line 14
    const-string/jumbo v2, "startPolling"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object v3, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 21
    .line 22
    new-instance v6, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$startPolling$1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-direct {v6, p0, v0}, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$startPolling$1;-><init>(Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;Lrs/c;)V

    .line 26
    .line 27
    .line 28
    const/4 v7, 0x2

    .line 29
    const/4 v8, 0x0

    .line 30
    const-string v4, "GADeeplinkProvider:polling"

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    invoke-static/range {v3 .. v8}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private final E()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->k:Z

    .line 3
    .line 4
    return-void
.end method

.method public static synthetic p(Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->z(Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic q(Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->k:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic r(Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;)Landroid/content/SharedPreferences;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->h:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic s(Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->j:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic t(Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->A(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic u(Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->B(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic v(Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->C()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic w(Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->j:I

    .line 2
    .line 3
    return-void
.end method

.method private final x(Landroid/content/Context;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->h:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 6
    .line 7
    const-string v1, "CampaignNewTag"

    .line 8
    .line 9
    const-string v2, "createPreferences"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "google.analytics.deferred.deeplink.prefs"

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->h:Landroid/content/SharedPreferences;

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method private final y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->i:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lie/i;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lie/i;-><init>(Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->h:Landroid/content/SharedPreferences;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->i:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method private static final z(Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onSharedPreferenceChanged -> key("

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v2, 0x29

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "CampaignNewTag"

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    if-eqz p2, :cond_4

    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const v1, 0x258156e6

    .line 37
    .line 38
    .line 39
    if-eq v0, v1, :cond_0

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_0
    const-string v0, "deeplink"

    .line 43
    .line 44
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :cond_1
    if-eqz v0, :cond_3

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->B(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    :goto_0
    const-string p1, "OnSharedPreferenceChangeListener:deeplink is null"

    .line 71
    .line 72
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->A(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :goto_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->C()V

    .line 76
    .line 77
    .line 78
    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public a()Lcom/startshorts/androidplayer/manager/attribution/CampaignType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->GA_DEEPLINK:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 2
    .line 3
    return-object v0
.end method

.method protected l(Landroid/content/Context;Lrs/c;)Ljava/lang/Object;
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$queryInternal$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$queryInternal$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$queryInternal$1;->m:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$queryInternal$1;->m:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$queryInternal$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$queryInternal$1;-><init>(Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$queryInternal$1;->k:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$queryInternal$1;->m:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    const/4 v4, 0x0

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget-object p1, v0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$queryInternal$1;->j:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Lqt/a;

    .line 42
    .line 43
    iget-object v1, v0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$queryInternal$1;->i:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v1, Landroid/content/Context;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$queryInternal$1;->h:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;

    .line 50
    .line 51
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    move-object p2, p1

    .line 55
    move-object p1, v1

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 60
    .line 61
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 69
    .line 70
    const-string v2, "CampaignNewTag"

    .line 71
    .line 72
    const-string v5, "queryInternal GADeeplinkProvider"

    .line 73
    .line 74
    invoke-virtual {p2, v2, v5}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object p2, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->g:Lqt/a;

    .line 78
    .line 79
    iput-object p0, v0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$queryInternal$1;->h:Ljava/lang/Object;

    .line 80
    .line 81
    iput-object p1, v0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$queryInternal$1;->i:Ljava/lang/Object;

    .line 82
    .line 83
    iput-object p2, v0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$queryInternal$1;->j:Ljava/lang/Object;

    .line 84
    .line 85
    iput v3, v0, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider$queryInternal$1;->m:I

    .line 86
    .line 87
    invoke-interface {p2, v4, v0}, Lqt/a;->lock(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    if-ne v0, v1, :cond_3

    .line 92
    .line 93
    return-object v1

    .line 94
    :cond_3
    move-object v0, p0

    .line 95
    :goto_1
    :try_start_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->f()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->m()V

    .line 99
    .line 100
    .line 101
    invoke-direct {v0, p1}, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->x(Landroid/content/Context;)V

    .line 102
    .line 103
    .line 104
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->y()V

    .line 105
    .line 106
    .line 107
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;->D()V

    .line 108
    .line 109
    .line 110
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .line 112
    invoke-interface {p2, v4}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 116
    .line 117
    return-object p1

    .line 118
    :catchall_0
    move-exception p1

    .line 119
    invoke-interface {p2, v4}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    throw p1
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "GADeeplinkProvider"

    .line 2
    .line 3
    return-object v0
.end method
