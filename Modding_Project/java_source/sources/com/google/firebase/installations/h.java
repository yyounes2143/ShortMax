package com.google.firebase.installations;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
/* compiled from: Utils.java */
/* loaded from: classes5.dex */
public final class h {

    /* renamed from: b  reason: collision with root package name */
    public static final long f21039b = TimeUnit.HOURS.toSeconds(1);

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f21040c = Pattern.compile("\\AA[\\w-]{38}\\z");

    /* renamed from: d  reason: collision with root package name */
    private static h f21041d;

    /* renamed from: a  reason: collision with root package name */
    private final a9.a f21042a;

    private h(a9.a aVar) {
        this.f21042a = aVar;
    }

    public static h c() {
        return d(a9.b.a());
    }

    public static h d(a9.a aVar) {
        if (f21041d == null) {
            f21041d = new h(aVar);
        }
        return f21041d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean g(@Nullable String str) {
        return f21040c.matcher(str).matches();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean h(@Nullable String str) {
        return str.contains(":");
    }

    public long a() {
        return this.f21042a.currentTimeMillis();
    }

    public long b() {
        return TimeUnit.MILLISECONDS.toSeconds(a());
    }

    public long e() {
        return (long) (Math.random() * 1000.0d);
    }

    public boolean f(@NonNull com.google.firebase.installations.local.b bVar) {
        if (TextUtils.isEmpty(bVar.b()) || bVar.h() + bVar.c() < b() + f21039b) {
            return true;
        }
        return false;
    }
}
