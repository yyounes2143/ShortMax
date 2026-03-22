.class public final Lcom/inmobi/commons/core/configs/RootConfig;
.super Lcom/inmobi/commons/core/configs/Config;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/core/configs/RootConfig$ComponentConfig;,
        Lcom/inmobi/commons/core/configs/RootConfig$GDPR;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRootConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RootConfig.kt\ncom/inmobi/commons/core/configs/RootConfig\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,216:1\n1855#2,2:217\n1855#2,2:219\n1855#2,2:221\n1855#2,2:223\n*S KotlinDebug\n*F\n+ 1 RootConfig.kt\ncom/inmobi/commons/core/configs/RootConfig\n*L\n95#1:217,2\n106#1:219,2\n139#1:221,2\n151#1:223,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/inmobi/commons/core/configs/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_EXPIRY:J = 0x15180L

.field public static final DEFAULT_FALLBACK_URL:Ljava/lang/String; = "https://config.inmobi.com/config-server/v1/config/secure.cfg"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_MAX_RETRIES:I = 0x3

.field public static final DEFAULT_RETRY_INTERVAL:I = 0x3c

.field public static final DEFAULT_URL:Ljava/lang/String; = ""
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_WAIT_TIME:I = 0x3

.field public static final IP_ADDRESS_TP_SUPPORT_KEY:Ljava/lang/String; = "ipAddrTPSupport"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final sAcquisitionLock:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;
    .annotation runtime Lcom/inmobi/media/Z4;
    .end annotation
.end field

.field private components:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/inmobi/commons/core/configs/RootConfig$ComponentConfig;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private gdpr:Lcom/inmobi/commons/core/configs/RootConfig$GDPR;
    .annotation runtime Lcom/inmobi/media/U9;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final ipAddrTPSupport:Ljava/util/List;
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

.field private maxRetries:I

.field private monetizationDisabled:Z

.field private retryInterval:I

.field private waitTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/inmobi/commons/core/configs/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/inmobi/commons/core/configs/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/inmobi/commons/core/configs/RootConfig;->Companion:Lcom/inmobi/commons/core/configs/e;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/inmobi/commons/core/configs/RootConfig;->sAcquisitionLock:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/inmobi/commons/core/configs/Config;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "RootConfig"

    .line 5
    .line 6
    iput-object p1, p0, Lcom/inmobi/commons/core/configs/RootConfig;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const/4 p1, 0x3

    .line 9
    iput p1, p0, Lcom/inmobi/commons/core/configs/RootConfig;->maxRetries:I

    .line 10
    .line 11
    const/16 v0, 0x3c

    .line 12
    .line 13
    iput v0, p0, Lcom/inmobi/commons/core/configs/RootConfig;->retryInterval:I

    .line 14
    .line 15
    iput p1, p0, Lcom/inmobi/commons/core/configs/RootConfig;->waitTime:I

    .line 16
    .line 17
    new-instance p1, Lcom/inmobi/commons/core/configs/RootConfig$GDPR;

    .line 18
    .line 19
    invoke-direct {p1}, Lcom/inmobi/commons/core/configs/RootConfig$GDPR;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/inmobi/commons/core/configs/RootConfig;->gdpr:Lcom/inmobi/commons/core/configs/RootConfig$GDPR;

    .line 23
    .line 24
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/inmobi/commons/core/configs/RootConfig;->components:Ljava/util/List;

    .line 29
    .line 30
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/inmobi/commons/core/configs/RootConfig;->ipAddrTPSupport:Ljava/util/List;

    .line 35
    .line 36
    return-void
.end method

.method public static final synthetic access$getSAcquisitionLock$cp()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/inmobi/commons/core/configs/RootConfig;->sAcquisitionLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final getExpiryForType(Ljava/lang/String;)J
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/inmobi/commons/core/configs/RootConfig;->sAcquisitionLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/commons/core/configs/RootConfig;->components:Ljava/util/List;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/inmobi/commons/core/configs/RootConfig$ComponentConfig;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/RootConfig$ComponentConfig;->getType()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/RootConfig$ComponentConfig;->getExpiry()J

    .line 40
    .line 41
    .line 42
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit v0

    .line 44
    return-wide v1

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    monitor-exit v0

    .line 48
    const-wide/32 v0, 0x15180

    .line 49
    .line 50
    .line 51
    return-wide v0

    .line 52
    :goto_0
    monitor-exit v0

    .line 53
    throw p1
.end method

