.class public final Lcom/inmobi/sdk/InMobiSdk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/sdk/InMobiSdk$AgeGroup;,
        Lcom/inmobi/sdk/InMobiSdk$Education;,
        Lcom/inmobi/sdk/InMobiSdk$Gender;,
        Lcom/inmobi/sdk/InMobiSdk$LogLevel;,
        Lcom/inmobi/sdk/InMobiSdk$PublisherSignals;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nInMobiSdk.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InMobiSdk.kt\ncom/inmobi/sdk/InMobiSdk\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,602:1\n107#2:603\n79#2,22:604\n13309#3,2:626\n*S KotlinDebug\n*F\n+ 1 InMobiSdk.kt\ncom/inmobi/sdk/InMobiSdk\n*L\n118#1:603\n118#1:604,22\n288#1:626,2\n*E\n"
    }
.end annotation


# static fields
.field public static final IM_GDPR_CONSENT_AVAILABLE:Ljava/lang/String; = "gdpr_consent_available"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final IM_GDPR_CONSENT_GDPR_APPLIES:Ljava/lang/String; = "gdpr"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final IM_GDPR_CONSENT_IAB:Ljava/lang/String; = "gdpr_consent"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/inmobi/sdk/InMobiSdk;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/inmobi/sdk/InMobiSdk;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/inmobi/sdk/InMobiSdk;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/inmobi/sdk/InMobiSdk;->INSTANCE:Lcom/inmobi/sdk/InMobiSdk;

    .line 7
    .line 8
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

