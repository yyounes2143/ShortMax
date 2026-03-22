package g4;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ColorSpace;
import android.graphics.Matrix;
import android.os.Build;
import java.io.OutputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import y3.k;
/* compiled from: SimpleImageTranscoder.kt */
@Metadata
/* loaded from: classes3.dex */
public final class g implements c {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f52208d = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final boolean f52209a;

    /* renamed from: b  reason: collision with root package name */
    private final int f52210b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final String f52211c = "SimpleImageTranscoder";

    /* compiled from: SimpleImageTranscoder.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Bitmap.CompressFormat b(com.facebook.imageformat.c cVar) {
            if (cVar == null) {
                return Bitmap.CompressFormat.JPEG;
            }
            if (cVar == com.facebook.imageformat.b.f15604b) {
                return Bitmap.CompressFormat.JPEG;
            }
            if (cVar == com.facebook.imageformat.b.f15605c) {
                return Bitmap.CompressFormat.PNG;
            }
            if (com.facebook.imageformat.b.a(cVar)) {
                return Bitmap.CompressFormat.WEBP;
            }
            return Bitmap.CompressFormat.JPEG;
        }

        private a() {
        }
    }

    public g(boolean z10, int i10) {
        this.f52209a = z10;
        this.f52210b = i10;
    }

    private final int d(k kVar, s3.g gVar, s3.f fVar) {
        if (!this.f52209a) {
            return 1;
        }
        return g4.a.b(gVar, fVar, kVar, this.f52210b);
    }

    @Override // g4.c
    public boolean a(@NotNull com.facebook.imageformat.c imageFormat) {
        Intrinsics.checkNotNullParameter(imageFormat, "imageFormat");
        if (imageFormat != com.facebook.imageformat.b.f15614l && imageFormat != com.facebook.imageformat.b.f15604b) {
            return false;
        }
        return true;
    }

    @Override // g4.c
    public boolean b(@NotNull k encodedImage, @Nullable s3.g gVar, @Nullable s3.f fVar) {
        Intrinsics.checkNotNullParameter(encodedImage, "encodedImage");
        if (gVar == null) {
            gVar = s3.g.f66295c.a();
        }
        if (this.f52209a && g4.a.b(gVar, fVar, encodedImage, this.f52210b) > 1) {
            return true;
        }
        return false;
    }

    @Override // g4.c
    @NotNull
    public b c(@NotNull k encodedImage, @NotNull OutputStream outputStream, @Nullable s3.g gVar, @Nullable s3.f fVar, @Nullable com.facebook.imageformat.c cVar, @Nullable Integer num, @Nullable ColorSpace colorSpace) {
        Integer num2;
        g gVar2;
        s3.g gVar3;
        Bitmap bitmap;
        b bVar;
        Intrinsics.checkNotNullParameter(encodedImage, "encodedImage");
        Intrinsics.checkNotNullParameter(outputStream, "outputStream");
        if (num == null) {
            num2 = 85;
        } else {
            num2 = num;
        }
        if (gVar == null) {
            gVar3 = s3.g.f66295c.a();
            gVar2 = this;
        } else {
            gVar2 = this;
            gVar3 = gVar;
        }
        int d10 = gVar2.d(encodedImage, gVar3, fVar);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inSampleSize = d10;
        if (colorSpace != null && Build.VERSION.SDK_INT >= 26) {
            options.inPreferredColorSpace = colorSpace;
        }
        try {
            Bitmap decodeStream = BitmapFactory.decodeStream(encodedImage.r(), null, options);
            if (decodeStream == null) {
                l2.a.i("SimpleImageTranscoder", "Couldn't decode the EncodedImage InputStream ! ");
                return new b(2);
            }
            Matrix g10 = e.g(encodedImage, gVar3);
            if (g10 != null) {
                try {
                    bitmap = Bitmap.createBitmap(decodeStream, 0, 0, decodeStream.getWidth(), decodeStream.getHeight(), g10, false);
                } catch (OutOfMemoryError e10) {
                    e = e10;
                    bitmap = decodeStream;
                    l2.a.j("SimpleImageTranscoder", "Out-Of-Memory during transcode", e);
                    bVar = new b(2);
                    bitmap.recycle();
                    decodeStream.recycle();
                    return bVar;
                } catch (Throwable th2) {
                    th = th2;
                    bitmap = decodeStream;
                    bitmap.recycle();
                    decodeStream.recycle();
                    throw th;
                }
            } else {
                bitmap = decodeStream;
            }
            try {
                try {
                    bitmap.compress(f52208d.b(cVar), num2.intValue(), outputStream);
                    int i10 = 1;
                    if (d10 > 1) {
                        i10 = 0;
                    }
                    bVar = new b(i10);
                } catch (OutOfMemoryError e11) {
                    e = e11;
                    l2.a.j("SimpleImageTranscoder", "Out-Of-Memory during transcode", e);
                    bVar = new b(2);
                    bitmap.recycle();
                    decodeStream.recycle();
                    return bVar;
                }
                bitmap.recycle();
                decodeStream.recycle();
                return bVar;
            } catch (Throwable th3) {
                th = th3;
                bitmap.recycle();
                decodeStream.recycle();
                throw th;
            }
        } catch (OutOfMemoryError e12) {
            l2.a.j("SimpleImageTranscoder", "Out-Of-Memory during transcode", e12);
            return new b(2);
        }
    }

    @Override // g4.c
    @NotNull
    public String getIdentifier() {
        return this.f52211c;
    }
}
