.class public final Lcom/inmobi/media/X6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field public static final a:Lcom/inmobi/media/X6;

.field public static final b:Landroid/location/LocationManager;

.field public static final c:Landroid/os/HandlerThread;

.field public static d:Lcom/google/android/gms/common/api/GoogleApiClient;

.field public static final e:Ljava/lang/String;

.field public static f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/inmobi/media/X6;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/inmobi/media/X6;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/inmobi/media/X6;->a:Lcom/inmobi/media/X6;

    .line 7
    .line 8
    new-instance v0, Landroid/os/HandlerThread;

    .line 9
    .line 10
    const-string v1, "LThread"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/inmobi/media/X6;->c:Landroid/os/HandlerThread;

    .line 16
    .line 17
    const-class v2, Lcom/inmobi/media/X6;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    sput-object v2, Lcom/inmobi/media/X6;->e:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/inmobi/media/D4;->a(Ljava/lang/Thread;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const-string v1, "location"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    instance-of v1, v0, Landroid/location/LocationManager;

    .line 41
    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    check-cast v0, Landroid/location/LocationManager;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 48
    :goto_0
    sput-object v0, Lcom/inmobi/media/X6;->b:Landroid/location/LocationManager;

    .line 49
    .line 50
    :cond_1
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

.method public static a(II)Landroid/location/Location;
    .locals 5

    .line 23
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 24
    invoke-virtual {v0, p0}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 25
    invoke-virtual {v0, p1}, Landroid/location/Criteria;->setPowerRequirement(I)V

    const/4 p1, 0x0

    .line 26
    invoke-virtual {v0, p1}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 27
    sget-object p1, Lcom/inmobi/media/X6;->b:Landroid/location/LocationManager;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    .line 28
    invoke-virtual {p1, v0, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 29
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_2

    if-eq p0, v2, :cond_2

    .line 30
    sget-object p0, Lcom/inmobi/media/X6;->b:Landroid/location/LocationManager;

    if-eqz p0, :cond_3

    .line 31
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object p0

    const-string p1, "getProviders(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_3

    :goto_1
    add-int/lit8 v0, p1, -0x1

    .line 33
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 34
    :try_start_1
    sget-object v3, Lcom/inmobi/media/X6;->b:Landroid/location/LocationManager;

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-ne v4, v2, :cond_0

    .line 35
    :try_start_2
    invoke-virtual {v3, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, p1

    :catch_1
    if-eqz v1, :cond_0

    goto :goto_2

    :catch_2
    :cond_0
    if-gez v0, :cond_1

    goto :goto_2

    :cond_1
    move p1, v0

    goto :goto_1

    :cond_2
    move-object v1, p1

    .line 36
    :cond_3
    :goto_2
    sget-object p0, Lcom/inmobi/media/X6;->e:Ljava/lang/String;

    const-string p1, "TAG"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public static a(Landroid/location/Location;ZLandroid/location/Location;)Ljava/util/HashMap;
    .locals 7

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 38
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/16 v2, 0x2c

    if-eqz p0, :cond_2

    .line 39
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 40
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "u-ll-ts"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 42
    const-string v3, "u-latlong-accu"

    invoke-virtual {v0, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "sdk-collected"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_2
    sget-object p0, Lcom/inmobi/media/Uc;->a:Lcom/inmobi/media/Uc;

    invoke-virtual {p0}, Lcom/inmobi/media/Uc;->h()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 45
    sget-object p1, Lcom/inmobi/media/O2;->a:Ljava/util/LinkedHashMap;

    const-string p1, "signals"

    const/4 v3, 0x0

    invoke-static {p1, p0, v3}, Lcom/inmobi/media/M2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 46
    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/SignalsConfig;->getIceConfig()Lcom/inmobi/commons/core/configs/SignalsConfig$IceConfig;

    move-result-object p0

    .line 47
    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/SignalsConfig$IceConfig;->isLocationEnabled()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 48
    :cond_3
    invoke-static {}, Lcom/inmobi/media/X6;->e()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "loc-allowed"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz p2, :cond_5

    .line 49
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 50
    const-string p1, "u-latlong-accu-fine"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "u-ll-ts-fine"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_5
    invoke-static {}, Lcom/inmobi/media/X6;->e()Z

    move-result p0

    const-string p1, "loc-granularity"

    if-eqz p0, :cond_6

    invoke-static {}, Lcom/inmobi/media/X6;->c()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 53
    const-string p0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v1, p0}, Lcom/inmobi/media/wa;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 54
    const-string p0, "coarse"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 55
    :cond_6
    const-string p0, "none"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 12
    const-string v0, "TAG"

    :try_start_0
    sget-object v1, Lcom/inmobi/media/X6;->d:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v1, :cond_0

    .line 13
    sget-object v1, Lcom/inmobi/media/X6;->e:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance p0, Lcom/inmobi/media/W6;

    invoke-direct {p0}, Lcom/inmobi/media/W6;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p0

    new-instance v1, Lub/y2;

    invoke-direct {v1}, Lub/y2;-><init>()V

    .line 16
    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p0

    .line 17
    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p0

    .line 18
    sput-object p0, Lcom/inmobi/media/X6;->d:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz p0, :cond_1

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 21
    :catch_0
    sget-object p0, Lcom/inmobi/media/X6;->e:Ljava/lang/String;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 22
    sput-boolean p0, Lcom/inmobi/media/X6;->f:Z

    return-void
.end method

.method public static c()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 7
    .line 8
    invoke-static {v1, v2}, Lcom/inmobi/media/wa;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 19
    .line 20
    invoke-static {v1, v2}, Lcom/inmobi/media/wa;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    :cond_0
    const/4 v0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    sget-object v1, Lcom/inmobi/media/X6;->e:Ljava/lang/String;

    .line 29
    .line 30
    const-string v2, "TAG"

    .line 31
    .line 32
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    return v0
.end method

.method public static e()Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v3, 0x1c

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    if-lt v2, v3, :cond_2

    .line 15
    .line 16
    sget-object v0, Lcom/inmobi/media/X6;->b:Landroid/location/LocationManager;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-static {v0}, Lub/x2;->a(Landroid/location/LocationManager;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-ne v0, v4, :cond_1

    .line 25
    .line 26
    move v1, v4

    .line 27
    :cond_1
    return v1

    .line 28
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v2, "location_mode"

    .line 33
    .line 34
    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move v0, v1

    .line 40
    :goto_0
    if-eqz v0, :cond_3

    .line 41
    .line 42
    move v1, v4

    .line 43
    :cond_3
    return v1
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    sget-object v0, Lcom/inmobi/media/X6;->b:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    const/4 v2, 0x2

    .line 3
    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setBearingAccuracy(I)V

    .line 4
    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setPowerRequirement(I)V

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setCostAllowed(Z)V

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TAG"

    if-eqz v1, :cond_0

    .line 7
    sget-object v3, Lcom/inmobi/media/X6;->e:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v2, Lcom/inmobi/media/X6;->c:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lcom/inmobi/media/X6;->e:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    :cond_1
    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-void
.end method

.method public final declared-synchronized b()Ljava/util/HashMap;
    .locals 12

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    .line 6
    .line 7
    sget-object v1, Lcom/inmobi/media/Uc;->a:Lcom/inmobi/media/Uc;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/inmobi/media/Uc;->h()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    const/4 v4, 0x0

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    sget-object v5, Lcom/inmobi/media/O2;->a:Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    const-string v5, "signals"

    .line 21
    .line 22
    invoke-static {v5, v1, v4}, Lcom/inmobi/media/M2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v5, "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig"

    .line 27
    .line 28
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    check-cast v1, Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/SignalsConfig;->getIceConfig()Lcom/inmobi/commons/core/configs/SignalsConfig$IceConfig;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/SignalsConfig$IceConfig;->isLocationEnabled()Z

    .line 38
    .line 39
    .line 40
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    :goto_0
    move-object v1, v4

    .line 45
    goto/16 :goto_d

    .line 46
    .line 47
    :catchall_0
    move-exception v0

    .line 48
    goto/16 :goto_10

    .line 49
    .line 50
    :cond_1
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/inmobi/media/X6;->e()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_4

    .line 55
    .line 56
    invoke-static {}, Lcom/inmobi/media/X6;->c()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_4

    .line 61
    .line 62
    sget-boolean v1, Lcom/inmobi/media/X6;->f:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    :try_start_2
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v1}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const-string v5, "getFusedLocationProviderClient(...)"

    .line 78
    .line 79
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {v1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->getLastLocation()Lcom/google/android/gms/tasks/Task;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    const-string v5, "getLastLocation(...)"

    .line 87
    .line 88
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Landroid/location/Location;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :catch_0
    move-exception v1

    .line 99
    :try_start_3
    sget-object v5, Lcom/inmobi/media/X6;->e:Ljava/lang/String;

    .line 100
    .line 101
    const-string v6, "TAG"

    .line 102
    .line 103
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    .line 108
    .line 109
    :catch_1
    :cond_2
    move-object v1, v4

    .line 110
    :goto_2
    :try_start_4
    sget-object v5, Lcom/inmobi/media/X6;->b:Landroid/location/LocationManager;

    .line 111
    .line 112
    if-eqz v5, :cond_3

    .line 113
    .line 114
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    .line 119
    .line 120
    invoke-static {v5, v6}, Lcom/inmobi/media/wa;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-eqz v5, :cond_3

    .line 125
    .line 126
    const/4 v5, 0x2

    .line 127
    invoke-static {v5, v5}, Lcom/inmobi/media/X6;->a(II)Landroid/location/Location;

    .line 128
    .line 129
    .line 130
    move-result-object v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 131
    goto :goto_4

    .line 132
    :cond_3
    :goto_3
    move-object v5, v4

    .line 133
    goto :goto_4

    .line 134
    :cond_4
    move-object v1, v4

    .line 135
    move-object v5, v1

    .line 136
    goto :goto_4

    .line 137
    :catch_2
    move-object v1, v4

    .line 138
    :catch_3
    :try_start_5
    sget-object v5, Lcom/inmobi/media/X6;->e:Ljava/lang/String;

    .line 139
    .line 140
    const-string v6, "TAG"

    .line 141
    .line 142
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :goto_4
    if-nez v1, :cond_5

    .line 147
    .line 148
    if-nez v5, :cond_5

    .line 149
    .line 150
    sget-object v1, Lcom/inmobi/media/X6;->e:Ljava/lang/String;

    .line 151
    .line 152
    const-string v5, "TAG"

    .line 153
    .line 154
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_5
    if-nez v1, :cond_6

    .line 159
    .line 160
    sget-object v1, Lcom/inmobi/media/X6;->e:Ljava/lang/String;

    .line 161
    .line 162
    const-string v6, "TAG"

    .line 163
    .line 164
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-static {v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    if-eqz v5, :cond_11

    .line 171
    .line 172
    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    .line 173
    .line 174
    .line 175
    goto/16 :goto_b

    .line 176
    .line 177
    :cond_6
    if-nez v5, :cond_7

    .line 178
    .line 179
    sget-object v5, Lcom/inmobi/media/X6;->e:Ljava/lang/String;

    .line 180
    .line 181
    const-string v6, "TAG"

    .line 182
    .line 183
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    .line 190
    .line 191
    .line 192
    goto/16 :goto_d

    .line 193
    .line 194
    :cond_7
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    .line 195
    .line 196
    .line 197
    move-result-wide v6

    .line 198
    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    .line 199
    .line 200
    .line 201
    move-result-wide v8

    .line 202
    sub-long/2addr v6, v8

    .line 203
    const-wide/32 v8, 0x1d4c0

    .line 204
    .line 205
    .line 206
    cmp-long v8, v6, v8

    .line 207
    .line 208
    if-lez v8, :cond_8

    .line 209
    .line 210
    move v8, v3

    .line 211
    goto :goto_5

    .line 212
    :cond_8
    move v8, v2

    .line 213
    :goto_5
    const-wide/32 v9, -0x1d4c0

    .line 214
    .line 215
    .line 216
    cmp-long v9, v6, v9

    .line 217
    .line 218
    if-gez v9, :cond_9

    .line 219
    .line 220
    move v9, v3

    .line 221
    goto :goto_6

    .line 222
    :cond_9
    move v9, v2

    .line 223
    :goto_6
    const-wide/16 v10, 0x0

    .line 224
    .line 225
    cmp-long v6, v6, v10

    .line 226
    .line 227
    if-lez v6, :cond_a

    .line 228
    .line 229
    move v6, v3

    .line 230
    goto :goto_7

    .line 231
    :cond_a
    move v6, v2

    .line 232
    :goto_7
    if-eqz v8, :cond_b

    .line 233
    .line 234
    sget-object v5, Lcom/inmobi/media/X6;->e:Ljava/lang/String;

    .line 235
    .line 236
    const-string v6, "TAG"

    .line 237
    .line 238
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    .line 245
    .line 246
    .line 247
    goto :goto_d

    .line 248
    :cond_b
    if-eqz v9, :cond_c

    .line 249
    .line 250
    sget-object v1, Lcom/inmobi/media/X6;->e:Ljava/lang/String;

    .line 251
    .line 252
    const-string v6, "TAG"

    .line 253
    .line 254
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    .line 261
    .line 262
    .line 263
    goto :goto_b

    .line 264
    :cond_c
    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    .line 265
    .line 266
    .line 267
    move-result v7

    .line 268
    invoke-virtual {v5}, Landroid/location/Location;->getAccuracy()F

    .line 269
    .line 270
    .line 271
    move-result v8

    .line 272
    sub-float/2addr v7, v8

    .line 273
    float-to-int v7, v7

    .line 274
    if-lez v7, :cond_d

    .line 275
    .line 276
    move v8, v3

    .line 277
    goto :goto_8

    .line 278
    :cond_d
    move v8, v2

    .line 279
    :goto_8
    if-gez v7, :cond_e

    .line 280
    .line 281
    move v9, v3

    .line 282
    goto :goto_9

    .line 283
    :cond_e
    move v9, v2

    .line 284
    :goto_9
    const/16 v10, 0xc8

    .line 285
    .line 286
    if-le v7, v10, :cond_f

    .line 287
    .line 288
    move v7, v3

    .line 289
    goto :goto_a

    .line 290
    :cond_f
    move v7, v2

    .line 291
    :goto_a
    if-nez v9, :cond_12

    .line 292
    .line 293
    if-eqz v6, :cond_10

    .line 294
    .line 295
    if-eqz v8, :cond_12

    .line 296
    .line 297
    if-nez v7, :cond_10

    .line 298
    .line 299
    goto :goto_c

    .line 300
    :cond_10
    sget-object v1, Lcom/inmobi/media/X6;->e:Ljava/lang/String;

    .line 301
    .line 302
    const-string v6, "TAG"

    .line 303
    .line 304
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    .line 311
    .line 312
    .line 313
    :cond_11
    :goto_b
    move-object v1, v5

    .line 314
    goto :goto_d

    .line 315
    :cond_12
    :goto_c
    sget-object v5, Lcom/inmobi/media/X6;->e:Ljava/lang/String;

    .line 316
    .line 317
    const-string v6, "TAG"

    .line 318
    .line 319
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    .line 326
    .line 327
    .line 328
    :goto_d
    if-eqz v1, :cond_14

    .line 329
    .line 330
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    .line 335
    .line 336
    invoke-static {v2, v5}, Lcom/inmobi/media/wa;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 337
    .line 338
    .line 339
    move-result v2

    .line 340
    if-eqz v2, :cond_13

    .line 341
    .line 342
    const/4 v2, 0x3

    .line 343
    invoke-static {v3, v2}, Lcom/inmobi/media/X6;->a(II)Landroid/location/Location;

    .line 344
    .line 345
    .line 346
    move-result-object v4

    .line 347
    :cond_13
    invoke-static {v1, v3, v4}, Lcom/inmobi/media/X6;->a(Landroid/location/Location;ZLandroid/location/Location;)Ljava/util/HashMap;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    goto :goto_e

    .line 352
    :cond_14
    invoke-static {}, Lcom/inmobi/media/ab;->b()Landroid/location/Location;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    invoke-static {v1, v2, v4}, Lcom/inmobi/media/X6;->a(Landroid/location/Location;ZLandroid/location/Location;)Ljava/util/HashMap;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    :goto_e
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 369
    .line 370
    .line 371
    move-result v2

    .line 372
    if-eqz v2, :cond_15

    .line 373
    .line 374
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    check-cast v2, Ljava/util/Map$Entry;

    .line 379
    .line 380
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v3

    .line 384
    check-cast v3, Ljava/lang/String;

    .line 385
    .line 386
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 395
    .line 396
    .line 397
    goto :goto_f

    .line 398
    :cond_15
    monitor-exit p0

    .line 399
    return-object v0

    .line 400
    :goto_10
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 401
    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/inmobi/media/X6;->c()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/inmobi/media/X6;->e()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/inmobi/media/X6;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    :try_start_1
    const-class v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    const-class v0, Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 27
    .line 28
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    const-class v0, Lcom/google/android/gms/location/LocationServices;

    .line 36
    .line 37
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    .line 44
    :try_start_2
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0}, Lcom/inmobi/media/X6;->a(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    goto :goto_1

    .line 54
    :catch_0
    :try_start_3
    sget-object v0, Lcom/inmobi/media/X6;->e:Ljava/lang/String;

    .line 55
    .line 56
    const-string v1, "TAG"

    .line 57
    .line 58
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 59
    .line 60
    .line 61
    :catch_1
    :cond_0
    :goto_0
    monitor-exit p0

    .line 62
    return-void

    .line 63
    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 64
    throw v0
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .line 1
    const-string v0, "location"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v0, Lcom/inmobi/media/X6;->e:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "TAG"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/inmobi/media/X6;->c()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    sget-object p1, Lcom/inmobi/media/X6;->b:Landroid/location/LocationManager;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    invoke-virtual {p1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p1

    .line 40
    sget-object v0, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 41
    .line 42
    const-string v0, "event"

    .line 43
    .line 44
    invoke-static {p1, v0}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    sget-object v0, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    :goto_0
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "provider"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "provider"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method
