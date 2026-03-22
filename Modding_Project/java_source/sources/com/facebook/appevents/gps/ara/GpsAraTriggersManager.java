package com.facebook.appevents.gps.ara;

import android.adservices.measurement.MeasurementManager;
import android.annotation.TargetApi;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.OutcomeReceiver;
import android.util.Log;
import androidx.core.os.b;
import androidx.privacysandbox.ads.adservices.measurement.m;
import androidx.privacysandbox.ads.adservices.measurement.n;
import com.facebook.appevents.AppEvent;
import com.facebook.appevents.gps.ara.GpsAraTriggersManager;
import com.facebook.v;
import com.huawei.hms.framework.common.ContainerUtils;
import java.net.URLEncoder;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.j;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: GpsAraTriggersManager.kt */
@Metadata
@SourceDebugExtension({"SMAP\nGpsAraTriggersManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GpsAraTriggersManager.kt\ncom/facebook/appevents/gps/ara/GpsAraTriggersManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,171:1\n1#2:172\n*E\n"})
/* loaded from: classes3.dex */
public final class GpsAraTriggersManager {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final GpsAraTriggersManager f15002a = new GpsAraTriggersManager();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final String f15003b;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f15004c;

    /* renamed from: d  reason: collision with root package name */
    private static v1.a f15005d;

    /* renamed from: e  reason: collision with root package name */
    private static String f15006e;

    /* compiled from: GpsAraTriggersManager.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a implements OutcomeReceiver {
        a() {
        }

        /* renamed from: a */
        public void onError(@NotNull Exception error) {
            Intrinsics.checkNotNullParameter(error, "error");
            Log.d(GpsAraTriggersManager.c(), "OUTCOME_RECEIVER_TRIGGER_FAILURE");
            v1.a b10 = GpsAraTriggersManager.b();
            if (b10 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gpsDebugLogger");
                b10 = null;
            }
            Bundle bundle = new Bundle();
            bundle.putString("gps_ara_failed_reason", error.toString());
            Unit unit = Unit.f60915a;
            b10.b("gps_ara_failed", bundle);
        }