.method public final getFallbackUrlForRootType()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/inmobi/commons/core/configs/RootConfig;->sAcquisitionLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/commons/core/configs/RootConfig;->components:Ljava/util/List;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/inmobi/commons/core/configs/RootConfig$ComponentConfig;

    .line 23
    .line 24
    const-string v3, "root"

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/RootConfig$ComponentConfig;->getType()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/RootConfig$ComponentConfig;->getFallbackUrl()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit v0

    .line 41
    return-object v1

    .line 42
    :catchall_0
    move-exception v1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    :try_start_1
    const-string v1, "https://config.inmobi.com/config-server/v1/config/secure.cfg"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    monitor-exit v0

    .line 47
    return-object v1

    .line 48
    :goto_0
    monitor-exit v0

    .line 49
    throw v1
.end method

.method public final getIpAddrTPSupport()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/RootConfig;->ipAddrTPSupport:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMaxRetries()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/RootConfig;->maxRetries:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRetryInterval()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/RootConfig;->retryInterval:I

    .line 2
    .line 3
    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "root"

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUrlForType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/inmobi/commons/core/configs/RootConfig;->sAcquisitionLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/commons/core/configs/RootConfig;->components:Ljava/util/List;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/inmobi/commons/core/configs/RootConfig$ComponentConfig;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/RootConfig$ComponentConfig;->getType()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/RootConfig$ComponentConfig;->getUrl()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit v0

    .line 44
    return-object p1

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    :try_start_1
    const-string p1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    monitor-exit v0

    .line 50
    return-object p1

    .line 51
    :goto_0
    monitor-exit v0

    .line 52
    throw p1
.end method

.method public final getWaitTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/RootConfig;->waitTime:I

    .line 2
    .line 3
    return v0
.end method

.method public final isMonetizationDisabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/commons/core/configs/RootConfig;->monetizationDisabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isSameAs(Lcom/inmobi/commons/core/configs/RootConfig;)Z
    .locals 5
    .param p1    # Lcom/inmobi/commons/core/configs/RootConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/Config;->getAccountId$media_release()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/Config;->getAccountId$media_release()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/Config;->getAccountId$media_release()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/Config;->getAccountId$media_release()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/Config;->getAccountId$media_release()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-static {v0, v2, v1, v3, v4}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    :cond_1
    iget v0, p1, Lcom/inmobi/commons/core/configs/RootConfig;->maxRetries:I

    .line 42
    .line 43
    iget v2, p0, Lcom/inmobi/commons/core/configs/RootConfig;->maxRetries:I

    .line 44
    .line 45
    if-ne v0, v2, :cond_2

    .line 46
    .line 47
    iget v0, p1, Lcom/inmobi/commons/core/configs/RootConfig;->retryInterval:I

    .line 48
    .line 49
    iget v2, p0, Lcom/inmobi/commons/core/configs/RootConfig;->retryInterval:I

    .line 50
    .line 51
    if-ne v0, v2, :cond_2

    .line 52
    .line 53
    iget v0, p1, Lcom/inmobi/commons/core/configs/RootConfig;->waitTime:I

    .line 54
    .line 55
    iget v2, p0, Lcom/inmobi/commons/core/configs/RootConfig;->waitTime:I

    .line 56
    .line 57
    if-ne v0, v2, :cond_2

    .line 58
    .line 59
    iget-boolean p1, p1, Lcom/inmobi/commons/core/configs/RootConfig;->monetizationDisabled:Z

    .line 60
    .line 61
    iget-boolean v0, p0, Lcom/inmobi/commons/core/configs/RootConfig;->monetizationDisabled:Z

    .line 62
    .line 63
    if-ne p1, v0, :cond_2

    .line 64
    .line 65
    const/4 v1, 0x1

    .line 66
    :cond_2
    return v1
.end method

