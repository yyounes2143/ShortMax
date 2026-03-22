package wt;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Composers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class u extends m {

    /* renamed from: c  reason: collision with root package name */
    private final boolean f70352c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(@NotNull z writer, boolean z10) {
        super(writer);
        Intrinsics.checkNotNullParameter(writer, "writer");
        this.f70352c = z10;
    }

    @Override // wt.m
    public void e(byte b10) {
        boolean z10 = this.f70352c;
        String f10 = ms.l.f(ms.l.b(b10));
        if (z10) {
            n(f10);
        } else {
            k(f10);
        }
    }

    @Override // wt.m
    public void i(int i10) {
        boolean z10 = this.f70352c;
        int b10 = ms.n.b(i10);
        if (z10) {
            n(q.a(b10));
        } else {
            k(r.a(b10));
        }
    }

    @Override // wt.m
    public void j(long j10) {
        String a10;
        String a11;
        boolean z10 = this.f70352c;
        long b10 = ms.p.b(j10);
        if (z10) {
            a11 = s.a(b10, 10);
            n(a11);
            return;
        }
        a10 = t.a(b10, 10);
        k(a10);
    }

    @Override // wt.m
    public void l(short s10) {
        boolean z10 = this.f70352c;
        String f10 = ms.s.f(ms.s.b(s10));
        if (z10) {
            n(f10);
        } else {
            k(f10);
        }
    }
}
