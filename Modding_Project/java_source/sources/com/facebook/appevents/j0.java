package com.facebook.appevents;

import android.content.Context;
import android.os.Bundle;
import com.facebook.GraphRequest;
import com.facebook.appevents.internal.AppEventsLoggerUtility;
import com.facebook.internal.FeatureManager;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: SessionEventsState.kt */
@Metadata
/* loaded from: classes3.dex */
public final class j0 {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f15121f = new a(null);

    /* renamed from: g  reason: collision with root package name */
    private static final String f15122g = j0.class.getSimpleName();

    /* renamed from: h  reason: collision with root package name */
    private static final int f15123h = 1000;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.internal.b f15124a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f15125b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private List<AppEvent> f15126c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final List<AppEvent> f15127d;

    /* renamed from: e  reason: collision with root package name */
    private int f15128e;

    /* compiled from: SessionEventsState.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public j0(@NotNull com.facebook.internal.b attributionIdentifiers, @NotNull String anonymousAppDeviceGUID) {
        Intrinsics.checkNotNullParameter(attributionIdentifiers, "attributionIdentifiers");
        Intrinsics.checkNotNullParameter(anonymousAppDeviceGUID, "anonymousAppDeviceGUID");
        this.f15124a = attributionIdentifiers;
        this.f15125b = anonymousAppDeviceGUID;
        this.f15126c = new ArrayList();
        this.f15127d = new ArrayList();
    }

    private final void f(GraphRequest graphRequest, Context context, int i10, JSONArray jSONArray, JSONArray jSONArray2, boolean z10) {
        JSONObject jSONObject;
        try {
            if (o4.a.d(this)) {
                return;
            }
            try {
                jSONObject = AppEventsLoggerUtility.a(AppEventsLoggerUtility.GraphAPIActivityType.CUSTOM_APP_EVENTS, this.f15124a, this.f15125b, z10, context);
                if (this.f15128e > 0) {
                    jSONObject.put("num_skipped_events", i10);
                }
            } catch (JSONException unused) {
                jSONObject = new JSONObject();
            }
            graphRequest.F(jSONObject);
            Bundle u10 = graphRequest.u();
            String jSONArray3 = jSONArray.toString();
            Intrinsics.checkNotNullExpressionValue(jSONArray3, "events.toString()");
            u10.putString("custom_events", jSONArray3);
            if (FeatureManager.g(FeatureManager.Feature.IapLoggingLib5To7)) {
                u10.putString("operational_parameters", jSONArray2.toString());
            }
            graphRequest.I(jSONArray3);
            graphRequest.H(u10);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    public final synchronized void a(@NotNull AppEvent event) {
        if (o4.a.d(this)) {
            return;
        }
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.f15126c.size() + this.f15127d.size() >= f15123h) {
            this.f15128e++;
        } else {
            this.f15126c.add(event);
        }
    }

    public final synchronized void b(boolean z10) {
        if (o4.a.d(this)) {
            return;
        }
        if (z10) {
            this.f15126c.addAll(this.f15127d);
        }
        this.f15127d.clear();
        this.f15128e = 0;
    }

    public final synchronized int c() {
        if (o4.a.d(this)) {
            return 0;
        }
        return this.f15126c.size();
    }

    @NotNull
    public final synchronized List<AppEvent> d() {
        if (o4.a.d(this)) {
            return null;
        }
        List<AppEvent> list = this.f15126c;
        this.f15126c = new ArrayList();
        return list;
    }

    public final int e(@NotNull GraphRequest request, @NotNull Context applicationContext, boolean z10, boolean z11) {
        if (o4.a.d(this)) {
            return 0;
        }
        try {
            Intrinsics.checkNotNullParameter(request, "request");
            Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
            synchronized (this) {
                int i10 = this.f15128e;
                u1.a.d(this.f15126c);
                this.f15127d.addAll(this.f15126c);
                this.f15126c.clear();
                JSONArray jSONArray = new JSONArray();
                JSONArray jSONArray2 = new JSONArray();
                for (AppEvent appEvent : this.f15127d) {
                    if (!z10 && appEvent.j()) {
                    }
                    jSONArray.put(appEvent.g());
                    jSONArray2.put(appEvent.i());
                }
                if (jSONArray.length() == 0) {
                    return 0;
                }
                Unit unit = Unit.f60915a;
                f(request, applicationContext, i10, jSONArray, jSONArray2, z11);
                return jSONArray.length();
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return 0;
        }
    }
}
