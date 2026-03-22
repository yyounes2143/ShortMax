package com.facebook.appevents;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.VisibleForTesting;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.adjust.sdk.Constants;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.appevents.cloudbridge.AppEventsConversionsAPITransformerWebRequests;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.i0;
import com.inmobi.unification.sdk.InitializationStatus;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
/* compiled from: AppEventQueue.kt */
@Metadata
/* loaded from: classes3.dex */
public final class k {
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static ScheduledFuture<?> f15134f;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final k f15129a = new k();

    /* renamed from: b  reason: collision with root package name */
    private static final String f15130b = k.class.getName();

    /* renamed from: c  reason: collision with root package name */
    private static final int f15131c = 100;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static volatile c f15132d = new c();

    /* renamed from: e  reason: collision with root package name */
    private static final ScheduledExecutorService f15133e = Executors.newSingleThreadScheduledExecutor();
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private static final Runnable f15135g = new Runnable() { // from class: com.facebook.appevents.e
        @Override // java.lang.Runnable
        public final void run() {
            k.o();
        }
    };

    private k() {
    }

    public static final void g(@NotNull final AccessTokenAppIdPair accessTokenAppId, @NotNull final AppEvent appEvent) {
        if (o4.a.d(k.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(accessTokenAppId, "accessTokenAppId");
            Intrinsics.checkNotNullParameter(appEvent, "appEvent");
            f15133e.execute(new Runnable() { // from class: com.facebook.appevents.f
                @Override // java.lang.Runnable
                public final void run() {
                    k.h(AccessTokenAppIdPair.this, appEvent);
                }
            });
        } catch (Throwable th2) {
            o4.a.b(th2, k.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(AccessTokenAppIdPair accessTokenAppId, AppEvent appEvent) {
        if (o4.a.d(k.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(accessTokenAppId, "$accessTokenAppId");
            Intrinsics.checkNotNullParameter(appEvent, "$appEvent");
            f15132d.a(accessTokenAppId, appEvent);
            if (AppEventsLogger.f14941b.c() != AppEventsLogger.FlushBehavior.EXPLICIT_ONLY && f15132d.d() > f15131c) {
                n(FlushReason.EVENT_THRESHOLD);
            } else if (f15134f == null) {
                f15134f = f15133e.schedule(f15135g, 15L, TimeUnit.SECONDS);
            }
        } catch (Throwable th2) {
            o4.a.b(th2, k.class);
        }
    }

    @Nullable
    public static final GraphRequest i(@NotNull final AccessTokenAppIdPair accessTokenAppId, @NotNull final j0 appEvents, boolean z10, @NotNull final g0 flushState) {
        if (o4.a.d(k.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(accessTokenAppId, "accessTokenAppId");
            Intrinsics.checkNotNullParameter(appEvents, "appEvents");
            Intrinsics.checkNotNullParameter(flushState, "flushState");
            String d10 = accessTokenAppId.d();
            boolean z11 = false;
            com.facebook.internal.p u10 = FetchedAppSettingsManager.u(d10, false);
            GraphRequest.c cVar = GraphRequest.f14841n;
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format("%s/activities", Arrays.copyOf(new Object[]{d10}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
            final GraphRequest A = cVar.A(null, format, null, null);
            A.E(true);
            Bundle u11 = A.u();
            if (u11 == null) {
                u11 = new Bundle();
            }
            u11.putString("access_token", accessTokenAppId.b());
            String e10 = h0.f15017b.e();
            if (e10 != null) {
                u11.putString("device_token", e10);
            }
            String l10 = o.f15175c.l();
            if (l10 != null) {
                u11.putString(Constants.INSTALL_REFERRER, l10);
            }
            A.H(u11);
            if (u10 != null) {
                z11 = u10.z();
            }
            int e11 = appEvents.e(A, com.facebook.v.l(), z11, z10);
            if (e11 == 0) {
                return null;
            }
            flushState.c(flushState.a() + e11);
            A.D(new GraphRequest.b() { // from class: com.facebook.appevents.h
                @Override // com.facebook.GraphRequest.b
                public final void a(com.facebook.b0 b0Var) {
                    k.j(AccessTokenAppIdPair.this, A, appEvents, flushState, b0Var);
                }
            });
            return A;
        } catch (Throwable th2) {
            o4.a.b(th2, k.class);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(AccessTokenAppIdPair accessTokenAppId, GraphRequest postRequest, j0 appEvents, g0 flushState, com.facebook.b0 response) {
        if (o4.a.d(k.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(accessTokenAppId, "$accessTokenAppId");
            Intrinsics.checkNotNullParameter(postRequest, "$postRequest");
            Intrinsics.checkNotNullParameter(appEvents, "$appEvents");
            Intrinsics.checkNotNullParameter(flushState, "$flushState");
            Intrinsics.checkNotNullParameter(response, "response");
            q(accessTokenAppId, postRequest, response, appEvents, flushState);
        } catch (Throwable th2) {
            o4.a.b(th2, k.class);
        }
    }

    @NotNull
    public static final List<GraphRequest> k(@NotNull c appEventCollection, @NotNull g0 flushResults) {
        if (o4.a.d(k.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(appEventCollection, "appEventCollection");
            Intrinsics.checkNotNullParameter(flushResults, "flushResults");
            boolean A = com.facebook.v.A(com.facebook.v.l());
            ArrayList arrayList = new ArrayList();
            for (AccessTokenAppIdPair accessTokenAppIdPair : appEventCollection.f()) {
                j0 c10 = appEventCollection.c(accessTokenAppIdPair);
                if (c10 != null) {
                    GraphRequest i10 = i(accessTokenAppIdPair, c10, A, flushResults);
                    if (i10 != null) {
                        arrayList.add(i10);
                        if (r1.b.f65474a.f()) {
                            AppEventsConversionsAPITransformerWebRequests.l(i10);
                        }
                    }
                } else {
                    throw new IllegalStateException("Required value was null.");
                }
            }
            return arrayList;
        } catch (Throwable th2) {
            o4.a.b(th2, k.class);
            return null;
        }
    }

    public static final void l(@NotNull final FlushReason reason) {
        if (o4.a.d(k.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(reason, "reason");
            f15133e.execute(new Runnable() { // from class: com.facebook.appevents.g
                @Override // java.lang.Runnable
                public final void run() {
                    k.m(FlushReason.this);
                }
            });
        } catch (Throwable th2) {
            o4.a.b(th2, k.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(FlushReason reason) {
        if (o4.a.d(k.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(reason, "$reason");
            n(reason);
        } catch (Throwable th2) {
            o4.a.b(th2, k.class);
        }
    }

    public static final void n(@NotNull FlushReason reason) {
        if (o4.a.d(k.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(reason, "reason");
            f15132d.b(d.a());
            try {
                g0 u10 = u(reason, f15132d);
                if (u10 != null) {
                    Intent intent = new Intent("com.facebook.sdk.APP_EVENTS_FLUSHED");
                    intent.putExtra("com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED", u10.a());
                    intent.putExtra("com.facebook.sdk.APP_EVENTS_FLUSH_RESULT", u10.b());
                    LocalBroadcastManager.getInstance(com.facebook.v.l()).sendBroadcast(intent);
                }
            } catch (Exception e10) {
                Log.w(f15130b, "Caught unexpected exception while flushing app events: ", e10);
            }
        } catch (Throwable th2) {
            o4.a.b(th2, k.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o() {
        if (o4.a.d(k.class)) {
            return;
        }
        try {
            f15134f = null;
            if (AppEventsLogger.f14941b.c() != AppEventsLogger.FlushBehavior.EXPLICIT_ONLY) {
                n(FlushReason.TIMER);
            }
        } catch (Throwable th2) {
            o4.a.b(th2, k.class);
        }
    }

    @NotNull
    public static final Set<AccessTokenAppIdPair> p() {
        if (o4.a.d(k.class)) {
            return null;
        }
        try {
            return f15132d.f();
        } catch (Throwable th2) {
            o4.a.b(th2, k.class);
            return null;
        }
    }

    public static final void q(@NotNull final AccessTokenAppIdPair accessTokenAppId, @NotNull GraphRequest request, @NotNull com.facebook.b0 response, @NotNull final j0 appEvents, @NotNull g0 flushState) {
        boolean z10;
        String str;
        if (o4.a.d(k.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(accessTokenAppId, "accessTokenAppId");
            Intrinsics.checkNotNullParameter(request, "request");
            Intrinsics.checkNotNullParameter(response, "response");
            Intrinsics.checkNotNullParameter(appEvents, "appEvents");
            Intrinsics.checkNotNullParameter(flushState, "flushState");
            FacebookRequestError b10 = response.b();
            String str2 = InitializationStatus.SUCCESS;
            FlushResult flushResult = FlushResult.SUCCESS;
            if (b10 != null) {
                if (b10.b() == -1) {
                    str2 = "Failed: No Connectivity";
                    flushResult = FlushResult.NO_CONNECTIVITY;
                } else {
                    StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                    str2 = String.format("Failed:\n  Response: %s\n  Error %s", Arrays.copyOf(new Object[]{response.toString(), b10.toString()}, 2));
                    Intrinsics.checkNotNullExpressionValue(str2, "format(format, *args)");
                    flushResult = FlushResult.SERVER_ERROR;
                }
            }
            if (com.facebook.v.I(LoggingBehavior.APP_EVENTS)) {
                try {
                    str = new JSONArray((String) request.w()).toString(2);
                    Intrinsics.checkNotNullExpressionValue(str, "{\n            val jsonAr…y.toString(2)\n          }");
                } catch (JSONException unused) {
                    str = "<Can't encode events for debug logging>";
                }
                i0.a aVar = com.facebook.internal.i0.f16209e;
                LoggingBehavior loggingBehavior = LoggingBehavior.APP_EVENTS;
                String TAG = f15130b;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                aVar.c(loggingBehavior, TAG, "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s", String.valueOf(request.q()), str2, str);
            }
            if (b10 != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            appEvents.b(z10);
            FlushResult flushResult2 = FlushResult.NO_CONNECTIVITY;
            if (flushResult == flushResult2) {
                com.facebook.v.u().execute(new Runnable() { // from class: com.facebook.appevents.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        k.r(AccessTokenAppIdPair.this, appEvents);
                    }
                });
            }
            if (flushResult != FlushResult.SUCCESS && flushState.b() != flushResult2) {
                flushState.d(flushResult);
            }
        } catch (Throwable th2) {
            o4.a.b(th2, k.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(AccessTokenAppIdPair accessTokenAppId, j0 appEvents) {
        if (o4.a.d(k.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(accessTokenAppId, "$accessTokenAppId");
            Intrinsics.checkNotNullParameter(appEvents, "$appEvents");
            l.a(accessTokenAppId, appEvents);
        } catch (Throwable th2) {
            o4.a.b(th2, k.class);
        }
    }

    public static final void s() {
        if (o4.a.d(k.class)) {
            return;
        }
        try {
            f15133e.execute(new Runnable() { // from class: com.facebook.appevents.i
                @Override // java.lang.Runnable
                public final void run() {
                    k.t();
                }
            });
        } catch (Throwable th2) {
            o4.a.b(th2, k.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t() {
        if (o4.a.d(k.class)) {
            return;
        }
        try {
            l.b(f15132d);
            f15132d = new c();
        } catch (Throwable th2) {
            o4.a.b(th2, k.class);
        }
    }

    @VisibleForTesting(otherwise = 2)
    @Nullable
    public static final g0 u(@NotNull FlushReason reason, @NotNull c appEventCollection) {
        if (o4.a.d(k.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(reason, "reason");
            Intrinsics.checkNotNullParameter(appEventCollection, "appEventCollection");
            g0 g0Var = new g0();
            List<GraphRequest> k10 = k(appEventCollection, g0Var);
            if (k10.isEmpty()) {
                return null;
            }
            i0.a aVar = com.facebook.internal.i0.f16209e;
            LoggingBehavior loggingBehavior = LoggingBehavior.APP_EVENTS;
            String TAG = f15130b;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            aVar.c(loggingBehavior, TAG, "Flushing %d events due to %s.", Integer.valueOf(g0Var.a()), reason.toString());
            for (GraphRequest graphRequest : k10) {
                graphRequest.k();
            }
            return g0Var;
        } catch (Throwable th2) {
            o4.a.b(th2, k.class);
            return null;
        }
    }
}
