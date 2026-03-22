package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: JobSupport.kt */
@Metadata
/* loaded from: classes8.dex */
public class s extends JobSupport implements gt.s {

    /* renamed from: c  reason: collision with root package name */
    private final boolean f61834c;

    public s(@Nullable r rVar) {
        super(true);
        j0(rVar);
        this.f61834c = Q0();
    }

    private final boolean Q0() {
        g gVar;
        JobSupport t10;
        g gVar2;
        gt.n d02 = d0();
        if (d02 instanceof g) {
            gVar = (g) d02;
        } else {
            gVar = null;
        }
        if (gVar != null && (t10 = gVar.t()) != null) {
            while (!t10.Z()) {
                gt.n d03 = t10.d0();
                if (d03 instanceof g) {
                    gVar2 = (g) d03;
                } else {
                    gVar2 = null;
                }
                if (gVar2 != null) {
                    t10 = gVar2.t();
                    if (t10 == null) {
                    }
                }
            }
            return true;
        }
        return false;
    }

    @Override // kotlinx.coroutines.JobSupport
    public boolean Z() {
        return this.f61834c;
    }

    @Override // kotlinx.coroutines.JobSupport
    public boolean b0() {
        return true;
    }

    @Override // gt.s
    public boolean complete() {
        return p0(Unit.f60915a);
    }

    @Override // gt.s
    public boolean d(@NotNull Throwable th2) {
        return p0(new gt.t(th2, false, 2, null));
    }
}
