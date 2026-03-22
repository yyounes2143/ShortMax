package z1;

import com.facebook.appevents.ml.ModelManager;
import com.facebook.internal.o;
import com.facebook.v;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
/* compiled from: IntegrityManager.kt */
@Metadata
/* loaded from: classes3.dex */
public final class c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final c f71223a = new c();

    /* renamed from: b  reason: collision with root package name */
    private static boolean f71224b;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f71225c;

    private c() {
    }

    public static final void a() {
        if (o4.a.d(c.class)) {
            return;
        }
        try {
            f71224b = true;
            f71225c = o.d("FBSDKFeatureIntegritySample", v.m(), false);
        } catch (Throwable th2) {
            o4.a.b(th2, c.class);
        }
    }

    private final String b(String str) {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            float[] fArr = new float[30];
            for (int i10 = 0; i10 < 30; i10++) {
                fArr[i10] = 0.0f;
            }
            String[] q10 = ModelManager.q(ModelManager.Task.MTML_INTEGRITY_DETECT, new float[][]{fArr}, new String[]{str});
            if (q10 != null) {
                String str2 = q10[0];
                if (str2 != null) {
                    return str2;
                }
            }
            return DevicePublicKeyStringDef.NONE;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    public static final void c(@NotNull Map<String, String> parameters) {
        if (o4.a.d(c.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(parameters, "parameters");
            if (f71224b && !parameters.isEmpty()) {
                try {
                    List<String> d12 = CollectionsKt.d1(parameters.keySet());
                    JSONObject jSONObject = new JSONObject();
                    for (String str : d12) {
                        String str2 = parameters.get(str);
                        if (str2 != null) {
                            String str3 = str2;
                            c cVar = f71223a;
                            if (!cVar.d(str) && !cVar.d(str3)) {
                            }
                            parameters.remove(str);
                            if (!f71225c) {
                                str3 = "";
                            }
                            jSONObject.put(str, str3);
                        } else {
                            throw new IllegalStateException("Required value was null.");
                        }
                    }
                    if (jSONObject.length() != 0) {
                        String jSONObject2 = jSONObject.toString();
                        Intrinsics.checkNotNullExpressionValue(jSONObject2, "restrictiveParamJson.toString()");
                        parameters.put("_onDeviceParams", jSONObject2);
                    }
                } catch (Exception unused) {
                }
            }
        } catch (Throwable th2) {
            o4.a.b(th2, c.class);
        }
    }

    private final boolean d(String str) {
        if (o4.a.d(this)) {
            return false;
        }
        try {
            return !Intrinsics.areEqual(DevicePublicKeyStringDef.NONE, b(str));
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return false;
        }
    }
}