        public void onResult(@NotNull Object result) {
            Intrinsics.checkNotNullParameter(result, "result");
            Log.d(GpsAraTriggersManager.c(), "OUTCOME_RECEIVER_TRIGGER_SUCCESS");
            v1.a b10 = GpsAraTriggersManager.b();
            if (b10 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gpsDebugLogger");
                b10 = null;
            }
            b10.b("gps_ara_succeed", null);
        }
    }

    static {
        String cls = GpsAraTriggersManager.class.toString();
        Intrinsics.checkNotNullExpressionValue(cls, "GpsAraTriggersManager::class.java.toString()");
        f15003b = cls;
    }

    private GpsAraTriggersManager() {
    }

    public static final /* synthetic */ v1.a b() {
        if (o4.a.d(GpsAraTriggersManager.class)) {
            return null;
        }
        try {
            return f15005d;
        } catch (Throwable th2) {
            o4.a.b(th2, GpsAraTriggersManager.class);
            return null;
        }
    }

    public static final /* synthetic */ String c() {
        if (o4.a.d(GpsAraTriggersManager.class)) {
            return null;
        }
        try {
            return f15003b;
        } catch (Throwable th2) {
            o4.a.b(th2, GpsAraTriggersManager.class);
            return null;
        }
    }

    private final boolean d() {
        if (o4.a.d(this)) {
            return false;
        }
        try {
            if (!f15004c) {
                return false;
            }
            v1.a aVar = null;
            try {
                Class.forName("android.adservices.measurement.MeasurementManager");
                return true;
            } catch (Error e10) {
                Log.i(f15003b, "FAILURE_NO_MEASUREMENT_MANAGER_CLASS");
                v1.a aVar2 = f15005d;
                if (aVar2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("gpsDebugLogger");
                } else {
                    aVar = aVar2;
                }
                Bundle bundle = new Bundle();
                bundle.putString("gps_ara_failed_reason", e10.toString());
                Unit unit = Unit.f60915a;
                aVar.b("gps_ara_failed", bundle);
                return false;
            } catch (Exception e11) {
                Log.i(f15003b, "FAILURE_NO_MEASUREMENT_MANAGER_CLASS");
                v1.a aVar3 = f15005d;
                if (aVar3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("gpsDebugLogger");
                } else {
                    aVar = aVar3;
                }
                Bundle bundle2 = new Bundle();
                bundle2.putString("gps_ara_failed_reason", e11.toString());
                Unit unit2 = Unit.f60915a;
                aVar.b("gps_ara_failed", bundle2);
                return false;
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return false;
        }
    }

    public static final void e() {
        if (o4.a.d(GpsAraTriggersManager.class)) {
            return;
        }
        try {
            f15004c = true;
            f15005d = new v1.a(v.l());
            f15006e = "https://www." + v.v() + "/privacy_sandbox/mobile/register/trigger";
        } catch (Throwable th2) {
            o4.a.b(th2, GpsAraTriggersManager.class);
        }
    }

    private final String f(AppEvent appEvent) {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            final JSONObject e10 = appEvent.e();
            if (e10 != null && e10.length() != 0) {
                Iterator<String> keys = e10.keys();
                Intrinsics.checkNotNullExpressionValue(keys, "params.keys()");
                return j.D(j.G(j.e(keys), new Function1<String, String>() { // from class: com.facebook.appevents.gps.ara.GpsAraTriggersManager$getEventParameters$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @Nullable
                    /* renamed from: b */
                    public final String invoke(String str) {
                        Object opt = e10.opt(str);
                        if (opt == null) {
                            return null;
                        }
                        try {
                            String encode = URLEncoder.encode(str, "UTF-8");
                            String encode2 = URLEncoder.encode(opt.toString(), "UTF-8");
                            return encode + '=' + encode2;
                        } catch (Exception unused) {
                            return null;
                        }
                    }
                }), ContainerUtils.FIELD_DELIMITER, null, null, 0, null, null, 62, null);
            }
            return "";
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    private final boolean g(AppEvent appEvent) {
        if (o4.a.d(this)) {
            return false;
        }
        try {
            String eventName = appEvent.e().getString("_eventName");
            if (Intrinsics.areEqual(eventName, "_removed_")) {
                return false;
            }
            Intrinsics.checkNotNullExpressionValue(eventName, "eventName");
            if (StringsKt.b0(eventName, "gps", false, 2, null)) {
                return false;
            }
            return true;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(String applicationId, AppEvent event) {
        if (o4.a.d(GpsAraTriggersManager.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(applicationId, "$applicationId");
            Intrinsics.checkNotNullParameter(event, "$event");
            f15002a.h(applicationId, event);
        } catch (Throwable th2) {
            o4.a.b(th2, GpsAraTriggersManager.class);
        }
    }

    @TargetApi(34)
    public final void h(@NotNull String applicationId, @NotNull AppEvent event) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(applicationId, "applicationId");
            Intrinsics.checkNotNullParameter(event, "event");
            if (!g(event) || !d()) {
                return;
            }
            Context l10 = v.l();
            v1.a aVar = null;
            try {
                try {
                    MeasurementManager a10 = n.a(l10.getSystemService(m.a()));
                    if (a10 == null) {
                        a10 = MeasurementManager.get(l10.getApplicationContext());
                    }
                    if (a10 == null) {
                        Log.w(f15003b, "FAILURE_GET_MEASUREMENT_MANAGER");
                        v1.a aVar2 = f15005d;
                        if (aVar2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("gpsDebugLogger");
                            aVar2 = null;
                        }
                        Bundle bundle = new Bundle();
                        bundle.putString("gps_ara_failed_reason", "Failed to get measurement manager");
                        Unit unit = Unit.f60915a;
                        aVar2.b("gps_ara_failed", bundle);
                        return;
                    }
                    String f10 = f(event);
                    StringBuilder sb2 = new StringBuilder();
                    String str = f15006e;
                    if (str == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("serverUri");
                        str = null;
                    }
                    sb2.append(str);
                    sb2.append('?');
                    sb2.append("app_id");
                    sb2.append('=');
                    sb2.append(applicationId);
                    sb2.append('&');
                    sb2.append(f10);
                    Uri parse = Uri.parse(sb2.toString());
                    Intrinsics.checkNotNullExpressionValue(parse, "parse(\"$serverUri?$appId…=$applicationId&$params\")");
                    a10.registerTrigger(parse, v.u(), b.a(new a()));
                } catch (Exception e10) {
                    Log.w(f15003b, "FAILURE_TRIGGER_REGISTRATION_FAILED");
                    v1.a aVar3 = f15005d;
                    if (aVar3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("gpsDebugLogger");
                    } else {
                        aVar = aVar3;
                    }
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("gps_ara_failed_reason", e10.toString());
                    Unit unit2 = Unit.f60915a;
                    aVar.b("gps_ara_failed", bundle2);
                }
            } catch (Error e11) {
                Log.w(f15003b, "FAILURE_TRIGGER_REGISTRATION_FAILED");
                v1.a aVar4 = f15005d;
                if (aVar4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("gpsDebugLogger");
                } else {
                    aVar = aVar4;
                }
                Bundle bundle3 = new Bundle();
                bundle3.putString("gps_ara_failed_reason", e11.toString());
                Unit unit3 = Unit.f60915a;
                aVar.b("gps_ara_failed", bundle3);
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    public final void i(@NotNull final String applicationId, @NotNull final AppEvent event) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(applicationId, "applicationId");
            Intrinsics.checkNotNullParameter(event, "event");
            v.u().execute(new Runnable() { // from class: w1.a
                @Override // java.lang.Runnable
                public final void run() {
                    GpsAraTriggersManager.j(applicationId, event);
                }
            });
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }
}
