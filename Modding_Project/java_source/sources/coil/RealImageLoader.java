package coil;

import a0.c;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import coil.decode.BitmapFactoryDecoder;
import coil.fetch.HttpUriFetcher;
import coil.intercept.EngineInterceptor;
import coil.memory.MemoryCache;
import g0.a;
import g0.b;
import g0.c;
import g0.e;
import g0.f;
import g0.j;
import g0.k;
import gt.d0;
import gt.g0;
import gt.k0;
import gt.q0;
import gt.r1;
import j0.e;
import j0.f;
import j0.g;
import java.io.File;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import m0.f;
import m0.l;
import ms.i;
import okhttp3.Call;
import okhttp3.HttpUrl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import r0.n;
import r0.q;
import r0.s;
/* compiled from: RealImageLoader.kt */
@Metadata
/* loaded from: classes2.dex */
public final class RealImageLoader implements ImageLoader {
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    public static final a f3737q = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Context f3738a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final m0.a f3739b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final i<MemoryCache> f3740c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final i<e0.a> f3741d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final i<Call.Factory> f3742e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final c.d f3743f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final a0.b f3744g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final n f3745h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private final g0 f3746i = kotlinx.coroutines.i.a(r1.b(null, 1, null).plus(q0.c().m()).plus(new b(d0.D8, this)));
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private final s f3747j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private final l f3748k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private final i f3749l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private final i f3750m;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    private final a0.b f3751n;
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final List<h0.a> f3752o;
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private final AtomicBoolean f3753p;

