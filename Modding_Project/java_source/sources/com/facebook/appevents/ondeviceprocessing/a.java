package com.facebook.appevents.ondeviceprocessing;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.RestrictTo;
import com.facebook.appevents.AppEvent;
import com.facebook.internal.u0;
import com.facebook.v;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.y0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: OnDeviceProcessingManager.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f15190a = new a();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final Set<String> f15191b = y0.j("fb_mobile_purchase", "StartTrial", "Subscribe");

    private a() {
    }

    private final boolean c(AppEvent appEvent) {
        boolean z10;
        if (o4.a.d(this)) {
            return false;
        }
        try {
            if (appEvent.j() && f15191b.contains(appEvent.h())) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (appEvent.j() && !z10) {
                return false;
            }
            return true;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return false;
        }
    }

    public static final boolean d() {
        if (o4.a.d(a.class)) {
            return false;
        }
        try {
            if (v.A(v.l()) || u0.a0()) {
                return false;
            }
            if (!RemoteServiceWrapper.b()) {
                return false;
            }
            return true;
        } catch (Throwable th2) {
            o4.a.b(th2, a.class);
            return false;
        }
    }

    public static final void e(@NotNull final String applicationId, @NotNull final AppEvent event) {
        if (o4.a.d(a.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(applicationId, "applicationId");
            Intrinsics.checkNotNullParameter(event, "event");
            if (f15190a.c(event)) {
                v.u().execute(new Runnable() { // from class: c2.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        com.facebook.appevents.ondeviceprocessing.a.f(applicationId, event);
                    }
                });
            }
        } catch (Throwable th2) {
            o4.a.b(th2, a.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(String applicationId, AppEvent event) {
        if (o4.a.d(a.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(applicationId, "$applicationId");
            Intrinsics.checkNotNullParameter(event, "$event");
            RemoteServiceWrapper.c(applicationId, CollectionsKt.e(event));
        } catch (Throwable th2) {
            o4.a.b(th2, a.class);
        }
    }

    public static final void g(@Nullable final String str, @Nullable final String str2) {
        if (o4.a.d(a.class)) {
            return;
        }
        try {
            final Context l10 = v.l();
            if (l10 != null && str != null && str2 != null) {
                v.u().execute(new Runnable() { // from class: c2.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        com.facebook.appevents.ondeviceprocessing.a.h(l10, str2, str);
                    }
                });
            }
        } catch (Throwable th2) {
            o4.a.b(th2, a.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(Context context, String str, String str2) {
        if (o4.a.d(a.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(context, "$context");
            SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
            String str3 = str2 + "pingForOnDevice";
            if (sharedPreferences.getLong(str3, 0L) == 0) {
                RemoteServiceWrapper.e(str2);
                SharedPreferences.Editor edit = sharedPreferences.edit();
                edit.putLong(str3, System.currentTimeMillis());
                edit.apply();
            }
        } catch (Throwable th2) {
            o4.a.b(th2, a.class);
        }
    }
}
