.class public Lcom/ss/ttvideoengine/FeatureManager;
.super Ljava/lang/Object;
.source "FeatureManager.java"


# static fields
.field public static final ABR:Ljava/lang/String; = "abr"

.field public static final AUDIO_ONLY:Ljava/lang/String; = "audio_only"

.field public static final AUDIO_TRACK:Ljava/lang/String; = "audio_track"

.field public static final BASH:Ljava/lang/String; = "bash"

.field public static final BVC1:Ljava/lang/String; = "bvc1"

.field public static final DASH:Ljava/lang/String; = "dash"

.field public static final HTTP_DNS:Ljava/lang/String; = "http_dns"

.field public static final LITE:Ljava/lang/String; = "lite"

.field public static final NATIVE_MDL:Ljava/lang/String; = "native_mdl"

.field public static final NET_SPEED:Ljava/lang/String; = "net_speed"

.field public static final PCDN:Ljava/lang/String; = "pcdn"

.field public static final PRELOAD:Ljava/lang/String; = "preload"

.field private static final PREMIUM_FEATURES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRATEGY_CENTER:Ljava/lang/String; = "strategy_center"

.field public static final SUBTITLE_MASK:Ljava/lang/String; = "subtitle_mask"

.field public static final SUPER_RESOLUTION:Ljava/lang/String; = "super_resolution"

.field private static final TAG:Ljava/lang/String; = "FeatureManager"

.field private static final VALUE_ADD_FEATURES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final VOLUME_BALANCE:Ljava/lang/String; = "volume_balance"

.field public static final VR_PANORAMA:Ljava/lang/String; = "vr_panorama"

.field public static final h266:Ljava/lang/String; = "h266"


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    const-string/jumbo v0, "super_resolution"

    .line 2
    .line 3
    .line 4
    const-string v1, "lite"

    .line 5
    .line 6
    const-string v2, "h266"

    .line 7
    .line 8
    const-string/jumbo v3, "vr_panorama"

    .line 9
    .line 10
    .line 11
    const-string v4, "abr"

    .line 12
    .line 13
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/ss/ttvideoengine/FeatureManager;->VALUE_ADD_FEATURES:Ljava/util/List;

    .line 22
    .line 23
    const-string/jumbo v12, "subtitle_mask"

    .line 24
    .line 25
    .line 26
    const-string v13, "pcdn"

    .line 27
    .line 28
    const-string v1, "bvc1"

    .line 29
    .line 30
    const-string v2, "dash"

    .line 31
    .line 32
    const-string v3, "bash"

    .line 33
    .line 34
    const-string v4, "preload"

    .line 35
    .line 36
    const-string v5, "net_speed"

    .line 37
    .line 38
    const-string v6, "audio_only"

    .line 39
    .line 40
    const-string v7, "http_dns"

    .line 41
    .line 42
    const-string v8, "audio_track"

    .line 43
    .line 44
    const-string/jumbo v9, "volume_balance"

    .line 45
    .line 46
    .line 47
    const-string v10, "native_mdl"

    .line 48
    .line 49
    const-string/jumbo v11, "strategy_center"

    .line 50
    .line 51
    .line 52
    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sput-object v0, Lcom/ss/ttvideoengine/FeatureManager;->PREMIUM_FEATURES:Ljava/util/List;

    .line 61
    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static getLicenseFeatures()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/pandora/ttlicense2/LicenseManager;->getInstance()Lcom/pandora/ttlicense2/LicenseManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "vod_play"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/pandora/ttlicense2/LicenseManager;->getSDKEdition(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "premium_edition"

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    const-string v1, "enterprise_edition"

    .line 21
    .line 22
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0

    .line 34
    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/ttvideoengine/FeatureManager;->PREMIUM_FEATURES:Ljava/util/List;

    .line 35
    .line 36
    return-object v0
.end method

.method public static getModuleName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string/jumbo v0, "vod_play"

    .line 2
    .line 3
    .line 4
    return-object v0
.end method

.method private static getSDKFeatures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "premium_edition"

    .line 2
    .line 3
    invoke-static {v0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/ss/ttvideoengine/FeatureManager;->PREMIUM_FEATURES:Ljava/util/List;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public static hasPermission()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/pandora/ttlicense2/LicenseManager;->getInstance()Lcom/pandora/ttlicense2/LicenseManager;

    move-result-object v0

    const-string/jumbo v1, "vod_play"

    invoke-virtual {v0, v1}, Lcom/pandora/ttlicense2/LicenseManager;->checkSDKAuth(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static hasPermission(Ljava/lang/String;)Z
    .locals 9

    .line 2
    sget-object v0, Lcom/ss/ttvideoengine/FeatureManager;->VALUE_ADD_FEATURES:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ", license check result "

    const-string v2, ", SDK edition "

    const-string/jumbo v3, "vod_play"

    const/4 v4, 0x1

    const-string v5, "premium_edition"

    const/4 v6, 0x0

    const-string v7, "checkAuth failed feature "

    const-string v8, "FeatureManager"

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Lcom/pandora/ttlicense2/LicenseManager;->getInstance()Lcom/pandora/ttlicense2/LicenseManager;

    move-result-object v0

    invoke-virtual {v0, v3, p0}, Lcom/pandora/ttlicense2/LicenseManager;->checkFeatureAuth(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 4
    invoke-static {v5, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_0
    if-eq v0, v4, :cond_1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_1
    return v4

    .line 7
    :cond_2
    invoke-static {}, Lcom/pandora/ttlicense2/LicenseManager;->getInstance()Lcom/pandora/ttlicense2/LicenseManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/pandora/ttlicense2/LicenseManager;->checkSDKAuth(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_3

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    .line 9
    :cond_3
    invoke-static {}, Lcom/ss/ttvideoengine/FeatureManager;->getSDKFeatures()Ljava/util/List;

    move-result-object v0

    .line 10
    invoke-static {}, Lcom/ss/ttvideoengine/FeatureManager;->getLicenseFeatures()Ljava/util/List;

    move-result-object v1

    .line 11
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    .line 13
    :cond_4
    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", license edition "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-static {}, Lcom/pandora/ttlicense2/LicenseManager;->getInstance()Lcom/pandora/ttlicense2/LicenseManager;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/pandora/ttlicense2/LicenseManager;->getSDKEdition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 16
    invoke-static {v8, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_5
    return v4
.end method

.method public static isLicenseExpired()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/pandora/ttlicense2/LicenseManager;->getInstance()Lcom/pandora/ttlicense2/LicenseManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "vod_play"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/pandora/ttlicense2/LicenseManager;->checkSDKAuth(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x2

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method
