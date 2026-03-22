package com.bytedance.applog.game;

import com.applovin.sdk.AppLovinEventParameters;
import com.applovin.sdk.AppLovinEventTypes;
import com.bytedance.applog.AppLog;
import com.bytedance.applog.log.LoggerImpl;
import com.bytedance.bdtracker.l0;
import com.google.ads.mediation.inmobi.InMobiNetworkValues;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import java.util.Collections;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class GameReportHelper {
    public static final String ACCESS_ACCOUNT = "access_account";
    public static final String ACCESS_PAYMENT_CHANNEL = "access_payment_channel";
    public static final String ADD_CART = "add_cart";
    public static final String ADD_TO_FAVORITE = "add_to_favourite";
    public static final String CHECK_OUT = "check_out";
    public static final String CREATE_GAMEROLE = "create_gamerole";
    public static final String LOG_IN = "log_in";
    public static final String PURCHASE = "purchase";
    public static final String QUEST = "quest";
    public static final String REGISTER = "register";
    public static final String UPDATE_LEVEL = "update_level";
    public static final String VIEW_CONTENT = "view_content";

    public static void onEventAccessAccount(String str, boolean z10) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("account_type", str);
            jSONObject.put("is_success", l0.b.a(z10));
            AppLog.onEventV3(ACCESS_ACCOUNT, jSONObject, 1);
        } catch (JSONException e10) {
            LoggerImpl.global().error(Collections.singletonList("GameReportHelper"), "JSON handle failed", e10, new Object[0]);
        }
    }

    public static void onEventAccessPaymentChannel(String str, boolean z10) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("payment_channel", str);
            jSONObject.put("is_success", l0.b.a(z10));
            AppLog.onEventV3(ACCESS_PAYMENT_CHANNEL, jSONObject, 1);
        } catch (JSONException e10) {
            LoggerImpl.global().error(Collections.singletonList("GameReportHelper"), "JSON handle failed", e10, new Object[0]);
        }
    }

    public static void onEventAddCart(String str, String str2, String str3, int i10, boolean z10) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("content_type", str);
            jSONObject.put("content_name", str2);
            jSONObject.put(AppLovinEventParameters.CONTENT_IDENTIFIER, str3);
            jSONObject.put("content_num", i10);
            jSONObject.put("is_success", l0.b.a(z10));
            AppLog.onEventV3(ADD_CART, jSONObject, 1);
        } catch (JSONException e10) {
            LoggerImpl.global().error(Collections.singletonList("GameReportHelper"), "JSON handle failed", e10, new Object[0]);
        }
    }

    public static void onEventAddToFavorite(String str, String str2, String str3, int i10, boolean z10) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("content_type", str);
            jSONObject.put("content_name", str2);
            jSONObject.put(AppLovinEventParameters.CONTENT_IDENTIFIER, str3);
            jSONObject.put("content_num", i10);
            jSONObject.put("is_success", l0.b.a(z10));
            AppLog.onEventV3(ADD_TO_FAVORITE, jSONObject, 1);
        } catch (JSONException e10) {
            LoggerImpl.global().error(Collections.singletonList("GameReportHelper"), "JSON handle failed", e10, new Object[0]);
        }
    }

    public static void onEventCheckOut(String str, String str2, String str3, int i10, boolean z10, String str4, String str5, boolean z11, int i11) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("content_type", str);
            jSONObject.put("content_name", str2);
            jSONObject.put(AppLovinEventParameters.CONTENT_IDENTIFIER, str3);
            jSONObject.put("content_num", i10);
            jSONObject.put("is_virtual_currency", l0.b.a(z10));
            jSONObject.put(RewardPlus.VIRTUAL_CURRENCY, str4);
            jSONObject.put("currency", str5);
            jSONObject.put("is_success", l0.b.a(z11));
            jSONObject.put("currency_amount", i11);
            AppLog.onEventV3(CHECK_OUT, jSONObject, 1);
        } catch (JSONException e10) {
            LoggerImpl.global().error(Collections.singletonList("GameReportHelper"), "JSON handle failed", e10, new Object[0]);
        }
    }

    public static void onEventCreateGameRole(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("gamerole_id", str);
            AppLog.onEventV3(CREATE_GAMEROLE, jSONObject, 1);
        } catch (JSONException e10) {
            LoggerImpl.global().error(Collections.singletonList("GameReportHelper"), "JSON handle failed", e10, new Object[0]);
        }
    }

    public static void onEventLogin(String str, boolean z10) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("method", str);
            jSONObject.put("is_success", l0.b.a(z10));
            AppLog.onEventV3(LOG_IN, jSONObject, 1);
        } catch (JSONException e10) {
            LoggerImpl.global().error(Collections.singletonList("GameReportHelper"), "JSON handle failed", e10, new Object[0]);
        }
    }

    public static void onEventPurchase(String str, String str2, String str3, int i10, String str4, String str5, boolean z10, int i11) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("content_type", str);
            jSONObject.put("content_name", str2);
            jSONObject.put(AppLovinEventParameters.CONTENT_IDENTIFIER, str3);
            jSONObject.put("content_num", i10);
            jSONObject.put("payment_channel", str4);
            jSONObject.put("currency", str5);
            jSONObject.put("is_success", l0.b.a(z10));
            jSONObject.put("currency_amount", i11);
            AppLog.onEventV3("purchase", jSONObject, 1);
        } catch (JSONException e10) {
            LoggerImpl.global().error(Collections.singletonList("GameReportHelper"), "JSON handle failed", e10, new Object[0]);
        }
    }

    public static void onEventQuest(String str, String str2, String str3, int i10, boolean z10, String str4) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("quest_id", str);
            jSONObject.put("quest_type", str2);
            jSONObject.put("quest_name", str3);
            jSONObject.put("quest_no", i10);
            jSONObject.put("is_success", l0.b.a(z10));
            jSONObject.put(InMobiNetworkValues.DESCRIPTION, str4);
            AppLog.onEventV3(QUEST, jSONObject, 1);
        } catch (JSONException e10) {
            LoggerImpl.global().error(Collections.singletonList("GameReportHelper"), "JSON handle failed", e10, new Object[0]);
        }
    }

    public static void onEventRegister(String str, boolean z10) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("method", str);
            jSONObject.put("is_success", l0.b.a(z10));
            AppLog.onEventV3(REGISTER, jSONObject, 1);
        } catch (JSONException e10) {
            LoggerImpl.global().error(Collections.singletonList("GameReportHelper"), "JSON handle failed", e10, new Object[0]);
        }
    }

    public static void onEventUpdateLevel(int i10) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(AppLovinEventTypes.USER_COMPLETED_LEVEL, i10);
            AppLog.onEventV3(UPDATE_LEVEL, jSONObject, 1);
        } catch (JSONException e10) {
            LoggerImpl.global().error(Collections.singletonList("GameReportHelper"), "JSON handle failed", e10, new Object[0]);
        }
    }

    public static void onEventViewContent(String str, String str2, String str3) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("content_type", str);
            jSONObject.put("content_name", str2);
            jSONObject.put(AppLovinEventParameters.CONTENT_IDENTIFIER, str3);
            AppLog.onEventV3(VIEW_CONTENT, jSONObject, 1);
        } catch (JSONException e10) {
            LoggerImpl.global().error(Collections.singletonList("GameReportHelper"), "JSON handle failed", e10, new Object[0]);
        }
    }
}