.method public static a(J)Ljava/util/LinkedHashMap;
    .locals 3

    .line 59
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 60
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, p0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "latency"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string p0, "InMobiSdk"

    const-string v1, "TAG"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/inmobi/media/L3;->q()Ljava/lang/String;

    move-result-object p0

    const-string p1, "networkType"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string p0, "integrationType"

    const-string p1, "InMobi"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static a()V
    .locals 1

    new-instance v0, Lvb/c;

    invoke-direct {v0}, Lvb/c;-><init>()V

    .line 64
    invoke-static {v0}, Lcom/inmobi/media/Uc;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final a(Landroid/content/Context;Lcom/inmobi/sdk/SdkInitializationListener;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 12

    const-string v0, "TAG"

    const-string v1, "InMobiSdk"

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/inmobi/sdk/InMobiSdk;->INSTANCE:Lcom/inmobi/sdk/InMobiSdk;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "Context cannot be null. Please provide a valid context object."

    invoke-static {p1, p0}, Lcom/inmobi/sdk/InMobiSdk;->b(Lcom/inmobi/sdk/SdkInitializationListener;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, "Account id cannot be empty. Please provide a valid account id."

    if-nez p2, :cond_1

    .line 4
    sget-object p0, Lcom/inmobi/sdk/InMobiSdk;->INSTANCE:Lcom/inmobi/sdk/InMobiSdk;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v2}, Lcom/inmobi/sdk/InMobiSdk;->b(Lcom/inmobi/sdk/SdkInitializationListener;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 7
    sget-object v3, Lcom/inmobi/media/Gd;->a:Lcom/inmobi/media/Gd;

    invoke-virtual {v3}, Lcom/inmobi/media/Gd;->a()V

    .line 8
    sget-object v3, Lcom/inmobi/media/De;->a:Lcom/inmobi/media/De;

    invoke-virtual {v3}, Lcom/inmobi/media/De;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    sget-object p0, Lcom/inmobi/sdk/InMobiSdk;->INSTANCE:Lcom/inmobi/sdk/InMobiSdk;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "SDK could not be initialized; Required dependency could not be found. Please check out documentation and include the required dependency."

    invoke-static {p1, p0}, Lcom/inmobi/sdk/InMobiSdk;->b(Lcom/inmobi/sdk/SdkInitializationListener;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    move v6, v5

    move v9, v6

    :goto_0
    if-gt v6, v3, :cond_8

    if-nez v9, :cond_3

    move v10, v6

    goto :goto_1

    :cond_3
    move v10, v3

    .line 12
    :goto_1
    invoke-virtual {p2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x20

    .line 13
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v10

    if-gtz v10, :cond_4

    move v10, v4

    goto :goto_2

    :cond_4
    move v10, v5

    :goto_2
    if-nez v9, :cond_6

    if-nez v10, :cond_5

    move v9, v4

    goto :goto_0

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    if-nez v10, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 14
    :cond_8
    :goto_3
    invoke-static {v3, v4, p2, v6}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 15
    :try_start_0
    invoke-static {p3}, Lcom/inmobi/media/G4;->b(Lorg/json/JSONObject;)V

    .line 16
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_9

    .line 17
    sget-object p0, Lcom/inmobi/sdk/InMobiSdk;->INSTANCE:Lcom/inmobi/sdk/InMobiSdk;

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v2}, Lcom/inmobi/sdk/InMobiSdk;->b(Lcom/inmobi/sdk/SdkInitializationListener;Ljava/lang/String;)V

    return-void

    .line 19
    :cond_9
    const-string p2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 20
    invoke-static {p0, p2}, Lcom/inmobi/media/wa;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 21
    const-string p2, "android.permission.ACCESS_FINE_LOCATION"

    .line 22
    invoke-static {p0, p2}, Lcom/inmobi/media/wa;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 23
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    const-string p2, "Please grant the location permissions (ACCESS_COARSE_LOCATION or ACCESS_FINE_LOCATION, or both) for better ad targeting."

    .line 25
    invoke-static {v4, v1, p2}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_a
    invoke-static {}, Lcom/inmobi/media/Uc;->q()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 27
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object p0, Lcom/inmobi/sdk/InMobiSdk;->INSTANCE:Lcom/inmobi/sdk/InMobiSdk;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/inmobi/sdk/InMobiSdk;->b(Lcom/inmobi/sdk/SdkInitializationListener;Ljava/lang/String;)V

    return-void

    .line 29
    :cond_b
    sget-object p2, Lcom/inmobi/media/Uc;->a:Lcom/inmobi/media/Uc;

    invoke-virtual {p2}, Lcom/inmobi/media/Uc;->i()I

    move-result p3

    if-ne p3, v4, :cond_c

    .line 30
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 31
    :cond_c
    invoke-static {p0, v5}, Lcom/inmobi/media/Uc;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_d

    .line 32
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p2}, Lcom/inmobi/media/Uc;->s()V

    .line 34
    sget-object p0, Lcom/inmobi/sdk/InMobiSdk;->INSTANCE:Lcom/inmobi/sdk/InMobiSdk;

    const-string p2, "SDK could not be initialized; Required WebView dependency could not be found."

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/inmobi/sdk/InMobiSdk;->b(Lcom/inmobi/sdk/SdkInitializationListener;Ljava/lang/String;)V

    return-void

    .line 35
    :cond_d
    sget-object p2, Lcom/inmobi/media/De;->a:Lcom/inmobi/media/De;

    invoke-virtual {p2, p0}, Lcom/inmobi/media/De;->e(Landroid/content/Context;)V

    .line 36
    sget-object p2, Lcom/inmobi/sdk/InMobiSdk;->INSTANCE:Lcom/inmobi/sdk/InMobiSdk;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/inmobi/sdk/InMobiSdk;->a()V

    .line 37
    new-instance p2, Lvb/d;

    move-object v3, p2

    move-object v4, p0

    move-object v6, p1

    invoke-direct/range {v3 .. v8}, Lvb/d;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/inmobi/sdk/SdkInitializationListener;J)V

    invoke-static {p2}, Lcom/inmobi/media/Uc;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 38
    :catch_0
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object p0, Lcom/inmobi/media/Uc;->a:Lcom/inmobi/media/Uc;

    invoke-virtual {p0}, Lcom/inmobi/media/Uc;->s()V

    .line 40
    sget-object p0, Lcom/inmobi/sdk/InMobiSdk;->INSTANCE:Lcom/inmobi/sdk/InMobiSdk;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "SDK could not be initialized; an unexpected error was encountered."

    invoke-static {p1, p0}, Lcom/inmobi/sdk/InMobiSdk;->b(Lcom/inmobi/sdk/SdkInitializationListener;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;Lcom/inmobi/sdk/SdkInitializationListener;J)V
    .locals 2

    .line 41
    :try_start_0
    sget-object v0, Lcom/inmobi/media/De;->a:Lcom/inmobi/media/De;

    invoke-virtual {v0, p0}, Lcom/inmobi/media/De;->a(Landroid/content/Context;)V

    .line 42
    sget-object v1, Lcom/inmobi/media/Uc;->a:Lcom/inmobi/media/Uc;

    invoke-virtual {v1}, Lcom/inmobi/media/Uc;->a()V

    .line 43
    invoke-virtual {v1, p1}, Lcom/inmobi/media/Uc;->b(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0, p0}, Lcom/inmobi/media/De;->c(Landroid/content/Context;)V

    .line 45
    invoke-virtual {v1}, Lcom/inmobi/media/Uc;->t()V

    .line 46
    sget-object p0, Lcom/inmobi/sdk/InMobiSdk;->INSTANCE:Lcom/inmobi/sdk/InMobiSdk;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p2, p0}, Lcom/inmobi/sdk/InMobiSdk;->b(Lcom/inmobi/sdk/SdkInitializationListener;Ljava/lang/String;)V

    .line 47
    const-string p1, "SdkInitialized"

    .line 48
    invoke-static {p3, p4}, Lcom/inmobi/sdk/InMobiSdk;->a(J)Ljava/util/LinkedHashMap;

    move-result-object p3

    .line 49
    sget-object p4, Lcom/inmobi/media/Pd;->a:Lcom/inmobi/media/Pd;

    .line 50
    sget-object p4, Lcom/inmobi/media/Td;->a:Lcom/inmobi/media/Td;

    .line 51
    invoke-static {p1, p3, p4}, Lcom/inmobi/media/Pd;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/Td;)V

    .line 52
    invoke-static {p0}, Lcom/inmobi/unifiedId/InMobiUnifiedIdService;->push(Lcom/inmobi/unifiedId/InMobiUserDataModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    const-string p0, "InMobiSdk"

    const-string p1, "TAG"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    sget-object p0, Lcom/inmobi/media/Uc;->a:Lcom/inmobi/media/Uc;

    invoke-virtual {p0}, Lcom/inmobi/media/Uc;->s()V

    .line 55
    sget-object p0, Lcom/inmobi/sdk/InMobiSdk;->INSTANCE:Lcom/inmobi/sdk/InMobiSdk;

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "SDK could not be initialized; an unexpected error was encountered."

    invoke-static {p2, p0}, Lcom/inmobi/sdk/InMobiSdk;->b(Lcom/inmobi/sdk/SdkInitializationListener;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/inmobi/sdk/SdkInitializationListener;)V
    .locals 1

    .line 1
    new-instance v0, Lvb/a;

    invoke-direct {v0, p0, p3, p1, p2}, Lvb/a;-><init>(Landroid/content/Context;Lcom/inmobi/sdk/SdkInitializationListener;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/inmobi/media/Md;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "InMobiSdk"

    .line 2
    .line 3
    return-object v0
.end method

.method public static final b()V
    .locals 5

    .line 6
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    const-string v2, "Permissions granted to SDK are :\nandroid.permission.INTERNET\nandroid.permission.ACCESS_NETWORK_STATE"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 9
    aget-object v3, v0, v2

    .line 10
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/inmobi/media/wa;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 11
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_1
    const-string v0, "TAG"

    const-string v2, "InMobiSdk"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, v2, v0}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Lcom/inmobi/sdk/SdkInitializationListener;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lvb/b;

    invoke-direct {v0, p0, p1}, Lvb/b;-><init>(Lcom/inmobi/sdk/SdkInitializationListener;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/inmobi/media/Md;->a(Ljava/lang/Runnable;)V

    :cond_0
    const-string p0, "TAG"

    const-string v0, "InMobiSdk"

    if-nez p1, :cond_1

    .line 2
    const-string p1, "InMobi SDK initialized with account id: "

    invoke-static {v0, p0, p1}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 3
    invoke-static {}, Lcom/inmobi/media/Uc;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    .line 4
    invoke-static {p1, v0, p0}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-static {p0, v0, p1}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static final c(Lcom/inmobi/sdk/SdkInitializationListener;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk;->INSTANCE:Lcom/inmobi/sdk/InMobiSdk;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/inmobi/sdk/InMobiSdk;->a(Lcom/inmobi/sdk/SdkInitializationListener;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final getToken()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, v0}, Lcom/inmobi/sdk/InMobiSdk;->getToken(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getToken(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    invoke-static {p0, p1}, Lcom/inmobi/media/oe;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getVersion()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "10.8.7"

    .line 2
    .line 3
    return-object v0
.end method

.method public static final init(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/inmobi/sdk/SdkInitializationListener;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Size;
            max = 0x24L
            min = 0x20L
        .end annotation

        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/inmobi/sdk/SdkInitializationListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk;->INSTANCE:Lcom/inmobi/sdk/InMobiSdk;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {p0, p1, p2, p3}, Lcom/inmobi/sdk/InMobiSdk;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/inmobi/sdk/SdkInitializationListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static final isSDKInitialized()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/inmobi/media/Uc;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static final setAge(I)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/high16 v1, -0x80000000

    .line 6
    .line 7
    if-eq p0, v1, :cond_0

    .line 8
    .line 9
    sput p0, Lcom/inmobi/media/ab;->a:I

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v1, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    const-string v1, "user_info_store"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 v6, 0x4

    .line 22
    const/4 v7, 0x0

    .line 23
    const-string v3, "user_age"

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    move v4, p0

    .line 27
    invoke-static/range {v2 .. v7}, Lcom/inmobi/media/C6;->a(Lcom/inmobi/media/C6;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public static final setAgeGroup(Lcom/inmobi/sdk/InMobiSdk$AgeGroup;)V
    .locals 8
    .param p0    # Lcom/inmobi/sdk/InMobiSdk$AgeGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "group"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/inmobi/sdk/InMobiSdk$AgeGroup;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 11
    .line 12
    const-string v1, "ENGLISH"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const-string p0, "this as java.lang.String).toLowerCase(locale)"

    .line 22
    .line 23
    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    sput-object v4, Lcom/inmobi/media/ab;->c:Ljava/lang/String;

    .line 33
    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    sget-object v0, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    .line 38
    const-string v0, "user_info_store"

    .line 39
    .line 40
    invoke-static {p0, v0}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const/4 v6, 0x4

    .line 45
    const/4 v7, 0x0

    .line 46
    const-string v3, "user_age_group"

    .line 47
    .line 48
    const/4 v5, 0x0

    .line 49
    invoke-static/range {v2 .. v7}, Lcom/inmobi/media/C6;->a(Lcom/inmobi/media/C6;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method

.method public static final setApplicationMuted(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/inmobi/media/Uc;->b(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final setAreaCode(Ljava/lang/String;)V
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object p0, Lcom/inmobi/media/ab;->d:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    sget-object v1, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    const-string v1, "user_info_store"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v6, 0x4

    .line 20
    const/4 v7, 0x0

    .line 21
    const-string v3, "user_area_code"

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    move-object v4, p0

    .line 25
    invoke-static/range {v2 .. v7}, Lcom/inmobi/media/C6;->a(Lcom/inmobi/media/C6;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public static final setEducation(Lcom/inmobi/sdk/InMobiSdk$Education;)V
    .locals 8
    .param p0    # Lcom/inmobi/sdk/InMobiSdk$Education;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "education"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/inmobi/sdk/InMobiSdk$Education;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 11
    .line 12
    const-string v1, "ENGLISH"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const-string p0, "this as java.lang.String).toLowerCase(locale)"

    .line 22
    .line 23
    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    sput-object v4, Lcom/inmobi/media/ab;->k:Ljava/lang/String;

    .line 33
    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    sget-object v0, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    .line 38
    const-string v0, "user_info_store"

    .line 39
    .line 40
    invoke-static {p0, v0}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const/4 v6, 0x4

    .line 45
    const/4 v7, 0x0

    .line 46
    const-string v3, "user_education"

    .line 47
    .line 48
    const/4 v5, 0x0

    .line 49
    invoke-static/range {v2 .. v7}, Lcom/inmobi/media/C6;->a(Lcom/inmobi/media/C6;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method

.method public static final setGender(Lcom/inmobi/sdk/InMobiSdk$Gender;)V
    .locals 8
    .param p0    # Lcom/inmobi/sdk/InMobiSdk$Gender;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "gender"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/inmobi/sdk/InMobiSdk$Gender;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 11
    .line 12
    const-string v1, "ENGLISH"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const-string p0, "this as java.lang.String).toLowerCase(locale)"

    .line 22
    .line 23
    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    sput-object v4, Lcom/inmobi/media/ab;->j:Ljava/lang/String;

    .line 33
    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    sget-object v0, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    .line 38
    const-string v0, "user_info_store"

    .line 39
    .line 40
    invoke-static {p0, v0}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const/4 v6, 0x4

    .line 45
    const/4 v7, 0x0

    .line 46
    const-string v3, "user_gender"

    .line 47
    .line 48
    const/4 v5, 0x0

    .line 49
    invoke-static/range {v2 .. v7}, Lcom/inmobi/media/C6;->a(Lcom/inmobi/media/C6;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method

.method public static final setInterests(Ljava/lang/String;)V
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    sput-object p0, Lcom/inmobi/media/ab;->m:Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v1, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    const-string v1, "user_info_store"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v6, 0x4

    .line 20
    const/4 v7, 0x0

    .line 21
    const-string v3, "user_interest"

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    move-object v4, p0

    .line 25
    invoke-static/range {v2 .. v7}, Lcom/inmobi/media/C6;->a(Lcom/inmobi/media/C6;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public static final setIsAgeRestricted(Z)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/inmobi/media/ab;->a(Z)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/inmobi/media/te;->a:Lcom/inmobi/media/te;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/inmobi/media/te;->a(Z)V

    .line 7
    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/inmobi/unifiedId/InMobiUnifiedIdService;->reset()V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/inmobi/media/I5;->a()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public static final setLanguage(Ljava/lang/String;)V
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    sput-object p0, Lcom/inmobi/media/ab;->l:Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v1, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    const-string v1, "user_info_store"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v6, 0x4

    .line 20
    const/4 v7, 0x0

    .line 21
    const-string v3, "user_language"

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    move-object v4, p0

    .line 25
    invoke-static/range {v2 .. v7}, Lcom/inmobi/media/C6;->a(Lcom/inmobi/media/C6;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public static final setLocation(Landroid/location/Location;)V
    .locals 10
    .param p0    # Landroid/location/Location;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    sput-object p0, Lcom/inmobi/media/ab;->n:Landroid/location/Location;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/16 v2, 0x2c

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    float-to-int v3, v3

    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    sget-object p0, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 61
    .line 62
    const-string p0, "user_info_store"

    .line 63
    .line 64
    invoke-static {v0, p0}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    const/4 v8, 0x4

    .line 69
    const/4 v9, 0x0

    .line 70
    const-string v5, "user_location"

    .line 71
    .line 72
    const/4 v7, 0x0

    .line 73
    invoke-static/range {v4 .. v9}, Lcom/inmobi/media/C6;->a(Lcom/inmobi/media/C6;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    :cond_0
    return-void
.end method

.method public static final setLocationWithCityStateCountry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "user_info_store"

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    sput-object p0, Lcom/inmobi/media/ab;->f:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v2, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/4 v7, 0x4

    .line 20
    const/4 v8, 0x0

    .line 21
    const-string v4, "user_city_code"

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    move-object v5, p0

    .line 25
    invoke-static/range {v3 .. v8}, Lcom/inmobi/media/C6;->a(Lcom/inmobi/media/C6;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    sput-object p1, Lcom/inmobi/media/ab;->g:Ljava/lang/String;

    .line 35
    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    sget-object v0, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    .line 40
    invoke-static {p0, v1}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const/4 v6, 0x4

    .line 45
    const/4 v7, 0x0

    .line 46
    const-string v3, "user_state_code"

    .line 47
    .line 48
    const/4 v5, 0x0

    .line 49
    move-object v4, p1

    .line 50
    invoke-static/range {v2 .. v7}, Lcom/inmobi/media/C6;->a(Lcom/inmobi/media/C6;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    if-eqz p2, :cond_2

    .line 58
    .line 59
    sput-object p2, Lcom/inmobi/media/ab;->h:Ljava/lang/String;

    .line 60
    .line 61
    if-eqz p0, :cond_2

    .line 62
    .line 63
    sget-object p1, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 64
    .line 65
    invoke-static {p0, v1}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    const/4 v6, 0x4

    .line 70
    const/4 v7, 0x0

    .line 71
    const-string v3, "user_country_code"

    .line 72
    .line 73
    const/4 v5, 0x0

    .line 74
    move-object v4, p2

    .line 75
    invoke-static/range {v2 .. v7}, Lcom/inmobi/media/C6;->a(Lcom/inmobi/media/C6;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    return-void
.end method

.method public static final setLogLevel(Lcom/inmobi/sdk/InMobiSdk$LogLevel;)V
    .locals 2
    .param p0    # Lcom/inmobi/sdk/InMobiSdk$LogLevel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, -0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/inmobi/sdk/a;->a:[I

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    aget p0, v0, p0

    .line 12
    .line 13
    :goto_0
    const/4 v0, 0x1

    .line 14
    if-eq p0, v0, :cond_3

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq p0, v1, :cond_2

    .line 18
    .line 19
    const/4 v0, 0x3

    .line 20
    if-eq p0, v0, :cond_1

    .line 21
    .line 22
    invoke-static {v1}, Lcom/inmobi/media/h7;->a(B)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    invoke-static {v1}, Lcom/inmobi/media/h7;->a(B)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    invoke-static {v0}, Lcom/inmobi/media/h7;->a(B)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_3
    const/4 p0, 0x0

    .line 35
    invoke-static {p0}, Lcom/inmobi/media/h7;->a(B)V

    .line 36
    .line 37
    .line 38
    :goto_1
    return-void
.end method

.method public static final setPartnerGDPRConsent(Lorg/json/JSONObject;)V
    .locals 0
    .param p0    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/inmobi/media/G4;->c(Lorg/json/JSONObject;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final setPostalCode(Ljava/lang/String;)V
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    sput-object p0, Lcom/inmobi/media/ab;->e:Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v1, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    const-string v1, "user_info_store"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v6, 0x4

    .line 20
    const/4 v7, 0x0

    .line 21
    const-string v3, "user_post_code"

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    move-object v4, p0

    .line 25
    invoke-static/range {v2 .. v7}, Lcom/inmobi/media/C6;->a(Lcom/inmobi/media/C6;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public static final setPublisherProvidedUnifiedId(Lorg/json/JSONObject;)V
    .locals 2
    .param p0    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "InMobiSdk"

    .line 2
    .line 3
    const-string v1, "TAG"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/inmobi/media/J5;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/inmobi/media/J5;-><init>(Lorg/json/JSONObject;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/inmobi/media/Uc;->a(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static final setYearOfBirth(I)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/high16 v1, -0x80000000

    .line 6
    .line 7
    if-eq p0, v1, :cond_0

    .line 8
    .line 9
    sput p0, Lcom/inmobi/media/ab;->i:I

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v1, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    const-string v1, "user_info_store"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 v6, 0x4

    .line 22
    const/4 v7, 0x0

    .line 23
    const-string v3, "user_yob"

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    move v4, p0

    .line 27
    invoke-static/range {v2 .. v7}, Lcom/inmobi/media/C6;->a(Lcom/inmobi/media/C6;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public static final updateGDPRConsent(Lorg/json/JSONObject;)V
    .locals 0
    .param p0    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/inmobi/media/G4;->b(Lorg/json/JSONObject;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/sdk/SdkInitializationListener;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    .line 58
    :goto_0
    invoke-interface {p1, p2}, Lcom/inmobi/sdk/SdkInitializationListener;->onInitializationComplete(Ljava/lang/Error;)V

    return-void
.end method
