package com.moloco.sdk.internal.android_context;

import android.content.Context;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public final class b {
    @NotNull
    public static final Context a(@Nullable Context context) {
        if (context != null) {
            a.f32011a.b(context);
        }
        return a.f32011a.a();
    }

    public static /* synthetic */ Context b(Context context, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            context = null;
        }
        return a(context);
    }
}
