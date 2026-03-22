.class public final Lcom/google/ads/mediation/bidmachine/prebid/request/BidMachineAdRequestBuilderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/ads/mediation/bidmachine/prebid/request/BidMachineAdRequestBuilderFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/mediation/bidmachine/prebid/request/BidMachineAdRequestBuilderFactory;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/ads/mediation/bidmachine/prebid/request/BidMachineAdRequestBuilderFactory;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/ads/mediation/bidmachine/prebid/request/BidMachineAdRequestBuilderFactory;->INSTANCE:Lcom/google/ads/mediation/bidmachine/prebid/request/BidMachineAdRequestBuilderFactory;

    .line 7
    .line 8
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

.method public static final configure(Llp/f;)Llp/f;
    .locals 2
    .param p0    # Llp/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<AdRequestBuilderT::",
            "Llp/f<",
            "**>;>(TAdRequestBuilderT;)TAdRequestBuilderT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "adRequestBuilder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, v0}, Lcom/google/ads/mediation/bidmachine/prebid/request/BidMachineAdRequestBuilderFactory;->configure$default(Llp/f;Lio/bidmachine/CustomParams;ILjava/lang/Object;)Llp/f;

    move-result-object p0

    return-object p0
.end method

.method public static final configure(Llp/f;Lio/bidmachine/CustomParams;)Llp/f;
    .locals 2
    .param p0    # Llp/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lio/bidmachine/CustomParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<AdRequestBuilderT::",
            "Llp/f<",
            "**>;>(TAdRequestBuilderT;",
            "Lio/bidmachine/CustomParams;",
            ")TAdRequestBuilderT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    const-string v0, "adRequestBuilder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediation_mode"

    const-string v1, "prebid_admob"

    invoke-virtual {p1, v0, v1}, Lio/bidmachine/CustomParams;->addParam(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/CustomParams;

    invoke-interface {p0, p1}, Llp/f;->setCustomParams(Lio/bidmachine/CustomParams;)Llp/f;

    return-object p0
.end method

.method public static synthetic configure$default(Llp/f;Lio/bidmachine/CustomParams;ILjava/lang/Object;)Llp/f;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    new-instance p1, Lio/bidmachine/CustomParams;

    .line 6
    .line 7
    invoke-direct {p1}, Lio/bidmachine/CustomParams;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {p0, p1}, Lcom/google/ads/mediation/bidmachine/prebid/request/BidMachineAdRequestBuilderFactory;->configure(Llp/f;Lio/bidmachine/CustomParams;)Llp/f;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static final createBannerRequestBuilder()Lnm/b$c;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1, v0}, Lcom/google/ads/mediation/bidmachine/prebid/request/BidMachineAdRequestBuilderFactory;->createBannerRequestBuilder$default(Lio/bidmachine/CustomParams;ILjava/lang/Object;)Lnm/b$c;

    move-result-object v0

    return-object v0
.end method

.method public static final createBannerRequestBuilder(Lio/bidmachine/CustomParams;)Lnm/b$c;
    .locals 1
    .param p0    # Lio/bidmachine/CustomParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    const-string v0, "customParams"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lnm/b$c;

    invoke-direct {v0}, Lnm/b$c;-><init>()V

    invoke-static {v0, p0}, Lcom/google/ads/mediation/bidmachine/prebid/request/BidMachineAdRequestBuilderFactory;->configure(Llp/f;Lio/bidmachine/CustomParams;)Llp/f;

    move-result-object p0

    check-cast p0, Lnm/b$c;

    return-object p0
.end method

.method public static synthetic createBannerRequestBuilder$default(Lio/bidmachine/CustomParams;ILjava/lang/Object;)Lnm/b$c;
    .locals 0

    .line 1
    and-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance p0, Lio/bidmachine/CustomParams;

    .line 6
    .line 7
    invoke-direct {p0}, Lio/bidmachine/CustomParams;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {p0}, Lcom/google/ads/mediation/bidmachine/prebid/request/BidMachineAdRequestBuilderFactory;->createBannerRequestBuilder(Lio/bidmachine/CustomParams;)Lnm/b$c;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static final createInterstitialRequestBuilder()Lxm/c$b;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1, v0}, Lcom/google/ads/mediation/bidmachine/prebid/request/BidMachineAdRequestBuilderFactory;->createInterstitialRequestBuilder$default(Lio/bidmachine/CustomParams;ILjava/lang/Object;)Lxm/c$b;

    move-result-object v0

    return-object v0
.end method

