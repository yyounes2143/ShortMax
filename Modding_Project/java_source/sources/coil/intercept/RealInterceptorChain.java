package coil.intercept;

import a0.c;
import h0.a;
import java.util.List;
import kotlin.Metadata;
import m0.f;
import m0.h;
import n0.g;
import org.jetbrains.annotations.NotNull;
/* compiled from: RealInterceptorChain.kt */
@Metadata
/* loaded from: classes2.dex */
public final class RealInterceptorChain implements a.InterfaceC0763a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final f f4046a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final List<a> f4047b;

    /* renamed from: c  reason: collision with root package name */
    private final int f4048c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final f f4049d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final g f4050e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final c f4051f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f4052g;

    /* JADX WARN: Multi-variable type inference failed */
    public RealInterceptorChain(@NotNull f fVar, @NotNull List<? extends a> list, int i10, @NotNull f fVar2, @NotNull g gVar, @NotNull c cVar, boolean z10) {
        this.f4046a = fVar;
        this.f4047b = list;
        this.f4048c = i10;
        this.f4049d = fVar2;
        this.f4050e = gVar;
        this.f4051f = cVar;
        this.f4052g = z10;
    }

    private final void a(f fVar, a aVar) {
        if (fVar.l() == this.f4046a.l()) {
            if (fVar.m() != h.f62403a) {
                if (fVar.M() == this.f4046a.M()) {
                    if (fVar.z() == this.f4046a.z()) {
                        if (fVar.K() == this.f4046a.K()) {
                            return;
                        }
                        throw new IllegalStateException(("Interceptor '" + aVar + "' cannot modify the request's size resolver. Use `Interceptor.Chain.withSize` instead.").toString());
                    }
                    throw new IllegalStateException(("Interceptor '" + aVar + "' cannot modify the request's lifecycle.").toString());
                }
                throw new IllegalStateException(("Interceptor '" + aVar + "' cannot modify the request's target.").toString());
            }
            throw new IllegalStateException(("Interceptor '" + aVar + "' cannot set the request's data to null.").toString());
        }
        throw new IllegalStateException(("Interceptor '" + aVar + "' cannot modify the request's context.").toString());
    }

    private final RealInterceptorChain b(int i10, f fVar, g gVar) {
        return new RealInterceptorChain(this.f4046a, this.f4047b, i10, fVar, gVar, this.f4051f, this.f4052g);
    }

    static /* synthetic */ RealInterceptorChain c(RealInterceptorChain realInterceptorChain, int i10, f fVar, g gVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = realInterceptorChain.f4048c;
        }
        if ((i11 & 2) != 0) {
            fVar = realInterceptorChain.getRequest();
        }
        if ((i11 & 4) != 0) {
            gVar = realInterceptorChain.getSize();
        }
        return realInterceptorChain.b(i10, fVar, gVar);
    }

    @NotNull
    public final c d() {
        return this.f4051f;
    }

    public final boolean e() {
        return this.f4052g;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0039  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object f(@org.jetbrains.annotations.NotNull m0.f r12, @org.jetbrains.annotations.NotNull rs.c<? super m0.g> r13) {
        /*
            r11 = this;
            boolean r0 = r13 instanceof coil.intercept.RealInterceptorChain$proceed$1
            if (r0 == 0) goto L13
            r0 = r13
            coil.intercept.RealInterceptorChain$proceed$1 r0 = (coil.intercept.RealInterceptorChain$proceed$1) r0
            int r1 = r0.f4057l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f4057l = r1
            goto L18
        L13:
            coil.intercept.RealInterceptorChain$proceed$1 r0 = new coil.intercept.RealInterceptorChain$proceed$1
            r0.<init>(r11, r13)
        L18:
            java.lang.Object r13 = r0.f4055j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f4057l
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r12 = r0.f4054i
            h0.a r12 = (h0.a) r12
            java.lang.Object r0 = r0.f4053h
            coil.intercept.RealInterceptorChain r0 = (coil.intercept.RealInterceptorChain) r0
            kotlin.f.b(r13)
            goto L74
        L31:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r13)
            throw r12
        L39:
            kotlin.f.b(r13)
            int r13 = r11.f4048c
            if (r13 <= 0) goto L4c
            java.util.List<h0.a> r2 = r11.f4047b
            int r13 = r13 - r3
            java.lang.Object r13 = r2.get(r13)
            h0.a r13 = (h0.a) r13
            r11.a(r12, r13)
        L4c:
            java.util.List<h0.a> r13 = r11.f4047b
            int r2 = r11.f4048c
            java.lang.Object r13 = r13.get(r2)
            h0.a r13 = (h0.a) r13
            int r2 = r11.f4048c
            int r5 = r2 + 1
            r8 = 4
            r9 = 0
            r7 = 0
            r4 = r11
            r6 = r12
            coil.intercept.RealInterceptorChain r12 = c(r4, r5, r6, r7, r8, r9)
            r0.f4053h = r11
            r0.f4054i = r13
            r0.f4057l = r3
            java.lang.Object r12 = r13.a(r12, r0)
            if (r12 != r1) goto L70
            return r1
        L70:
            r0 = r11
            r10 = r13
            r13 = r12
            r12 = r10
        L74:
            m0.g r13 = (m0.g) r13
            m0.f r1 = r13.b()
            r0.a(r1, r12)
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: coil.intercept.RealInterceptorChain.f(m0.f, rs.c):java.lang.Object");
    }

    @Override // h0.a.InterfaceC0763a
    @NotNull
    public f getRequest() {
        return this.f4049d;
    }

    @Override // h0.a.InterfaceC0763a
    @NotNull
    public g getSize() {
        return this.f4050e;
    }
}
