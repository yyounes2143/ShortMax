package io.bidmachine.analytics.internal;

import android.content.Context;
import gt.r1;
import io.bidmachine.analytics.ReaderConfig;
import java.util.List;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.r;
/* renamed from: io.bidmachine.analytics.internal.i  reason: case insensitive filesystem */
/* loaded from: classes7.dex */
public abstract class AbstractC3314i extends AbstractC3315j {

    /* renamed from: d  reason: collision with root package name */
    private final ms.i f54110d = kotlin.c.b(d.f54128a);

    /* renamed from: e  reason: collision with root package name */
    private kotlinx.coroutines.r f54111e;

    /* renamed from: f  reason: collision with root package name */
    private a f54112f;

    /* renamed from: io.bidmachine.analytics.internal.i$a */
    /* loaded from: classes7.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final long f54113a;

        /* renamed from: b  reason: collision with root package name */
        private final List f54114b;

        /* renamed from: c  reason: collision with root package name */
        private final InterfaceC3313h f54115c;

        public a(long j10, List list, InterfaceC3313h interfaceC3313h) {
            this.f54113a = j10;
            this.f54114b = list;
            this.f54115c = interfaceC3313h;
        }

        public final InterfaceC3313h a() {
            return this.f54115c;
        }

        public final long b() {
            return this.f54113a;
        }

