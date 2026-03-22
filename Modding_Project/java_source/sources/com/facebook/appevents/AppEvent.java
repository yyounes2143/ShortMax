package com.facebook.appevents;

import android.os.Bundle;
import androidx.annotation.RestrictTo;
import com.facebook.FacebookException;
import com.facebook.LoggingBehavior;
import com.facebook.internal.i0;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.text.Regex;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: AppEvent.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class AppEvent implements Serializable {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f14929f = new a(null);
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private static final HashSet<String> f14930g = new HashSet<>();
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final JSONObject f14931a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final JSONObject f14932b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f14933c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f14934d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final String f14935e;

    /* compiled from: AppEvent.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class SerializationProxyV2 implements Serializable {
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        public static final a f14936e = new a(null);
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final String f14937a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final String f14938b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f14939c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f14940d;

        /* compiled from: AppEvent.kt */
        @Metadata
        /* loaded from: classes3.dex */
        public static final class a {
            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private a() {
            }
        }

        public SerializationProxyV2(@NotNull String jsonString, @NotNull String operationalJsonString, boolean z10, boolean z11) {
            Intrinsics.checkNotNullParameter(jsonString, "jsonString");
            Intrinsics.checkNotNullParameter(operationalJsonString, "operationalJsonString");
            this.f14937a = jsonString;
            this.f14938b = operationalJsonString;
            this.f14939c = z10;
            this.f14940d = z11;
        }

        private final Object readResolve() throws JSONException, ObjectStreamException {
            return new AppEvent(this.f14937a, this.f14938b, this.f14939c, this.f14940d, null);
        }
    }

    /* compiled from: AppEvent.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nAppEvent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppEvent.kt\ncom/facebook/appevents/AppEvent$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,236:1\n1#2:237\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(@NotNull String identifier) {
            boolean contains;
            Intrinsics.checkNotNullParameter(identifier, "identifier");
            if (identifier.length() != 0 && identifier.length() <= 40) {
                synchronized (AppEvent.f14930g) {
                    contains = AppEvent.f14930g.contains(identifier);
                    Unit unit = Unit.f60915a;
                }
                if (!contains) {
                    if (new Regex("^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$").k(identifier)) {
                        synchronized (AppEvent.f14930g) {
                            AppEvent.f14930g.add(identifier);
                        }
                        return;
                    }
                    StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                    String format = String.format("Skipping event named '%s' due to illegal name - must be under 40 chars and alphanumeric, _, - or space, and not start with a space or hyphen.", Arrays.copyOf(new Object[]{identifier}, 1));
                    Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
                    throw new FacebookException(format);
                }
                return;
            }
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
            String format2 = String.format(Locale.ROOT, "Identifier '%s' must be less than %d characters", Arrays.copyOf(new Object[]{identifier, 40}, 2));
            Intrinsics.checkNotNullExpressionValue(format2, "format(locale, format, *args)");
            throw new FacebookException(format2);
        }

        private a() {
        }
    }

    public /* synthetic */ AppEvent(String str, String str2, boolean z10, boolean z11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, z10, z11);
    }

    private final JSONObject f(String str, String str2, Double d10, Bundle bundle, UUID uuid) {
        f14929f.a(str2);
        JSONObject jSONObject = new JSONObject();
        String e10 = d2.a.e(str2);
        if (Intrinsics.areEqual(e10, str2)) {
            e10 = z1.e.d(str2);
        }
        jSONObject.put("_eventName", e10);
        jSONObject.put("_logTime", System.currentTimeMillis() / 1000);
        jSONObject.put("_ui", str);
        if (uuid != null) {
            jSONObject.put("_session_id", uuid);
        }
        if (bundle != null) {
            Map n10 = n(this, bundle, false, 2, null);
            for (String str3 : n10.keySet()) {
                jSONObject.put(str3, n10.get(str3));
            }
        }
        if (d10 != null) {
            jSONObject.put("_valueToSum", d10.doubleValue());
        }
        if (this.f14934d) {
            jSONObject.put("_inBackground", "1");
        }
        if (this.f14933c) {
            jSONObject.put("_implicitlyLogged", "1");
        } else {
            i0.a aVar = com.facebook.internal.i0.f16209e;
            LoggingBehavior loggingBehavior = LoggingBehavior.APP_EVENTS;
            String jSONObject2 = jSONObject.toString();
            Intrinsics.checkNotNullExpressionValue(jSONObject2, "eventObject.toString()");
            aVar.c(loggingBehavior, "AppEvents", "Created app event '%s'", jSONObject2);
        }
        return jSONObject;
    }

    private final Map<String, String> k(Bundle bundle, boolean z10) {
        HashMap hashMap = new HashMap();
        for (String key : bundle.keySet()) {
            a aVar = f14929f;
            Intrinsics.checkNotNullExpressionValue(key, "key");
            aVar.a(key);
            Object obj = bundle.get(key);
            if (!(obj instanceof String) && !(obj instanceof Number)) {
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                String format = String.format("Parameter value '%s' for key '%s' should be a string or a numeric type.", Arrays.copyOf(new Object[]{obj, key}, 2));
                Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
                throw new FacebookException(format);
            }
            hashMap.put(key, obj.toString());
        }
        if (!z10) {
            z1.c.c(hashMap);
            d2.a.f(TypeIntrinsics.asMutableMap(hashMap), this.f14935e);
            u1.a.c(TypeIntrinsics.asMutableMap(hashMap), this.f14935e);
        }
        return hashMap;
    }

    static /* synthetic */ Map n(AppEvent appEvent, Bundle bundle, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return appEvent.k(bundle, z10);
    }

    private final Object writeReplace() throws ObjectStreamException {
        String jSONObject = this.f14931a.toString();
        Intrinsics.checkNotNullExpressionValue(jSONObject, "jsonObject.toString()");
        String jSONObject2 = this.f14932b.toString();
        Intrinsics.checkNotNullExpressionValue(jSONObject2, "operationalJsonObject.toString()");
        return new SerializationProxyV2(jSONObject, jSONObject2, this.f14933c, this.f14934d);
    }

    public final boolean d() {
        return this.f14933c;
    }

    @NotNull
    public final JSONObject e() {
        return this.f14931a;
    }

    @NotNull
    public final JSONObject g() {
        return this.f14931a;
    }

    @NotNull
    public final String h() {
        return this.f14935e;
    }

    @NotNull
    public final JSONObject i() {
        return this.f14932b;
    }

    public final boolean j() {
        return this.f14933c;
    }

    @NotNull
    public String toString() {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("\"%s\", implicit: %b, json: %s", Arrays.copyOf(new Object[]{this.f14931a.optString("_eventName"), Boolean.valueOf(this.f14933c), this.f14931a.toString()}, 3));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        return format;
    }

    public AppEvent(@NotNull String contextName, @NotNull String eventName, @Nullable Double d10, @Nullable Bundle bundle, boolean z10, boolean z11, @Nullable UUID uuid, @Nullable i0 i0Var) throws JSONException, FacebookException {
        JSONObject jSONObject;
        Intrinsics.checkNotNullParameter(contextName, "contextName");
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        this.f14933c = z10;
        this.f14934d = z11;
        this.f14935e = eventName;
        this.f14932b = (i0Var == null || (jSONObject = i0Var.e()) == null) ? new JSONObject() : jSONObject;
        this.f14931a = f(contextName, eventName, d10, bundle, uuid);
    }

    private AppEvent(String str, String str2, boolean z10, boolean z11) {
        JSONObject jSONObject = new JSONObject(str);
        this.f14931a = jSONObject;
        this.f14932b = new JSONObject(str2);
        this.f14933c = z10;
        String optString = jSONObject.optString("_eventName");
        Intrinsics.checkNotNullExpressionValue(optString, "jsonObject.optString(Con…nts.EVENT_NAME_EVENT_KEY)");
        this.f14935e = optString;
        this.f14934d = z11;
    }
}
