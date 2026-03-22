package retrofit2;

import fu.c0;
import java.util.Objects;
/* loaded from: classes8.dex */
public class HttpException extends RuntimeException {

    /* renamed from: a  reason: collision with root package name */
    private final int f65806a;

    /* renamed from: b  reason: collision with root package name */
    private final String f65807b;

    /* renamed from: c  reason: collision with root package name */
    private final transient c0<?> f65808c;

    public HttpException(c0<?> c0Var) {
        super(d(c0Var));
        this.f65806a = c0Var.b();
        this.f65807b = c0Var.e();
        this.f65808c = c0Var;
    }

    private static String d(c0<?> c0Var) {
        Objects.requireNonNull(c0Var, "response == null");
        return "HTTP " + c0Var.b() + " " + c0Var.e();
    }

    public int b() {
        return this.f65806a;
    }
}