        public final List c() {
            return this.f54114b;
        }
    }

    /* renamed from: io.bidmachine.analytics.internal.i$b */
    /* loaded from: classes7.dex */
    static final class b extends SuspendLambda implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        Object f54116a;

        /* renamed from: b  reason: collision with root package name */
        Object f54117b;

        /* renamed from: c  reason: collision with root package name */
        Object f54118c;

        /* renamed from: d  reason: collision with root package name */
        int f54119d;

        /* renamed from: e  reason: collision with root package name */
        private /* synthetic */ Object f54120e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ a f54121f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ AbstractC3314i f54122g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(a aVar, AbstractC3314i abstractC3314i, rs.c cVar) {
            super(2, cVar);
            this.f54121f = aVar;
            this.f54122g = abstractC3314i;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c cVar) {
            return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c create(Object obj, rs.c cVar) {
            b bVar = new b(this.f54121f, this.f54122g, cVar);
            bVar.f54120e = obj;
            return bVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0064  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0084  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x0089  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x008e  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x008c -> B:14:0x005e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00b0 -> B:11:0x0041). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r12) {
            /*
                r11 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
                int r1 = r11.f54119d
                r2 = 2
                r3 = 1
                r4 = 0
                if (r1 == 0) goto L39
                if (r1 == r3) goto L1f
                if (r1 != r2) goto L17
                java.lang.Object r1 = r11.f54120e
                gt.g0 r1 = (gt.g0) r1
                kotlin.f.b(r12)
                goto L41
            L17:
                java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r12.<init>(r0)
                throw r12
            L1f:
                java.lang.Object r1 = r11.f54118c
                java.util.Iterator r1 = (java.util.Iterator) r1
                java.lang.Object r5 = r11.f54117b
                java.util.Collection r5 = (java.util.Collection) r5
                java.lang.Object r6 = r11.f54116a
                io.bidmachine.analytics.internal.i r6 = (io.bidmachine.analytics.internal.AbstractC3314i) r6
                java.lang.Object r7 = r11.f54120e
                gt.g0 r7 = (gt.g0) r7
                kotlin.f.b(r12)
                kotlin.Result r12 = (kotlin.Result) r12
                java.lang.Object r12 = r12.n()
                goto L7e
            L39:
                kotlin.f.b(r12)
                java.lang.Object r12 = r11.f54120e
                r1 = r12
                gt.g0 r1 = (gt.g0) r1
            L41:
                boolean r12 = kotlinx.coroutines.i.h(r1)
                if (r12 == 0) goto Lb2
                io.bidmachine.analytics.internal.i$a r12 = r11.f54121f
                java.util.List r12 = r12.c()
                io.bidmachine.analytics.internal.i r5 = r11.f54122g
                java.util.ArrayList r6 = new java.util.ArrayList
                r6.<init>()
                java.util.Iterator r12 = r12.iterator()
                r9 = r1
                r1 = r12
                r12 = r9
                r10 = r6
                r6 = r5
                r5 = r10
            L5e:
                boolean r7 = r1.hasNext()
                if (r7 == 0) goto L8e
                java.lang.Object r7 = r1.next()
                io.bidmachine.analytics.ReaderConfig$Rule r7 = (io.bidmachine.analytics.ReaderConfig.Rule) r7
                r11.f54120e = r12
                r11.f54116a = r6
                r11.f54117b = r5
                r11.f54118c = r1
                r11.f54119d = r3
                java.lang.Object r7 = io.bidmachine.analytics.internal.AbstractC3314i.a(r6, r7, r11)
                if (r7 != r0) goto L7b
                return r0
            L7b:
                r9 = r7
                r7 = r12
                r12 = r9
            L7e:
                boolean r8 = kotlin.Result.i(r12)
                if (r8 == 0) goto L85
                r12 = r4
            L85:
                io.bidmachine.analytics.internal.h$a r12 = (io.bidmachine.analytics.internal.InterfaceC3313h.a) r12
                if (r12 == 0) goto L8c
                r5.add(r12)
            L8c:
                r12 = r7
                goto L5e
            L8e:
                java.util.List r5 = (java.util.List) r5
                io.bidmachine.analytics.internal.i$a r1 = r11.f54121f
                io.bidmachine.analytics.internal.h r1 = r1.a()
                r1.a(r5)
                io.bidmachine.analytics.internal.i$a r1 = r11.f54121f
                long r5 = r1.b()
                r11.f54120e = r12
                r11.f54116a = r4
                r11.f54117b = r4
                r11.f54118c = r4
                r11.f54119d = r2
                java.lang.Object r1 = kotlinx.coroutines.DelayKt.b(r5, r11)
                if (r1 != r0) goto Lb0
                return r0
            Lb0:
                r1 = r12
                goto L41
            Lb2:
                kotlin.Unit r12 = kotlin.Unit.f60915a
                return r12
            */
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.analytics.internal.AbstractC3314i.b.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.bidmachine.analytics.internal.i$c */
    /* loaded from: classes7.dex */
    public static final class c extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f54123a;

        /* renamed from: b  reason: collision with root package name */
        Object f54124b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f54125c;

        /* renamed from: e  reason: collision with root package name */
        int f54127e;

        c(rs.c cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f54125c = obj;
            this.f54127e |= Integer.MIN_VALUE;
            Object b10 = AbstractC3314i.this.b(null, this);
            if (b10 == kotlin.coroutines.intrinsics.a.f()) {
                return b10;
            }
            return Result.b(b10);
        }
    }

    /* renamed from: io.bidmachine.analytics.internal.i$d */
    /* loaded from: classes7.dex */
    static final class d extends Lambda implements Function0 {

        /* renamed from: a  reason: collision with root package name */
        public static final d f54128a = new d();

        d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: a */
        public final gt.g0 invoke() {
            return kotlinx.coroutines.i.a(r1.b(null, 1, null).plus(p0.f54302g.a().c()));
        }
    }

    public abstract Object a(ReaderConfig.Rule rule, rs.c cVar);

    @Override // io.bidmachine.analytics.internal.AbstractC3315j
    public void e(Context context) {
        kotlinx.coroutines.r rVar = this.f54111e;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
    }

    @Override // io.bidmachine.analytics.internal.AbstractC3315j
    public void f(Context context) {
        kotlinx.coroutines.r d10;
        kotlinx.coroutines.r rVar = this.f54111e;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
        a aVar = this.f54112f;
        if (aVar != null) {
            d10 = gt.g.d(b(), null, null, new b(aVar, this, null), 3, null);
            this.f54111e = d10;
        }
    }

    @Override // io.bidmachine.analytics.internal.AbstractC3315j
    /* renamed from: a */
    public void b(a aVar) {
        this.f54112f = aVar;
    }

    public final gt.g0 b() {
        return (gt.g0) this.f54110d.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x007f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(io.bidmachine.analytics.ReaderConfig.Rule r9, rs.c r10) {
        /*
            r8 = this;
            boolean r0 = r10 instanceof io.bidmachine.analytics.internal.AbstractC3314i.c
            if (r0 == 0) goto L13
            r0 = r10
            io.bidmachine.analytics.internal.i$c r0 = (io.bidmachine.analytics.internal.AbstractC3314i.c) r0
            int r1 = r0.f54127e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f54127e = r1
            goto L18
        L13:
            io.bidmachine.analytics.internal.i$c r0 = new io.bidmachine.analytics.internal.i$c
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.f54125c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f54127e
            r3 = 1
            if (r2 == 0) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r9 = r0.f54124b
            io.bidmachine.analytics.ReaderConfig$Rule r9 = (io.bidmachine.analytics.ReaderConfig.Rule) r9
            java.lang.Object r0 = r0.f54123a
            io.bidmachine.analytics.internal.i r0 = (io.bidmachine.analytics.internal.AbstractC3314i) r0
            kotlin.f.b(r10)     // Catch: java.lang.Throwable -> L31
            goto L4e
        L31:
            r10 = move-exception
            goto L58
        L33:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L3b:
            kotlin.f.b(r10)
            kotlin.Result$a r10 = kotlin.Result.f60901b     // Catch: java.lang.Throwable -> L56
            r0.f54123a = r8     // Catch: java.lang.Throwable -> L56
            r0.f54124b = r9     // Catch: java.lang.Throwable -> L56
            r0.f54127e = r3     // Catch: java.lang.Throwable -> L56
            java.lang.Object r10 = r8.a(r9, r0)     // Catch: java.lang.Throwable -> L56
            if (r10 != r1) goto L4d
            return r1
        L4d:
            r0 = r8
        L4e:
            java.lang.String r10 = (java.lang.String) r10     // Catch: java.lang.Throwable -> L31
            java.lang.Object r10 = kotlin.Result.d(r10)     // Catch: java.lang.Throwable -> L31
        L54:
            r2 = r9
            goto L63
        L56:
            r10 = move-exception
            r0 = r8
        L58:
            kotlin.Result$a r1 = kotlin.Result.f60901b
            java.lang.Object r10 = kotlin.f.a(r10)
            java.lang.Object r10 = kotlin.Result.d(r10)
            goto L54
        L63:
            boolean r9 = kotlin.Result.i(r10)
            if (r9 == 0) goto L6b
            r9 = 0
            goto L6c
        L6b:
            r9 = r10
        L6c:
            r3 = r9
            java.lang.String r3 = (java.lang.String) r3
            if (r3 == 0) goto L7f
            io.bidmachine.analytics.internal.h$a r9 = new io.bidmachine.analytics.internal.h$a
            r5 = 4
            r6 = 0
            r4 = 0
            r1 = r9
            r1.<init>(r2, r3, r4, r5, r6)
            java.lang.Object r9 = kotlin.Result.d(r9)
            goto Lb7
        L7f:
            java.lang.Throwable r9 = kotlin.Result.g(r10)
            boolean r10 = r9 instanceof java.util.concurrent.CancellationException
            if (r10 != 0) goto Lb8
            boolean r10 = r9 instanceof java.io.FileNotFoundException
            if (r10 == 0) goto L8e
            io.bidmachine.analytics.internal.q0$a r10 = io.bidmachine.analytics.internal.q0.a.READER_NO_CONTENT
            goto L97
        L8e:
            boolean r10 = r9 instanceof java.lang.SecurityException
            if (r10 == 0) goto L95
            io.bidmachine.analytics.internal.q0$a r10 = io.bidmachine.analytics.internal.q0.a.READER_NO_ACCESS
            goto L97
        L95:
            io.bidmachine.analytics.internal.q0$a r10 = io.bidmachine.analytics.internal.q0.a.READER_INVALID
        L97:
            if (r9 == 0) goto L9f
            java.lang.String r9 = io.bidmachine.analytics.internal.s0.a(r9)
            if (r9 != 0) goto La1
        L9f:
            java.lang.String r9 = ""
        La1:
            io.bidmachine.analytics.internal.h$a r7 = new io.bidmachine.analytics.internal.h$a
            io.bidmachine.analytics.internal.q0 r4 = new io.bidmachine.analytics.internal.q0
            java.lang.String r0 = r0.a()
            r4.<init>(r0, r10, r9)
            r5 = 2
            r6 = 0
            r3 = 0
            r1 = r7
            r1.<init>(r2, r3, r4, r5, r6)
            java.lang.Object r9 = kotlin.Result.d(r7)
        Lb7:
            return r9
        Lb8:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.analytics.internal.AbstractC3314i.b(io.bidmachine.analytics.ReaderConfig$Rule, rs.c):java.lang.Object");
    }
}
