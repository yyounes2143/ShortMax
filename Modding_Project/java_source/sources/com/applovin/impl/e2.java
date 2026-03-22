package com.applovin.impl;

import android.net.Uri;
import android.text.format.Formatter;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.nativeAd.AppLovinNativeAdImpl;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxError;
import com.applovin.sdk.AppLovinAdSize;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.ss.ttvideoengine.selector.strategy.GearStrategy;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public abstract class e2 {
    public static Map a(AppLovinAdImpl appLovinAdImpl) {
        HashMap hashMap = new HashMap(10);
        if (appLovinAdImpl == null) {
            return hashMap;
        }
        CollectionUtils.putStringIfValid("ad_domain", appLovinAdImpl.getAdDomain(), hashMap);
        CollectionUtils.putStringIfValid("ad_id", String.valueOf(appLovinAdImpl.getAdIdNumber()), hashMap);
        MaxAdFormat d10 = appLovinAdImpl.getAdZone().d();
        CollectionUtils.putStringIfValid("ad_format", d10 != null ? d10.getLabel() : null, hashMap);
        CollectionUtils.putStringIfValid("ad_zone_id", appLovinAdImpl.getAdZone().e(), hashMap);
        CollectionUtils.putStringIfValid("clcode", appLovinAdImpl.getClCode(), hashMap);
        CollectionUtils.putStringIfValid("dsp_id", appLovinAdImpl.getDspId(), hashMap);
        CollectionUtils.putStringIfValid("dsp_name", appLovinAdImpl.getDspName(), hashMap);
        CollectionUtils.putStringIfValid("ad_size", appLovinAdImpl.getSize().getLabel(), hashMap);
        CollectionUtils.putStringIfValid("ad_event_id", appLovinAdImpl.getMediationServeId(), hashMap);
        CollectionUtils.putStringIfValid("is_omsdk_enabled", String.valueOf(appLovinAdImpl.isOpenMeasurementEnabled()), hashMap);
        if (appLovinAdImpl instanceof com.applovin.impl.sdk.ad.b) {
            CollectionUtils.putStringIfValid("is_persisted_ad", String.valueOf(((com.applovin.impl.sdk.ad.b) appLovinAdImpl).K0()), hashMap);
        }
        return hashMap;
    }

    public static String b(com.applovin.impl.sdk.ad.b bVar) {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putInt(jSONObject, "reshow_count", bVar.b0());
        return jSONObject.toString();
    }

    public static Map a(com.applovin.impl.sdk.ad.b bVar) {
        HashMap hashMap = new HashMap();
        if (bVar == null) {
            return hashMap;
        }
        com.applovin.impl.sdk.k sdk = bVar.getSdk();
        if (((Boolean) sdk.a(v4.J)).booleanValue()) {
            HashMap hashMap2 = new HashMap();
            for (Uri uri : bVar.l()) {
                String path = uri.getPath();
                hashMap2.put(path, Formatter.formatFileSize(com.applovin.impl.sdk.k.o(), new File(path).length()));
            }
            hashMap.put(MBridgeConstans.DYNAMIC_VIEW_WX_PATH, hashMap2.toString());
        }
        if ((bVar instanceof com.applovin.impl.sdk.ad.a) && ((Boolean) sdk.a(v4.K)).booleanValue()) {
            hashMap.put("details", ((com.applovin.impl.sdk.ad.a) bVar).s1());
        }
        return hashMap;
    }

    public static Map a(AppLovinNativeAdImpl appLovinNativeAdImpl) {
        HashMap hashMap = new HashMap(7);
        if (appLovinNativeAdImpl == null) {
            return hashMap;
        }
        CollectionUtils.putStringIfValid("ad_domain", appLovinNativeAdImpl.getAdDomain(), hashMap);
        CollectionUtils.putStringIfValid("ad_id", String.valueOf(appLovinNativeAdImpl.getAdIdNumber()), hashMap);
        CollectionUtils.putStringIfValid("clcode", appLovinNativeAdImpl.getClCode(), hashMap);
        CollectionUtils.putStringIfValid("dsp_id", appLovinNativeAdImpl.getDspId(), hashMap);
        CollectionUtils.putStringIfValid("dsp_name", appLovinNativeAdImpl.getDspName(), hashMap);
        CollectionUtils.putStringIfValid("ad_size", AppLovinAdSize.NATIVE.toString(), hashMap);
        CollectionUtils.putStringIfValid("ad_event_id", appLovinNativeAdImpl.getMediationServeId(), hashMap);
        CollectionUtils.putStringIfValid("is_omsdk_enabled", String.valueOf(appLovinNativeAdImpl.isOpenMeasurementEnabled()), hashMap);
        return hashMap;
    }

    public static Map a(v2 v2Var) {
        Map a10 = a((h3) v2Var);
        CollectionUtils.putStringIfValid("bcode", v2Var.C(), a10);
        CollectionUtils.putStringIfValid(CampaignEx.JSON_KEY_CREATIVE_ID, v2Var.getCreativeId(), a10);
        CollectionUtils.putStringIfValid("ad_unit_id", v2Var.getAdUnitId(), a10);
        CollectionUtils.putStringIfValid("ad_event_id", v2Var.P(), a10);
        CollectionUtils.putStringIfValid("ad_format", v2Var.getFormat().getLabel(), a10);
        CollectionUtils.putStringIfValid("dsp_id", v2Var.getDspId(), a10);
        CollectionUtils.putStringIfValid("dsp_name", v2Var.getDspName(), a10);
        return a10;
    }

    public static Map a(h3 h3Var) {
        HashMap hashMap = new HashMap(3);
        CollectionUtils.putStringIfValid("network_name", h3Var.c(), hashMap);
        String b10 = h3Var.b();
        CollectionUtils.putStringIfValid("adapter_class", b10, hashMap);
        CollectionUtils.putStringIfValid("adapter_version", t3.a(b10).getAdapterVersion(), hashMap);
        return hashMap;
    }

    public static Map a(MaxError maxError) {
        HashMap hashMap = new HashMap(4);
        CollectionUtils.putStringIfValid("error_message", maxError.getMessage(), hashMap);
        CollectionUtils.putStringIfValid(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE, String.valueOf(maxError.getCode()), hashMap);
        CollectionUtils.putStringIfValid("mediated_network_error_message", maxError.getMediatedNetworkErrorMessage(), hashMap);
        CollectionUtils.putStringIfValid("mediated_network_error_code", String.valueOf(maxError.getMediatedNetworkErrorCode()), hashMap);
        return hashMap;
    }

    public static String a(String str) {
        return StringUtils.prefixToIndex(1000, str);
    }
}
