package fu;

import java.util.Objects;
import okhttp3.Response;
import okhttp3.ResponseBody;
/* compiled from: Response.java */
/* loaded from: classes8.dex */
public final class c0<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Response f52000a;

    /* renamed from: b  reason: collision with root package name */
    private final T f52001b;

    /* renamed from: c  reason: collision with root package name */
    private final ResponseBody f52002c;

    private c0(Response response, T t10, ResponseBody responseBody) {
        this.f52000a = response;
        this.f52001b = t10;
        this.f52002c = responseBody;
    }

    public static <T> c0<T> c(ResponseBody responseBody, Response response) {
        Objects.requireNonNull(responseBody, "body == null");
        Objects.requireNonNull(response, "rawResponse == null");
        if (!response.isSuccessful()) {
            return new c0<>(response, null, responseBody);
        }
        throw new IllegalArgumentException("rawResponse should not be successful response");
    }

    public static <T> c0<T> f(T t10, Response response) {
        Objects.requireNonNull(response, "rawResponse == null");
        if (response.isSuccessful()) {
            return new c0<>(response, t10, null);
        }
        throw new IllegalArgumentException("rawResponse must be successful response");
    }

    public T a() {
        return this.f52001b;
    }

    public int b() {
        return this.f52000a.o();
    }

    public boolean d() {
        return this.f52000a.isSuccessful();
    }

    public String e() {
        return this.f52000a.w();
    }

    public String toString() {
        return this.f52000a.toString();
    }
}
