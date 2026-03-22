package l9;
/* compiled from: InstanceFactory.java */
/* loaded from: classes5.dex */
public final class c<T> implements b<T> {

    /* renamed from: b  reason: collision with root package name */
    private static final c<Object> f62105b = new c<>(null);

    /* renamed from: a  reason: collision with root package name */
    private final T f62106a;

    private c(T t10) {
        this.f62106a = t10;
    }

    public static <T> b<T> a(T t10) {
        return new c(d.c(t10, "instance cannot be null"));
    }

    @Override // ls.a
    public T get() {
        return this.f62106a;
    }
}
