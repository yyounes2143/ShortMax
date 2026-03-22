.class public final Lcom/appsflyer/internal/AFi1iSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/AFi1kSDK;


# instance fields
.field private getMediationNetwork:Lcom/appsflyer/internal/platform_extension/PluginInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v6, Lcom/appsflyer/internal/platform_extension/PluginInfo;

    .line 5
    .line 6
    sget-object v1, Lcom/appsflyer/internal/platform_extension/Plugin;->NATIVE:Lcom/appsflyer/internal/platform_extension/Plugin;

    .line 7
    .line 8
    const/4 v4, 0x4

    .line 9
    const/4 v5, 0x0

    .line 10
    const-string v2, "6.17.5"

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    move-object v0, v6

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/appsflyer/internal/platform_extension/PluginInfo;-><init>(Lcom/appsflyer/internal/platform_extension/Plugin;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    .line 16
    .line 17
    iput-object v6, p0, Lcom/appsflyer/internal/AFi1iSDK;->getMediationNetwork:Lcom/appsflyer/internal/platform_extension/PluginInfo;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final getCurrencyIso4217Code()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1iSDK;->getMediationNetwork:Lcom/appsflyer/internal/platform_extension/PluginInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/appsflyer/internal/platform_extension/PluginInfo;->getPlugin()Lcom/appsflyer/internal/platform_extension/Plugin;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/appsflyer/internal/platform_extension/Plugin;->getPluginName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "platform"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/appsflyer/internal/AFi1iSDK;->getMediationNetwork:Lcom/appsflyer/internal/platform_extension/PluginInfo;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/appsflyer/internal/platform_extension/PluginInfo;->getVersion()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string/jumbo v2, "version"

    .line 24
    .line 25
    .line 26
    invoke-static {v2, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    filled-new-array {v0, v1}, [Lkotlin/Pair;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lkotlin/collections/p0;->o([Lkotlin/Pair;)Ljava/util/Map;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/appsflyer/internal/AFi1iSDK;->getMediationNetwork:Lcom/appsflyer/internal/platform_extension/PluginInfo;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/appsflyer/internal/platform_extension/PluginInfo;->getAdditionalParams()Ljava/util/Map;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_0

    .line 49
    .line 50
    iget-object v1, p0, Lcom/appsflyer/internal/AFi1iSDK;->getMediationNetwork:Lcom/appsflyer/internal/platform_extension/PluginInfo;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/appsflyer/internal/platform_extension/PluginInfo;->getAdditionalParams()Ljava/util/Map;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string v2, "extras"

    .line 57
    .line 58
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    :cond_0
    return-object v0
.end method

.method public final getRevenue(Lcom/appsflyer/internal/platform_extension/PluginInfo;)V
    .locals 1
    .param p1    # Lcom/appsflyer/internal/platform_extension/PluginInfo;
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
    iput-object p1, p0, Lcom/appsflyer/internal/AFi1iSDK;->getMediationNetwork:Lcom/appsflyer/internal/platform_extension/PluginInfo;

    .line 7
    .line 8
    return-void
.end method
