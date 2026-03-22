package com.facebook.appevents.internal;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.internal.b;
import com.facebook.internal.i0;
import com.facebook.internal.u0;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: AppEventsLoggerUtility.kt */
@Metadata
/* loaded from: classes3.dex */
public final class AppEventsLoggerUtility {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final AppEventsLoggerUtility f15113a = new AppEventsLoggerUtility();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final Map<GraphAPIActivityType, String> f15114b = p0.k(k.a(GraphAPIActivityType.MOBILE_INSTALL_EVENT, "MOBILE_APP_INSTALL"), k.a(GraphAPIActivityType.CUSTOM_APP_EVENTS, "CUSTOM_APP_EVENTS"));

    /* compiled from: AppEventsLoggerUtility.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public enum GraphAPIActivityType {
        MOBILE_INSTALL_EVENT,
        CUSTOM_APP_EVENTS
    }

    private AppEventsLoggerUtility() {
    }

    @NotNull
    public static final JSONObject a(@NotNull GraphAPIActivityType activityType, @Nullable b bVar, @Nullable String str, boolean z10, @NotNull Context context) throws JSONException {
        Intrinsics.checkNotNullParameter(activityType, "activityType");
        Intrinsics.checkNotNullParameter(context, "context");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(NotificationCompat.CATEGORY_EVENT, f15114b.get(activityType));
        String d10 = AppEventsLogger.f14941b.d();
        if (d10 != null) {
            jSONObject.put("app_user_id", d10);
        }
        u0.D0(jSONObject, bVar, str, z10, context);
        try {
            u0.E0(jSONObject, context);
        } catch (Exception e10) {
            i0.f16209e.c(LoggingBehavior.APP_EVENTS, "AppEvents", "Fetching extended device info parameters failed: '%s'", e10.toString());
        }
        JSONObject D = u0.D();
        if (D != null) {
            Iterator<String> keys = D.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                jSONObject.put(next, D.get(next));
            }
        }
        jSONObject.put("application_package_name", context.getPackageName());
        return jSONObject;
    }
}
