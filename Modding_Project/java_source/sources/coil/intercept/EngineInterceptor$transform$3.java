package coil.intercept;

import coil.intercept.EngineInterceptor;
import gt.g0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import m0.f;
import m0.j;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import p0.a;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: EngineInterceptor.kt */
@Metadata
@d(c = "coil.intercept.EngineInterceptor$transform$3", f = "EngineInterceptor.kt", l = {242}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class EngineInterceptor$transform$3 extends SuspendLambda implements Function2<g0, c<? super EngineInterceptor.b>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f4034h;

    /* renamed from: i  reason: collision with root package name */
    Object f4035i;

    /* renamed from: j  reason: collision with root package name */
    int f4036j;

    /* renamed from: k  reason: collision with root package name */
    int f4037k;

    /* renamed from: l  reason: collision with root package name */
    int f4038l;

    /* renamed from: m  reason: collision with root package name */
    private /* synthetic */ Object f4039m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ EngineInterceptor f4040n;

    /* renamed from: o  reason: collision with root package name */
    final /* synthetic */ EngineInterceptor.b f4041o;

    /* renamed from: p  reason: collision with root package name */
    final /* synthetic */ j f4042p;

    /* renamed from: q  reason: collision with root package name */
    final /* synthetic */ List<a> f4043q;

    /* renamed from: r  reason: collision with root package name */
    final /* synthetic */ a0.c f4044r;

    /* renamed from: s  reason: collision with root package name */
    final /* synthetic */ f f4045s;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public EngineInterceptor$transform$3(EngineInterceptor engineInterceptor, EngineInterceptor.b bVar, j jVar, List<? extends a> list, a0.c cVar, f fVar, c<? super EngineInterceptor$transform$3> cVar2) {
        super(2, cVar2);
        this.f4040n = engineInterceptor;
        this.f4041o = bVar;
        this.f4042p = jVar;
        this.f4043q = list;
        this.f4044r = cVar;
        this.f4045s = fVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        EngineInterceptor$transform$3 engineInterceptor$transform$3 = new EngineInterceptor$transform$3(this.f4040n, this.f4041o, this.f4042p, this.f4043q, this.f4044r, this.f4045s, cVar);
        engineInterceptor$transform$3.f4039m = obj;
        return engineInterceptor$transform$3;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super EngineInterceptor.b> cVar) {
        return ((EngineInterceptor$transform$3) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x007a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0070 -> B:13:0x0073). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r11) {
        /*
            r10 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r10.f4038l
            r2 = 1
            if (r1 == 0) goto L27
            if (r1 != r2) goto L1f
            int r1 = r10.f4037k
            int r3 = r10.f4036j
            java.lang.Object r4 = r10.f4035i
            m0.j r4 = (m0.j) r4
            java.lang.Object r5 = r10.f4034h
            java.util.List r5 = (java.util.List) r5
            java.lang.Object r6 = r10.f4039m
            gt.g0 r6 = (gt.g0) r6
            kotlin.f.b(r11)
            goto L73
        L1f:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L27:
            kotlin.f.b(r11)
            java.lang.Object r11 = r10.f4039m
            gt.g0 r11 = (gt.g0) r11
            coil.intercept.EngineInterceptor r1 = r10.f4040n
            coil.intercept.EngineInterceptor$b r3 = r10.f4041o
            android.graphics.drawable.Drawable r3 = r3.e()
            m0.j r4 = r10.f4042p
            java.util.List<p0.a> r5 = r10.f4043q
            android.graphics.Bitmap r1 = coil.intercept.EngineInterceptor.b(r1, r3, r4, r5)
            a0.c r3 = r10.f4044r
            m0.f r4 = r10.f4045s
            r3.f(r4, r1)
            java.util.List<p0.a> r3 = r10.f4043q
            m0.j r4 = r10.f4042p
            int r5 = r3.size()
            r6 = 0
            r9 = r6
            r6 = r11
            r11 = r1
            r1 = r5
            r5 = r3
            r3 = r9
        L54:
            if (r3 >= r1) goto L7a
            java.lang.Object r7 = r5.get(r3)
            p0.a r7 = (p0.a) r7
            n0.g r8 = r4.n()
            r10.f4039m = r6
            r10.f4034h = r5
            r10.f4035i = r4
            r10.f4036j = r3
            r10.f4037k = r1
            r10.f4038l = r2
            java.lang.Object r11 = r7.a(r11, r8, r10)
            if (r11 != r0) goto L73
            return r0
        L73:
            android.graphics.Bitmap r11 = (android.graphics.Bitmap) r11
            kotlinx.coroutines.i.g(r6)
            int r3 = r3 + r2
            goto L54
        L7a:
            a0.c r0 = r10.f4044r
            m0.f r1 = r10.f4045s
            r0.k(r1, r11)
            coil.intercept.EngineInterceptor$b r2 = r10.f4041o
            m0.f r0 = r10.f4045s
            android.content.Context r0 = r0.l()
            android.content.res.Resources r0 = r0.getResources()
            android.graphics.drawable.BitmapDrawable r3 = new android.graphics.drawable.BitmapDrawable
            r3.<init>(r0, r11)
            r7 = 14
            r8 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            coil.intercept.EngineInterceptor$b r11 = coil.intercept.EngineInterceptor.b.b(r2, r3, r4, r5, r6, r7, r8)
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: coil.intercept.EngineInterceptor$transform$3.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
