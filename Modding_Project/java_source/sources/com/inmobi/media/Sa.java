package com.inmobi.media;

import android.content.Context;
import androidx.annotation.WorkerThread;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes5.dex */
public final class Sa {

    /* renamed from: a  reason: collision with root package name */
    public final C6 f24146a;

    public Sa(@NotNull Context context, @NotNull String sharePrefFile) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(sharePrefFile, "sharePrefFile");
        ConcurrentHashMap concurrentHashMap = C6.f23529b;
        this.f24146a = B6.a(context, sharePrefFile);
    }

    public final void a(@NotNull String key, @NotNull String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        C6.a(this.f24146a, key, value, false, 4, (Object) null);
    }

    public final void b(@NotNull String key, @NotNull String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        C6.a(this.f24146a, key, value, false, 4, (Object) null);
        a(System.currentTimeMillis() / 1000);
    }

    @WorkerThread
    public final boolean c(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.f24146a.a(key);
    }

    public final void a(@NotNull String key, boolean z10) {
        Intrinsics.checkNotNullParameter(key, "key");
        C6.a(this.f24146a, key, z10, false, 4, (Object) null);
    }

    @WorkerThread
    @Nullable
    public final String a(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        C6 c62 = this.f24146a;
        c62.getClass();
        Intrinsics.checkNotNullParameter(key, "key");
        return c62.f23530a.getString(key, null);
    }

    @WorkerThread
    public final long b() {
        C6 c62 = this.f24146a;
        c62.getClass();
        Intrinsics.checkNotNullParameter("last_ts", "key");
        return c62.f23530a.getLong("last_ts", 0L);
    }

    public final void a(long j10) {
        C6.a(this.f24146a, "last_ts", j10, false, 4, (Object) null);
    }

    @WorkerThread
    public final boolean b(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        C6 c62 = this.f24146a;
        c62.getClass();
        Intrinsics.checkNotNullParameter(key, "key");
        return c62.f23530a.contains(key);
    }

    @WorkerThread
    public final void a() {
        this.f24146a.b();
    }
}
