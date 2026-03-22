package e5;
/* compiled from: InstanceFactory.java */
/* loaded from: classes4.dex */
public final class c<T> implements b<T> {

    /* renamed from: b  reason: collision with root package name */
    private static final c<Object> f50797b = new c<>(null);

    /* renamed from: a  reason: collision with root package name */
    private final T f50798a;

    private c(T t10) {
        this.f50798a = t10;
    }

    public static <T> b<T> a(T t10) {
        return new c(d.c(t10, "instance cannot be null"));
    }

    @Override // ls.a
    public T get() {
        return this.f50798a;
    }
}
