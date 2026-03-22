package com.facebook.appevents.ondeviceprocessing;

import android.os.Bundle;
import androidx.core.app.NotificationCompat;
import com.facebook.appevents.AppEvent;
import com.facebook.appevents.ondeviceprocessing.RemoteServiceWrapper;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.p;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
/* compiled from: RemoteServiceParametersHelper.kt */
@Metadata
/* loaded from: classes3.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final b f15192a = new b();

    /* renamed from: b  reason: collision with root package name */
    private static final String f15193b = RemoteServiceWrapper.class.getSimpleName();

    private b() {
    }

    @Nullable
    public static final Bundle a(@NotNull RemoteServiceWrapper.EventType eventType, @NotNull String applicationId, @NotNull List<AppEvent> appEvents) {
        if (o4.a.d(b.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(eventType, "eventType");
            Intrinsics.checkNotNullParameter(applicationId, "applicationId");
            Intrinsics.checkNotNullParameter(appEvents, "appEvents");
            Bundle bundle = new Bundle();
            bundle.putString(NotificationCompat.CATEGORY_EVENT, eventType.toString());
            bundle.putString("app_id", applicationId);
            if (RemoteServiceWrapper.EventType.CUSTOM_APP_EVENTS == eventType) {
                JSONArray b10 = f15192a.b(appEvents, applicationId);
                if (b10.length() == 0) {
                    return null;
                }
                bundle.putString("custom_events", b10.toString());
            }
            return bundle;
        } catch (Throwable th2) {
            o4.a.b(th2, b.class);
            return null;
        }
    }

    private final JSONArray b(List<AppEvent> list, String str) {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            JSONArray jSONArray = new JSONArray();
            List<AppEvent> g12 = CollectionsKt.g1(list);
            u1.a.d(g12);
            boolean c10 = c(str);
            for (AppEvent appEvent : g12) {
                if (appEvent.j()) {
                    if (appEvent.j() && c10) {
                    }
                }
                jSONArray.put(appEvent.g());
            }
            return jSONArray;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    private final boolean c(String str) {
        if (o4.a.d(this)) {
            return false;
        }
        try {
            p u10 = FetchedAppSettingsManager.u(str, false);
            if (u10 == null) {
                return false;
            }
            return u10.z();
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return false;
        }
    }
}
