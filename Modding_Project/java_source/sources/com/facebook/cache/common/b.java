package com.facebook.cache.common;

import com.facebook.cache.common.CacheErrorLogger;
/* compiled from: NoOpCacheErrorLogger.java */
/* loaded from: classes3.dex */
public class b implements CacheErrorLogger {

    /* renamed from: a  reason: collision with root package name */
    private static b f15228a;

    private b() {
    }

    public static synchronized b b() {
        b bVar;
        synchronized (b.class) {
            try {
                if (f15228a == null) {
                    f15228a = new b();
                }
                bVar = f15228a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return bVar;
    }

    @Override // com.facebook.cache.common.CacheErrorLogger
    public void a(CacheErrorLogger.CacheErrorCategory cacheErrorCategory, Class<?> cls, String str, Throwable th2) {
    }
}
