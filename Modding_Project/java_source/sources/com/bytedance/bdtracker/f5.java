package com.bytedance.bdtracker;
/* loaded from: classes3.dex */
public abstract class f5<T> {

    /* renamed from: a  reason: collision with root package name */
    public volatile T f12015a;

    public abstract T a(Object... objArr);

    public final T b(Object... objArr) {
        if (this.f12015a == null) {
            synchronized (this) {
                try {
                    if (this.f12015a == null) {
                        this.f12015a = a(objArr);
                    }
                } finally {
                }
            }
        }
        return this.f12015a;
    }
}
