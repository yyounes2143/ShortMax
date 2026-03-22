.class public final Lcom/appsflyer/internal/AFe1eSDK;
.super Lcom/appsflyer/internal/AFe1mSDK;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFe1eSDK$AFa1tSDK;,
        Lcom/appsflyer/internal/AFe1eSDK$AFa1uSDK;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/AFe1mSDK<",
        "Lcom/appsflyer/internal/AFh1rSDK;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFetchAdvertisingIdTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchAdvertisingIdTask.kt\ncom/appsflyer/internal/components/queue/tasks/FetchAdvertisingIdTask\n+ 2 StringExtensions.kt\ncom/appsflyer/internal/util/StringExtensionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,396:1\n39#2:397\n1#3:398\n*S KotlinDebug\n*F\n+ 1 FetchAdvertisingIdTask.kt\ncom/appsflyer/internal/components/queue/tasks/FetchAdvertisingIdTask\n*L\n202#1:397\n*E\n"
    }
.end annotation


# static fields
.field public static final AFa1tSDK:Lcom/appsflyer/internal/AFe1eSDK$AFa1tSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final areAllFieldsValid:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final component1:Lcom/appsflyer/internal/AFc1oSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final component2:Lcom/appsflyer/internal/AFc1eSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final component3:Lcom/appsflyer/internal/AFh1rSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final component4:Lcom/appsflyer/internal/AFc1hSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final copy:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/appsflyer/internal/AFe1eSDK$AFa1tSDK;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFe1eSDK$AFa1tSDK;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/appsflyer/internal/AFe1eSDK;->AFa1tSDK:Lcom/appsflyer/internal/AFe1eSDK$AFa1tSDK;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFd1zSDK;)V
    .locals 12
    .param p1    # Lcom/appsflyer/internal/AFd1zSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/appsflyer/internal/AFe1pSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFe1pSDK;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    new-array v2, v2, [Lcom/appsflyer/internal/AFe1pSDK;

    .line 10
    .line 11
    const-string v3, "FetchAdvertisingIdTask"

    .line 12
    .line 13
    invoke-direct {p0, v1, v2, v3}, Lcom/appsflyer/internal/AFe1mSDK;-><init>(Lcom/appsflyer/internal/AFe1pSDK;[Lcom/appsflyer/internal/AFe1pSDK;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1zSDK;->AFInAppEventParameterName()Lcom/appsflyer/internal/AFc1hSDK;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/appsflyer/internal/AFe1eSDK;->component4:Lcom/appsflyer/internal/AFc1hSDK;

    .line 24
    .line 25
    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1zSDK;->AFAdRevenueData()Lcom/appsflyer/internal/AFc1oSDK;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/appsflyer/internal/AFe1eSDK;->component1:Lcom/appsflyer/internal/AFc1oSDK;

    .line 33
    .line 34
    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1zSDK;->force()Lcom/appsflyer/internal/AFc1eSDK;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcom/appsflyer/internal/AFe1eSDK;->component2:Lcom/appsflyer/internal/AFc1eSDK;

    .line 42
    .line 43
    new-instance p1, Lcom/appsflyer/internal/AFh1rSDK;

    .line 44
    .line 45
    const/16 v10, 0xff

    .line 46
    .line 47
    const/4 v11, 0x0

    .line 48
    const/4 v2, 0x0

    .line 49
    const/4 v3, 0x0

    .line 50
    const/4 v4, 0x0

    .line 51
    const/4 v5, 0x0

    .line 52
    const/4 v6, 0x0

    .line 53
    const/4 v7, 0x0

    .line 54
    const/4 v8, 0x0

    .line 55
    const/4 v9, 0x0

    .line 56
    move-object v1, p1

    .line 57
    invoke-direct/range {v1 .. v11}, Lcom/appsflyer/internal/AFh1rSDK;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lcom/appsflyer/internal/AFe1eSDK;->component3:Lcom/appsflyer/internal/AFh1rSDK;

    .line 61
    .line 62
    new-instance p1, Lcom/appsflyer/internal/AFe1eSDK$4;

    .line 63
    .line 64
    invoke-direct {p1, p0}, Lcom/appsflyer/internal/AFe1eSDK$4;-><init>(Lcom/appsflyer/internal/AFe1eSDK;)V

    .line 65
    .line 66
    .line 67
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p0, Lcom/appsflyer/internal/AFe1eSDK;->areAllFieldsValid:Lms/i;

    .line 72
    .line 73
    new-instance p1, Lcom/appsflyer/internal/AFe1eSDK$1;

    .line 74
    .line 75
    invoke-direct {p1, p0}, Lcom/appsflyer/internal/AFe1eSDK$1;-><init>(Lcom/appsflyer/internal/AFe1eSDK;)V

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iput-object p1, p0, Lcom/appsflyer/internal/AFe1eSDK;->copy:Lms/i;

    .line 83
    .line 84
    return-void
.end method

.method private static component2()Z
    .locals 11

    .line 1
    :try_start_0
    const-string v0, "com.samsung.android.game.cloudgame.dev.sdk.CloudDevSdk"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_2

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    move-object v4, v0

    .line 10
    nop

    .line 11
    instance-of v0, v4, Ljava/lang/ClassNotFoundException;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v0, "CloudDevSdk not found"

    .line 16
    .line 17
    :goto_0
    move-object v3, v0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v2, "Unexpected exception while checking if running in cloud environment: "

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    goto :goto_0

    .line 41
    :goto_1
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 42
    .line 43
    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->hashCode:Lcom/appsflyer/internal/AFg1cSDK;

    .line 44
    .line 45
    const/16 v9, 0x70

    .line 46
    .line 47
    const/4 v10, 0x0

    .line 48
    const/4 v5, 0x1

    .line 49
    const/4 v6, 0x0

    .line 50
    const/4 v7, 0x0

    .line 51
    const/4 v8, 0x0

    .line 52
    invoke-static/range {v1 .. v10}, Lcom/appsflyer/internal/AFh1ySDK;->e$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    :goto_2
    return v0
.end method

.method private final component3()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1eSDK;->copy:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private final copydefault()Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-lez v1, :cond_2

    .line 7
    .line 8
    invoke-direct/range {p0 .. p0}, Lcom/appsflyer/internal/AFe1eSDK;->component3()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const/4 v4, 0x1

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFe1eSDK;->getMonetizationNetwork(I)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    sget-object v5, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 22
    .line 23
    sget-object v6, Lcom/appsflyer/internal/AFg1cSDK;->hashCode:Lcom/appsflyer/internal/AFg1cSDK;

    .line 24
    .line 25
    const/4 v9, 0x4

    .line 26
    const/4 v10, 0x0

    .line 27
    const-string v7, "GAID fetched using Samsung Cloud dev SDK"

    .line 28
    .line 29
    const/4 v8, 0x0

    .line 30
    invoke-static/range {v5 .. v10}, Lcom/appsflyer/internal/AFh1ySDK;->v$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :goto_1
    move v3, v4

    .line 34
    goto :goto_2

    .line 35
    :cond_0
    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFe1eSDK;->getCurrencyIso4217Code(I)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    sget-object v5, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 42
    .line 43
    sget-object v6, Lcom/appsflyer/internal/AFg1cSDK;->hashCode:Lcom/appsflyer/internal/AFg1cSDK;

    .line 44
    .line 45
    const/4 v9, 0x4

    .line 46
    const/4 v10, 0x0

    .line 47
    const-string v7, "GAID fetched using GMS"

    .line 48
    .line 49
    const/4 v8, 0x0

    .line 50
    invoke-static/range {v5 .. v10}, Lcom/appsflyer/internal/AFh1ySDK;->v$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    sget-object v11, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 55
    .line 56
    sget-object v12, Lcom/appsflyer/internal/AFg1cSDK;->hashCode:Lcom/appsflyer/internal/AFg1cSDK;

    .line 57
    .line 58
    const/4 v15, 0x4

    .line 59
    const/16 v16, 0x0

    .line 60
    .line 61
    const-string v13, "Failed to fetch GAID"

    .line 62
    .line 63
    const/4 v14, 0x0

    .line 64
    invoke-static/range {v11 .. v16}, Lcom/appsflyer/internal/AFh1ySDK;->v$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    move v3, v2

    .line 68
    :goto_2
    if-nez v3, :cond_2

    .line 69
    .line 70
    add-int/lit8 v1, v1, -0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    iget-object v1, v0, Lcom/appsflyer/internal/AFe1eSDK;->component2:Lcom/appsflyer/internal/AFc1eSDK;

    .line 74
    .line 75
    iget-object v2, v0, Lcom/appsflyer/internal/AFe1eSDK;->component3:Lcom/appsflyer/internal/AFh1rSDK;

    .line 76
    .line 77
    iput-object v2, v1, Lcom/appsflyer/internal/AFc1eSDK;->component3:Lcom/appsflyer/internal/AFh1rSDK;

    .line 78
    .line 79
    return v3
.end method

.method public static final synthetic getCurrencyIso4217Code(Lcom/appsflyer/internal/AFe1eSDK;)Lcom/appsflyer/internal/AFc1oSDK;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appsflyer/internal/AFe1eSDK;->component1:Lcom/appsflyer/internal/AFc1oSDK;

    return-object p0
.end method

.method private final getCurrencyIso4217Code(I)Z
    .locals 13

    .line 2
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->hashCode:Lcom/appsflyer/internal/AFg1cSDK;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "Trying to fetch GAID..."

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/appsflyer/internal/AFh1ySDK;->i$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 3
    new-instance v0, Lcom/appsflyer/internal/AFe1eSDK$AFa1uSDK;

    const/16 v11, 0xf

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Lcom/appsflyer/internal/AFe1eSDK$AFa1uSDK;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLjava/lang/StringBuilder;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1eSDK;->component4:Lcom/appsflyer/internal/AFc1hSDK;

    .line 5
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;

    .line 6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 7
    invoke-static {v1}, Lcom/appsflyer/internal/AFe1eSDK;->getRevenue(Landroid/content/Context;)I

    move-result v1

    .line 8
    iget-object v2, p0, Lcom/appsflyer/internal/AFe1eSDK;->component4:Lcom/appsflyer/internal/AFc1hSDK;

    .line 9
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;

    .line 10
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 11
    invoke-direct {p0, v2, v0}, Lcom/appsflyer/internal/AFe1eSDK;->getCurrencyIso4217Code(Landroid/content/Context;Lcom/appsflyer/internal/AFe1eSDK$AFa1uSDK;)Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_3

    .line 12
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    .line 13
    const-string v5, "enableGpsFallback"

    invoke-virtual {v2, v5, v4}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14
    iget-object v2, p0, Lcom/appsflyer/internal/AFe1eSDK;->component4:Lcom/appsflyer/internal/AFc1hSDK;

    .line 15
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;

    .line 16
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 17
    invoke-direct {p0, v2, v0}, Lcom/appsflyer/internal/AFe1eSDK;->getRevenue(Landroid/content/Context;Lcom/appsflyer/internal/AFe1eSDK$AFa1uSDK;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 18
    :goto_0
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFe1eSDK$AFa1uSDK;->getGaidError()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 19
    invoke-static {v5}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v5}, Lkotlin/text/StringsKt;->v1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 20
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 21
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1eSDK;->component3:Lcom/appsflyer/internal/AFh1rSDK;

    invoke-static {v1, v5}, Lcom/appsflyer/internal/AFe1eSDK;->getRevenue(Lcom/appsflyer/internal/AFh1rSDK;Ljava/lang/String;)V

    if-nez v2, :cond_3

    return v3

    .line 22
    :cond_3
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1eSDK;->component3:Lcom/appsflyer/internal/AFh1rSDK;

    .line 23
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFe1eSDK$AFa1uSDK;->getAdvertisingId()Ljava/lang/String;

    move-result-object v2

    .line 24
    iput-object v2, v1, Lcom/appsflyer/internal/AFh1rSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    .line 25
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFe1eSDK$AFa1uSDK;->isLimitAdTrackingEnabled()Ljava/lang/Boolean;

    move-result-object v2

    .line 26
    iput-object v2, v1, Lcom/appsflyer/internal/AFh1rSDK;->getRevenue:Ljava/lang/Boolean;

    .line 27
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFe1eSDK$AFa1uSDK;->isLimitAdTrackingEnabled()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 28
    :goto_2
    iput-object v2, v1, Lcom/appsflyer/internal/AFh1rSDK;->AFAdRevenueData:Ljava/lang/Boolean;

    .line 29
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFe1eSDK$AFa1uSDK;->getAdvertisingIdWithGps()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 30
    iput-object v0, v1, Lcom/appsflyer/internal/AFh1rSDK;->getMediationNetwork:Ljava/lang/Boolean;

    .line 31
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 32
    iput-object v0, v1, Lcom/appsflyer/internal/AFh1rSDK;->getMonetizationNetwork:Ljava/lang/Boolean;

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    move v3, v4

    .line 33
    :cond_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 34
    iput-object p1, v1, Lcom/appsflyer/internal/AFh1rSDK;->component2:Ljava/lang/Boolean;

    return v4
.end method

.method private final getCurrencyIso4217Code(Landroid/content/Context;Lcom/appsflyer/internal/AFe1eSDK$AFa1uSDK;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 35
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/appsflyer/internal/AFe1eSDK$AFa1uSDK;->setAdvertisingId(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/appsflyer/internal/AFe1eSDK$AFa1uSDK;->setLimitAdTrackingEnabled(Ljava/lang/Boolean;)V

    .line 38
    invoke-virtual {p2, v0}, Lcom/appsflyer/internal/AFe1eSDK$AFa1uSDK;->setAdvertisingIdWithGps(Z)V

    .line 39
    invoke-virtual {p2}, Lcom/appsflyer/internal/AFe1eSDK$AFa1uSDK;->getAdvertisingId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 40
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/appsflyer/internal/AFe1eSDK$AFa1uSDK;->getGaidError()Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "emptyOrNull |"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    goto :goto_3

    .line 42
    :cond_3
    invoke-virtual {p2}, Lcom/appsflyer/internal/AFe1eSDK$AFa1uSDK;->getGaidError()Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "gpsAdInfo-null |"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string p1, "GpsAdIndo is null"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :goto_2
    sget-object v10, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 45
    sget-object v11, Lcom/appsflyer/internal/AFg1cSDK;->hashCode:Lcom/appsflyer/internal/AFg1cSDK;

    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Google Play Services is missing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v8, 0x58

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v10

    move-object v1, v11

    move-object v3, p1

    .line 47
    invoke-static/range {v0 .. v9}, Lcom/appsflyer/internal/AFh1ySDK;->e$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    .line 48
    invoke-virtual {p2}, Lcom/appsflyer/internal/AFe1eSDK$AFa1uSDK;->getGaidError()Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " |"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 49
    const-string v2, "WARNING: Google Play Services is missing."

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/appsflyer/internal/AFh1ySDK;->i$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method private final getMediationNetwork(I)Z
    .locals 20
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 4
    .line 5
    sget-object v8, Lcom/appsflyer/internal/AFg1cSDK;->hashCode:Lcom/appsflyer/internal/AFg1cSDK;

    .line 6
    .line 7
    const/4 v6, 0x4

    .line 8
    const/4 v7, 0x0

    .line 9
    const-string v4, "Trying to fetch GAID using Samsung Cloud Dev..."

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    move-object v2, v0

    .line 13
    move-object v3, v8

    .line 14
    invoke-static/range {v2 .. v7}, Lcom/appsflyer/internal/AFh1ySDK;->i$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/appsflyer/internal/AFe1eSDK;->component2()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v9, 0x0

    .line 22
    if-eqz v2, :cond_8

    .line 23
    .line 24
    sget-object v2, Lcom/samsung/android/game/cloudgame/dev/sdk/CloudDevSdk;->INSTANCE:Lcom/samsung/android/game/cloudgame/dev/sdk/CloudDevSdk;

    .line 25
    .line 26
    iget-object v3, v1, Lcom/appsflyer/internal/AFe1eSDK;->component4:Lcom/appsflyer/internal/AFc1hSDK;

    .line 27
    .line 28
    iget-object v3, v3, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3}, Lcom/samsung/android/game/cloudgame/dev/sdk/CloudDevSdk;->isCloudEnvironment(Landroid/content/Context;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_0

    .line 38
    .line 39
    goto/16 :goto_6

    .line 40
    .line 41
    :cond_0
    new-instance v2, Lcom/appsflyer/internal/AFe1eSDK$AFa1uSDK;

    .line 42
    .line 43
    const/16 v15, 0xf

    .line 44
    .line 45
    const/16 v16, 0x0

    .line 46
    .line 47
    const/4 v11, 0x0

    .line 48
    const/4 v12, 0x0

    .line 49
    const/4 v13, 0x0

    .line 50
    const/4 v14, 0x0

    .line 51
    move-object v10, v2

    .line 52
    invoke-direct/range {v10 .. v16}, Lcom/appsflyer/internal/AFe1eSDK$AFa1uSDK;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLjava/lang/StringBuilder;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 56
    .line 57
    const/4 v3, 0x1

    .line 58
    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 59
    .line 60
    .line 61
    :try_start_0
    sget-object v4, Lcom/samsung/android/game/cloudgame/dev/sdk/CloudDevSdk;->INSTANCE:Lcom/samsung/android/game/cloudgame/dev/sdk/CloudDevSdk;

    .line 62
    .line 63
    iget-object v5, v1, Lcom/appsflyer/internal/AFe1eSDK;->component4:Lcom/appsflyer/internal/AFc1hSDK;

    .line 64
    .line 65
    iget-object v5, v5, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;

    .line 66
    .line 67
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    const-string v6, "gaid"

    .line 71
    .line 72
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    new-instance v7, Lcom/appsflyer/internal/AFe1eSDK$AFa1ySDK;

    .line 77
    .line 78
    invoke-direct {v7, v2, v0}, Lcom/appsflyer/internal/AFe1eSDK$AFa1ySDK;-><init>(Lcom/appsflyer/internal/AFe1eSDK$AFa1uSDK;Ljava/util/concurrent/CountDownLatch;)V

    .line 79
    .line 80
    .line 81
    check-cast v7, Lcom/samsung/android/game/cloudgame/dev/sdk/CloudDevCallback;

    .line 82
    .line 83
    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/game/cloudgame/dev/sdk/CloudDevSdk;->request(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/game/cloudgame/dev/sdk/CloudDevCallback;)V

    .line 84
    .line 85
    .line 86
    iget-object v4, v1, Lcom/appsflyer/internal/AFe1eSDK;->areAllFieldsValid:Lms/i;

    .line 87
    .line 88
    invoke-interface {v4}, Lms/i;->getValue()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    check-cast v4, Ljava/lang/Number;

    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 95
    .line 96
    .line 97
    move-result-wide v4

    .line 98
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 99
    .line 100
    invoke-virtual {v0, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Lcom/appsflyer/internal/AFe1eSDK$AFa1uSDK;->getGaidError()Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-lez v0, :cond_3

    .line 112
    .line 113
    :goto_0
    iget-object v0, v1, Lcom/appsflyer/internal/AFe1eSDK;->component3:Lcom/appsflyer/internal/AFh1rSDK;

    .line 114
    .line 115
    invoke-virtual {v2}, Lcom/appsflyer/internal/AFe1eSDK$AFa1uSDK;->getGaidError()Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-static {v0, v4}, Lcom/appsflyer/internal/AFe1eSDK;->getRevenue(Lcom/appsflyer/internal/AFh1rSDK;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :catchall_0
    move-exception v0

    .line 128
    :try_start_1
    instance-of v4, v0, Ljava/lang/InterruptedException;

    .line 129
    .line 130
    if-eqz v4, :cond_1

    .line 131
    .line 132
    const-string v4, "Fetch GAID using Samsung Cloud Dev interrupted or reached to timeout"

    .line 133
    .line 134
    :goto_1
    move-object v12, v4

    .line 135
    goto :goto_2

    .line 136
    :catchall_1
    move-exception v0

    .line 137
    goto/16 :goto_5

    .line 138
    .line 139
    :cond_1
    instance-of v4, v0, Ljava/lang/ClassNotFoundException;

    .line 140
    .line 141
    if-eqz v4, :cond_2

    .line 142
    .line 143
    const-string v4, "CloudDevSdk not found"

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    new-instance v5, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    const-string v6, "Unexpected exception while fetching GAID using Samsung Cloud Dev "

    .line 156
    .line 157
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    goto :goto_1

    .line 168
    :goto_2
    sget-object v10, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 169
    .line 170
    sget-object v11, Lcom/appsflyer/internal/AFg1cSDK;->hashCode:Lcom/appsflyer/internal/AFg1cSDK;

    .line 171
    .line 172
    const/16 v18, 0x70

    .line 173
    .line 174
    const/16 v19, 0x0

    .line 175
    .line 176
    const/4 v14, 0x1

    .line 177
    const/4 v15, 0x0

    .line 178
    const/16 v16, 0x0

    .line 179
    .line 180
    const/16 v17, 0x0

    .line 181
    .line 182
    move-object v13, v0

    .line 183
    invoke-static/range {v10 .. v19}, Lcom/appsflyer/internal/AFh1ySDK;->e$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2}, Lcom/appsflyer/internal/AFe1eSDK$AFa1uSDK;->getGaidError()Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v0, " |"

    .line 202
    .line 203
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2}, Lcom/appsflyer/internal/AFe1eSDK$AFa1uSDK;->getGaidError()Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-lez v0, :cond_3

    .line 215
    .line 216
    goto :goto_0

    .line 217
    :cond_3
    :goto_3
    invoke-virtual {v2}, Lcom/appsflyer/internal/AFe1eSDK$AFa1uSDK;->getAdvertisingId()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    if-eqz v0, :cond_6

    .line 222
    .line 223
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-nez v0, :cond_4

    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_4
    iget-object v0, v1, Lcom/appsflyer/internal/AFe1eSDK;->component3:Lcom/appsflyer/internal/AFh1rSDK;

    .line 231
    .line 232
    invoke-virtual {v2}, Lcom/appsflyer/internal/AFe1eSDK$AFa1uSDK;->getAdvertisingId()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    iput-object v2, v0, Lcom/appsflyer/internal/AFh1rSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    .line 237
    .line 238
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 239
    .line 240
    iput-object v2, v0, Lcom/appsflyer/internal/AFh1rSDK;->getRevenue:Ljava/lang/Boolean;

    .line 241
    .line 242
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 243
    .line 244
    iput-object v4, v0, Lcom/appsflyer/internal/AFh1rSDK;->AFAdRevenueData:Ljava/lang/Boolean;

    .line 245
    .line 246
    iput-object v2, v0, Lcom/appsflyer/internal/AFh1rSDK;->getMediationNetwork:Ljava/lang/Boolean;

    .line 247
    .line 248
    iput-object v4, v0, Lcom/appsflyer/internal/AFh1rSDK;->getMonetizationNetwork:Ljava/lang/Boolean;

    .line 249
    .line 250
    const/4 v2, 0x2

    .line 251
    move/from16 v4, p1

    .line 252
    .line 253
    if-eq v4, v2, :cond_5

    .line 254
    .line 255
    move v9, v3

    .line 256
    :cond_5
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    iput-object v2, v0, Lcom/appsflyer/internal/AFh1rSDK;->component2:Ljava/lang/Boolean;

    .line 261
    .line 262
    return v3

    .line 263
    :cond_6
    :goto_4
    return v9

    .line 264
    :goto_5
    invoke-virtual {v2}, Lcom/appsflyer/internal/AFe1eSDK$AFa1uSDK;->getGaidError()Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    if-lez v3, :cond_7

    .line 273
    .line 274
    iget-object v3, v1, Lcom/appsflyer/internal/AFe1eSDK;->component3:Lcom/appsflyer/internal/AFh1rSDK;

    .line 275
    .line 276
    invoke-virtual {v2}, Lcom/appsflyer/internal/AFe1eSDK$AFa1uSDK;->getGaidError()Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    invoke-static {v3, v2}, Lcom/appsflyer/internal/AFe1eSDK;->getRevenue(Lcom/appsflyer/internal/AFh1rSDK;Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    :cond_7
    throw v0

    .line 288
    :cond_8
    :goto_6
    const/4 v6, 0x4

    .line 289
    const/4 v7, 0x0

    .line 290
    const-string v4, "Not running in Samsung Cloud Environment. Try using GMS..."

    .line 291
    .line 292
    const/4 v5, 0x0

    .line 293
    move-object v2, v0

    .line 294
    move-object v3, v8

    .line 295
    invoke-static/range {v2 .. v7}, Lcom/appsflyer/internal/AFh1ySDK;->i$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    return v9
.end method

.method private final getMonetizationNetwork(I)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFe1eSDK;->getMediationNetwork(I)Z

    move-result p1

    return p1
.end method

.method private static getRevenue(Landroid/content/Context;)I
    .locals 10

    .line 13
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v3, p0

    .line 14
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->hashCode:Lcom/appsflyer/internal/AFg1cSDK;

    const/16 v8, 0x60

    const/4 v9, 0x0

    const-string v2, "isGooglePlayServicesAvailable error"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v9}, Lcom/appsflyer/internal/AFh1ySDK;->e$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private static getRevenue(Lcom/appsflyer/internal/AFh1rSDK;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFh1rSDK;->component3:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 33
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/appsflyer/internal/AFh1rSDK;->component3:Ljava/lang/String;

    return-void
.end method

.method private final getRevenue(Landroid/content/Context;Lcom/appsflyer/internal/AFe1eSDK$AFa1uSDK;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 15
    :try_start_0
    invoke-static {p1}, Lcom/appsflyer/internal/AFb1vSDK;->AFAdRevenueData(Landroid/content/Context;)Lcom/appsflyer/internal/AFb1vSDK$AFa1ySDK;

    move-result-object p1

    .line 16
    iget-object v0, p1, Lcom/appsflyer/internal/AFb1vSDK$AFa1ySDK;->getCurrencyIso4217Code:Ljava/lang/String;

    .line 17
    invoke-virtual {p2, v0}, Lcom/appsflyer/internal/AFe1eSDK$AFa1uSDK;->setAdvertisingId(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFb1vSDK$AFa1ySDK;->AFAdRevenueData()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/appsflyer/internal/AFe1eSDK$AFa1uSDK;->setLimitAdTrackingEnabled(Ljava/lang/Boolean;)V

    .line 19
    invoke-virtual {p2}, Lcom/appsflyer/internal/AFe1eSDK$AFa1uSDK;->getAdvertisingId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/appsflyer/internal/AFe1eSDK$AFa1uSDK;->getGaidError()Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "emptyOrNull (bypass) |"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_3

    .line 22
    :cond_2
    invoke-virtual {p2}, Lcom/appsflyer/internal/AFe1eSDK$AFa1uSDK;->getGaidError()Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "gpsAdInfo-null (bypass) |"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string p1, "GpsAdInfo is null (bypass)"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :goto_1
    sget-object v10, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 25
    sget-object v11, Lcom/appsflyer/internal/AFg1cSDK;->hashCode:Lcom/appsflyer/internal/AFg1cSDK;

    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to fetch GAID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v8, 0x40

    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v10

    move-object v1, v11

    move-object v3, p1

    .line 27
    invoke-static/range {v0 .. v9}, Lcom/appsflyer/internal/AFh1ySDK;->e$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    .line 28
    invoke-virtual {p2}, Lcom/appsflyer/internal/AFe1eSDK$AFa1uSDK;->getGaidError()Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " |"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v2, p1

    goto :goto_2

    :cond_3
    move-object v2, p2

    :goto_2
    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v10

    move-object v1, v11

    .line 30
    invoke-static/range {v0 .. v5}, Lcom/appsflyer/internal/AFh1ySDK;->i$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 p1, 0x0

    :goto_3
    return p1
.end method


# virtual methods
.method public final AFAdRevenueData()J
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x4
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1eSDK;->areAllFieldsValid:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public final getMonetizationNetwork()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final getRevenue()Lcom/appsflyer/internal/AFe1uSDK;
    .locals 13
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x4
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1eSDK;->component2:Lcom/appsflyer/internal/AFc1eSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFc1eSDK;->AFAdRevenueData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->hashCode:Lcom/appsflyer/internal/AFg1cSDK;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "QUEUE: Advertising ID collection is disabled. Skipping fetching... "

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/appsflyer/internal/AFh1ySDK;->v$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 3
    sget-object v0, Lcom/appsflyer/internal/AFe1uSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFe1uSDK;

    return-object v0

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 5
    invoke-direct {p0}, Lcom/appsflyer/internal/AFe1eSDK;->copydefault()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v2, v3, v3}, [Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    sget-object v2, Lcom/appsflyer/internal/AFe1uSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFe1uSDK;

    goto :goto_0

    .line 7
    :cond_1
    sget-object v2, Lcom/appsflyer/internal/AFe1uSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFe1uSDK;

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/appsflyer/internal/AFe1eSDK;->component2:Lcom/appsflyer/internal/AFc1eSDK;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 10
    new-instance v6, Lcom/appsflyer/internal/AFd1aSDK;

    sub-long/2addr v4, v0

    invoke-direct {v6, v4, v5}, Lcom/appsflyer/internal/AFd1aSDK;-><init>(J)V

    .line 11
    sget-object v7, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v8, Lcom/appsflyer/internal/AFg1cSDK;->hashCode:Lcom/appsflyer/internal/AFg1cSDK;

    iget-wide v0, v6, Lcom/appsflyer/internal/AFd1aSDK;->getMediationNetwork:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QUEUE: FetchAdvertisingIdTask: took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/appsflyer/internal/AFh1ySDK;->v$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 12
    invoke-virtual {v3, v6}, Lcom/appsflyer/internal/AFc1eSDK;->getMediationNetwork(Lcom/appsflyer/internal/AFd1aSDK;)V

    return-object v2
.end method
