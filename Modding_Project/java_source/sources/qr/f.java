package qr;

import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.y0;
import org.jetbrains.annotations.NotNull;
import wr.m;
import wr.o;
/* compiled from: HttpRedirect.kt */
@Metadata
/* loaded from: classes8.dex */
public final class f {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final Set<m> f65405a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final du.a f65406b;

    static {
        m.a aVar = m.f70193b;
        f65405a = y0.j(aVar.a(), aVar.b());
        f65406b = cs.a.a("io.ktor.client.plugins.HttpRedirect");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean d(o oVar) {
        int e02 = oVar.e0();
        o.a aVar = o.f70214c;
        if (e02 == aVar.s().e0() || e02 == aVar.k().e0() || e02 == aVar.S().e0() || e02 == aVar.F().e0() || e02 == aVar.O().e0()) {
            return true;
        }
        return false;
    }
}
