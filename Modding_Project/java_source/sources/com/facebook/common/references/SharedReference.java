package com.facebook.common.references;

import java.util.IdentityHashMap;
import java.util.Map;
import l2.a;
import o2.h;
/* loaded from: classes3.dex */
public class SharedReference<T> {

    /* renamed from: d  reason: collision with root package name */
    private static final Map<Object, Integer> f15316d = new IdentityHashMap();

    /* renamed from: a  reason: collision with root package name */
    private T f15317a;

    /* renamed from: b  reason: collision with root package name */
    private int f15318b = 1;

    /* renamed from: c  reason: collision with root package name */
    private final h<T> f15319c;

    /* loaded from: classes3.dex */
    public static class NullReferenceException extends RuntimeException {
        public NullReferenceException() {
            super("Null shared reference");
        }
    }

    public SharedReference(T t10, h<T> hVar, boolean z10) {
        this.f15317a = (T) k2.h.g(t10);
        this.f15319c = hVar;
        if (z10) {
            a(t10);
        }
    }

    private static void a(Object obj) {
        Map<Object, Integer> map = f15316d;
        synchronized (map) {
            try {
                Integer num = map.get(obj);
                if (num == null) {
                    map.put(obj, 1);
                } else {
                    map.put(obj, Integer.valueOf(num.intValue() + 1));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private synchronized int c() {
        boolean z10;
        int i10;
        e();
        if (this.f15318b > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        k2.h.b(Boolean.valueOf(z10));
        i10 = this.f15318b - 1;
        this.f15318b = i10;
        return i10;
    }

    private void e() {
        if (h(this)) {
            return;
        }
        throw new NullReferenceException();
    }

    public static boolean h(SharedReference<?> sharedReference) {
        if (sharedReference != null && sharedReference.g()) {
            return true;
        }
        return false;
    }

    private static void i(Object obj) {
        Map<Object, Integer> map = f15316d;
        synchronized (map) {
            try {
                Integer num = map.get(obj);
                if (num == null) {
                    a.B("SharedReference", "No entry in sLiveObjects for value of type %s", obj.getClass());
                } else if (num.intValue() == 1) {
                    map.remove(obj);
                } else {
                    map.put(obj, Integer.valueOf(num.intValue() - 1));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public synchronized void b() {
        e();
        this.f15318b++;
    }

    public void d() {
        T t10;
        if (c() == 0) {
            synchronized (this) {
                t10 = this.f15317a;
                this.f15317a = null;
            }
            if (t10 != null) {
                h<T> hVar = this.f15319c;
                if (hVar != null) {
                    hVar.release(t10);
                }
                i(t10);
            }
        }
    }

    public synchronized T f() {
        return this.f15317a;
    }

    public synchronized boolean g() {
        boolean z10;
        if (this.f15318b > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        return z10;
    }
}
