package com.bytedance.bdtracker;

import android.net.Uri;
import com.bytedance.applog.InitConfig;
import com.bytedance.applog.network.INetworkClient;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    public d f12339a;

    public q(@NotNull d appLogInstance) {
        Intrinsics.checkParameterIsNotNull(appLogInstance, "appLogInstance");
        this.f12339a = appLogInstance;
    }

    public final String a(String str, JSONObject jSONObject) {
        Uri.Builder buildUpon = Uri.parse(str).buildUpon();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            String optString = jSONObject.optString(next);
            if (optString != null && optString.length() != 0) {
                buildUpon.appendQueryParameter(next, jSONObject.optString(next));
            }
        }
        return buildUpon.build().toString();
    }

    public final HashMap<String, String> a() {
        Map<String, String> httpHeaders;
        HashMap hashMap = new HashMap(2);
        InitConfig initConfig = this.f12339a.getInitConfig();
        if (initConfig != null && (httpHeaders = initConfig.getHttpHeaders()) != null && !httpHeaders.isEmpty()) {
            hashMap.putAll(httpHeaders);
        }
        return p4.a(hashMap, this.f12339a);
    }

    @Nullable
    public final m<k> a(@NotNull String uri, @NotNull l queryParam) {
        Intrinsics.checkParameterIsNotNull(uri, "uri");
        Intrinsics.checkParameterIsNotNull(queryParam, "queryParam");
        try {
            INetworkClient netClient = this.f12339a.getNetClient();
            p3 p3Var = this.f12339a.f11911k;
            Intrinsics.checkExpressionValueIsNotNull(p3Var, "appLogInstance.api");
            byte[] execute = netClient.execute((byte) 0, p3Var.f12325c.a(a(uri, queryParam.a())), null, a(), (byte) 0, true, 60000);
            Intrinsics.checkExpressionValueIsNotNull(execute, "appLogInstance.netClient…TIMEOUT\n                )");
            return m.f12207c.a(new String(execute, Charsets.UTF_8), k.class);
        } catch (Throwable unused) {
            return null;
        }
    }

    @NotNull
    public final m<n> a(@NotNull String uri, @NotNull o request, @NotNull l queryParam) {
        Intrinsics.checkParameterIsNotNull(uri, "uri");
        Intrinsics.checkParameterIsNotNull(request, "request");
        Intrinsics.checkParameterIsNotNull(queryParam, "queryParam");
        try {
            INetworkClient netClient = this.f12339a.getNetClient();
            p3 p3Var = this.f12339a.f11911k;
            Intrinsics.checkExpressionValueIsNotNull(p3Var, "appLogInstance.api");
            byte[] execute = netClient.execute((byte) 1, p3Var.f12325c.a(a(uri, queryParam.a())), request.a(), a(), (byte) 0, true, 60000);
            Intrinsics.checkExpressionValueIsNotNull(execute, "appLogInstance.netClient…OUT\n                    )");
            return m.f12207c.a(new String(execute, Charsets.UTF_8), n.class);
        } catch (Throwable th2) {
            return m.f12207c.a(th2);
        }
    }
}
