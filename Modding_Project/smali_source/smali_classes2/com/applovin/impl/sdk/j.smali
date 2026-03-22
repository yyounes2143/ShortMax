.class public Lcom/applovin/impl/sdk/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;
.implements Lcom/applovin/communicator/AppLovinCommunicatorPublisher;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/k;

.field private final b:Lcom/applovin/communicator/AppLovinCommunicator;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/k;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/k;

    .line 5
    .line 6
    invoke-static {}, Lcom/applovin/impl/sdk/k;->o()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/applovin/communicator/AppLovinCommunicator;->getInstance(Landroid/content/Context;)Lcom/applovin/communicator/AppLovinCommunicator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/communicator/AppLovinCommunicator;

    .line 15
    .line 16
    sget-object v1, Lcom/applovin/impl/v4;->b7:Lcom/applovin/impl/v4;

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/applovin/communicator/AppLovinCommunicator;->a(Lcom/applovin/impl/sdk/k;)V

    .line 31
    .line 32
    .line 33
    sget-object p1, Lcom/applovin/impl/e7;->a:Ljava/util/List;

    .line 34
    .line 35
    invoke-virtual {v0, p0, p1}, Lcom/applovin/communicator/AppLovinCommunicator;->subscribe(Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/util/List;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method private a(Lcom/applovin/impl/v2;)Landroid/os/Bundle;
    .locals 4

    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    invoke-virtual {p1}, Lcom/applovin/impl/v2;->P()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Lcom/applovin/impl/h3;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "network_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lcom/applovin/impl/h3;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "max_ad_unit_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lcom/applovin/impl/v2;->Q()Ljava/lang/String;

    move-result-object v1

    const-string v2, "third_party_ad_placement_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Lcom/applovin/impl/v2;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad_format"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1}, Lcom/applovin/impl/v2;->getCreativeId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "creative_id"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/BundleUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p1}, Lcom/applovin/impl/v2;->v()Ljava/lang/String;

    move-result-object v1

    const-string v2, "adomain"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/BundleUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p1}, Lcom/applovin/impl/v2;->getDspName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dsp_name"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/BundleUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p1}, Lcom/applovin/impl/h3;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CUSTOM_NETWORK_SDK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {p1}, Lcom/applovin/impl/v2;->getNetworkName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "custom_sdk_network_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_0
    invoke-virtual {p1}, Lcom/applovin/impl/v2;->x()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 79
    instance-of v1, p1, Lcom/applovin/impl/e3;

    const-string v2, "ad_view"

    const-string v3, "N/A"

    if-eqz v1, :cond_5

    .line 80
    instance-of v1, p1, Lcom/applovin/impl/y2;

    if-eqz v1, :cond_1

    .line 81
    check-cast p1, Lcom/applovin/impl/y2;

    .line 82
    invoke-virtual {p1}, Lcom/applovin/impl/v2;->y()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 83
    :cond_1
    instance-of v1, p1, Lcom/applovin/impl/a3;

    if-eqz v1, :cond_3

    .line 84
    check-cast p1, Lcom/applovin/impl/a3;

    .line 85
    invoke-virtual {p1}, Lcom/applovin/impl/a3;->r0()Z

    move-result v1

    if-nez v1, :cond_3

    .line 86
    invoke-virtual {p1}, Lcom/applovin/impl/a3;->m0()Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/applovin/impl/a3;->m0()Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/applovin/impl/a3;->n0()Landroid/view/ViewGroup;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    .line 87
    invoke-static {p1}, Lcom/applovin/impl/b8;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    .line 88
    :cond_4
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 89
    :cond_5
    instance-of v1, p1, Lcom/applovin/impl/z2;

    if-eqz v1, :cond_6

    .line 90
    check-cast p1, Lcom/applovin/impl/z2;

    invoke-virtual {p1}, Lcom/applovin/impl/z2;->k0()Landroid/os/Bundle;

    move-result-object p1

    .line 91
    const-string v1, "applovin_ad_view_info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 92
    const-string v1, "ad_view_address"

    invoke-static {v1, v3, p1}, Lcom/applovin/impl/sdk/utils/BundleUtils;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string/jumbo v1, "video_view_address"

    invoke-static {v1, v3, p1}, Lcom/applovin/impl/sdk/utils/BundleUtils;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 95
    const-string/jumbo v1, "video_view"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-object v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/k;

    sget-object v1, Lcom/applovin/impl/v4;->b7:Lcom/applovin/impl/v4;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/k;

    sget-object v2, Lcom/applovin/impl/v4;->a7:Lcom/applovin/impl/v4;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/k;->c(Lcom/applovin/impl/v4;)Ljava/util/List;

    move-result-object v0

    .line 25
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/communicator/AppLovinCommunicator;

    invoke-virtual {v0, p1}, Lcom/applovin/communicator/AppLovinCommunicator;->hasSubscriber(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 30
    const-string v0, "privacy_setting_updated"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/j;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 31
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/j;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    .line 60
    invoke-direct {p0, p2}, Lcom/applovin/impl/sdk/j;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/k;

    sget-object v1, Lcom/applovin/impl/v4;->a7:Lcom/applovin/impl/v4;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->c(Lcom/applovin/impl/v4;)Ljava/util/List;

    move-result-object v0

    .line 62
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 63
    invoke-static {p1, p2, p0, v0}, Lcom/applovin/impl/communicator/CommunicatorMessageImpl;->create(Landroid/os/Bundle;Ljava/lang/String;Lcom/applovin/communicator/AppLovinCommunicatorPublisher;Z)Lcom/applovin/communicator/AppLovinCommunicatorMessage;

    move-result-object p1

    .line 64
    iget-object p2, p0, Lcom/applovin/impl/sdk/j;->b:Lcom/applovin/communicator/AppLovinCommunicator;

    invoke-virtual {p2}, Lcom/applovin/communicator/AppLovinCommunicator;->getMessagingService()Lcom/applovin/communicator/AppLovinCommunicatorMessagingService;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessagingService;->publish(Lcom/applovin/communicator/AppLovinCommunicatorMessage;)V

    return-void
.end method

.method public a(Lcom/applovin/impl/v2;Ljava/lang/String;)V
    .locals 2

    .line 21
    const-string v0, "ad_callback_blocked_after_hidden"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/j;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 22
    :cond_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/v2;)Landroid/os/Bundle;

    move-result-object p1

    .line 23
    const-string v1, "callback_name"

    invoke-virtual {p1, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/sdk/j;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;Ljava/lang/String;)V
    .locals 3

    .line 25
    const-string v0, "adapter_initialization_status"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/j;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 26
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 27
    const-string v2, "adapter_class"

    invoke-virtual {v1, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->getCode()I

    move-result p1

    const-string p2, "init_status"

    invoke-virtual {v1, p2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 29
    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/j;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 32
    const-string v0, "network_sdk_version_updated"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/j;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 33
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 34
    const-string v2, "adapter_class"

    invoke-virtual {v1, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string p2, "sdk_version"

    invoke-virtual {v1, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/j;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;Z)V
    .locals 3

    .line 51
    const-string v0, "receive_http_response"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/j;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 52
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 53
    const-string v2, "id"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string/jumbo p1, "url"

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string p1, "code"

    invoke-virtual {v1, p1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 56
    invoke-static {p4}, Lcom/applovin/impl/sdk/utils/JsonUtils;->toBundle(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "body"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 57
    const-string p1, "success"

    invoke-virtual {v1, p1, p6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 58
    const-string p1, "error_message"

    invoke-static {p1, p5, v1}, Lcom/applovin/impl/sdk/utils/BundleUtils;->putString(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/j;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 43
    const-string v0, "responses"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/j;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    .line 44
    invoke-static {p3, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->maybeConvertToIndentedString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    .line 45
    invoke-static {p1, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->maybeConvertToIndentedString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 46
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 47
    const-string v2, "request_url"

    invoke-virtual {v1, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string p2, "request_body"

    invoke-virtual {v1, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string p2, "response"

    invoke-virtual {v1, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/j;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3

    .line 37
    const-string v0, "live_networks_updated"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/j;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 38
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 39
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 40
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p1, "live_networks"

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 41
    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/j;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    .line 42
    :cond_2
    :goto_0
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/sdk/j;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;Z)V
    .locals 5

    .line 1
    const-string v0, "safedk_init"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/j;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/applovin/impl/j;->c()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->j0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdk_key"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v2, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->i0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "applovin_random_token"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->v()Ljava/lang/String;

    move-result-object v2

    const-string v3, "compass_random_token"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/applovin/impl/sdk/k;->o()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/sdk/AppLovinSdkUtils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "tablet"

    goto :goto_0

    :cond_2
    const-string v2, "phone"

    :goto_0
    const-string v3, "device_type"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string v2, "init_success"

    invoke-virtual {v1, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/k;

    invoke-static {p2}, Lcom/applovin/impl/t3;->b(Lcom/applovin/impl/sdk/k;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->toBundle(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p2

    const-string v2, "installed_mediation_adapters"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 10
    const-string p2, "communicator_settings"

    const/4 v2, 0x0

    invoke-static {p1, p2, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 11
    invoke-virtual {v1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 12
    iget-object v2, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->x0()Lcom/applovin/impl/j7;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/j7;->e()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "user_id"

    invoke-virtual {p2, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "safedk_settings"

    invoke-static {p1, v3, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 14
    iget-object v2, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/k;

    sget-object v3, Lcom/applovin/impl/v4;->c7:Lcom/applovin/impl/v4;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    .line 15
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 16
    const-string v3, "deactivated"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 17
    const-string v3, "safeDKDeactivation"

    invoke-static {p1, v3, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 18
    :cond_3
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "settings"

    invoke-virtual {p2, v2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 19
    iget-object p1, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending \"safedk_init\" message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CommunicatorService"

    invoke-virtual {p1, v2, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_4
    invoke-virtual {p0, p2, v0}, Lcom/applovin/impl/sdk/j;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 65
    sget-object v0, Lcom/applovin/impl/e7;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/applovin/impl/v2;)V
    .locals 3

    .line 12
    const-string v0, "max_revenue_events"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/j;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 13
    :cond_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/v2;)Landroid/os/Bundle;

    move-result-object v1

    .line 14
    invoke-virtual {p1}, Lcom/applovin/impl/v2;->O()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 15
    iget-object p1, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->w()Lcom/applovin/impl/sdk/SdkConfigurationImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/SdkConfigurationImpl;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    const-string v2, "country_code"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/j;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/applovin/impl/v2;Ljava/lang/String;)V
    .locals 3

    .line 7
    const-string v0, "max_ad_events"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/j;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/v2;)Landroid/os/Bundle;

    move-result-object p1

    .line 9
    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending \"max_ad_events\" message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CommunicatorService"

    invoke-virtual {p2, v2, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/sdk/j;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "user_info"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/j;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/applovin/impl/j;->c()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 4
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/StringUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "user_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    const-string p1, "applovin_random_token"

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/j;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 3

    .line 17
    const-string v0, "test_mode_networks_updated"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/j;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 18
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 19
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 20
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p1, "test_mode_networks"

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 21
    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/j;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    .line 22
    :cond_2
    :goto_0
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/sdk/j;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public getCommunicatorId()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "applovin_sdk"

    .line 2
    .line 3
    return-object v0
.end method

.method public onMessageReceived(Lcom/applovin/communicator/AppLovinCommunicatorMessage;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/k;

    .line 4
    .line 5
    sget-object v2, Lcom/applovin/impl/v4;->b7:Lcom/applovin/impl/v4;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessage;->getTopic()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "send_http_request"

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const-string v2, "backup_url"

    .line 31
    .line 32
    const-string/jumbo v3, "url"

    .line 33
    .line 34
    .line 35
    const-string v4, "headers"

    .line 36
    .line 37
    const-string v5, "post_body"

    .line 38
    .line 39
    const-string v6, "query_params"

    .line 40
    .line 41
    const-string v7, "sdk_key"

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessage;->getMessageData()Landroid/os/Bundle;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-static {v6}, Lcom/applovin/impl/sdk/utils/BundleUtils;->toStringMap(Landroid/os/Bundle;)Ljava/util/Map;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-static {v5}, Lcom/applovin/impl/sdk/utils/BundleUtils;->toMap(Landroid/os/Bundle;)Ljava/util/Map;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/BundleUtils;->toStringMap(Landroid/os/Bundle;)Ljava/util/Map;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    const-string v8, "id"

    .line 74
    .line 75
    const-string v9, ""

    .line 76
    .line 77
    invoke-virtual {v1, v8, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    invoke-interface {v5, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    if-nez v9, :cond_1

    .line 86
    .line 87
    iget-object v9, v0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/k;

    .line 88
    .line 89
    invoke-virtual {v9}, Lcom/applovin/impl/sdk/k;->j0()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    invoke-interface {v5, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    :cond_1
    new-instance v7, Lcom/applovin/impl/sdk/network/d$b;

    .line 97
    .line 98
    invoke-direct {v7}, Lcom/applovin/impl/sdk/network/d$b;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v7, v3}, Lcom/applovin/impl/sdk/network/d$b;->d(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/d$b;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v3, v1}, Lcom/applovin/impl/sdk/network/d$b;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/d$b;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v1, v6}, Lcom/applovin/impl/sdk/network/d$b;->b(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/d$b;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v1, v5}, Lcom/applovin/impl/sdk/network/d$b;->c(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/d$b;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v1, v4}, Lcom/applovin/impl/sdk/network/d$b;->a(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/d$b;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    iget-object v2, v0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/k;

    .line 130
    .line 131
    sget-object v3, Lcom/applovin/impl/v4;->a5:Lcom/applovin/impl/v4;

    .line 132
    .line 133
    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    check-cast v2, Ljava/lang/Boolean;

    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/network/d$b;->a(Z)Lcom/applovin/impl/sdk/network/d$b;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v1, v8}, Lcom/applovin/impl/sdk/network/d$b;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/d$b;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/network/d$b;->a()Lcom/applovin/impl/sdk/network/d;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    iget-object v2, v0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/k;

    .line 156
    .line 157
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->f0()Lcom/applovin/impl/sdk/network/b;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-virtual {v2, v1}, Lcom/applovin/impl/sdk/network/b;->e(Lcom/applovin/impl/sdk/network/d;)V

    .line 162
    .line 163
    .line 164
    goto/16 :goto_5

    .line 165
    .line 166
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessage;->getTopic()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    const-string v8, "send_http_request_v2"

    .line 171
    .line 172
    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-eqz v1, :cond_a

    .line 177
    .line 178
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessage;->getMessageData()Landroid/os/Bundle;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    const-string v8, "http_method"

    .line 183
    .line 184
    const-string v9, "POST"

    .line 185
    .line 186
    invoke-virtual {v1, v8, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v8

    .line 190
    const-string/jumbo v9, "timeout_sec"

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 194
    .line 195
    .line 196
    move-result v10

    .line 197
    if-eqz v10, :cond_3

    .line 198
    .line 199
    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 200
    .line 201
    invoke-virtual {v1, v9}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 202
    .line 203
    .line 204
    move-result-wide v11

    .line 205
    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 206
    .line 207
    .line 208
    move-result-wide v9

    .line 209
    goto :goto_0

    .line 210
    :cond_3
    iget-object v9, v0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/k;

    .line 211
    .line 212
    sget-object v10, Lcom/applovin/impl/v4;->h3:Lcom/applovin/impl/v4;

    .line 213
    .line 214
    invoke-virtual {v9, v10}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v9

    .line 218
    check-cast v9, Ljava/lang/Long;

    .line 219
    .line 220
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 221
    .line 222
    .line 223
    move-result-wide v9

    .line 224
    :goto_0
    iget-object v11, v0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/k;

    .line 225
    .line 226
    sget-object v12, Lcom/applovin/impl/v4;->i3:Lcom/applovin/impl/v4;

    .line 227
    .line 228
    invoke-virtual {v11, v12}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v11

    .line 232
    check-cast v11, Ljava/lang/Integer;

    .line 233
    .line 234
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 235
    .line 236
    .line 237
    move-result v11

    .line 238
    const-string v12, "retry_count"

    .line 239
    .line 240
    invoke-virtual {v1, v12, v11}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 241
    .line 242
    .line 243
    move-result v11

    .line 244
    const-string v12, "retry_delay_sec"

    .line 245
    .line 246
    invoke-virtual {v1, v12}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 247
    .line 248
    .line 249
    move-result v13

    .line 250
    if-eqz v13, :cond_4

    .line 251
    .line 252
    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 253
    .line 254
    invoke-virtual {v1, v12}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 255
    .line 256
    .line 257
    move-result-wide v14

    .line 258
    invoke-virtual {v13, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 259
    .line 260
    .line 261
    move-result-wide v12

    .line 262
    goto :goto_1

    .line 263
    :cond_4
    iget-object v12, v0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/k;

    .line 264
    .line 265
    sget-object v13, Lcom/applovin/impl/v4;->j3:Lcom/applovin/impl/v4;

    .line 266
    .line 267
    invoke-virtual {v12, v13}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v12

    .line 271
    check-cast v12, Ljava/lang/Long;

    .line 272
    .line 273
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    .line 274
    .line 275
    .line 276
    move-result-wide v12

    .line 277
    :goto_1
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    invoke-static {v6}, Lcom/applovin/impl/sdk/utils/BundleUtils;->toStringMap(Landroid/os/Bundle;)Ljava/util/Map;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    const-string v14, "GET"

    .line 286
    .line 287
    invoke-virtual {v14, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 288
    .line 289
    .line 290
    move-result v14

    .line 291
    const-string v15, "include_data_collector_info"

    .line 292
    .line 293
    move-wide/from16 v16, v12

    .line 294
    .line 295
    const/4 v12, 0x0

    .line 296
    const/4 v13, 0x0

    .line 297
    if-eqz v14, :cond_6

    .line 298
    .line 299
    const/4 v14, 0x1

    .line 300
    invoke-virtual {v1, v15, v14}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 301
    .line 302
    .line 303
    move-result v5

    .line 304
    if-eqz v5, :cond_5

    .line 305
    .line 306
    iget-object v5, v0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/k;

    .line 307
    .line 308
    invoke-virtual {v5}, Lcom/applovin/impl/sdk/k;->B()Lcom/applovin/impl/sdk/l;

    .line 309
    .line 310
    .line 311
    move-result-object v5

    .line 312
    invoke-virtual {v5, v13, v12, v12}, Lcom/applovin/impl/sdk/l;->a(Ljava/util/Map;ZZ)Ljava/util/Map;

    .line 313
    .line 314
    .line 315
    move-result-object v5

    .line 316
    invoke-static {v5}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->toBundle(Ljava/util/Map;)Landroid/os/Bundle;

    .line 317
    .line 318
    .line 319
    move-result-object v5

    .line 320
    invoke-static {v5}, Lcom/applovin/impl/sdk/utils/BundleUtils;->toStringMap(Landroid/os/Bundle;)Ljava/util/Map;

    .line 321
    .line 322
    .line 323
    move-result-object v5

    .line 324
    invoke-interface {v6, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 325
    .line 326
    .line 327
    :cond_5
    move-wide/from16 v21, v9

    .line 328
    .line 329
    move/from16 v20, v11

    .line 330
    .line 331
    move-object v5, v13

    .line 332
    goto/16 :goto_3

    .line 333
    .line 334
    :cond_6
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 335
    .line 336
    .line 337
    move-result-object v5

    .line 338
    invoke-static {v5}, Lcom/applovin/impl/sdk/utils/BundleUtils;->toMap(Landroid/os/Bundle;)Ljava/util/Map;

    .line 339
    .line 340
    .line 341
    move-result-object v5

    .line 342
    const/4 v14, 0x1

    .line 343
    invoke-virtual {v1, v15, v14}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 344
    .line 345
    .line 346
    move-result v14

    .line 347
    if-eqz v14, :cond_8

    .line 348
    .line 349
    iget-object v14, v0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/k;

    .line 350
    .line 351
    invoke-virtual {v14}, Lcom/applovin/impl/sdk/k;->B()Lcom/applovin/impl/sdk/l;

    .line 352
    .line 353
    .line 354
    move-result-object v14

    .line 355
    invoke-virtual {v14}, Lcom/applovin/impl/sdk/l;->E()Ljava/util/Map;

    .line 356
    .line 357
    .line 358
    move-result-object v14

    .line 359
    iget-object v15, v0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/k;

    .line 360
    .line 361
    invoke-virtual {v15}, Lcom/applovin/impl/sdk/k;->B()Lcom/applovin/impl/sdk/l;

    .line 362
    .line 363
    .line 364
    move-result-object v15

    .line 365
    invoke-virtual {v15}, Lcom/applovin/impl/sdk/l;->o()Ljava/util/Map;

    .line 366
    .line 367
    .line 368
    move-result-object v15

    .line 369
    const-string v13, "idfv"

    .line 370
    .line 371
    invoke-interface {v15, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result v18

    .line 375
    if-eqz v18, :cond_7

    .line 376
    .line 377
    const-string v12, "idfv_scope"

    .line 378
    .line 379
    invoke-interface {v15, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    move-result v19

    .line 383
    if-eqz v19, :cond_7

    .line 384
    .line 385
    invoke-interface {v15, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v19

    .line 389
    move/from16 v20, v11

    .line 390
    .line 391
    move-object/from16 v11, v19

    .line 392
    .line 393
    check-cast v11, Ljava/lang/String;

    .line 394
    .line 395
    invoke-interface {v15, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v19

    .line 399
    move-wide/from16 v21, v9

    .line 400
    .line 401
    move-object/from16 v9, v19

    .line 402
    .line 403
    check-cast v9, Ljava/lang/Integer;

    .line 404
    .line 405
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 406
    .line 407
    .line 408
    invoke-interface {v15, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    invoke-interface {v15, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    invoke-interface {v14, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    invoke-interface {v14, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    goto :goto_2

    .line 421
    :cond_7
    move-wide/from16 v21, v9

    .line 422
    .line 423
    move/from16 v20, v11

    .line 424
    .line 425
    :goto_2
    iget-object v9, v0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/k;

    .line 426
    .line 427
    sget-object v10, Lcom/applovin/impl/v4;->o:Lcom/applovin/impl/v4;

    .line 428
    .line 429
    invoke-virtual {v9, v10}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v9

    .line 433
    const-string v10, "server_installed_at"

    .line 434
    .line 435
    invoke-interface {v14, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    iget-object v9, v0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/k;

    .line 439
    .line 440
    invoke-virtual {v9}, Lcom/applovin/impl/sdk/k;->j0()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v9

    .line 444
    invoke-interface {v14, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    const-string v7, "app"

    .line 448
    .line 449
    invoke-interface {v5, v7, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    const-string v7, "device"

    .line 453
    .line 454
    invoke-interface {v5, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    goto :goto_3

    .line 458
    :cond_8
    move-wide/from16 v21, v9

    .line 459
    .line 460
    move/from16 v20, v11

    .line 461
    .line 462
    :goto_3
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 463
    .line 464
    .line 465
    move-result-object v4

    .line 466
    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/BundleUtils;->toStringMap(Landroid/os/Bundle;)Ljava/util/Map;

    .line 467
    .line 468
    .line 469
    move-result-object v4

    .line 470
    iget-object v7, v0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/k;

    .line 471
    .line 472
    invoke-static {v7}, Lcom/applovin/impl/sdk/network/a;->a(Lcom/applovin/impl/sdk/k;)Lcom/applovin/impl/sdk/network/a$a;

    .line 473
    .line 474
    .line 475
    move-result-object v7

    .line 476
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v3

    .line 480
    invoke-virtual {v7, v3}, Lcom/applovin/impl/sdk/network/a$a;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/a$a;

    .line 481
    .line 482
    .line 483
    move-result-object v3

    .line 484
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v2

    .line 488
    invoke-virtual {v3, v2}, Lcom/applovin/impl/sdk/network/a$a;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/a$a;

    .line 489
    .line 490
    .line 491
    move-result-object v2

    .line 492
    invoke-virtual {v2, v6}, Lcom/applovin/impl/sdk/network/a$a;->b(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/a$a;

    .line 493
    .line 494
    .line 495
    move-result-object v2

    .line 496
    invoke-virtual {v2, v8}, Lcom/applovin/impl/sdk/network/a$a;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/a$a;

    .line 497
    .line 498
    .line 499
    move-result-object v2

    .line 500
    invoke-virtual {v2, v4}, Lcom/applovin/impl/sdk/network/a$a;->a(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/a$a;

    .line 501
    .line 502
    .line 503
    move-result-object v2

    .line 504
    if-eqz v5, :cond_9

    .line 505
    .line 506
    new-instance v13, Lorg/json/JSONObject;

    .line 507
    .line 508
    invoke-direct {v13, v5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 509
    .line 510
    .line 511
    goto :goto_4

    .line 512
    :cond_9
    const/4 v13, 0x0

    .line 513
    :goto_4
    invoke-virtual {v2, v13}, Lcom/applovin/impl/sdk/network/a$a;->a(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/network/a$a;

    .line 514
    .line 515
    .line 516
    move-result-object v2

    .line 517
    move-wide/from16 v9, v21

    .line 518
    .line 519
    long-to-int v3, v9

    .line 520
    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/network/a$a;->c(I)Lcom/applovin/impl/sdk/network/a$a;

    .line 521
    .line 522
    .line 523
    move-result-object v2

    .line 524
    move/from16 v3, v20

    .line 525
    .line 526
    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/network/a$a;->a(I)Lcom/applovin/impl/sdk/network/a$a;

    .line 527
    .line 528
    .line 529
    move-result-object v2

    .line 530
    move-wide/from16 v12, v16

    .line 531
    .line 532
    long-to-int v3, v12

    .line 533
    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/network/a$a;->b(I)Lcom/applovin/impl/sdk/network/a$a;

    .line 534
    .line 535
    .line 536
    move-result-object v2

    .line 537
    new-instance v3, Lorg/json/JSONObject;

    .line 538
    .line 539
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/network/a$a;->a(Ljava/lang/Object;)Lcom/applovin/impl/sdk/network/a$a;

    .line 543
    .line 544
    .line 545
    move-result-object v2

    .line 546
    const-string v3, "is_encoding_enabled"

    .line 547
    .line 548
    const/4 v4, 0x0

    .line 549
    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 550
    .line 551
    .line 552
    move-result v1

    .line 553
    invoke-virtual {v2, v1}, Lcom/applovin/impl/sdk/network/a$a;->a(Z)Lcom/applovin/impl/sdk/network/a$a;

    .line 554
    .line 555
    .line 556
    move-result-object v1

    .line 557
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/network/a$a;->a()Lcom/applovin/impl/sdk/network/a;

    .line 558
    .line 559
    .line 560
    move-result-object v1

    .line 561
    new-instance v2, Lcom/applovin/impl/n0;

    .line 562
    .line 563
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessage;->getPublisherId()Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v3

    .line 567
    iget-object v4, v0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/k;

    .line 568
    .line 569
    invoke-direct {v2, v3, v1, v4}, Lcom/applovin/impl/n0;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/network/a;Lcom/applovin/impl/sdk/k;)V

    .line 570
    .line 571
    .line 572
    iget-object v1, v0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/k;

    .line 573
    .line 574
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->r0()Lcom/applovin/impl/b6;

    .line 575
    .line 576
    .line 577
    move-result-object v1

    .line 578
    sget-object v3, Lcom/applovin/impl/b6$b;->e:Lcom/applovin/impl/b6$b;

    .line 579
    .line 580
    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/b6;->a(Lcom/applovin/impl/g5;Lcom/applovin/impl/b6$b;)V

    .line 581
    .line 582
    .line 583
    goto :goto_5

    .line 584
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessage;->getTopic()Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v1

    .line 588
    const-string v2, "set_ad_request_query_params"

    .line 589
    .line 590
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 591
    .line 592
    .line 593
    move-result v1

    .line 594
    if-eqz v1, :cond_b

    .line 595
    .line 596
    iget-object v1, v0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/k;

    .line 597
    .line 598
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->k()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    .line 599
    .line 600
    .line 601
    move-result-object v1

    .line 602
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessage;->getMessageData()Landroid/os/Bundle;

    .line 603
    .line 604
    .line 605
    move-result-object v2

    .line 606
    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/BundleUtils;->toMap(Landroid/os/Bundle;)Ljava/util/Map;

    .line 607
    .line 608
    .line 609
    move-result-object v2

    .line 610
    invoke-static {v2}, Lcom/applovin/impl/k7;->a(Ljava/util/Map;)Ljava/util/Map;

    .line 611
    .line 612
    .line 613
    move-result-object v2

    .line 614
    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->addCustomQueryParams(Ljava/util/Map;)V

    .line 615
    .line 616
    .line 617
    goto :goto_5

    .line 618
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessage;->getTopic()Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object v1

    .line 622
    const-string v2, "set_ad_request_post_body"

    .line 623
    .line 624
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 625
    .line 626
    .line 627
    move-result v1

    .line 628
    if-eqz v1, :cond_c

    .line 629
    .line 630
    iget-object v1, v0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/k;

    .line 631
    .line 632
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->k()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    .line 633
    .line 634
    .line 635
    move-result-object v1

    .line 636
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessage;->getMessageData()Landroid/os/Bundle;

    .line 637
    .line 638
    .line 639
    move-result-object v2

    .line 640
    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/BundleUtils;->toJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;

    .line 641
    .line 642
    .line 643
    move-result-object v2

    .line 644
    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->setCustomPostBody(Lorg/json/JSONObject;)V

    .line 645
    .line 646
    .line 647
    goto :goto_5

    .line 648
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessage;->getTopic()Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object v1

    .line 652
    const-string v2, "set_mediate_request_post_body_data"

    .line 653
    .line 654
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 655
    .line 656
    .line 657
    move-result v1

    .line 658
    if-eqz v1, :cond_d

    .line 659
    .line 660
    iget-object v1, v0, Lcom/applovin/impl/sdk/j;->a:Lcom/applovin/impl/sdk/k;

    .line 661
    .line 662
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->X()Lcom/applovin/impl/mediation/MediationServiceImpl;

    .line 663
    .line 664
    .line 665
    move-result-object v1

    .line 666
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessage;->getMessageData()Landroid/os/Bundle;

    .line 667
    .line 668
    .line 669
    move-result-object v2

    .line 670
    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/BundleUtils;->toJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;

    .line 671
    .line 672
    .line 673
    move-result-object v2

    .line 674
    invoke-virtual {v1, v2}, Lcom/applovin/impl/mediation/MediationServiceImpl;->setCustomPostBodyData(Lorg/json/JSONObject;)V

    .line 675
    .line 676
    .line 677
    :cond_d
    :goto_5
    return-void
.end method
