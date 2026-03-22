package com.moloco.sdk.internal.services.bidtoken;

import com.moloco.sdk.internal.MolocoLogger;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class q {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final ms.i f33264a = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.internal.services.bidtoken.p
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return q.b();
        }
    });

    @NotNull
    public static final o a() {
        return c();
    }

    public static final m b() {
        MolocoLogger.info$default(MolocoLogger.INSTANCE, "BidTokenService", "Creating BidTokenService instance", null, false, 12, null);
        return new m(b0.f33118a.a(), u.f33288a.a());
    }

    public static final m c() {
        return (m) f33264a.getValue();
    }
}
