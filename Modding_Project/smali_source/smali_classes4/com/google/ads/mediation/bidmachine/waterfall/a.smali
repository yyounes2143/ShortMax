.class public final Lcom/google/ads/mediation/bidmachine/waterfall/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/bidmachine/waterfall/a$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/ads/mediation/bidmachine/waterfall/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/mediation/bidmachine/waterfall/a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/ads/mediation/bidmachine/waterfall/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/ads/mediation/bidmachine/waterfall/a;->a:Lcom/google/ads/mediation/bidmachine/waterfall/a$a;

    .line 8
    .line 9
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

.method private final a(Lcom/google/android/gms/ads/mediation/MediationConfiguration;)Ljava/lang/String;
    .locals 1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationConfiguration;->getServerParameters()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "getServerParameters(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/ads/mediation/bidmachine/common/c;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "source_id"

    invoke-static {p1, v0}, Lcom/google/ads/mediation/bidmachine/BidMachineUtils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final a(Ljava/util/List;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ads/mediation/bidmachine/waterfall/a;->b(Ljava/util/List;)Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/ads/mediation/bidmachine/waterfall/a;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final a(Ljava/util/Set;)Ljava/lang/String;
    .locals 3

    .line 2
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple \'source_id\' entries found: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Using \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' to initialize the BidMachine SDK"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdMobBMAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return-object v1
.end method

.method private static final a(Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;)V
    .locals 0

    .line 5
    invoke-interface {p0}, Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;->onInitializationSucceeded()V

    return-void
.end method

.method private final b(Ljava/util/List;)Ljava/util/Set;
    .locals 4

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/ads/mediation/MediationConfiguration;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/mediation/MediationConfiguration;->getServerParameters()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "parameter"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/mediation/MediationConfiguration;

    invoke-direct {p0, v1}, Lcom/google/ads/mediation/bidmachine/waterfall/a;->a(Lcom/google/android/gms/ads/mediation/MediationConfiguration;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->b1(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic b(Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/ads/mediation/bidmachine/waterfall/a;->a(Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;Ljava/util/List;)V
    .locals 2

    .line 4
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializationCompleteCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurations"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lio/bidmachine/BidMachine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;->onInitializationSucceeded()V

    return-void

    :cond_0
    invoke-direct {p0, p3}, Lcom/google/ads/mediation/bidmachine/waterfall/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-static {p3}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/MobileAds;->getRequestConfiguration()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForChildDirectedTreatment()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/BidMachine;->setCoppa(Ljava/lang/Boolean;)V

    new-instance v0, Lcom/google/ads/mediation/bidmachine/waterfall/g;

    invoke-direct {v0, p2}, Lcom/google/ads/mediation/bidmachine/waterfall/g;-><init>(Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;)V

    invoke-static {p1, p3, v0}, Lio/bidmachine/BidMachine;->initialize(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/InitializationCallback;)V

    return-void

    :cond_3
    :goto_1
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;->onInitializationSucceeded()V

    return-void
.end method
