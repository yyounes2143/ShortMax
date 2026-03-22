package io.bidmachine.iab.utils;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes7.dex */
public class a {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f54688a = new Logger("CommonLog");

    public static void a(@NonNull String str, @Nullable String str2, @Nullable Object... objArr) {
        f54688a.k(str, str2, objArr);
    }

    public static void b(@NonNull String str, @Nullable String str2, @Nullable Object... objArr) {
        f54688a.l(str, str2, objArr);
    }

    public static void c(@NonNull String str, @NonNull Throwable th2) {
        f54688a.m(str, th2);
    }
}
