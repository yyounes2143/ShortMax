package com.applovin.impl;

import android.net.Uri;
import androidx.browser.trusted.sharing.ShareTarget;
import com.applovin.impl.mediation.MaxErrorImpl;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.adapter.MaxAdapterError;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class z5 extends g5 {

    /* renamed from: g  reason: collision with root package name */
    private final String f10717g;

    /* renamed from: h  reason: collision with root package name */
    private final List f10718h;

    /* renamed from: i  reason: collision with root package name */
    private final h3 f10719i;

    /* renamed from: j  reason: collision with root package name */
    private final Map f10720j;

    /* renamed from: k  reason: collision with root package name */
    private final Map f10721k;

    /* renamed from: l  reason: collision with root package name */
    private final Map f10722l;

    /* renamed from: m  reason: collision with root package name */
    private final MaxError f10723m;

    public z5(String str, List list, Map map, Map map2, MaxError maxError, h3 h3Var, com.applovin.impl.sdk.k kVar, boolean z10) {
        super("TaskFireMediationPostbacks", kVar);
        MaxError maxErrorImpl;
        this.f10717g = str + "_urls";
        this.f10718h = list;
        this.f10720j = k7.a(map, kVar);
        this.f10721k = map2 == null ? new HashMap() : map2;
        if (maxError != null) {
            maxErrorImpl = maxError;
        } else {
            maxErrorImpl = new MaxErrorImpl(-1);
        }
        this.f10723m = maxErrorImpl;
        this.f10719i = h3Var;
        HashMap hashMap = new HashMap(7);
        hashMap.put("AppLovin-Event-Type", str);
        if (z10 && h3Var != null) {
            hashMap.put("AppLovin-Ad-Network-Name", h3Var.c());
        }
        if (h3Var instanceof v2) {
            v2 v2Var = (v2) h3Var;
            hashMap.put("AppLovin-Ad-Unit-Id", v2Var.getAdUnitId());
            hashMap.put("AppLovin-Ad-Format", v2Var.getFormat().getLabel());
            if (z10) {
                hashMap.put("AppLovin-Third-Party-Ad-Placement-Id", v2Var.Q());
            }
        }
        if (maxError != null) {
            hashMap.put("AppLovin-Error-Code", String.valueOf(maxError.getCode()));
            hashMap.put("AppLovin-Error-Message", maxError.getMessage());
        }
        this.f10722l = hashMap;
    }

    private void a(String str, Map map) {
        b().f0().e(com.applovin.impl.sdk.network.d.b().d(str).c(ShareTarget.METHOD_POST).a(this.f10722l).a(false).c(map).c(((Boolean) this.f7960a.a(o3.f9136p8)).booleanValue()).a());
    }

    private String b(String str, Map map) {
        for (String str2 : map.keySet()) {
            str = str.replace(str2, StringUtils.emptyIfNull((String) map.get(str2)));
        }
        return str;
    }

    private Map e() {
        try {
            return JsonUtils.toStringMap(new JSONObject((String) this.f7960a.a(o3.f9129m7)));
        } catch (JSONException unused) {
            return Collections.EMPTY_MAP;
        }
    }

    private List f() {
        List list = this.f10718h;
        if (list != null) {
            return list;
        }
        h3 h3Var = this.f10719i;
        if (h3Var != null) {
            return h3Var.b(this.f10717g);
        }
        return null;
    }

    private h g() {
        h3 h3Var = this.f10719i;
        if (h3Var instanceof v2) {
            return ((v2) h3Var).M().f();
        }
        if (h3Var instanceof b5) {
            return ((b5) h3Var).u().f();
        }
        return null;
    }

    @Override // java.lang.Runnable
    public void run() {
        h g10;
        List<String> f10 = f();
        if (CollectionUtils.isEmpty(f10)) {
            return;
        }
        Map e10 = e();
        for (String str : f10) {
            Uri parse = Uri.parse(a(b(str, this.f10720j), this.f10723m));
            Uri.Builder clearQuery = parse.buildUpon().clearQuery();
            HashMap hashMap = new HashMap(this.f10721k);
            for (String str2 : parse.getQueryParameterNames()) {
                String queryParameter = parse.getQueryParameter(str2);
                if (e10.containsKey(queryParameter)) {
                    h3 h3Var = this.f10719i;
                    if (h3Var != null) {
                        hashMap.put(str2, h3Var.a((String) e10.get(queryParameter)));
                    }
                } else {
                    clearQuery.appendQueryParameter(str2, queryParameter);
                }
            }
            hashMap.putAll(this.f7960a.B().e());
            if (((Boolean) this.f7960a.a(o3.f9122i8)).booleanValue() && (g10 = g()) != null) {
                hashMap.put("arn_info", g10.e());
            }
            a(clearQuery.build().toString(), hashMap);
        }
    }

    private String a(String str, MaxError maxError) {
        int i10;
        String str2;
        if (maxError instanceof MaxAdapterError) {
            MaxAdapterError maxAdapterError = (MaxAdapterError) maxError;
            i10 = maxAdapterError.getMediatedNetworkErrorCode();
            str2 = maxAdapterError.getMediatedNetworkErrorMessage();
        } else {
            i10 = 0;
            str2 = "";
        }
        return str.replace("{ERROR_CODE}", String.valueOf(maxError.getCode())).replace("{ERROR_MESSAGE}", StringUtils.encodeUriString(maxError.getMessage())).replace("{THIRD_PARTY_SDK_ERROR_CODE}", String.valueOf(i10)).replace("{THIRD_PARTY_SDK_ERROR_MESSAGE}", StringUtils.encodeUriString(str2));
    }
}
