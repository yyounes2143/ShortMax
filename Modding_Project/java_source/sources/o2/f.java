package o2;

import java.lang.ref.SoftReference;
/* compiled from: OOMSoftReference.java */
/* loaded from: classes3.dex */
public class f<T> {

    /* renamed from: a  reason: collision with root package name */
    SoftReference<T> f63084a = null;

    /* renamed from: b  reason: collision with root package name */
    SoftReference<T> f63085b = null;

    /* renamed from: c  reason: collision with root package name */
    SoftReference<T> f63086c = null;

    public void a() {
        SoftReference<T> softReference = this.f63084a;
        if (softReference != null) {
            softReference.clear();
            this.f63084a = null;
        }
        SoftReference<T> softReference2 = this.f63085b;
        if (softReference2 != null) {
            softReference2.clear();
            this.f63085b = null;
        }
        SoftReference<T> softReference3 = this.f63086c;
        if (softReference3 != null) {
            softReference3.clear();
            this.f63086c = null;
        }
    }

    public T b() {
        SoftReference<T> softReference = this.f63084a;
        if (softReference == null) {
            return null;
        }
        return softReference.get();
    }

    public void c(T t10) {
        this.f63084a = new SoftReference<>(t10);
        this.f63085b = new SoftReference<>(t10);
        this.f63086c = new SoftReference<>(t10);
    }
}
