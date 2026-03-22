package u1;

import androidx.annotation.RestrictTo;
import com.facebook.appevents.AppEvent;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.p;
import com.facebook.internal.u0;
import com.facebook.v;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: EventDeactivationManager.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    private static boolean f67786b;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f67785a = new a();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final List<C0939a> f67787c = new ArrayList();
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final Set<String> f67788d = new HashSet();

    /* compiled from: EventDeactivationManager.kt */
    @Metadata
    /* renamed from: u1.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0939a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private String f67789a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private List<String> f67790b;

        public C0939a(@NotNull String eventName, @NotNull List<String> deprecateParams) {
            Intrinsics.checkNotNullParameter(eventName, "eventName");
            Intrinsics.checkNotNullParameter(deprecateParams, "deprecateParams");
            this.f67789a = eventName;
            this.f67790b = deprecateParams;
        }

        @NotNull
        public final List<String> a() {
            return this.f67790b;
        }

        @NotNull
        public final String b() {
            return this.f67789a;
        }

        public final void c(@NotNull List<String> list) {
            Intrinsics.checkNotNullParameter(list, "<set-?>");
            this.f67790b = list;
        }
    }

    private a() {
    }

    public static final void a() {
        if (o4.a.d(a.class)) {
            return;
        }
        try {
            f67786b = true;
            f67785a.b();
        } catch (Throwable th2) {
            o4.a.b(th2, a.class);
        }
    }

    private final synchronized void b() {
        p u10;
        if (o4.a.d(this)) {
            return;
        }
        try {
            u10 = FetchedAppSettingsManager.u(v.m(), false);
        } catch (Exception unused) {
        }
        if (u10 == null) {
            return;
        }
        String r10 = u10.r();
        if (r10 != null && r10.length() > 0) {
            JSONObject jSONObject = new JSONObject(r10);
            f67787c.clear();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String key = keys.next();
                JSONObject jSONObject2 = jSONObject.getJSONObject(key);
                if (jSONObject2 != null) {
                    if (jSONObject2.optBoolean("is_deprecated_event")) {
                        Set<String> set = f67788d;
                        Intrinsics.checkNotNullExpressionValue(key, "key");
                        set.add(key);
                    } else {
                        JSONArray optJSONArray = jSONObject2.optJSONArray("deprecated_param");
                        Intrinsics.checkNotNullExpressionValue(key, "key");
                        C0939a c0939a = new C0939a(key, new ArrayList());
                        if (optJSONArray != null) {
                            c0939a.c(u0.n(optJSONArray));
                        }
                        f67787c.add(c0939a);
                    }
                }
            }
        }
    }

    public static final void c(@NotNull Map<String, String> parameters, @NotNull String eventName) {
        if (o4.a.d(a.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(parameters, "parameters");
            Intrinsics.checkNotNullParameter(eventName, "eventName");
            if (!f67786b) {
                return;
            }
            ArrayList<String> arrayList = new ArrayList(parameters.keySet());
            for (C0939a c0939a : new ArrayList(f67787c)) {
                if (Intrinsics.areEqual(c0939a.b(), eventName)) {
                    for (String str : arrayList) {
                        if (c0939a.a().contains(str)) {
                            parameters.remove(str);
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            o4.a.b(th2, a.class);
        }
    }

    public static final void d(@NotNull List<AppEvent> events) {
        if (o4.a.d(a.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(events, "events");
            if (!f67786b) {
                return;
            }
            Iterator<AppEvent> it = events.iterator();
            while (it.hasNext()) {
                if (f67788d.contains(it.next().h())) {
                    it.remove();
                }
            }
        } catch (Throwable th2) {
            o4.a.b(th2, a.class);
        }
    }
}
