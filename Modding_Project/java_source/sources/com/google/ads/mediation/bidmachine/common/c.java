package com.google.ads.mediation.bidmachine.common;

import android.os.Bundle;
import com.google.ads.mediation.bidmachine.BidMachineUtils;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final c f16937a = new c();

    private c() {
    }

    public static final Bundle a(Bundle bundle, Bundle bundle2) {
        Bundle bundle3 = new Bundle();
        if (bundle2 != null) {
            bundle3.putAll(bundle2);
        }
        if (bundle != null) {
            bundle3.putAll(bundle);
        }
        return bundle3;
    }

    public static final Bundle a(Bundle bundle) {
        Intrinsics.checkNotNullParameter(bundle, "<this>");
        return f16937a.a(BidMachineUtils.getString(bundle, MediationConfiguration.CUSTOM_EVENT_SERVER_PARAMETER_FIELD));
    }

    private final Bundle a(String str) {
        if (str != null && !StringsKt.t0(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                Bundle bundle = new Bundle();
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    if (!jSONObject.isNull(next)) {
                        Object obj = jSONObject.get(next);
                        String obj2 = obj.toString();
                        if (!StringsKt.t0(obj2) && !Intrinsics.areEqual(obj2, "null")) {
                            bundle.putString(next, obj.toString());
                        }
                    }
                }
                return bundle;
            } catch (Exception unused) {
            }
        }
        return null;
    }
}
