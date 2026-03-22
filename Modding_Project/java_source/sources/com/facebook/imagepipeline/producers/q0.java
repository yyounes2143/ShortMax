package com.facebook.imagepipeline.producers;

import android.content.ContentResolver;
import android.graphics.Bitmap;
import android.media.ThumbnailUtils;
import android.os.CancellationSignal;
import android.util.Size;
import androidx.annotation.RequiresApi;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.imagepipeline.request.ImageRequest;
import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.Executor;
/* compiled from: LocalThumbnailBitmapSdk29Producer.java */
@RequiresApi(29)
/* loaded from: classes3.dex */
public class q0 implements b1<o2.a<y3.e>> {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f15901a;

    /* renamed from: b  reason: collision with root package name */
    private final ContentResolver f15902b;

    /* compiled from: LocalThumbnailBitmapSdk29Producer.java */
    /* loaded from: classes3.dex */
    class a extends k1<o2.a<y3.e>> {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ e1 f15903f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ c1 f15904g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ ImageRequest f15905h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ CancellationSignal f15906i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(n nVar, e1 e1Var, c1 c1Var, String str, e1 e1Var2, c1 c1Var2, ImageRequest imageRequest, CancellationSignal cancellationSignal) {
            super(nVar, e1Var, c1Var, str);
            this.f15903f = e1Var2;
            this.f15904g = c1Var2;
            this.f15905h = imageRequest;
            this.f15906i = cancellationSignal;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.k1, i2.h
        public void e() {
            super.e();
            this.f15906i.cancel();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.k1, i2.h
        public void f(Exception exc) {
            super.f(exc);
            this.f15903f.a(this.f15904g, "LocalThumbnailBitmapSdk29Producer", false);
            this.f15904g.q("local", "thumbnail_bitmap");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // i2.h
        /* renamed from: k */
        public void c(o2.a<y3.e> aVar) {
            o2.a.r(aVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.k1
        /* renamed from: l */
        public Map<String, String> j(o2.a<y3.e> aVar) {
            boolean z10;
            if (aVar != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            return ImmutableMap.of("createdThumbnail", String.valueOf(z10));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // i2.h
        /* renamed from: m */
        public o2.a<y3.e> d() throws IOException {
            String str;
            Bitmap bitmap;
            Size size = new Size(this.f15905h.o(), this.f15905h.n());
            try {
                str = q0.this.e(this.f15905h);
            } catch (IllegalArgumentException unused) {
                str = null;
            }
            if (str != null) {
                bitmap = m2.a.c(m2.a.b(str)) ? ThumbnailUtils.createVideoThumbnail(new File(str), size, this.f15906i) : ThumbnailUtils.createImageThumbnail(new File(str), size, this.f15906i);
            } else {
                bitmap = null;
            }
            if (bitmap == null) {
                bitmap = q0.this.f15902b.loadThumbnail(this.f15905h.w(), size, this.f15906i);
            }
            if (bitmap == null) {
                return null;
            }
            y3.f G = y3.f.G(bitmap, q3.f.a(), y3.o.f70637d, 0);
            this.f15904g.putExtra("image_format", "thumbnail");
            G.putExtras(this.f15904g.getExtras());
            return o2.a.w(G);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.k1, i2.h
        /* renamed from: n */
        public void g(o2.a<y3.e> aVar) {
            boolean z10;
            super.g(aVar);
            e1 e1Var = this.f15903f;
            c1 c1Var = this.f15904g;
            if (aVar != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            e1Var.a(c1Var, "LocalThumbnailBitmapSdk29Producer", z10);
            this.f15904g.q("local", "thumbnail_bitmap");
        }
    }

    /* compiled from: LocalThumbnailBitmapSdk29Producer.java */
    /* loaded from: classes3.dex */
    class b extends f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ k1 f15908a;

        b(k1 k1Var) {
            this.f15908a = k1Var;
        }

        @Override // com.facebook.imagepipeline.producers.d1
        public void b() {
            this.f15908a.a();
        }
    }

    public q0(Executor executor, ContentResolver contentResolver) {
        this.f15901a = executor;
        this.f15902b = contentResolver;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String e(ImageRequest imageRequest) {
        return r2.d.e(this.f15902b, imageRequest.w());
    }

    @Override // com.facebook.imagepipeline.producers.b1
    public void b(n<o2.a<y3.e>> nVar, c1 c1Var) {
        e1 l10 = c1Var.l();
        ImageRequest o10 = c1Var.o();
        c1Var.q("local", "thumbnail_bitmap");
        a aVar = new a(nVar, l10, c1Var, "LocalThumbnailBitmapSdk29Producer", l10, c1Var, o10, new CancellationSignal());
        c1Var.p(new b(aVar));
        this.f15901a.execute(aVar);
    }
}