    /* compiled from: RealImageLoader.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: CoroutineExceptionHandler.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class b extends kotlin.coroutines.a implements d0 {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RealImageLoader f3754a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(d0.b bVar, RealImageLoader realImageLoader) {
            super(bVar);
            this.f3754a = realImageLoader;
        }

        @Override // gt.d0
        public void handleException(@NotNull CoroutineContext coroutineContext, @NotNull Throwable th2) {
            this.f3754a.h();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public RealImageLoader(@NotNull Context context, @NotNull m0.a aVar, @NotNull i<? extends MemoryCache> iVar, @NotNull i<? extends e0.a> iVar2, @NotNull i<? extends Call.Factory> iVar3, @NotNull c.d dVar, @NotNull a0.b bVar, @NotNull n nVar, @Nullable q qVar) {
        this.f3738a = context;
        this.f3739b = aVar;
        this.f3740c = iVar;
        this.f3741d = iVar2;
        this.f3742e = iVar3;
        this.f3743f = dVar;
        this.f3744g = bVar;
        this.f3745h = nVar;
        s sVar = new s(this, context, nVar.d());
        this.f3747j = sVar;
        l lVar = new l(this, sVar, null);
        this.f3748k = lVar;
        this.f3749l = iVar;
        this.f3750m = iVar2;
        this.f3751n = bVar.h().d(new j0.c(), HttpUrl.class).d(new g(), String.class).d(new j0.b(), Uri.class).d(new f(), Uri.class).d(new e(), Integer.class).d(new j0.a(), byte[].class).c(new i0.c(), Uri.class).c(new i0.a(nVar.a()), File.class).b(new HttpUriFetcher.b(iVar3, iVar2, nVar.e()), Uri.class).b(new j.a(), File.class).b(new a.C0749a(), Uri.class).b(new e.a(), Uri.class).b(new k.b(), Uri.class).b(new f.a(), Drawable.class).b(new b.a(), Bitmap.class).b(new c.a(), ByteBuffer.class).a(new BitmapFactoryDecoder.c(nVar.c(), nVar.b())).e();
        this.f3752o = CollectionsKt.L0(getComponents().c(), new EngineInterceptor(this, lVar, null));
        this.f3753p = new AtomicBoolean(false);
        sVar.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00fc A[Catch: all -> 0x0107, TryCatch #2 {all -> 0x0107, blocks: (B:44:0x00f6, B:46:0x00fc, B:48:0x0102, B:53:0x010f, B:56:0x0117, B:58:0x0129, B:60:0x012f, B:61:0x0132, B:63:0x013b, B:64:0x013e, B:57:0x0125), top: B:97:0x00f6 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0117 A[Catch: all -> 0x0107, TryCatch #2 {all -> 0x0107, blocks: (B:44:0x00f6, B:46:0x00fc, B:48:0x0102, B:53:0x010f, B:56:0x0117, B:58:0x0129, B:60:0x012f, B:61:0x0132, B:63:0x013b, B:64:0x013e, B:57:0x0125), top: B:97:0x00f6 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0125 A[Catch: all -> 0x0107, TryCatch #2 {all -> 0x0107, blocks: (B:44:0x00f6, B:46:0x00fc, B:48:0x0102, B:53:0x010f, B:56:0x0117, B:58:0x0129, B:60:0x012f, B:61:0x0132, B:63:0x013b, B:64:0x013e, B:57:0x0125), top: B:97:0x00f6 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x012f A[Catch: all -> 0x0107, TryCatch #2 {all -> 0x0107, blocks: (B:44:0x00f6, B:46:0x00fc, B:48:0x0102, B:53:0x010f, B:56:0x0117, B:58:0x0129, B:60:0x012f, B:61:0x0132, B:63:0x013b, B:64:0x013e, B:57:0x0125), top: B:97:0x00f6 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x013b A[Catch: all -> 0x0107, TryCatch #2 {all -> 0x0107, blocks: (B:44:0x00f6, B:46:0x00fc, B:48:0x0102, B:53:0x010f, B:56:0x0117, B:58:0x0129, B:60:0x012f, B:61:0x0132, B:63:0x013b, B:64:0x013e, B:57:0x0125), top: B:97:0x00f6 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0157 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0189 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0194 A[Catch: all -> 0x004b, TryCatch #3 {all -> 0x004b, blocks: (B:14:0x0046, B:72:0x018e, B:74:0x0194, B:75:0x019f, B:77:0x01a3), top: B:99:0x0046 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x019f A[Catch: all -> 0x004b, TryCatch #3 {all -> 0x004b, blocks: (B:14:0x0046, B:72:0x018e, B:74:0x0194, B:75:0x019f, B:77:0x01a3), top: B:99:0x0046 }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01bb A[Catch: all -> 0x01cc, TRY_LEAVE, TryCatch #4 {all -> 0x01cc, blocks: (B:82:0x01b7, B:84:0x01bb, B:89:0x01ce, B:90:0x01d1), top: B:100:0x01b7 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01ce A[Catch: all -> 0x01cc, TRY_ENTER, TryCatch #4 {all -> 0x01cc, blocks: (B:82:0x01b7, B:84:0x01bb, B:89:0x01ce, B:90:0x01d1), top: B:100:0x01b7 }] */
    @androidx.annotation.MainThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object g(m0.f r21, int r22, rs.c<? super m0.g> r23) {
        /*
            Method dump skipped, instructions count: 470
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil.RealImageLoader.g(m0.f, int, rs.c):java.lang.Object");
    }

    private final void i(m0.f fVar, a0.c cVar) {
        cVar.d(fVar);
        f.b A = fVar.A();
        if (A != null) {
            A.d(fVar);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0008, code lost:
        if (r5 != null) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void j(m0.d r4, o0.a r5, a0.c r6) {
        /*
            r3 = this;
            m0.f r0 = r4.b()
            boolean r1 = r5 instanceof q0.d
            if (r1 != 0) goto Lb
            if (r5 == 0) goto L37
            goto L1e
        Lb:
            m0.f r1 = r4.b()
            q0.c$a r1 = r1.P()
            r2 = r5
            q0.d r2 = (q0.d) r2
            q0.c r1 = r1.a(r2, r4)
            boolean r2 = r1 instanceof q0.b
            if (r2 == 0) goto L26
        L1e:
            android.graphics.drawable.Drawable r1 = r4.a()
            r5.d(r1)
            goto L37
        L26:
            m0.f r5 = r4.b()
            r6.q(r5, r1)
            r1.a()
            m0.f r5 = r4.b()
            r6.o(r5, r1)
        L37:
            r6.b(r0, r4)
            m0.f$b r5 = r0.A()
            if (r5 == 0) goto L43
            r5.b(r0, r4)
        L43:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: coil.RealImageLoader.j(m0.d, o0.a, a0.c):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000b, code lost:
        if (r5 != null) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void k(m0.m r4, o0.a r5, a0.c r6) {
        /*
            r3 = this;
            m0.f r0 = r4.b()
            r4.c()
            boolean r1 = r5 instanceof q0.d
            if (r1 != 0) goto Le
            if (r5 == 0) goto L3a
            goto L21
        Le:
            m0.f r1 = r4.b()
            q0.c$a r1 = r1.P()
            r2 = r5
            q0.d r2 = (q0.d) r2
            q0.c r1 = r1.a(r2, r4)
            boolean r2 = r1 instanceof q0.b
            if (r2 == 0) goto L29
        L21:
            android.graphics.drawable.Drawable r1 = r4.a()
            r5.b(r1)
            goto L3a
        L29:
            m0.f r5 = r4.b()
            r6.q(r5, r1)
            r1.a()
            m0.f r5 = r4.b()
            r6.o(r5, r1)
        L3a:
            r6.c(r0, r4)
            m0.f$b r5 = r0.A()
            if (r5 == 0) goto L46
            r5.c(r0, r4)
        L46:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: coil.RealImageLoader.k(m0.m, o0.a, a0.c):void");
    }

    @Override // coil.ImageLoader
    @Nullable
    public Object a(@NotNull m0.f fVar, @NotNull rs.c<? super m0.g> cVar) {
        return kotlinx.coroutines.i.f(new RealImageLoader$execute$2(fVar, this, null), cVar);
    }

    @Override // coil.ImageLoader
    @NotNull
    public m0.c b(@NotNull m0.f fVar) {
        k0<? extends m0.g> b10;
        b10 = gt.g.b(this.f3746i, null, null, new RealImageLoader$enqueue$job$1(this, fVar, null), 3, null);
        if (fVar.M() instanceof o0.b) {
            return r0.i.l(((o0.b) fVar.M()).getView()).b(b10);
        }
        return new m0.i(b10);
    }

    @Override // coil.ImageLoader
    @NotNull
    public m0.a c() {
        return this.f3739b;
    }

    @Override // coil.ImageLoader
    @Nullable
    public MemoryCache d() {
        return (MemoryCache) this.f3749l.getValue();
    }

    @Override // coil.ImageLoader
    @NotNull
    public a0.b getComponents() {
        return this.f3751n;
    }

    @Nullable
    public final q h() {
        return null;
    }

    public final void l(int i10) {
        MemoryCache value;
        i<MemoryCache> iVar = this.f3740c;
        if (iVar != null && (value = iVar.getValue()) != null) {
            value.a(i10);
        }
    }
}
