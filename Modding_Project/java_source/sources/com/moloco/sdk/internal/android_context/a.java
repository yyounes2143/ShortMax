package com.moloco.sdk.internal.android_context;

import android.annotation.SuppressLint;
import android.content.Context;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@SuppressLint({"StaticFieldLeak"})
/* loaded from: classes6.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f32011a = new a();

    /* renamed from: b  reason: collision with root package name */
    public static volatile Context f32012b;

    @NotNull
    public final Context a() {
        Context context = f32012b;
        if (context != null) {
            return context;
        }
        Intrinsics.throwUninitializedPropertyAccessException(AppMeasurementSdk.ConditionalUserProperty.VALUE);
        return null;
    }

    public final void b(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        f32012b = context.getApplicationContext();
    }
}
