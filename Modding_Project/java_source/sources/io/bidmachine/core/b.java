package io.bidmachine.core;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* compiled from: TimeManager.java */
/* loaded from: classes7.dex */
public final class b {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private static kr.c f54411a = new kr.b();

    public static long a() {
        return f54411a.currentTimeMillis();
    }

    @Nullable
    public static String b() {
        return f54411a.getTimeZoneId();
    }
}
