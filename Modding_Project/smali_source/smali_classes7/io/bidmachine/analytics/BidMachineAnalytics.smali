.class public final Lio/bidmachine/analytics/BidMachineAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lio/bidmachine/analytics/BidMachineAnalytics;

.field private static final a:Lms/i;

.field private static b:Ljava/lang/String;

.field private static c:Lio/bidmachine/analytics/internal/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/analytics/BidMachineAnalytics;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/bidmachine/analytics/BidMachineAnalytics;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/bidmachine/analytics/BidMachineAnalytics;->INSTANCE:Lio/bidmachine/analytics/BidMachineAnalytics;

    .line 7
    .line 8
    sget-object v0, Lio/bidmachine/analytics/BidMachineAnalytics$b;->a:Lio/bidmachine/analytics/BidMachineAnalytics$b;

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lio/bidmachine/analytics/BidMachineAnalytics;->a:Lms/i;

    .line 15
    .line 16
    const-string v0, ""

    .line 17
    .line 18
    sput-object v0, Lio/bidmachine/analytics/BidMachineAnalytics;->b:Ljava/lang/String;

    .line 19
    .line 20
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

.method private final a([B)Lio/bidmachine/analytics/internal/s;
    .locals 9

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/a;

    invoke-direct {v0}, Lio/bidmachine/analytics/internal/a;-><init>()V

    .line 2
    new-instance v8, Lio/bidmachine/analytics/internal/C;

    invoke-interface {v0}, Lio/bidmachine/analytics/internal/b;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lio/bidmachine/analytics/internal/C;-><init>([BLjava/lang/String;[BZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    new-instance p1, Lio/bidmachine/analytics/internal/s;

    invoke-direct {p1, v0, v8}, Lio/bidmachine/analytics/internal/s;-><init>(Lio/bidmachine/analytics/internal/b;Lio/bidmachine/analytics/internal/C;)V

    return-object p1
.end method

.method private final a(Landroid/content/Context;Lio/bidmachine/analytics/AnalyticsConfig;Lio/bidmachine/analytics/ConfigureListener;)V
    .locals 1

    .line 4
    sget-object v0, Lio/bidmachine/analytics/internal/m;->a:Lio/bidmachine/analytics/internal/m;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/analytics/internal/m;->a(Landroid/content/Context;Lio/bidmachine/analytics/AnalyticsConfig;)V

    .line 5
    sget-object v0, Lio/bidmachine/analytics/internal/k;->a:Lio/bidmachine/analytics/internal/k;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/analytics/internal/k;->a(Landroid/content/Context;Lio/bidmachine/analytics/AnalyticsConfig;)V

    if-eqz p3, :cond_0

    .line 6
    invoke-interface {p3}, Lio/bidmachine/analytics/ConfigureListener;->onConfigured()V

    :cond_0
    return-void
.end method

.method public static final synthetic access$configureInternal(Lio/bidmachine/analytics/BidMachineAnalytics;Landroid/content/Context;Lio/bidmachine/analytics/AnalyticsConfig;Lio/bidmachine/analytics/ConfigureListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/analytics/BidMachineAnalytics;->a(Landroid/content/Context;Lio/bidmachine/analytics/AnalyticsConfig;Lio/bidmachine/analytics/ConfigureListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$createEncryptionManager(Lio/bidmachine/analytics/BidMachineAnalytics;[B)Lio/bidmachine/analytics/internal/s;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/analytics/BidMachineAnalytics;->a([B)Lio/bidmachine/analytics/internal/s;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final configure(Landroid/content/Context;Lio/bidmachine/analytics/AnalyticsConfig;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lio/bidmachine/analytics/BidMachineAnalytics;->configure(Landroid/content/Context;Lio/bidmachine/analytics/AnalyticsConfig;Lio/bidmachine/analytics/ConfigureListener;)V

    return-void
.end method

.method public static final configure(Landroid/content/Context;Lio/bidmachine/analytics/AnalyticsConfig;Lio/bidmachine/analytics/ConfigureListener;)V
    .locals 10

    .line 2
    invoke-virtual {p1}, Lio/bidmachine/analytics/AnalyticsConfig;->getSessionId()Ljava/lang/String;

    move-result-object v2

    .line 3
    sput-object v2, Lio/bidmachine/analytics/BidMachineAnalytics;->b:Ljava/lang/String;

    .line 4
    invoke-static {p0}, Lio/bidmachine/analytics/BidMachineAnalytics;->initialize(Landroid/content/Context;)V

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 6
    sget-object p0, Lio/bidmachine/analytics/BidMachineAnalytics;->INSTANCE:Lio/bidmachine/analytics/BidMachineAnalytics;

    invoke-virtual {p0}, Lio/bidmachine/analytics/BidMachineAnalytics;->getScope$bidmachine_android_sdk_bg_3_4_0()Lgt/g0;

    move-result-object p0

    new-instance v7, Lio/bidmachine/analytics/BidMachineAnalytics$a;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/analytics/BidMachineAnalytics$a;-><init>(Lio/bidmachine/analytics/AnalyticsConfig;Ljava/lang/String;Landroid/content/Context;Lio/bidmachine/analytics/ConfigureListener;Lrs/c;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    return-void
.end method

.method public static final getImpData(I)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/bidmachine/analytics/internal/e$a;->values()[Lio/bidmachine/analytics/internal/e$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p0}, Lkotlin/collections/n;->t0([Ljava/lang/Object;I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lio/bidmachine/analytics/internal/e$a;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lkotlin/collections/p0;->i()Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    sget-object v0, Lio/bidmachine/analytics/internal/k;->a:Lio/bidmachine/analytics/internal/k;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lio/bidmachine/analytics/internal/k;->a(Lio/bidmachine/analytics/internal/e$a;)Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static synthetic getScope$bidmachine_android_sdk_bg_3_4_0$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final initialize(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/k;->a:Lio/bidmachine/analytics/internal/k;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Lio/bidmachine/analytics/internal/k;->b(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getEncryptionManager$bidmachine_android_sdk_bg_3_4_0()Lio/bidmachine/analytics/internal/s;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/analytics/BidMachineAnalytics;->c:Lio/bidmachine/analytics/internal/s;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getScope$bidmachine_android_sdk_bg_3_4_0()Lgt/g0;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/analytics/BidMachineAnalytics;->a:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lgt/g0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getSessionId$bidmachine_android_sdk_bg_3_4_0()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/analytics/BidMachineAnalytics;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setEncryptionManager$bidmachine_android_sdk_bg_3_4_0(Lio/bidmachine/analytics/internal/s;)V
    .locals 0

    .line 1
    sput-object p1, Lio/bidmachine/analytics/BidMachineAnalytics;->c:Lio/bidmachine/analytics/internal/s;

    .line 2
    .line 3
    return-void
.end method
