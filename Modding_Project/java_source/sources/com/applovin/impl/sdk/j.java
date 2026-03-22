package com.applovin.impl.sdk;

import android.os.Bundle;
import android.view.View;
import androidx.autofill.HintConstants;
import androidx.browser.trusted.sharing.ShareTarget;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorPublisher;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.a3;
import com.applovin.impl.b6;
import com.applovin.impl.b8;
import com.applovin.impl.communicator.CommunicatorMessageImpl;
import com.applovin.impl.e3;
import com.applovin.impl.e7;
import com.applovin.impl.g5;
import com.applovin.impl.k7;
import com.applovin.impl.sdk.network.a;
import com.applovin.impl.sdk.network.d;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.t3;
import com.applovin.impl.v2;
import com.applovin.impl.v4;
import com.applovin.impl.y2;
import com.applovin.impl.z2;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.bytedance.vodsetting.Module;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class j implements AppLovinCommunicatorSubscriber, AppLovinCommunicatorPublisher {

    /* renamed from: a  reason: collision with root package name */
    private final k f9705a;

    /* renamed from: b  reason: collision with root package name */
    private final AppLovinCommunicator f9706b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(k kVar) {
        this.f9705a = kVar;
        AppLovinCommunicator appLovinCommunicator = AppLovinCommunicator.getInstance(k.o());
        this.f9706b = appLovinCommunicator;
        if (((Boolean) kVar.a(v4.f10215b7)).booleanValue()) {
            appLovinCommunicator.a(kVar);
            appLovinCommunicator.subscribe(this, e7.f7883a);
        }
    }

    public void a(JSONObject jSONObject, boolean z10) {
        if (b("safedk_init") && com.applovin.impl.j.c()) {
            Bundle bundle = new Bundle();
            bundle.putString(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f9705a.j0());
            bundle.putString("applovin_random_token", this.f9705a.i0());
            bundle.putString("compass_random_token", this.f9705a.v());
            bundle.putString(TTVideoEngineInterface.PLAY_API_KEY_DEVICETYPE, AppLovinSdkUtils.isTablet(k.o()) ? "tablet" : HintConstants.AUTOFILL_HINT_PHONE);
            bundle.putString("init_success", String.valueOf(z10));
            bundle.putParcelableArrayList("installed_mediation_adapters", JsonUtils.toBundle(t3.b(this.f9705a)));
            JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "communicator_settings", (JSONObject) null);
            Bundle bundle2 = (Bundle) bundle.clone();
            bundle2.putString(TTVideoEngineInterface.PLAY_API_KEY_USERID, this.f9705a.x0().e());
            JSONObject jSONObject3 = JsonUtils.getJSONObject(jSONObject2, "safedk_settings", new JSONObject());
            if (!((Boolean) this.f9705a.a(v4.f10224c7)).booleanValue()) {
                JSONObject jSONObject4 = new JSONObject();
                JsonUtils.putBoolean(jSONObject4, "deactivated", true);
                JsonUtils.putJSONObject(jSONObject3, "safeDKDeactivation", jSONObject4);
            }
            bundle2.putBundle("settings", JsonUtils.toBundle(jSONObject3));
            this.f9705a.O();
            if (o.a()) {
                o O = this.f9705a.O();
                O.a("CommunicatorService", "Sending \"safedk_init\" message: " + bundle);
            }
            a(bundle2, "safedk_init");
        }
    }

    public void b(String str, String str2) {
        if (b("user_info") && com.applovin.impl.j.c()) {
            Bundle bundle = new Bundle(2);
            bundle.putString(TTVideoEngineInterface.PLAY_API_KEY_USERID, StringUtils.emptyIfNull(str));
            bundle.putString("applovin_random_token", str2);
            a(bundle, "user_info");
        }
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return "applovin_sdk";
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        long longValue;
        long longValue2;
        Map<String, Object> map;
        long j10;
        int i10;
        JSONObject jSONObject;
        if (!((Boolean) this.f9705a.a(v4.f10215b7)).booleanValue()) {
            return;
        }
        if ("send_http_request".equalsIgnoreCase(appLovinCommunicatorMessage.getTopic())) {
            Bundle messageData = appLovinCommunicatorMessage.getMessageData();
            Map<String, String> stringMap = BundleUtils.toStringMap(messageData.getBundle("query_params"));
            Map<String, Object> map2 = BundleUtils.toMap(messageData.getBundle("post_body"));
            Map<String, String> stringMap2 = BundleUtils.toStringMap(messageData.getBundle(IVideoEventLogger.GEAR_STRATEGY_KEY_HEADERS));
            String string = messageData.getString("id", "");
            if (!map2.containsKey(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY)) {
                map2.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f9705a.j0());
            }
            this.f9705a.f0().e(new d.b().d(messageData.getString("url")).a(messageData.getString("backup_url")).b(stringMap).c(map2).a(stringMap2).a(((Boolean) this.f9705a.a(v4.f10205a5)).booleanValue()).b(string).a());
        } else if ("send_http_request_v2".equalsIgnoreCase(appLovinCommunicatorMessage.getTopic())) {
            Bundle messageData2 = appLovinCommunicatorMessage.getMessageData();
            String string2 = messageData2.getString("http_method", ShareTarget.METHOD_POST);
            if (messageData2.containsKey("timeout_sec")) {
                longValue = TimeUnit.SECONDS.toMillis(messageData2.getLong("timeout_sec"));
            } else {
                longValue = ((Long) this.f9705a.a(v4.f10261h3)).longValue();
            }
            int i11 = messageData2.getInt("retry_count", ((Integer) this.f9705a.a(v4.f10269i3)).intValue());
            if (messageData2.containsKey("retry_delay_sec")) {
                longValue2 = TimeUnit.SECONDS.toMillis(messageData2.getLong("retry_delay_sec"));
            } else {
                longValue2 = ((Long) this.f9705a.a(v4.f10277j3)).longValue();
            }
            Map<String, String> stringMap3 = BundleUtils.toStringMap(messageData2.getBundle("query_params"));
            long j11 = longValue2;
            if (ShareTarget.METHOD_GET.equalsIgnoreCase(string2)) {
                if (messageData2.getBoolean("include_data_collector_info", true)) {
                    stringMap3.putAll(BundleUtils.toStringMap(CollectionUtils.toBundle(this.f9705a.B().a((Map) null, false, false))));
                }
                j10 = longValue;
                i10 = i11;
                map = null;
            } else {
                map = BundleUtils.toMap(messageData2.getBundle("post_body"));
                if (messageData2.getBoolean("include_data_collector_info", true)) {
                    Map E = this.f9705a.B().E();
                    Map o10 = this.f9705a.B().o();
                    if (o10.containsKey("idfv") && o10.containsKey("idfv_scope")) {
                        i10 = i11;
                        String str = (String) o10.get("idfv");
                        j10 = longValue;
                        Integer num = (Integer) o10.get("idfv_scope");
                        num.intValue();
                        o10.remove("idfv");
                        o10.remove("idfv_scope");
                        E.put("idfv", str);
                        E.put("idfv_scope", num);
                    } else {
                        j10 = longValue;
                        i10 = i11;
                    }
                    E.put("server_installed_at", this.f9705a.a(v4.f10313o));
                    E.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f9705a.j0());
                    map.put(MBridgeConstans.DYNAMIC_VIEW_WX_APP, E);
                    map.put("device", o10);
                } else {
                    j10 = longValue;
                    i10 = i11;
                }
            }
            a.C0121a a10 = com.applovin.impl.sdk.network.a.a(this.f9705a).b(messageData2.getString("url")).a(messageData2.getString("backup_url")).b(stringMap3).c(string2).a((Map) BundleUtils.toStringMap(messageData2.getBundle(IVideoEventLogger.GEAR_STRATEGY_KEY_HEADERS)));
            if (map != null) {
                jSONObject = new JSONObject(map);
            } else {
                jSONObject = null;
            }
            this.f9705a.r0().a((g5) new com.applovin.impl.n0(appLovinCommunicatorMessage.getPublisherId(), a10.a(jSONObject).c((int) j10).a(i10).b((int) j11).a((Object) new JSONObject()).a(messageData2.getBoolean("is_encoding_enabled", false)).a(), this.f9705a), b6.b.OTHER);
        } else if ("set_ad_request_query_params".equalsIgnoreCase(appLovinCommunicatorMessage.getTopic())) {
            this.f9705a.k().addCustomQueryParams(k7.a((Map) BundleUtils.toMap(appLovinCommunicatorMessage.getMessageData())));
        } else if ("set_ad_request_post_body".equalsIgnoreCase(appLovinCommunicatorMessage.getTopic())) {
            this.f9705a.k().setCustomPostBody(BundleUtils.toJSONObject(appLovinCommunicatorMessage.getMessageData()));
        } else if ("set_mediate_request_post_body_data".equalsIgnoreCase(appLovinCommunicatorMessage.getTopic())) {
            this.f9705a.X().setCustomPostBodyData(BundleUtils.toJSONObject(appLovinCommunicatorMessage.getMessageData()));
        }
    }

    public void b(v2 v2Var, String str) {
        if (b("max_ad_events")) {
            Bundle a10 = a(v2Var);
            a10.putString("type", str);
            this.f9705a.O();
            if (o.a()) {
                o O = this.f9705a.O();
                O.a("CommunicatorService", "Sending \"max_ad_events\" message: " + a10);
            }
            a(a10, "max_ad_events");
        }
    }

    public void b(v2 v2Var) {
        if (b("max_revenue_events")) {
            Bundle a10 = a(v2Var);
            a10.putAll(JsonUtils.toBundle(v2Var.O()));
            a10.putString("country_code", this.f9705a.w().getCountryCode());
            a(a10, "max_revenue_events");
        }
    }

    public void b(List list) {
        if (b("test_mode_networks_updated")) {
            if (list == null || list.isEmpty()) {
                a(Bundle.EMPTY, "test_mode_networks_updated");
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("test_mode_networks", new ArrayList<>(list));
            a(bundle, "test_mode_networks_updated");
        }
    }

    public void a(v2 v2Var, String str) {
        if (b("ad_callback_blocked_after_hidden")) {
            Bundle a10 = a(v2Var);
            a10.putString("callback_name", str);
            a(a10, "ad_callback_blocked_after_hidden");
        }
    }

    private boolean b(String str) {
        if (((Boolean) this.f9705a.a(v4.f10215b7)).booleanValue()) {
            return this.f9705a.c(v4.f10207a7).contains(str) || this.f9706b.hasSubscriber(str);
        }
        return false;
    }

    public void a(MaxAdapter.InitializationStatus initializationStatus, String str) {
        if (b("adapter_initialization_status")) {
            Bundle bundle = new Bundle();
            bundle.putString("adapter_class", str);
            bundle.putInt("init_status", initializationStatus.getCode());
            a(bundle, "adapter_initialization_status");
        }
    }

    public void a() {
        if (b("privacy_setting_updated")) {
            a(new Bundle(), "privacy_setting_updated");
        }
    }

    public void a(String str, String str2) {
        if (b("network_sdk_version_updated")) {
            Bundle bundle = new Bundle();
            bundle.putString("adapter_class", str2);
            bundle.putString("sdk_version", str);
            a(bundle, "network_sdk_version_updated");
        }
    }

    public void a(List list) {
        if (b("live_networks_updated")) {
            if (list == null || list.isEmpty()) {
                a(Bundle.EMPTY, "live_networks_updated");
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("live_networks", new ArrayList<>(list));
            a(bundle, "live_networks_updated");
        }
    }

    public void a(String str, String str2, String str3) {
        if (b("responses")) {
            String maybeConvertToIndentedString = JsonUtils.maybeConvertToIndentedString(str3, 2);
            String maybeConvertToIndentedString2 = JsonUtils.maybeConvertToIndentedString(str, 2);
            Bundle bundle = new Bundle();
            bundle.putString("request_url", str2);
            bundle.putString("request_body", maybeConvertToIndentedString);
            bundle.putString("response", maybeConvertToIndentedString2);
            a(bundle, "responses");
        }
    }

    public void a(String str, String str2, int i10, Object obj, String str3, boolean z10) {
        if (b("receive_http_response")) {
            Bundle bundle = new Bundle();
            bundle.putString("id", str);
            bundle.putString("url", str2);
            bundle.putInt(Module.ResponseKey.Code, i10);
            bundle.putBundle("body", JsonUtils.toBundle(obj));
            bundle.putBoolean("success", z10);
            BundleUtils.putString("error_message", str3, bundle);
            a(bundle, "receive_http_response");
        }
    }

    public void a(Bundle bundle, String str) {
        if (b(str)) {
            this.f9706b.getMessagingService().publish(CommunicatorMessageImpl.create(bundle, str, this, this.f9705a.c(v4.f10207a7).contains(str)));
        }
    }

    public boolean a(String str) {
        return e7.f7883a.contains(str);
    }

    private Bundle a(v2 v2Var) {
        View view;
        Bundle bundle = new Bundle();
        bundle.putString("id", v2Var.P());
        bundle.putString("network_name", v2Var.c());
        bundle.putString("max_ad_unit_id", v2Var.getAdUnitId());
        bundle.putString("third_party_ad_placement_id", v2Var.Q());
        bundle.putString("ad_format", v2Var.getFormat().getLabel());
        BundleUtils.putStringIfValid(CampaignEx.JSON_KEY_CREATIVE_ID, v2Var.getCreativeId(), bundle);
        BundleUtils.putStringIfValid("adomain", v2Var.v(), bundle);
        BundleUtils.putStringIfValid("dsp_name", v2Var.getDspName(), bundle);
        if ("CUSTOM_NETWORK_SDK".equalsIgnoreCase(v2Var.c())) {
            bundle.putString("custom_sdk_network_name", v2Var.getNetworkName());
        }
        bundle.putAll(JsonUtils.toBundle(v2Var.x()));
        if (v2Var instanceof e3) {
            if (v2Var instanceof y2) {
                view = ((y2) v2Var).y();
            } else {
                if (v2Var instanceof a3) {
                    a3 a3Var = (a3) v2Var;
                    if (!a3Var.r0()) {
                        view = a3Var.m0() != null ? a3Var.m0() : a3Var.n0();
                    }
                }
                view = null;
            }
            bundle.putString("ad_view", view != null ? b8.a(view) : "N/A");
        } else if (v2Var instanceof z2) {
            Bundle bundle2 = ((z2) v2Var).k0().getBundle("applovin_ad_view_info");
            bundle.putString("ad_view", BundleUtils.getString("ad_view_address", "N/A", bundle2));
            bundle.putString("video_view", BundleUtils.getString("video_view_address", "N/A", bundle2));
        }
        return bundle;
    }
}
