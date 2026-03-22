package com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport;

import androidx.annotation.VisibleForTesting;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.service_locator.b;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class d {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final ms.i f36633a = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return d.b();
        }
    });

    @NotNull
    public static final a a() {
        return c();
    }

    public static final b b() {
        return d();
    }

    public static final b c() {
        return (b) f36633a.getValue();
    }

    @VisibleForTesting
    @NotNull
    public static final b d() {
        f b10;
        try {
            b10 = b.i.f33662a.c();
        } catch (Exception e10) {
            MolocoLogger.warn$default(MolocoLogger.INSTANCE, "BestAttemptHttpRequest", "Failed to create PersistentHttpRequest, invoking NonPersistendHttpRequest", e10, false, 8, null);
            b10 = k.b();
        }
        return new b(b10);
    }
}
