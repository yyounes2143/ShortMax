package t1;

import android.util.Log;
import com.unity3d.services.core.properties.MadeWithUnityDetector;
import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UnityReflection.kt */
@Metadata
/* loaded from: classes3.dex */
public final class c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final c f66809a = new c();

    /* renamed from: b  reason: collision with root package name */
    private static final String f66810b = c.class.getCanonicalName();

    /* renamed from: c  reason: collision with root package name */
    private static Class<?> f66811c;

    private c() {
    }

    public static final void a() {
        d("UnityFacebookSDKPlugin", "CaptureViewHierarchy", "");
    }

    private final Class<?> b() {
        Class<?> cls = Class.forName(MadeWithUnityDetector.UNITY_PLAYER_CLASS_NAME);
        Intrinsics.checkNotNullExpressionValue(cls, "forName(UNITY_PLAYER_CLASS)");
        return cls;
    }

    public static final void c(@Nullable String str) {
        d("UnityFacebookSDKPlugin", "OnReceiveMapping", str);
    }

    public static final void d(@Nullable String str, @Nullable String str2, @Nullable String str3) {
        try {
            if (f66811c == null) {
                f66811c = f66809a.b();
            }
            Class<?> cls = f66811c;
            Class<?> cls2 = null;
            if (cls == null) {
                Intrinsics.throwUninitializedPropertyAccessException("unityPlayer");
                cls = null;
            }
            Method method = cls.getMethod("UnitySendMessage", String.class, String.class, String.class);
            Class<?> cls3 = f66811c;
            if (cls3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("unityPlayer");
            } else {
                cls2 = cls3;
            }
            method.invoke(cls2, str, str2, str3);
        } catch (Exception e10) {
            Log.e(f66810b, "Failed to send message to Unity", e10);
        }
    }
}
