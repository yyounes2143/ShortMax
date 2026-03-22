.class public interface abstract Lcom/bytedance/applog/IAppLogInstance;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract activateALink(Landroid/net/Uri;)V
.end method

.method public abstract addDataObserver(Lcom/bytedance/applog/IDataObserver;)V
.end method

.method public abstract addEventObserver(Lcom/bytedance/applog/IEventObserver;)V
.end method

.method public abstract addEventObserver(Lcom/bytedance/applog/IEventObserver;Lcom/bytedance/applog/IPresetEventObserver;)V
.end method

.method public abstract addNetCommonParams(Landroid/content/Context;Ljava/lang/String;ZLcom/bytedance/applog/Level;)Ljava/lang/String;
.end method

.method public abstract addSessionHook(Lcom/bytedance/applog/ISessionObserver;)V
.end method

.method public abstract bind(Ljava/util/Map;Lcom/bytedance/applog/oneid/IDBindCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bytedance/applog/oneid/IDBindCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract clearAbTestConfigsCache()V
.end method

.method public abstract clearDb()V
.end method

.method public abstract flush()V
.end method

.method public abstract getALinkListener()Lcom/bytedance/applog/alink/IALinkListener;
.end method

.method public abstract getAbConfig(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation
.end method

.method public abstract getAbSdkVersion()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getActiveCustomParams()Lcom/bytedance/applog/IActiveCustomParamsCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getAid()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getAllAbTestConfigs()Lorg/json/JSONObject;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getAppContext()Lcom/bytedance/bdtracker/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getAppId()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getClientUdid()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getDeepLinkUrl()Ljava/lang/String;
.end method

.method public abstract getDid()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getEncryptAndCompress()Z
.end method

.method public abstract getEventFilterByClient()Lcom/bytedance/bdtracker/a1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getEventHandler()Lcom/bytedance/applog/event/IEventHandler;
.end method

.method public abstract getHeader()Lorg/json/JSONObject;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getHeaderCustomCallback()Lcom/bytedance/applog/IHeaderCustomTimelyCallback;
.end method

.method public abstract getHeaderValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getIid()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getInitConfig()Lcom/bytedance/applog/InitConfig;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getLaunchFrom()I
.end method

.method public abstract getMonitor()Lcom/bytedance/bdtracker/h2;
.end method

.method public abstract getNetClient()Lcom/bytedance/applog/network/INetworkClient;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getOpenUdid()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getRequestHeader()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSdkVersion()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getSessionId()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getSsid()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getSsidGroup(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getUdid()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getUriRuntime()Lcom/bytedance/applog/UriConfig;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getUserID()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getUserUniqueID()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getViewExposureManager()Lcom/bytedance/applog/exposure/ViewExposureManager;
.end method

.method public abstract getViewProperties(Landroid/view/View;)Lorg/json/JSONObject;
.end method

.method public abstract hasStarted()Z
.end method

.method public abstract ignoreAutoTrackClick(Landroid/view/View;)V
.end method

.method public varargs abstract ignoreAutoTrackClickByViewType([Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method

.method public varargs abstract ignoreAutoTrackPage([Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract init(Landroid/content/Context;Lcom/bytedance/applog/InitConfig;)V
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/applog/InitConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract init(Landroid/content/Context;Lcom/bytedance/applog/InitConfig;Landroid/app/Activity;)V
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/applog/InitConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract initH5Bridge(Landroid/view/View;Ljava/lang/String;)V
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract initMetaSec(Landroid/content/Context;)V
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract initWebViewBridge(Landroid/view/View;Ljava/lang/String;)V
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isAutoTrackClickIgnored(Landroid/view/View;)Z
.end method

.method public abstract isAutoTrackPageIgnored(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public abstract isBavEnabled()Z
.end method

.method public abstract isH5BridgeEnable()Z
.end method

.method public abstract isH5CollectEnable()Z
.end method

.method public abstract isNewUser()Z
.end method

.method public abstract isPrivacyMode()Z
.end method

.method public abstract manualActivate()Z
.end method

.method public abstract newEvent(Ljava/lang/String;)Lcom/bytedance/applog/event/EventBuilder;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onActivityPause()V
.end method

.method public abstract onActivityResumed(Landroid/app/Activity;I)V
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onEventV3(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onEventV3(Ljava/lang/String;Landroid/os/Bundle;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onEventV3(Ljava/lang/String;Landroid/os/Bundle;I)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onEventV3(Ljava/lang/String;Lorg/json/JSONObject;I)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onMiscEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onPause(Landroid/content/Context;)V
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onResume(Landroid/content/Context;)V
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract pauseDurationEvent(Ljava/lang/String;)V
.end method

.method public abstract profileAppend(Lorg/json/JSONObject;)V
.end method

.method public abstract profileIncrement(Lorg/json/JSONObject;)V
.end method

.method public abstract profileSet(Lorg/json/JSONObject;)V
.end method

.method public abstract profileSetOnce(Lorg/json/JSONObject;)V
.end method

.method public abstract profileUnset(Ljava/lang/String;)V
.end method

.method public abstract pullAbTestConfigs()V
.end method

.method public abstract pullAbTestConfigs(ILcom/bytedance/applog/IPullAbTestConfigCallback;)V
.end method

.method public abstract putCommonParams(Landroid/content/Context;Ljava/util/Map;ZLcom/bytedance/applog/Level;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/bytedance/applog/Level;",
            ")V"
        }
    .end annotation
.end method

.method public abstract receive(Lcom/bytedance/bdtracker/u3;)V
.end method

.method public abstract receive([Ljava/lang/String;)V
.end method

.method public abstract registerHeaderCustomCallback(Lcom/bytedance/applog/IHeaderCustomTimelyCallback;)V
.end method

.method public abstract removeAllDataObserver()V
.end method

.method public abstract removeDataObserver(Lcom/bytedance/applog/IDataObserver;)V
.end method

.method public abstract removeEventObserver(Lcom/bytedance/applog/IEventObserver;)V
.end method

.method public abstract removeEventObserver(Lcom/bytedance/applog/IEventObserver;Lcom/bytedance/applog/IPresetEventObserver;)V
.end method

.method public abstract removeHeaderInfo(Ljava/lang/String;)V
.end method

.method public abstract removeOaidObserver(Lcom/bytedance/applog/IOaidObserver;)V
    .param p1    # Lcom/bytedance/applog/IOaidObserver;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract removeSessionHook(Lcom/bytedance/applog/ISessionObserver;)V
.end method

.method public abstract reportPhoneDetailInfo()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract resumeDurationEvent(Ljava/lang/String;)V
.end method

.method public abstract setALinkListener(Lcom/bytedance/applog/alink/IALinkListener;)V
.end method

.method public abstract setAccount(Landroid/accounts/Account;)V
.end method

.method public abstract setActiveCustomParams(Lcom/bytedance/applog/IActiveCustomParamsCallback;)V
.end method

.method public abstract setAppContext(Lcom/bytedance/bdtracker/f;)V
    .param p1    # Lcom/bytedance/bdtracker/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setAppLanguageAndRegion(Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setAppTrack(Lorg/json/JSONObject;)V
.end method

.method public abstract setClipboardEnabled(Z)V
.end method

.method public abstract setEncryptAndCompress(Z)V
.end method

.method public abstract setEventFilterByClient(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract setEventHandler(Lcom/bytedance/applog/event/IEventHandler;)V
.end method

.method public abstract setExternalAbVersion(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setExtraParams(Lcom/bytedance/applog/IExtraParams;)V
.end method

.method public abstract setForbidReportPhoneDetailInfo(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setGPSLocation(FFLjava/lang/String;)V
.end method

.method public abstract setGoogleAid(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setHeaderInfo(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract setHeaderInfo(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setLaunchFrom(I)V
.end method

.method public abstract setOaidObserver(Lcom/bytedance/applog/IOaidObserver;)V
    .param p1    # Lcom/bytedance/applog/IOaidObserver;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation
.end method

.method public abstract setPrivacyMode(Z)V
.end method

.method public abstract setPullAbTestConfigsThrottleMills(Ljava/lang/Long;)V
.end method

.method public abstract setRangersEventVerifyEnable(ZLjava/lang/String;)V
.end method

.method public abstract setTouchPoint(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setTracerData(Lorg/json/JSONObject;)V
.end method

.method public abstract setUriRuntime(Lcom/bytedance/applog/UriConfig;)V
.end method

.method public abstract setUserAgent(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setUserID(J)V
.end method

.method public abstract setUserUniqueID(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setUserUniqueID(Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setViewId(Landroid/app/Dialog;Ljava/lang/String;)V
.end method

.method public abstract setViewId(Landroid/view/View;Ljava/lang/String;)V
.end method

.method public abstract setViewId(Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public abstract setViewProperties(Landroid/view/View;Lorg/json/JSONObject;)V
.end method

.method public abstract start()V
.end method

.method public abstract startDurationEvent(Ljava/lang/String;)V
.end method

.method public abstract startSimulator(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract stopDurationEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
.end method

.method public abstract trackClick(Landroid/view/View;)V
.end method

.method public abstract trackClick(Landroid/view/View;Lorg/json/JSONObject;)V
.end method

.method public abstract trackPage(Landroid/app/Activity;)V
.end method

.method public abstract trackPage(Landroid/app/Activity;Lorg/json/JSONObject;)V
.end method

.method public abstract trackPage(Ljava/lang/Object;)V
.end method

.method public abstract trackPage(Ljava/lang/Object;Lorg/json/JSONObject;)V
.end method

.method public abstract userProfileSetOnce(Lorg/json/JSONObject;Lcom/bytedance/applog/profile/UserProfileCallback;)V
.end method

.method public abstract userProfileSync(Lorg/json/JSONObject;Lcom/bytedance/applog/profile/UserProfileCallback;)V
.end method
