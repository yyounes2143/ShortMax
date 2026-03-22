package yr;

import io.ktor.util.Platform;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: PlatformUtils.kt */
@Metadata
/* loaded from: classes8.dex */
public final class n {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final n f71155a;

    /* renamed from: b  reason: collision with root package name */
    private static final boolean f71156b;

    /* renamed from: c  reason: collision with root package name */
    private static final boolean f71157c;

    /* renamed from: d  reason: collision with root package name */
    private static final boolean f71158d;

    /* renamed from: e  reason: collision with root package name */
    private static final boolean f71159e;

    /* renamed from: f  reason: collision with root package name */
    private static final boolean f71160f;

    /* renamed from: g  reason: collision with root package name */
    private static final boolean f71161g;

    static {
        boolean z10;
        boolean z11;
        boolean z12;
        n nVar = new n();
        f71155a = nVar;
        boolean z13 = false;
        if (o.a(nVar) == Platform.Browser) {
            z10 = true;
        } else {
            z10 = false;
        }
        f71156b = z10;
        if (o.a(nVar) == Platform.Node) {
            z11 = true;
        } else {
            z11 = false;
        }
        f71157c = z11;
        if (o.a(nVar) == Platform.Jvm) {
            z12 = true;
        } else {
            z12 = false;
        }
        f71158d = z12;
        if (o.a(nVar) == Platform.Native) {
            z13 = true;
        }
        f71159e = z13;
        f71160f = o.b(nVar);
        f71161g = o.c(nVar);
    }

    private n() {
    }

    public final boolean a() {
        return f71156b;
    }

    public final boolean b() {
        return f71160f;
    }

    public final boolean c() {
        return f71159e;
    }
}
