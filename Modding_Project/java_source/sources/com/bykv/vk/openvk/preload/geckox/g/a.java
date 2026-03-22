package com.bykv.vk.openvk.preload.geckox.g;

import com.bykv.vk.openvk.preload.geckox.utils.FileLock;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* compiled from: ChannelUpdateLock.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, Lock> f11409a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private FileLock f11410b;

    /* renamed from: c  reason: collision with root package name */
    private String f11411c;

    private a(String str, FileLock fileLock) {
        this.f11411c = str;
        this.f11410b = fileLock;
    }

    public static a a(String str) throws Exception {
        Map<String, Lock> map = f11409a;
        synchronized (map) {
            try {
                Lock lock = map.get(str);
                if (lock == null) {
                    lock = new ReentrantLock();
                    map.put(str, lock);
                }
                if (lock.tryLock()) {
                    try {
                        FileLock c10 = FileLock.c(str);
                        if (c10 == null) {
                            lock.unlock();
                            return null;
                        }
                        return new a(str, c10);
                    } catch (Exception e10) {
                        lock.lock();
                        com.bykv.vk.openvk.preload.geckox.utils.a.a(new RuntimeException(e10));
                        return null;
                    }
                }
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void a() {
        Map<String, Lock> map = f11409a;
        synchronized (map) {
            try {
                this.f11410b.a();
                this.f11410b.b();
                map.get(this.f11411c).unlock();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
