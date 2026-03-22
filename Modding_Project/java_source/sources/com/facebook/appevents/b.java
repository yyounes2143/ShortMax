package com.facebook.appevents;

import android.preference.PreferenceManager;
import android.util.Log;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AnalyticsUserIDStore.kt */
@Metadata
/* loaded from: classes3.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final b f14948a = new b();

    /* renamed from: b  reason: collision with root package name */
    private static final String f14949b = b.class.getSimpleName();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final ReentrantReadWriteLock f14950c = new ReentrantReadWriteLock();
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private static String f14951d;

    /* renamed from: e  reason: collision with root package name */
    private static volatile boolean f14952e;

    private b() {
    }

    @Nullable
    public static final String b() {
        if (!f14952e) {
            Log.w(f14949b, "initStore should have been called before calling setUserID");
            f14948a.c();
        }
        ReentrantReadWriteLock reentrantReadWriteLock = f14950c;
        reentrantReadWriteLock.readLock().lock();
        try {
            String str = f14951d;
            reentrantReadWriteLock.readLock().unlock();
            return str;
        } catch (Throwable th2) {
            f14950c.readLock().unlock();
            throw th2;
        }
    }

    private final void c() {
        if (f14952e) {
            return;
        }
        ReentrantReadWriteLock reentrantReadWriteLock = f14950c;
        reentrantReadWriteLock.writeLock().lock();
        try {
            if (f14952e) {
                reentrantReadWriteLock.writeLock().unlock();
                return;
            }
            f14951d = PreferenceManager.getDefaultSharedPreferences(com.facebook.v.l()).getString("com.facebook.appevents.AnalyticsUserIDStore.userID", null);
            f14952e = true;
            reentrantReadWriteLock.writeLock().unlock();
        } catch (Throwable th2) {
            f14950c.writeLock().unlock();
            throw th2;
        }
    }

    public static final void d() {
        if (f14952e) {
            return;
        }
        h0.f15017b.c().execute(new Runnable() { // from class: com.facebook.appevents.a
            @Override // java.lang.Runnable
            public final void run() {
                b.e();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e() {
        f14948a.c();
    }
}
