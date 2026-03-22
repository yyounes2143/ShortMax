package io.bidmachine.analytics.internal;

import android.content.Context;
import io.bidmachine.analytics.ReaderConfig;
import io.bidmachine.analytics.internal.AbstractC3314i;
import io.bidmachine.analytics.internal.t0;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt;
/* loaded from: classes7.dex */
public final class d0 extends AbstractC3314i {

    /* renamed from: l  reason: collision with root package name */
    public static final b f54064l = new b(null);

    /* renamed from: g  reason: collision with root package name */
    private final e0 f54065g;

    /* renamed from: h  reason: collision with root package name */
    private final Function1 f54066h;

    /* renamed from: i  reason: collision with root package name */
    private Context f54067i;

    /* renamed from: j  reason: collision with root package name */
    private C3320o f54068j;

    /* renamed from: k  reason: collision with root package name */
    private final String f54069k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class a extends Lambda implements Function1 {

        /* renamed from: a  reason: collision with root package name */
        public static final a f54070a = new a();

        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public final C3320o invoke(Context context) {
            return new C3320o(context);
        }
    }

    /* loaded from: classes7.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class c extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f54071a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f54072b;

        /* renamed from: d  reason: collision with root package name */
        int f54074d;

        c(rs.c cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f54072b = obj;
            this.f54074d |= Integer.MIN_VALUE;
            return d0.this.a(null, this);
        }
    }

    public /* synthetic */ d0(e0 e0Var, Function1 function1, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(e0Var, (i10 & 2) != 0 ? a.f54070a : function1);
    }

    @Override // io.bidmachine.analytics.internal.AbstractC3315j
    public String a() {
        return this.f54069k;
    }

    @Override // io.bidmachine.analytics.internal.AbstractC3315j
    public void d(Context context) {
        this.f54067i = context;
    }

    @Override // io.bidmachine.analytics.internal.AbstractC3314i, io.bidmachine.analytics.internal.AbstractC3315j
    public void e(Context context) {
        super.e(context);
        C3320o c3320o = this.f54068j;
        if (c3320o != null) {
            c3320o.j();
        }
    }

    @Override // io.bidmachine.analytics.internal.AbstractC3314i, io.bidmachine.analytics.internal.AbstractC3315j
    public void f(Context context) {
        C3320o c3320o = this.f54068j;
        if (c3320o != null) {
            c3320o.i();
        }
        super.f(context);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0072  */
    @Override // io.bidmachine.analytics.internal.AbstractC3314i
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object a(io.bidmachine.analytics.ReaderConfig.Rule r6, rs.c r7) {
        /*
            r5 = this;
            boolean r6 = r7 instanceof io.bidmachine.analytics.internal.d0.c
            if (r6 == 0) goto L13
            r6 = r7
            io.bidmachine.analytics.internal.d0$c r6 = (io.bidmachine.analytics.internal.d0.c) r6
            int r0 = r6.f54074d
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = r0 & r1
            if (r2 == 0) goto L13
            int r0 = r0 - r1
            r6.f54074d = r0
            goto L18
        L13:
            io.bidmachine.analytics.internal.d0$c r6 = new io.bidmachine.analytics.internal.d0$c
            r6.<init>(r7)
        L18:
            java.lang.Object r7 = r6.f54072b
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r6.f54074d
            r2 = 1
            if (r1 == 0) goto L35
            if (r1 != r2) goto L2d
            java.lang.Object r6 = r6.f54071a
            io.bidmachine.analytics.internal.d0 r6 = (io.bidmachine.analytics.internal.d0) r6
            kotlin.f.b(r7)
            goto L56
        L2d:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L35:
            kotlin.f.b(r7)
            io.bidmachine.analytics.internal.o r7 = r5.f54068j
            if (r7 == 0) goto L7a
            kotlin.time.b$a r1 = kotlin.time.b.f61250b
            kotlin.time.DurationUnit r1 = kotlin.time.DurationUnit.SECONDS
            r3 = 10
            long r3 = kotlin.time.c.s(r3, r1)
            long r3 = kotlin.time.b.q(r3)
            r6.f54071a = r5
            r6.f54074d = r2
            java.lang.Object r7 = r7.a(r3, r6)
            if (r7 != r0) goto L55
            return r0
        L55:
            r6 = r5
        L56:
            io.bidmachine.analytics.internal.n r7 = (io.bidmachine.analytics.internal.C3319n) r7
            io.bidmachine.analytics.internal.e0 r6 = r6.f54065g
            r6.a(r7)
            if (r7 == 0) goto L72
            boolean r6 = r7.f()
            if (r6 != 0) goto L6a
            java.lang.String r6 = r7.b()
            return r6
        L6a:
            java.io.FileNotFoundException r6 = new java.io.FileNotFoundException
            java.lang.String r7 = "Data is empty"
            r6.<init>(r7)
            throw r6
        L72:
            java.io.FileNotFoundException r6 = new java.io.FileNotFoundException
            java.lang.String r7 = "Data not received yet"
            r6.<init>(r7)
            throw r6
        L7a:
            java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
            java.lang.String r7 = "Not configured"
            r6.<init>(r7)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.analytics.internal.d0.a(io.bidmachine.analytics.ReaderConfig$Rule, rs.c):java.lang.Object");
    }

    public d0(e0 e0Var, Function1 function1) {
        this.f54065g = e0Var;
        this.f54066h = function1;
        this.f54069k = "apur";
    }

    @Override // io.bidmachine.analytics.internal.AbstractC3314i, io.bidmachine.analytics.internal.AbstractC3315j
    /* renamed from: a */
    public void b(AbstractC3314i.a aVar) {
        super.b(aVar);
        Context context = this.f54067i;
        if (context != null) {
            if (aVar.c().size() == 1) {
                List split$default = StringsKt.split$default(s0.b(((ReaderConfig.Rule) CollectionsKt.r0(aVar.c())).getPath()), new String[]{"-"}, false, 0, 6, null);
                if (split$default.size() == 2) {
                    t0.a aVar2 = t0.f54333d;
                    t0 a10 = aVar2.a(StringsKt.v1((String) split$default.get(0)).toString());
                    if (a10 != null) {
                        t0 a11 = aVar2.a(StringsKt.v1((String) split$default.get(1)).toString());
                        if (a11 != null) {
                            C3320o c3320o = this.f54068j;
                            if (c3320o == null) {
                                c3320o = (C3320o) this.f54066h.invoke(context);
                            }
                            this.f54068j = c3320o;
                            t0 l10 = c3320o.l();
                            if (l10 != null) {
                                if (l10.compareTo(a10) >= 0 && l10.compareTo(a11) <= 0) {
                                    if (c3320o.u()) {
                                        if (!c3320o.t()) {
                                            throw new IllegalStateException("No permission");
                                        }
                                        return;
                                    }
                                    throw new IllegalStateException("No host found");
                                }
                                throw new IllegalStateException(("Version " + l10 + " not supported by config").toString());
                            }
                            throw new IllegalStateException("Version not found");
                        }
                        throw new IllegalStateException("Max version not found");
                    }
                    throw new IllegalStateException("Min version not found");
                }
                throw new IllegalStateException("Path should contains min and max value");
            }
            throw new IllegalStateException(("Reader " + a() + " should contains only one rule, received " + aVar.c().size()).toString());
        }
        throw new IllegalArgumentException("Context is null");
    }
}
