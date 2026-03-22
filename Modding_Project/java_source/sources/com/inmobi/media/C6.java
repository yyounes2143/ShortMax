package com.inmobi.media;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes5.dex */
public final class C6 {

    /* renamed from: b  reason: collision with root package name */
    public static final ConcurrentHashMap f23529b = new ConcurrentHashMap();

    /* renamed from: a  reason: collision with root package name */
    public final SharedPreferences f23530a;

    public C6(Context context, String str) {
        this.f23530a = context.getSharedPreferences(str, 0);
    }

    @NotNull
    public static final C6 a(@NotNull Context context, @NotNull String str) {
        return B6.a(context, str);
    }

    public final void b() {
        SharedPreferences.Editor edit = this.f23530a.edit();
        edit.clear();
        edit.apply();
    }

    public final boolean a(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(key, "key");
        if (this.f23530a.contains(key)) {
            SharedPreferences.Editor edit = this.f23530a.edit();
            edit.remove(key);
            edit.apply();
            return true;
        }
        return false;
    }

    public static void a(C6 c62, String key, String str, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        c62.getClass();
        Intrinsics.checkNotNullParameter(key, "key");
        SharedPreferences.Editor edit = c62.f23530a.edit();
        edit.putString(key, str);
        if (z10) {
            edit.commit();
        } else {
            edit.apply();
        }
    }

    public static /* synthetic */ void a(C6 c62, String str, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        c62.a(str, i10, z10);
    }

    public final void a(String key, int i10, boolean z10) {
        Intrinsics.checkNotNullParameter(key, "key");
        SharedPreferences.Editor edit = this.f23530a.edit();
        edit.putInt(key, i10);
        if (z10) {
            edit.commit();
        } else {
            edit.apply();
        }
    }

    public static /* synthetic */ void a(C6 c62, String str, long j10, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        c62.a(str, j10, z10);
    }

    public final void a(String key, long j10, boolean z10) {
        Intrinsics.checkNotNullParameter(key, "key");
        SharedPreferences.Editor edit = this.f23530a.edit();
        edit.putLong(key, j10);
        if (z10) {
            edit.commit();
        } else {
            edit.apply();
        }
    }

    public static void a(C6 c62, String key, boolean z10, boolean z11, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z11 = false;
        }
        c62.getClass();
        Intrinsics.checkNotNullParameter(key, "key");
        SharedPreferences.Editor edit = c62.f23530a.edit();
        edit.putBoolean(key, z10);
        if (z11) {
            edit.commit();
        } else {
            edit.apply();
        }
    }
}
