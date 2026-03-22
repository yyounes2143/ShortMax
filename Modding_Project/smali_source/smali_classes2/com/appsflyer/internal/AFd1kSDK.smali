.class public final Lcom/appsflyer/internal/AFd1kSDK;
.super Lcom/appsflyer/internal/AFc1dSDK;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final component4:Lcom/appsflyer/internal/AFd1jSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getCurrencyIso4217Code:Z

.field public getMediationNetwork:Lcom/appsflyer/internal/AFc1oSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFc1oSDK;[B)V
    .locals 8
    .param p1    # Lcom/appsflyer/internal/AFc1oSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 5
    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/appsflyer/internal/AFd1kSDK;-><init>(Lcom/appsflyer/internal/AFc1oSDK;[BLjava/util/Map;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private constructor <init>(Lcom/appsflyer/internal/AFc1oSDK;[BLjava/util/Map;I)V
    .locals 1
    .param p1    # Lcom/appsflyer/internal/AFc1oSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFc1oSDK;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p2, p3, p4}, Lcom/appsflyer/internal/AFc1dSDK;-><init>([BLjava/util/Map;I)V

    .line 3
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1kSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1oSDK;

    .line 4
    sget-object p1, Lcom/appsflyer/internal/AFd1jSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFd1jSDK;

    iput-object p1, p0, Lcom/appsflyer/internal/AFd1kSDK;->component4:Lcom/appsflyer/internal/AFd1jSDK;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/appsflyer/internal/AFc1oSDK;[BLjava/util/Map;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/16 p4, 0x7d0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/appsflyer/internal/AFd1kSDK;-><init>(Lcom/appsflyer/internal/AFc1oSDK;[BLjava/util/Map;I)V

    return-void
.end method


# virtual methods
.method public final AFAdRevenueData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "[RD]: "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public final getCurrencyIso4217Code()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/appsflyer/internal/AFj1cSDK;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1kSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1oSDK;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    invoke-direct {v0, v1, v2, v3, v2}, Lcom/appsflyer/internal/AFj1cSDK;-><init>(Lcom/appsflyer/internal/AFc1oSDK;Lcom/appsflyer/internal/AFk1zSDK;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lcom/appsflyer/internal/AFj1cSDK;->getRevenue:Lcom/appsflyer/internal/AFk1zSDK;

    .line 11
    .line 12
    sget-object v2, Lcom/appsflyer/internal/AFj1cSDK;->component3:Ljava/lang/String;

    .line 13
    .line 14
    invoke-interface {v1, v2}, Lcom/appsflyer/internal/AFk1zSDK;->getMediationNetwork(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/appsflyer/internal/AFj1cSDK;->getMediationNetwork(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public final getMediationNetwork()Lcom/appsflyer/internal/AFd1jSDK;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->component4:Lcom/appsflyer/internal/AFd1jSDK;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRevenue()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->getCurrencyIso4217Code:Z

    .line 2
    .line 3
    return v0
.end method
