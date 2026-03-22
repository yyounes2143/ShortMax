package t8;
/* compiled from: Event.java */
/* loaded from: classes5.dex */
public class a<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Class<T> f67217a;

    /* renamed from: b  reason: collision with root package name */
    private final T f67218b;

    public T a() {
        return this.f67218b;
    }

    public Class<T> b() {
        return this.f67217a;
    }

    public String toString() {
        return String.format("Event{type: %s, payload: %s}", this.f67217a, this.f67218b);
    }
}
