package io.bidmachine;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.protobuf.AdNetwork;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NetworkConfigFactory.java */
/* loaded from: classes7.dex */
public class r4 {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f58045a = {"network", "format", "ad_units"};

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static NetworkConfig f(Context context, @NonNull AdNetwork adNetwork) {
        NetworkConfig g10;
        if (context == null) {
            return null;
        }
        final String name = adNetwork.getName();
        if (TextUtils.isEmpty(name) || (g10 = g(context, name, adNetwork.getCustomParamsMap())) == null) {
            return null;
        }
        for (AdNetwork.AdUnit adUnit : adNetwork.getAdUnitsList()) {
            AdsFormat byRemoteName = AdsFormat.byRemoteName(adUnit.getAdFormat());
            if (byRemoteName != null) {
                g10.withMediationConfig(byRemoteName, adUnit.getCustomParamsMap());
            } else {
                io.bidmachine.core.a.a(new hr.b() { // from class: io.bidmachine.m4
                    @Override // hr.b
                    public final Object get() {
                        String j10;
                        j10 = r4.j(name);
                        return j10;
                    }
                });
            }
        }
        return g10;
    }

    @Nullable
    private static NetworkConfig g(@NonNull Context context, @NonNull final String str, @Nullable Map<String, String> map) {
        l4 d10 = k4.d(context, str);
        if (d10 == null) {
            return null;
        }
        try {
            return (NetworkConfig) Class.forName(d10.b()).getConstructor(Map.class).newInstance(i(map));
        } catch (Throwable th2) {
            io.bidmachine.core.a.a(new hr.b() { // from class: io.bidmachine.q4
                @Override // hr.b
                public final Object get() {
                    String n10;
                    n10 = r4.n(str);
                    return n10;
                }
            });
            io.bidmachine.core.a.m(th2);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static NetworkConfig h(Context context, @NonNull JSONObject jSONObject) {
        final String str;
        if (context == null) {
            return null;
        }
        try {
            str = jSONObject.getString("network");
        } catch (Throwable th2) {
            th = th2;
            str = null;
        }
        try {
            final NetworkConfig g10 = g(context, str, io.bidmachine.core.g.q0(jSONObject));
            if (g10 == null) {
                return null;
            }
            JSONArray jSONArray = jSONObject.getJSONArray("ad_units");
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i10);
                AdsFormat byRemoteName = AdsFormat.byRemoteName(jSONObject2.getString("format"));
                if (byRemoteName != null) {
                    g10.withMediationConfig(byRemoteName, i(io.bidmachine.core.g.q0(jSONObject2)));
                } else {
                    io.bidmachine.core.a.a(new hr.b() { // from class: io.bidmachine.n4
                        @Override // hr.b
                        public final Object get() {
                            String k10;
                            k10 = r4.k(str);
                            return k10;
                        }
                    });
                }
            }
            io.bidmachine.core.a.a(new hr.b() { // from class: io.bidmachine.o4
                @Override // hr.b
                public final Object get() {
                    String l10;
                    l10 = r4.l(NetworkConfig.this);
                    return l10;
                }
            });
            return g10;
        } catch (Throwable th3) {
            th = th3;
            io.bidmachine.core.a.a(new hr.b() { // from class: io.bidmachine.p4
                @Override // hr.b
                public final Object get() {
                    String m10;
                    m10 = r4.m(str);
                    return m10;
                }
            });
            io.bidmachine.core.a.m(th);
            return null;
        }
    }

    @Nullable
    private static Map<String, String> i(@Nullable Map<String, String> map) {
        if (map != null) {
            try {
                for (String str : f58045a) {
                    map.remove(str);
                }
            } catch (Exception unused) {
            }
        }
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String j(String str) {
        return String.format("Network (%s) adUnit register fail: %s not provided", str, "format");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String k(String str) {
        return String.format("Network (%s) adUnit register fail: %s not provided", str, "format");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String l(NetworkConfig networkConfig) {
        return String.format("Load network from json config completed successfully: %s", networkConfig.getNetworkKey());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String m(String str) {
        return String.format("Network (%s) load fail!", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String n(String str) {
        return String.format("Network (%s) load fail!", str);
    }
}
