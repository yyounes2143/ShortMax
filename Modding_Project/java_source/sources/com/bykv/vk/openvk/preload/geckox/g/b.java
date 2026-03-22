package com.bykv.vk.openvk.preload.geckox.g;

import com.bykv.vk.openvk.preload.geckox.utils.FileLock;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* compiled from: SelectChannelVersionLock.java */
/* loaded from: classes3.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, Lock> f11412a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private static ReentrantLock f11413b = new ReentrantLock();

    /* renamed from: c  reason: collision with root package name */
    private String f11414c;

    /* renamed from: d  reason: collision with root package name */
    private FileLock f11415d;

    private b(String str, FileLock fileLock) {
        this.f11414c = str;
        this.f11415d = fileLock;
    }

    public static b a(String str) throws Exception {
        f11413b.lock();
        try {
            FileLock a10 = FileLock.a(str);
            Map<String, Lock> map = f11412a;
            Lock lock = map.get(str);
            if (lock == null) {
                lock = new ReentrantLock();
                map.put(str, lock);
            }
            lock.lock();
            return new b(str, a10);
        } catch (Exception e10) {
            f11413b.unlock();
            throw e10;
        }
    }

    public final void a() {
        try {
            this.f11415d.a();
            this.f11415d.b();
            Lock lock = f11412a.get(this.f11414c);
            if (lock != null) {
                lock.unlock();
            }
        } finally {
            f11413b.unlock();
        }
    }
}