.method public static final createInterstitialRequestBuilder(Lio/bidmachine/CustomParams;)Lxm/c$b;
    .locals 1
    .param p0    # Lio/bidmachine/CustomParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    const-string v0, "customParams"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lxm/c$b;

    invoke-direct {v0}, Lxm/c$b;-><init>()V

    invoke-static {v0, p0}, Lcom/google/ads/mediation/bidmachine/prebid/request/BidMachineAdRequestBuilderFactory;->configure(Llp/f;Lio/bidmachine/CustomParams;)Llp/f;

    move-result-object p0

    check-cast p0, Lxm/c$b;

    return-object p0
.end method

.method public static synthetic createInterstitialRequestBuilder$default(Lio/bidmachine/CustomParams;ILjava/lang/Object;)Lxm/c$b;
    .locals 0

    .line 1
    and-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance p0, Lio/bidmachine/CustomParams;

    .line 6
    .line 7
    invoke-direct {p0}, Lio/bidmachine/CustomParams;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {p0}, Lcom/google/ads/mediation/bidmachine/prebid/request/BidMachineAdRequestBuilderFactory;->createInterstitialRequestBuilder(Lio/bidmachine/CustomParams;)Lxm/c$b;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static final createNativeRequestBuilder()Lio/bidmachine/nativead/NativeRequest$Builder;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1, v0}, Lcom/google/ads/mediation/bidmachine/prebid/request/BidMachineAdRequestBuilderFactory;->createNativeRequestBuilder$default(Lio/bidmachine/CustomParams;ILjava/lang/Object;)Lio/bidmachine/nativead/NativeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static final createNativeRequestBuilder(Lio/bidmachine/CustomParams;)Lio/bidmachine/nativead/NativeRequest$Builder;
    .locals 1
    .param p0    # Lio/bidmachine/CustomParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    const-string v0, "customParams"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/bidmachine/nativead/NativeRequest$Builder;

    invoke-direct {v0}, Lio/bidmachine/nativead/NativeRequest$Builder;-><init>()V

    invoke-static {v0, p0}, Lcom/google/ads/mediation/bidmachine/prebid/request/BidMachineAdRequestBuilderFactory;->configure(Llp/f;Lio/bidmachine/CustomParams;)Llp/f;

    move-result-object p0

    check-cast p0, Lio/bidmachine/nativead/NativeRequest$Builder;

    return-object p0
.end method

.method public static synthetic createNativeRequestBuilder$default(Lio/bidmachine/CustomParams;ILjava/lang/Object;)Lio/bidmachine/nativead/NativeRequest$Builder;
    .locals 0

    .line 1
    and-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance p0, Lio/bidmachine/CustomParams;

    .line 6
    .line 7
    invoke-direct {p0}, Lio/bidmachine/CustomParams;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {p0}, Lcom/google/ads/mediation/bidmachine/prebid/request/BidMachineAdRequestBuilderFactory;->createNativeRequestBuilder(Lio/bidmachine/CustomParams;)Lio/bidmachine/nativead/NativeRequest$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static final createRewardedRequestBuilder()Lvq/c$b;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1, v0}, Lcom/google/ads/mediation/bidmachine/prebid/request/BidMachineAdRequestBuilderFactory;->createRewardedRequestBuilder$default(Lio/bidmachine/CustomParams;ILjava/lang/Object;)Lvq/c$b;

    move-result-object v0

    return-object v0
.end method

.method public static final createRewardedRequestBuilder(Lio/bidmachine/CustomParams;)Lvq/c$b;
    .locals 1
    .param p0    # Lio/bidmachine/CustomParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    const-string v0, "customParams"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lvq/c$b;

    invoke-direct {v0}, Lvq/c$b;-><init>()V

    invoke-static {v0, p0}, Lcom/google/ads/mediation/bidmachine/prebid/request/BidMachineAdRequestBuilderFactory;->configure(Llp/f;Lio/bidmachine/CustomParams;)Llp/f;

    move-result-object p0

    check-cast p0, Lvq/c$b;

    return-object p0
.end method

.method public static synthetic createRewardedRequestBuilder$default(Lio/bidmachine/CustomParams;ILjava/lang/Object;)Lvq/c$b;
    .locals 0

    .line 1
    and-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance p0, Lio/bidmachine/CustomParams;

    .line 6
    .line 7
    invoke-direct {p0}, Lio/bidmachine/CustomParams;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {p0}, Lcom/google/ads/mediation/bidmachine/prebid/request/BidMachineAdRequestBuilderFactory;->createRewardedRequestBuilder(Lio/bidmachine/CustomParams;)Lvq/c$b;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method
