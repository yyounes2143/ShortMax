package com.bytedance.bdtracker;
/* loaded from: classes3.dex */
public abstract class j4<T> {

    /* renamed from: a  reason: collision with root package name */
    public volatile T f12102a;

    public abstract T a(Object... objArr);

    public final T b(Object... objArr) {
        if (this.f12102a == null) {
            synchronized (this) {
                try {
                    if (this.f12102a == null) {
                        this.f12102a = a(objArr);
                    }
                } finally {
                }
            }
        }
        return this.f12102a;
    }
}
