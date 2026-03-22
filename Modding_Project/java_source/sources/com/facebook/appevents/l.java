package com.facebook.appevents;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AppEventStore.kt */
@Metadata
/* loaded from: classes3.dex */
public final class l {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final l f15138a = new l();

    /* renamed from: b  reason: collision with root package name */
    private static final String f15139b = l.class.getName();

    private l() {
    }

    public static final synchronized void a(@NotNull AccessTokenAppIdPair accessTokenAppIdPair, @NotNull j0 appEvents) {
        synchronized (l.class) {
            if (o4.a.d(l.class)) {
                return;
            }
            Intrinsics.checkNotNullParameter(accessTokenAppIdPair, "accessTokenAppIdPair");
            Intrinsics.checkNotNullParameter(appEvents, "appEvents");
            a2.h.b();
            PersistedEvents a10 = d.a();
            a10.b(accessTokenAppIdPair, appEvents.d());
            d.b(a10);
        }
    }

    public static final synchronized void b(@NotNull c eventsToPersist) {
        synchronized (l.class) {
            if (o4.a.d(l.class)) {
                return;
            }
            Intrinsics.checkNotNullParameter(eventsToPersist, "eventsToPersist");
            a2.h.b();
            PersistedEvents a10 = d.a();
            for (AccessTokenAppIdPair accessTokenAppIdPair : eventsToPersist.f()) {
                j0 c10 = eventsToPersist.c(accessTokenAppIdPair);
                if (c10 != null) {
                    a10.b(accessTokenAppIdPair, c10.d());
                } else {
                    throw new IllegalStateException("Required value was null.");
                }
            }
            d.b(a10);
        }
    }
}
