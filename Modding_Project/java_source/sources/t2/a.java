package t2;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.net.nsd.NsdManager;
import android.net.nsd.NsdServiceInfo;
import android.os.Build;
import androidx.core.view.ViewCompat;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.SmartLoginOption;
import com.facebook.internal.p;
import com.facebook.internal.u0;
import com.facebook.v;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
import q9.b;
/* compiled from: DeviceRequestsHelper.kt */
@Metadata
/* loaded from: classes3.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f66816a = new a();

    /* renamed from: b  reason: collision with root package name */
    private static final String f66817b = a.class.getCanonicalName();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final HashMap<String, NsdManager.RegistrationListener> f66818c = new HashMap<>();

    /* compiled from: DeviceRequestsHelper.kt */
    @Metadata
    /* renamed from: t2.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0926a implements NsdManager.RegistrationListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f66819a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f66820b;

        C0926a(String str, String str2) {
            this.f66819a = str;
            this.f66820b = str2;
        }

        @Override // android.net.nsd.NsdManager.RegistrationListener
        public void onRegistrationFailed(@NotNull NsdServiceInfo serviceInfo, int i10) {
            Intrinsics.checkNotNullParameter(serviceInfo, "serviceInfo");
            a.a(this.f66820b);
        }

        @Override // android.net.nsd.NsdManager.RegistrationListener
        public void onServiceRegistered(@NotNull NsdServiceInfo NsdServiceInfo) {
            Intrinsics.checkNotNullParameter(NsdServiceInfo, "NsdServiceInfo");
            if (!Intrinsics.areEqual(this.f66819a, NsdServiceInfo.getServiceName())) {
                a.a(this.f66820b);
            }
        }

        @Override // android.net.nsd.NsdManager.RegistrationListener
        public void onServiceUnregistered(@NotNull NsdServiceInfo serviceInfo) {
            Intrinsics.checkNotNullParameter(serviceInfo, "serviceInfo");
        }

        @Override // android.net.nsd.NsdManager.RegistrationListener
        public void onUnregistrationFailed(@NotNull NsdServiceInfo serviceInfo, int i10) {
            Intrinsics.checkNotNullParameter(serviceInfo, "serviceInfo");
        }
    }

    private a() {
    }

    public static final void a(@Nullable String str) {
        if (o4.a.d(a.class)) {
            return;
        }
        try {
            f66816a.b(str);
        } catch (Throwable th2) {
            o4.a.b(th2, a.class);
        }
    }

    @TargetApi(16)
    private final void b(String str) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            NsdManager.RegistrationListener registrationListener = f66818c.get(str);
            if (registrationListener != null) {
                Object systemService = v.l().getSystemService("servicediscovery");
                Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.nsd.NsdManager");
                try {
                    ((NsdManager) systemService).unregisterService(registrationListener);
                } catch (IllegalArgumentException e10) {
                    u0.j0(f66817b, e10);
                }
                f66818c.remove(str);
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    @Nullable
    public static final Bitmap c(@Nullable String str) {
        int f10;
        int g10;
        int[] iArr;
        Bitmap createBitmap;
        int i10;
        Bitmap bitmap = null;
        if (o4.a.d(a.class)) {
            return null;
        }
        try {
            EnumMap enumMap = new EnumMap(EncodeHintType.class);
            enumMap.put((EnumMap) EncodeHintType.MARGIN, (EncodeHintType) 2);
            try {
                b a10 = new com.google.zxing.b().a(str, BarcodeFormat.QR_CODE, 200, 200, enumMap);
                f10 = a10.f();
                g10 = a10.g();
                iArr = new int[f10 * g10];
                for (int i11 = 0; i11 < f10; i11++) {
                    int i12 = i11 * g10;
                    for (int i13 = 0; i13 < g10; i13++) {
                        int i14 = i12 + i13;
                        if (a10.e(i13, i11)) {
                            i10 = ViewCompat.MEASURED_STATE_MASK;
                        } else {
                            i10 = -1;
                        }
                        iArr[i14] = i10;
                    }
                }
                createBitmap = Bitmap.createBitmap(g10, f10, Bitmap.Config.ARGB_8888);
            } catch (WriterException unused) {
            }
            try {
                createBitmap.setPixels(iArr, 0, g10, 0, 0, g10, f10);
                return createBitmap;
            } catch (WriterException unused2) {
                bitmap = createBitmap;
                return bitmap;
            }
        } catch (Throwable th2) {
            o4.a.b(th2, a.class);
            return null;
        }
    }

    @NotNull
    public static final String d(@Nullable Map<String, String> map) {
        if (o4.a.d(a.class)) {
            return null;
        }
        if (map == null) {
            try {
                map = new HashMap<>();
            } catch (Throwable th2) {
                o4.a.b(th2, a.class);
                return null;
            }
        }
        String DEVICE = Build.DEVICE;
        Intrinsics.checkNotNullExpressionValue(DEVICE, "DEVICE");
        map.put("device", DEVICE);
        String MODEL = Build.MODEL;
        Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
        map.put("model", MODEL);
        String jSONObject = new JSONObject(map).toString();
        Intrinsics.checkNotNullExpressionValue(jSONObject, "JSONObject(deviceInfo as Map<*, *>).toString()");
        return jSONObject;
    }

    public static final boolean e() {
        if (o4.a.d(a.class)) {
            return false;
        }
        try {
            p f10 = FetchedAppSettingsManager.f(v.m());
            if (f10 == null) {
                return false;
            }
            if (!f10.w().contains(SmartLoginOption.Enabled)) {
                return false;
            }
            return true;
        } catch (Throwable th2) {
            o4.a.b(th2, a.class);
            return false;
        }
    }

    public static final boolean f(@Nullable String str) {
        if (o4.a.d(a.class)) {
            return false;
        }
        try {
            if (!e()) {
                return false;
            }
            return f66816a.g(str);
        } catch (Throwable th2) {
            o4.a.b(th2, a.class);
            return false;
        }
    }

    @TargetApi(16)
    private final boolean g(String str) {
        if (o4.a.d(this)) {
            return false;
        }
        try {
            HashMap<String, NsdManager.RegistrationListener> hashMap = f66818c;
            if (hashMap.containsKey(str)) {
                return true;
            }
            String str2 = "fbsdk_" + ("android-" + StringsKt.O(v.C(), '.', '|', false, 4, null)) + '_' + str;
            NsdServiceInfo nsdServiceInfo = new NsdServiceInfo();
            nsdServiceInfo.setServiceType("_fb._tcp.");
            nsdServiceInfo.setServiceName(str2);
            nsdServiceInfo.setPort(80);
            Object systemService = v.l().getSystemService("servicediscovery");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.nsd.NsdManager");
            C0926a c0926a = new C0926a(str2, str);
            hashMap.put(str, c0926a);
            ((NsdManager) systemService).registerService(nsdServiceInfo, 1, c0926a);
            return true;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return false;
        }
    }
}
