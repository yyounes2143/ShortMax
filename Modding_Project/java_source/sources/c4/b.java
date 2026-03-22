package c4;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ColorSpace;
import android.graphics.Rect;
import android.os.Build;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pools;
import b4.i;
import b4.r;
import com.facebook.imagepipeline.platform.PreverificationHelper;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import k2.h;
import y3.k;
/* compiled from: DefaultDecoder.java */
/* loaded from: classes3.dex */
public abstract class b implements d {

    /* renamed from: f  reason: collision with root package name */
    private static final Class<?> f3039f = b.class;

    /* renamed from: g  reason: collision with root package name */
    private static final byte[] f3040g = {-1, -39};

    /* renamed from: a  reason: collision with root package name */
    private final i f3041a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f3042b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f3043c;

    /* renamed from: d  reason: collision with root package name */
    private final PreverificationHelper f3044d;
    @VisibleForTesting

    /* renamed from: e  reason: collision with root package name */
    final Pools.Pool<ByteBuffer> f3045e;

    public b(i iVar, Pools.Pool<ByteBuffer> pool, f fVar) {
        PreverificationHelper preverificationHelper;
        if (Build.VERSION.SDK_INT >= 26) {
            preverificationHelper = new PreverificationHelper();
        } else {
            preverificationHelper = null;
        }
        this.f3044d = preverificationHelper;
        this.f3041a = iVar;
        if (iVar instanceof r) {
            this.f3042b = fVar.a();
            this.f3043c = fVar.b();
        }
        this.f3045e = pool;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x008b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00c7 A[Catch: all -> 0x00a3, RuntimeException -> 0x00a6, IllegalArgumentException -> 0x00a8, TRY_LEAVE, TryCatch #8 {IllegalArgumentException -> 0x00a8, RuntimeException -> 0x00a6, blocks: (B:36:0x007d, B:39:0x0087, B:49:0x009f, B:68:0x00c7, B:64:0x00c0, B:65:0x00c3, B:62:0x00ba), top: B:98:0x007d, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00d2 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00f1  */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private o2.a<android.graphics.Bitmap> c(java.io.InputStream r9, android.graphics.BitmapFactory.Options r10, android.graphics.Rect r11, android.graphics.ColorSpace r12) {
        /*
            Method dump skipped, instructions count: 294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c4.b.c(java.io.InputStream, android.graphics.BitmapFactory$Options, android.graphics.Rect, android.graphics.ColorSpace):o2.a");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.graphics.BitmapFactory.Options e(y3.k r5, android.graphics.Bitmap.Config r6, boolean r7) {
        /*
            android.graphics.BitmapFactory$Options r0 = new android.graphics.BitmapFactory$Options
            r0.<init>()
            int r1 = r5.t()
            r0.inSampleSize = r1
            r1 = 1
            r0.inJustDecodeBounds = r1
            r0.inDither = r1
            int r2 = android.os.Build.VERSION.SDK_INT
            r3 = 26
            r4 = 0
            if (r2 < r3) goto L1f
            android.graphics.Bitmap$Config r2 = androidx.compose.ui.graphics.e0.a()
            if (r6 != r2) goto L1f
            r2 = r1
            goto L20
        L1f:
            r2 = r4
        L20:
            if (r2 != 0) goto L24
            r0.inPreferredConfig = r6
        L24:
            r0.inMutable = r1
            if (r7 != 0) goto L40
            java.io.InputStream r5 = r5.r()
            r7 = 0
            android.graphics.BitmapFactory.decodeStream(r5, r7, r0)
            int r5 = r0.outWidth
            r7 = -1
            if (r5 == r7) goto L3a
            int r5 = r0.outHeight
            if (r5 == r7) goto L3a
            goto L40
        L3a:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            r5.<init>()
            throw r5
        L40:
            if (r2 == 0) goto L44
            r0.inPreferredConfig = r6
        L44:
            r0.inJustDecodeBounds = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c4.b.e(y3.k, android.graphics.Bitmap$Config, boolean):android.graphics.BitmapFactory$Options");
    }

    @Override // c4.d
    public o2.a<Bitmap> a(k kVar, Bitmap.Config config, Rect rect, ColorSpace colorSpace) {
        boolean z10;
        BitmapFactory.Options e10 = e(kVar, config, this.f3042b);
        if (e10.inPreferredConfig != Bitmap.Config.ARGB_8888) {
            z10 = true;
        } else {
            z10 = false;
        }
        try {
            return c((InputStream) h.g(kVar.r()), e10, rect, colorSpace);
        } catch (RuntimeException e11) {
            if (z10) {
                return a(kVar, Bitmap.Config.ARGB_8888, rect, colorSpace);
            }
            throw e11;
        }
    }

    @Override // c4.d
    public o2.a<Bitmap> b(k kVar, Bitmap.Config config, Rect rect, int i10, ColorSpace colorSpace) {
        boolean z10;
        boolean F = kVar.F(i10);
        BitmapFactory.Options e10 = e(kVar, config, this.f3042b);
        p2.b r10 = kVar.r();
        h.g(r10);
        if (kVar.u() > i10) {
            r10 = new p2.a(r10, i10);
        }
        if (!F) {
            r10 = new p2.b(r10, f3040g);
        }
        if (e10.inPreferredConfig != Bitmap.Config.ARGB_8888) {
            z10 = true;
        } else {
            z10 = false;
        }
        try {
            try {
                o2.a<Bitmap> c10 = c(r10, e10, rect, colorSpace);
                try {
                    r10.close();
                } catch (IOException e11) {
                    e11.printStackTrace();
                }
                return c10;
            } catch (RuntimeException e12) {
                if (z10) {
                    o2.a<Bitmap> b10 = b(kVar, Bitmap.Config.ARGB_8888, rect, i10, colorSpace);
                    try {
                        r10.close();
                    } catch (IOException e13) {
                        e13.printStackTrace();
                    }
                    return b10;
                }
                throw e12;
            }
        } catch (Throwable th2) {
            try {
                r10.close();
            } catch (IOException e14) {
                e14.printStackTrace();
            }
            throw th2;
        }
    }

    public abstract int d(int i10, int i11, BitmapFactory.Options options);

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultDecoder.java */
    /* loaded from: classes3.dex */
    public static final class a implements o2.h<Bitmap> {

        /* renamed from: a  reason: collision with root package name */
        private static final a f3046a = new a();

        private a() {
        }

        @Override // o2.h
        /* renamed from: b */
        public void release(Bitmap bitmap) {
        }
    }
}
