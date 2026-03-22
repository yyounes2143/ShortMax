package com.inmobi.media;

import com.inmobi.commons.core.configs.Config;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.media.a3  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2864a3 {

    /* renamed from: e  reason: collision with root package name */
    public static final /* synthetic */ int f24473e = 0;

    /* renamed from: a  reason: collision with root package name */
    public final P9 f24474a;

    /* renamed from: b  reason: collision with root package name */
    public final TreeMap f24475b;

    /* renamed from: c  reason: collision with root package name */
    public final LinkedHashMap f24476c;

    /* renamed from: d  reason: collision with root package name */
    public final R2 f24477d;

    public C2864a3(U2 networkRequest, P9 mNetworkResponse) {
        Intrinsics.checkNotNullParameter(networkRequest, "networkRequest");
        Intrinsics.checkNotNullParameter(mNetworkResponse, "mNetworkResponse");
        this.f24474a = mNetworkResponse;
        TreeMap treeMap = new TreeMap(networkRequest.f24242y);
        this.f24475b = treeMap;
        this.f24476c = new LinkedHashMap();
        I9 i92 = mNetworkResponse.f23982d;
        Unit unit = null;
        if (i92 != null) {
            for (Map.Entry entry : treeMap.entrySet()) {
                Object value = entry.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "<get-value>(...)");
                W2 w22 = new W2(null, (Config) value);
                w22.f24328c = new R2((byte) 0, "Network error in fetching config.");
                LinkedHashMap linkedHashMap = this.f24476c;
                Object key = entry.getKey();
                Intrinsics.checkNotNullExpressionValue(key, "<get-key>(...)");
                linkedHashMap.put(key, w22);
            }
            this.f24477d = new R2((byte) 0, i92.f23738b);
            Intrinsics.checkNotNullExpressionValue("a3", "TAG");
            Pair a10 = V2.a(this.f24475b);
            Map o10 = kotlin.collections.p0.o(ms.k.a("errorCode", Integer.valueOf(i92.f23737a.f25113a)), ms.k.a("name", (List) a10.b()), ms.k.a("lts", (List) a10.d()), ms.k.a("networkType", L3.q()));
            Pd pd2 = Pd.f23988a;
            Pd.b("InvalidConfig", o10, Td.f24224a);
            unit = Unit.f60915a;
        }
        if (unit == null) {
            try {
                JSONObject jSONObject = new JSONObject(this.f24474a.a());
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                    Config config = (Config) this.f24475b.get(next);
                    if (config != null) {
                        Intrinsics.checkNotNull(config);
                        W2 w23 = new W2(jSONObject2, config);
                        LinkedHashMap linkedHashMap2 = this.f24476c;
                        Intrinsics.checkNotNull(next);
                        linkedHashMap2.put(next, w23);
                    }
                }
                Pair a11 = V2.a(this.f24475b);
                Map o11 = kotlin.collections.p0.o(ms.k.a("name", (List) a11.b()), ms.k.a("lts", (List) a11.d()));
                Pd pd3 = Pd.f23988a;
                Pd.b("ConfigFetched", o11, Td.f24224a);
            } catch (JSONException e10) {
                String localizedMessage = e10.getLocalizedMessage();
                if (localizedMessage == null) {
                    localizedMessage = "Exception while parsing config";
                } else {
                    Intrinsics.checkNotNull(localizedMessage);
                }
                this.f24477d = new R2((byte) 2, localizedMessage);
                Pair a12 = V2.a(this.f24475b);
                Map o12 = kotlin.collections.p0.o(ms.k.a("errorCode", (short) 1), ms.k.a("name", (List) a12.b()), ms.k.a("lts", (List) a12.d()), ms.k.a("networkType", L3.q()));
                Pd pd4 = Pd.f23988a;
                Pd.b("InvalidConfig", o12, Td.f24224a);
            }
        }
    }

    public final boolean a() {
        EnumC3093o4 enumC3093o4;
        EnumC3093o4 enumC3093o42;
        I9 i92 = this.f24474a.f23982d;
        if (i92 != null) {
            enumC3093o4 = i92.f23737a;
        } else {
            enumC3093o4 = null;
        }
        if (enumC3093o4 != EnumC3093o4.f25095i) {
            if (i92 == null || (enumC3093o42 = i92.f23737a) == null) {
                enumC3093o42 = EnumC3093o4.f25091e;
            }
            int i10 = enumC3093o42.f25113a;
            if (500 > i10 || i10 >= 600) {
                return false;
            }
        }
        return true;
    }
}
