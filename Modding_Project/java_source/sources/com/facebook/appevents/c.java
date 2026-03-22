package com.facebook.appevents;

import android.content.Context;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AppEventCollection.kt */
@Metadata
/* loaded from: classes3.dex */
public final class c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<AccessTokenAppIdPair, j0> f14953a = new HashMap<>();

    private final synchronized j0 e(AccessTokenAppIdPair accessTokenAppIdPair) {
        Context l10;
        com.facebook.internal.b e10;
        j0 j0Var = this.f14953a.get(accessTokenAppIdPair);
        if (j0Var == null && (e10 = com.facebook.internal.b.f16149f.e((l10 = com.facebook.v.l()))) != null) {
            j0Var = new j0(e10, AppEventsLogger.f14941b.b(l10));
        }
        if (j0Var == null) {
            return null;
        }
        this.f14953a.put(accessTokenAppIdPair, j0Var);
        return j0Var;
    }

    public final synchronized void a(@NotNull AccessTokenAppIdPair accessTokenAppIdPair, @NotNull AppEvent appEvent) {
        Intrinsics.checkNotNullParameter(accessTokenAppIdPair, "accessTokenAppIdPair");
        Intrinsics.checkNotNullParameter(appEvent, "appEvent");
        j0 e10 = e(accessTokenAppIdPair);
        if (e10 != null) {
            e10.a(appEvent);
        }
    }

    public final synchronized void b(@Nullable PersistedEvents persistedEvents) {
        if (persistedEvents == null) {
            return;
        }
        for (Map.Entry<AccessTokenAppIdPair, List<AppEvent>> entry : persistedEvents.d()) {
            j0 e10 = e(entry.getKey());
            if (e10 != null) {
                for (AppEvent appEvent : entry.getValue()) {
                    e10.a(appEvent);
                }
            }
        }
    }

    @Nullable
    public final synchronized j0 c(@NotNull AccessTokenAppIdPair accessTokenAppIdPair) {
        Intrinsics.checkNotNullParameter(accessTokenAppIdPair, "accessTokenAppIdPair");
        return this.f14953a.get(accessTokenAppIdPair);
    }

    public final synchronized int d() {
        int i10;
        i10 = 0;
        for (j0 j0Var : this.f14953a.values()) {
            i10 += j0Var.c();
        }
        return i10;
    }

    @NotNull
    public final synchronized Set<AccessTokenAppIdPair> f() {
        Set<AccessTokenAppIdPair> keySet;
        keySet = this.f14953a.keySet();
        Intrinsics.checkNotNullExpressionValue(keySet, "stateMap.keys");
        return keySet;
    }
}
