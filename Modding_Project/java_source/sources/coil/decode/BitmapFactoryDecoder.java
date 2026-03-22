package coil.decode;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import coil.ImageLoader;
import coil.size.Scale;
import d0.f;
import d0.g;
import d0.h;
import d0.k;
import d0.m;
import d0.o;
import g0.l;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.sync.d;
import m0.j;
import okio.Buffer;
import okio.BufferedSource;
import okio.ForwardingSource;
import okio.Okio;
import okio.Source;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import qt.e;
import r0.i;
/* compiled from: BitmapFactoryDecoder.kt */
@Metadata
/* loaded from: classes2.dex */
public final class BitmapFactoryDecoder implements g {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f3885e = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final m f3886a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final j f3887b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final e f3888c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final ExifOrientationPolicy f3889d;

    /* compiled from: BitmapFactoryDecoder.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BitmapFactoryDecoder.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class b extends ForwardingSource {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private Exception f3890a;

        public b(@NotNull Source source) {
            super(source);
        }

        @Nullable
        public final Exception d() {
            return this.f3890a;
        }

        @Override // okio.ForwardingSource, okio.Source
        public long read(@NotNull Buffer buffer, long j10) {
            try {
                return super.read(buffer, j10);
            } catch (Exception e10) {
                this.f3890a = e10;
                throw e10;
            }
        }
    }

    /* compiled from: BitmapFactoryDecoder.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class c implements g.a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final ExifOrientationPolicy f3891a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final e f3892b;

        public c(int i10, @NotNull ExifOrientationPolicy exifOrientationPolicy) {
            this.f3891a = exifOrientationPolicy;
            this.f3892b = d.b(i10, 0, 2, null);
        }

        @Override // d0.g.a
        @NotNull
        public g a(@NotNull l lVar, @NotNull j jVar, @NotNull ImageLoader imageLoader) {
            return new BitmapFactoryDecoder(lVar.b(), jVar, this.f3892b, this.f3891a);
        }

        public boolean equals(@Nullable Object obj) {
            return obj instanceof c;
        }

        public int hashCode() {
            return c.class.hashCode();
        }
    }

    public BitmapFactoryDecoder(@NotNull m mVar, @NotNull j jVar, @NotNull e eVar, @NotNull ExifOrientationPolicy exifOrientationPolicy) {
        this.f3886a = mVar;
        this.f3887b = jVar;
        this.f3888c = eVar;
        this.f3889d = exifOrientationPolicy;
    }

    private final void c(BitmapFactory.Options options, h hVar) {
        Bitmap.Config config;
        Bitmap.Config config2;
        Bitmap.Config config3;
        Bitmap.Config f10 = this.f3887b.f();
        if (hVar.b() || k.a(hVar)) {
            f10 = r0.a.e(f10);
        }
        if (this.f3887b.d() && f10 == Bitmap.Config.ARGB_8888 && Intrinsics.areEqual(options.outMimeType, "image/jpeg")) {
            f10 = Bitmap.Config.RGB_565;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            config = options.outConfig;
            config2 = Bitmap.Config.RGBA_F16;
            if (config == config2) {
                config3 = Bitmap.Config.HARDWARE;
                if (f10 != config3) {
                    f10 = Bitmap.Config.RGBA_F16;
                }
            }
        }
        options.inPreferredConfig = f10;
    }

    private final void d(BitmapFactory.Options options, h hVar) {
        int i10;
        int i11;
        int z10;
        int z11;
        m.a d10 = this.f3886a.d();
        boolean z12 = true;
        if ((d10 instanceof o) && n0.b.a(this.f3887b.n())) {
            options.inSampleSize = 1;
            options.inScaled = true;
            options.inDensity = ((o) d10).a();
            options.inTargetDensity = this.f3887b.g().getResources().getDisplayMetrics().densityDpi;
        } else if (options.outWidth > 0 && options.outHeight > 0) {
            if (k.b(hVar)) {
                i10 = options.outHeight;
            } else {
                i10 = options.outWidth;
            }
            if (k.b(hVar)) {
                i11 = options.outWidth;
            } else {
                i11 = options.outHeight;
            }
            n0.g n10 = this.f3887b.n();
            Scale m10 = this.f3887b.m();
            if (n0.b.a(n10)) {
                z10 = i10;
            } else {
                z10 = i.z(n10.b(), m10);
            }
            n0.g n11 = this.f3887b.n();
            Scale m11 = this.f3887b.m();
            if (n0.b.a(n11)) {
                z11 = i11;
            } else {
                z11 = i.z(n11.a(), m11);
            }
            int a10 = f.a(i10, i11, z10, z11, this.f3887b.m());
            options.inSampleSize = a10;
            double b10 = f.b(i10 / a10, i11 / a10, z10, z11, this.f3887b.m());
            if (this.f3887b.c()) {
                b10 = kotlin.ranges.e.h(b10, 1.0d);
            }
            if (b10 != 1.0d) {
                z12 = false;
            }
            options.inScaled = !z12;
            if (!z12) {
                if (b10 > 1.0d) {
                    options.inDensity = bt.a.b(Integer.MAX_VALUE / b10);
                    options.inTargetDensity = Integer.MAX_VALUE;
                    return;
                }
                options.inDensity = Integer.MAX_VALUE;
                options.inTargetDensity = bt.a.b(Integer.MAX_VALUE * b10);
            }
        } else {
            options.inSampleSize = 1;
            options.inScaled = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final d0.e e(BitmapFactory.Options options) {
        b bVar = new b(this.f3886a.k());
        BufferedSource buffer = Okio.buffer(bVar);
        boolean z10 = true;
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(buffer.peek().inputStream(), null, options);
        Exception d10 = bVar.d();
        if (d10 == null) {
            options.inJustDecodeBounds = false;
            d0.j jVar = d0.j.f49746a;
            h a10 = jVar.a(options.outMimeType, buffer, this.f3889d);
            Exception d11 = bVar.d();
            if (d11 == null) {
                options.inMutable = false;
                if (Build.VERSION.SDK_INT >= 26 && this.f3887b.e() != null) {
                    options.inPreferredColorSpace = this.f3887b.e();
                }
                options.inPremultiplied = this.f3887b.l();
                c(options, a10);
                d(options, a10);
                try {
                    Bitmap decodeStream = BitmapFactory.decodeStream(buffer.inputStream(), null, options);
                    ws.b.a(buffer, null);
                    Exception d12 = bVar.d();
                    if (d12 == null) {
                        if (decodeStream != null) {
                            decodeStream.setDensity(this.f3887b.g().getResources().getDisplayMetrics().densityDpi);
                            BitmapDrawable bitmapDrawable = new BitmapDrawable(this.f3887b.g().getResources(), jVar.b(decodeStream, a10));
                            if (options.inSampleSize <= 1 && !options.inScaled) {
                                z10 = false;
                            }
                            return new d0.e(bitmapDrawable, z10);
                        }
                        throw new IllegalStateException("BitmapFactory returned a null bitmap. Often this means BitmapFactory could not decode the image data read from the input source (e.g. network, disk, or memory) as it's not encoded as a valid image format.");
                    }
                    throw d12;
                } finally {
                }
            } else {
                throw d11;
            }
        } else {
            throw d10;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x006d  */
    @Override // d0.g
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object a(@org.jetbrains.annotations.NotNull rs.c<? super d0.e> r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof coil.decode.BitmapFactoryDecoder$decode$1
            if (r0 == 0) goto L13
            r0 = r8
            coil.decode.BitmapFactoryDecoder$decode$1 r0 = (coil.decode.BitmapFactoryDecoder$decode$1) r0
            int r1 = r0.f3897l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f3897l = r1
            goto L18
        L13:
            coil.decode.BitmapFactoryDecoder$decode$1 r0 = new coil.decode.BitmapFactoryDecoder$decode$1
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.f3895j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f3897l
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L47
            if (r2 == r4) goto L3a
            if (r2 != r3) goto L32
            java.lang.Object r0 = r0.f3893h
            qt.e r0 = (qt.e) r0
            kotlin.f.b(r8)     // Catch: java.lang.Throwable -> L30
            goto L70
        L30:
            r8 = move-exception
            goto L7a
        L32:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L3a:
            java.lang.Object r2 = r0.f3894i
            qt.e r2 = (qt.e) r2
            java.lang.Object r5 = r0.f3893h
            coil.decode.BitmapFactoryDecoder r5 = (coil.decode.BitmapFactoryDecoder) r5
            kotlin.f.b(r8)
            r8 = r2
            goto L5a
        L47:
            kotlin.f.b(r8)
            qt.e r8 = r7.f3888c
            r0.f3893h = r7
            r0.f3894i = r8
            r0.f3897l = r4
            java.lang.Object r2 = r8.b(r0)
            if (r2 != r1) goto L59
            return r1
        L59:
            r5 = r7
        L5a:
            coil.decode.BitmapFactoryDecoder$decode$2$1 r2 = new coil.decode.BitmapFactoryDecoder$decode$2$1     // Catch: java.lang.Throwable -> L76
            r2.<init>()     // Catch: java.lang.Throwable -> L76
            r0.f3893h = r8     // Catch: java.lang.Throwable -> L76
            r5 = 0
            r0.f3894i = r5     // Catch: java.lang.Throwable -> L76
            r0.f3897l = r3     // Catch: java.lang.Throwable -> L76
            java.lang.Object r0 = kotlinx.coroutines.InterruptibleKt.c(r5, r2, r0, r4, r5)     // Catch: java.lang.Throwable -> L76
            if (r0 != r1) goto L6d
            return r1
        L6d:
            r6 = r0
            r0 = r8
            r8 = r6
        L70:
            d0.e r8 = (d0.e) r8     // Catch: java.lang.Throwable -> L30
            r0.release()
            return r8
        L76:
            r0 = move-exception
            r6 = r0
            r0 = r8
            r8 = r6
        L7a:
            r0.release()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: coil.decode.BitmapFactoryDecoder.a(rs.c):java.lang.Object");
    }
}
