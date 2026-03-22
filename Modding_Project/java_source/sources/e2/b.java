package e2;

import android.content.SharedPreferences;
import android.view.View;
import com.facebook.internal.u0;
import com.facebook.v;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: PredictionHistoryManager.kt */
@Metadata
/* loaded from: classes3.dex */
public final class b {

    /* renamed from: c  reason: collision with root package name */
    private static SharedPreferences f50759c;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final b f50757a = new b();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final Map<String, String> f50758b = new LinkedHashMap();
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final AtomicBoolean f50760d = new AtomicBoolean(false);

    private b() {
    }

    public static final void a(@NotNull String pathID, @NotNull String predictedEvent) {
        if (o4.a.d(b.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(pathID, "pathID");
            Intrinsics.checkNotNullParameter(predictedEvent, "predictedEvent");
            if (!f50760d.get()) {
                f50757a.c();
            }
            Map<String, String> map = f50758b;
            map.put(pathID, predictedEvent);
            SharedPreferences sharedPreferences = f50759c;
            if (sharedPreferences == null) {
                Intrinsics.throwUninitializedPropertyAccessException("shardPreferences");
                sharedPreferences = null;
            }
            sharedPreferences.edit().putString("SUGGESTED_EVENTS_HISTORY", u0.m0(p0.x(map))).apply();
        } catch (Throwable th2) {
            o4.a.b(th2, b.class);
        }
    }

    @Nullable
    public static final String b(@NotNull View view, @NotNull String text) {
        if (o4.a.d(b.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(text, "text");
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(MimeTypes.BASE_TYPE_TEXT, text);
                JSONArray jSONArray = new JSONArray();
                while (view != null) {
                    jSONArray.put(view.getClass().getSimpleName());
                    view = t1.d.j(view);
                }
                jSONObject.put("classname", jSONArray);
            } catch (JSONException unused) {
            }
            return u0.G0(jSONObject.toString());
        } catch (Throwable th2) {
            o4.a.b(th2, b.class);
            return null;
        }
    }

    private final void c() {
        String str = "";
        if (o4.a.d(this)) {
            return;
        }
        try {
            AtomicBoolean atomicBoolean = f50760d;
            if (atomicBoolean.get()) {
                return;
            }
            SharedPreferences sharedPreferences = v.l().getSharedPreferences("com.facebook.internal.SUGGESTED_EVENTS_HISTORY", 0);
            Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getApplicationContext()\n…RE, Context.MODE_PRIVATE)");
            f50759c = sharedPreferences;
            Map<String, String> map = f50758b;
            if (sharedPreferences == null) {
                Intrinsics.throwUninitializedPropertyAccessException("shardPreferences");
                sharedPreferences = null;
            }
            String string = sharedPreferences.getString("SUGGESTED_EVENTS_HISTORY", "");
            if (string != null) {
                str = string;
            }
            map.putAll(u0.i0(str));
            atomicBoolean.set(true);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    @Nullable
    public static final String d(@NotNull String pathID) {
        if (o4.a.d(b.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(pathID, "pathID");
            Map<String, String> map = f50758b;
            if (!map.containsKey(pathID)) {
                return null;
            }
            return map.get(pathID);
        } catch (Throwable th2) {
            o4.a.b(th2, b.class);
            return null;
        }
    }
}
