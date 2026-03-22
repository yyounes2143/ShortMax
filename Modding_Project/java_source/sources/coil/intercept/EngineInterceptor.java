package coil.intercept;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.VisibleForTesting;
import coil.ImageLoader;
import coil.decode.DataSource;
import gt.e;
import java.util.List;
import k0.c;
import kotlin.Metadata;
import kotlin.collections.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import m0.f;
import m0.j;
import m0.l;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import r0.i;
import r0.k;
import r0.q;
/* compiled from: EngineInterceptor.kt */
@Metadata
/* loaded from: classes2.dex */
public final class EngineInterceptor implements h0.a {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f3971d = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final ImageLoader f3972a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final l f3973b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final c f3974c;

    /* compiled from: EngineInterceptor.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: EngineInterceptor.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final Drawable f3975a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f3976b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final DataSource f3977c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private final String f3978d;

        public b(@NotNull Drawable drawable, boolean z10, @NotNull DataSource dataSource, @Nullable String str) {
            this.f3975a = drawable;
            this.f3976b = z10;
            this.f3977c = dataSource;
            this.f3978d = str;
        }

        public static /* synthetic */ b b(b bVar, Drawable drawable, boolean z10, DataSource dataSource, String str, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                drawable = bVar.f3975a;
            }
            if ((i10 & 2) != 0) {
                z10 = bVar.f3976b;
            }
            if ((i10 & 4) != 0) {
                dataSource = bVar.f3977c;
            }
            if ((i10 & 8) != 0) {
                str = bVar.f3978d;
            }
            return bVar.a(drawable, z10, dataSource, str);
        }

        @NotNull
        public final b a(@NotNull Drawable drawable, boolean z10, @NotNull DataSource dataSource, @Nullable String str) {
            return new b(drawable, z10, dataSource, str);
        }

        @NotNull
        public final DataSource c() {
            return this.f3977c;
        }

        @Nullable
        public final String d() {
            return this.f3978d;
        }

        @NotNull
        public final Drawable e() {
            return this.f3975a;
        }

        public final boolean f() {
            return this.f3976b;
        }
    }

    public EngineInterceptor(@NotNull ImageLoader imageLoader, @NotNull l lVar, @Nullable q qVar) {
        this.f3972a = imageLoader;
        this.f3973b = lVar;
        this.f3974c = new c(imageLoader, lVar, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Bitmap g(Drawable drawable, j jVar, List<? extends p0.a> list) {
        if (drawable instanceof BitmapDrawable) {
            Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
            if (n.f0(i.o(), r0.a.c(bitmap))) {
                return bitmap;
            }
        }
        return k.f65453a.a(drawable, jVar.f(), jVar.n(), jVar.m(), jVar.c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00e5  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x00ac -> B:21:0x00b4). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object h(g0.l r18, a0.b r19, m0.f r20, java.lang.Object r21, m0.j r22, a0.c r23, rs.c<? super coil.intercept.EngineInterceptor.b> r24) {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil.intercept.EngineInterceptor.h(g0.l, a0.b, m0.f, java.lang.Object, m0.j, a0.c, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0162 A[Catch: all -> 0x00e1, TRY_LEAVE, TryCatch #0 {all -> 0x00e1, blocks: (B:48:0x0157, B:50:0x0162, B:56:0x01a2, B:58:0x01a6, B:79:0x0212, B:80:0x0217, B:28:0x00a6, B:30:0x00b2, B:33:0x00e5, B:35:0x00eb, B:44:0x011a, B:37:0x00f1, B:39:0x0100, B:40:0x0107, B:42:0x010d, B:43:0x0114), top: B:89:0x00a6 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01a2 A[Catch: all -> 0x00e1, TRY_ENTER, TryCatch #0 {all -> 0x00e1, blocks: (B:48:0x0157, B:50:0x0162, B:56:0x01a2, B:58:0x01a6, B:79:0x0212, B:80:0x0217, B:28:0x00a6, B:30:0x00b2, B:33:0x00e5, B:35:0x00eb, B:44:0x011a, B:37:0x00f1, B:39:0x0100, B:40:0x0107, B:42:0x010d, B:43:0x0114), top: B:89:0x00a6 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01f8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x021e  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0223  */
    /* JADX WARN: Type inference failed for: r1v13, types: [T, a0.b] */
    /* JADX WARN: Type inference failed for: r1v20, types: [T, m0.j] */
    /* JADX WARN: Type inference failed for: r1v6, types: [T, a0.b] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object i(m0.f r36, java.lang.Object r37, m0.j r38, a0.c r39, rs.c<? super coil.intercept.EngineInterceptor.b> r40) {
        /*
            Method dump skipped, instructions count: 557
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil.intercept.EngineInterceptor.i(m0.f, java.lang.Object, m0.j, a0.c, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x009c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00b5  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0091 -> B:21:0x0095). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object j(a0.b r10, m0.f r11, java.lang.Object r12, m0.j r13, a0.c r14, rs.c<? super g0.h> r15) {
        /*
            Method dump skipped, instructions count: 208
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil.intercept.EngineInterceptor.j(a0.b, m0.f, java.lang.Object, m0.j, a0.c, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00af  */
    @Override // h0.a
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object a(@org.jetbrains.annotations.NotNull h0.a.InterfaceC0763a r14, @org.jetbrains.annotations.NotNull rs.c<? super m0.g> r15) {
        /*
            r13 = this;
            boolean r0 = r15 instanceof coil.intercept.EngineInterceptor$intercept$1
            if (r0 == 0) goto L13
            r0 = r15
            coil.intercept.EngineInterceptor$intercept$1 r0 = (coil.intercept.EngineInterceptor$intercept$1) r0
            int r1 = r0.f4025l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f4025l = r1
            goto L18
        L13:
            coil.intercept.EngineInterceptor$intercept$1 r0 = new coil.intercept.EngineInterceptor$intercept$1
            r0.<init>(r13, r15)
        L18:
            java.lang.Object r15 = r0.f4023j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f4025l
            r3 = 1
            if (r2 == 0) goto L3c
            if (r2 != r3) goto L34
            java.lang.Object r14 = r0.f4022i
            h0.a$a r14 = (h0.a.InterfaceC0763a) r14
            java.lang.Object r0 = r0.f4021h
            coil.intercept.EngineInterceptor r0 = (coil.intercept.EngineInterceptor) r0
            kotlin.f.b(r15)     // Catch: java.lang.Throwable -> L32
            goto L9f
        L32:
            r15 = move-exception
            goto La0
        L34:
            java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
            java.lang.String r15 = "call to 'resume' before 'invoke' with coroutine"
            r14.<init>(r15)
            throw r14
        L3c:
            kotlin.f.b(r15)
            m0.f r6 = r14.getRequest()     // Catch: java.lang.Throwable -> L78
            java.lang.Object r15 = r6.m()     // Catch: java.lang.Throwable -> L78
            n0.g r2 = r14.getSize()     // Catch: java.lang.Throwable -> L78
            a0.c r9 = r0.i.g(r14)     // Catch: java.lang.Throwable -> L78
            m0.l r4 = r13.f3973b     // Catch: java.lang.Throwable -> L78
            m0.j r8 = r4.f(r6, r2)     // Catch: java.lang.Throwable -> L78
            coil.size.Scale r4 = r8.m()     // Catch: java.lang.Throwable -> L78
            r9.p(r6, r15)     // Catch: java.lang.Throwable -> L78
            coil.ImageLoader r5 = r13.f3972a     // Catch: java.lang.Throwable -> L78
            a0.b r5 = r5.getComponents()     // Catch: java.lang.Throwable -> L78
            java.lang.Object r7 = r5.g(r15, r8)     // Catch: java.lang.Throwable -> L78
            r9.g(r6, r7)     // Catch: java.lang.Throwable -> L78
            k0.c r15 = r13.f3974c     // Catch: java.lang.Throwable -> L78
            coil.memory.MemoryCache$Key r10 = r15.f(r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L78
            if (r10 == 0) goto L7b
            k0.c r15 = r13.f3974c     // Catch: java.lang.Throwable -> L78
            coil.memory.MemoryCache$b r15 = r15.a(r6, r10, r2, r4)     // Catch: java.lang.Throwable -> L78
            goto L7c
        L78:
            r15 = move-exception
            r0 = r13
            goto La0
        L7b:
            r15 = 0
        L7c:
            if (r15 == 0) goto L85
            k0.c r0 = r13.f3974c     // Catch: java.lang.Throwable -> L78
            m0.m r14 = r0.g(r14, r6, r10, r15)     // Catch: java.lang.Throwable -> L78
            return r14
        L85:
            gt.c0 r15 = r6.v()     // Catch: java.lang.Throwable -> L78
            coil.intercept.EngineInterceptor$intercept$2 r2 = new coil.intercept.EngineInterceptor$intercept$2     // Catch: java.lang.Throwable -> L78
            r12 = 0
            r4 = r2
            r5 = r13
            r11 = r14
            r4.<init>(r5, r6, r7, r8, r9, r10, r11, r12)     // Catch: java.lang.Throwable -> L78
            r0.f4021h = r13     // Catch: java.lang.Throwable -> L78
            r0.f4022i = r14     // Catch: java.lang.Throwable -> L78
            r0.f4025l = r3     // Catch: java.lang.Throwable -> L78
            java.lang.Object r15 = gt.e.g(r15, r2, r0)     // Catch: java.lang.Throwable -> L78
            if (r15 != r1) goto L9f
            return r1
        L9f:
            return r15
        La0:
            boolean r1 = r15 instanceof java.util.concurrent.CancellationException
            if (r1 != 0) goto Laf
            m0.l r0 = r0.f3973b
            m0.f r14 = r14.getRequest()
            m0.d r14 = r0.b(r14, r15)
            return r14
        Laf:
            throw r15
        */
        throw new UnsupportedOperationException("Method not decompiled: coil.intercept.EngineInterceptor.a(h0.a$a, rs.c):java.lang.Object");
    }

    @VisibleForTesting
    @Nullable
    public final Object k(@NotNull b bVar, @NotNull f fVar, @NotNull j jVar, @NotNull a0.c cVar, @NotNull rs.c<? super b> cVar2) {
        List<p0.a> O = fVar.O();
        if (O.isEmpty()) {
            return bVar;
        }
        if (!(bVar.e() instanceof BitmapDrawable) && !fVar.g()) {
            return bVar;
        }
        return e.g(fVar.N(), new EngineInterceptor$transform$3(this, bVar, jVar, O, cVar, fVar, null), cVar2);
    }
}