.method public isValid()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/RootConfig;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "TAG"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/RootConfig;->gdpr:Lcom/inmobi/commons/core/configs/RootConfig$GDPR;

    .line 9
    .line 10
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lcom/inmobi/commons/core/configs/RootConfig;->maxRetries:I

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-ltz v0, :cond_6

    .line 17
    .line 18
    iget v0, p0, Lcom/inmobi/commons/core/configs/RootConfig;->retryInterval:I

    .line 19
    .line 20
    if-ltz v0, :cond_6

    .line 21
    .line 22
    iget v0, p0, Lcom/inmobi/commons/core/configs/RootConfig;->waitTime:I

    .line 23
    .line 24
    if-gez v0, :cond_0

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_0
    sget-object v0, Lcom/inmobi/commons/core/configs/RootConfig;->sAcquisitionLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v0

    .line 30
    :try_start_0
    iget-object v2, p0, Lcom/inmobi/commons/core/configs/RootConfig;->components:Ljava/util/List;

    .line 31
    .line 32
    if-eqz v2, :cond_3

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Lcom/inmobi/commons/core/configs/RootConfig$ComponentConfig;

    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/RootConfig$ComponentConfig;->isValid()Z

    .line 51
    .line 52
    .line 53
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    if-nez v3, :cond_1

    .line 55
    .line 56
    monitor-exit v0

    .line 57
    return v1

    .line 58
    :catchall_0
    move-exception v1

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    :try_start_1
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    const/4 v2, 0x0

    .line 64
    :goto_0
    if-nez v2, :cond_4

    .line 65
    .line 66
    monitor-exit v0

    .line 67
    return v1

    .line 68
    :cond_4
    :try_start_2
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    .line 70
    monitor-exit v0

    .line 71
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/RootConfig;->gdpr:Lcom/inmobi/commons/core/configs/RootConfig$GDPR;

    .line 72
    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/RootConfig$GDPR;->isValid()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    const/4 v2, 0x1

    .line 80
    if-ne v0, v2, :cond_5

    .line 81
    .line 82
    move v1, v2

    .line 83
    :cond_5
    return v1

    .line 84
    :goto_1
    monitor-exit v0

    .line 85
    throw v1

    .line 86
    :cond_6
    :goto_2
    return v1
.end method

.method public final shouldTransmitRequest()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/RootConfig;->gdpr:Lcom/inmobi/commons/core/configs/RootConfig$GDPR;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/RootConfig$GDPR;->getTransmitRequest()Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    :goto_0
    return v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/inmobi/commons/core/configs/RootConfig;->Companion:Lcom/inmobi/commons/core/configs/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/inmobi/media/q6;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/inmobi/media/q6;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/inmobi/media/Ec;

    .line 12
    .line 13
    const-string v2, "components"

    .line 14
    .line 15
    const-class v3, Lcom/inmobi/commons/core/configs/RootConfig;

    .line 16
    .line 17
    invoke-direct {v1, v2, v3}, Lcom/inmobi/media/Ec;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lcom/inmobi/media/U6;

    .line 21
    .line 22
    new-instance v4, Lcom/inmobi/commons/core/configs/d;

    .line 23
    .line 24
    invoke-direct {v4}, Lcom/inmobi/commons/core/configs/d;-><init>()V

    .line 25
    .line 26
    .line 27
    const-class v5, Lcom/inmobi/commons/core/configs/RootConfig$ComponentConfig;

    .line 28
    .line 29
    invoke-direct {v2, v4, v5}, Lcom/inmobi/media/U6;-><init>(Lcom/inmobi/commons/utils/json/Constructor;Ljava/lang/Class;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/q6;->a(Lcom/inmobi/media/Ec;Lcom/inmobi/media/Dc;)Lcom/inmobi/media/q6;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Lcom/inmobi/media/Ec;

    .line 37
    .line 38
    const-string v2, "ipAddrTPSupport"

    .line 39
    .line 40
    invoke-direct {v1, v2, v3}, Lcom/inmobi/media/Ec;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 41
    .line 42
    .line 43
    new-instance v2, Lcom/inmobi/media/U6;

    .line 44
    .line 45
    new-instance v3, Lcom/inmobi/media/Bc;

    .line 46
    .line 47
    invoke-direct {v3}, Lcom/inmobi/media/Bc;-><init>()V

    .line 48
    .line 49
    .line 50
    const-class v4, Ljava/lang/String;

    .line 51
    .line 52
    invoke-direct {v2, v3, v4}, Lcom/inmobi/media/U6;-><init>(Lcom/inmobi/commons/utils/json/Constructor;Ljava/lang/Class;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/q6;->a(Lcom/inmobi/media/Ec;Lcom/inmobi/media/Dc;)Lcom/inmobi/media/q6;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0, p0}, Lcom/inmobi/media/q6;->a(Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-nez v0, :cond_0

    .line 64
    .line 65
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/RootConfig;->TAG:Ljava/lang/String;

    .line 66
    .line 67
    const-string v1, "TAG"

    .line 68
    .line 69
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    new-instance v0, Lorg/json/JSONObject;

    .line 73
    .line 74
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 75
    .line 76
    .line 77
    :cond_0
    return-object v0
.end method
