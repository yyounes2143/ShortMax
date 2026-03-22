package com.apm.insight.runtime;

import android.content.Context;
import android.text.TextUtils;
import com.apm.insight.ICommonParams;
import com.mbridge.msdk.MBridgeConstans;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: DefaultCommonParams.java */
/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private String f7196a = null;

    /* renamed from: b  reason: collision with root package name */
    private int f7197b = -1;

    public static com.apm.insight.nativecrash.b a(Context context) {
        return new com.apm.insight.nativecrash.b(context, new ICommonParams() { // from class: com.apm.insight.runtime.g.1
            @Override // com.apm.insight.ICommonParams
            public final Map<String, Object> getCommonParams() {
                return new HashMap();
            }

            @Override // com.apm.insight.ICommonParams
            public final String getDeviceId() {
                return null;
            }

            @Override // com.apm.insight.ICommonParams
            public final List<String> getPatchInfo() {
                return null;
            }

            @Override // com.apm.insight.ICommonParams
            public final Map<String, Integer> getPluginInfo() {
                return null;
            }

            @Override // com.apm.insight.ICommonParams
            public final String getSessionId() {
                return null;
            }

            @Override // com.apm.insight.ICommonParams
            public final long getUserId() {
                return 0L;
            }
        });
    }

    public final boolean b() {
        if (this.f7196a != null) {
            return true;
        }
        return false;
    }

    public final void a(String str) {
        this.f7196a = str;
        o.a().a(str);
    }

    public final String a() {
        if (!TextUtils.isEmpty(this.f7196a) && !MBridgeConstans.ENDCARD_URL_TYPE_PL.equals(this.f7196a)) {
            return this.f7196a;
        }
        String d10 = com.apm.insight.e.a().d();
        this.f7196a = d10;
        if (!TextUtils.isEmpty(d10) && !MBridgeConstans.ENDCARD_URL_TYPE_PL.equals(this.f7196a)) {
            return this.f7196a;
        }
        String b10 = o.a().b();
        this.f7196a = b10;
        return b10;
    }
}
