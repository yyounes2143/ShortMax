package com.facebook.imagepipeline.producers;

import android.content.ContentResolver;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.media.ThumbnailUtils;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.imagepipeline.request.ImageRequest;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.Executor;
/* compiled from: LocalVideoThumbnailProducer.java */
/* loaded from: classes3.dex */
public class r0 implements b1<o2.a<y3.e>> {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f15913a;

    /* renamed from: b  reason: collision with root package name */
    private final ContentResolver f15914b;

    /* compiled from: LocalVideoThumbnailProducer.java */
    /* loaded from: classes3.dex */
    class a extends k1<o2.a<y3.e>> {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ e1 f15915f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ c1 f15916g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ ImageRequest f15917h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(n nVar, e1 e1Var, c1 c1Var, String str, e1 e1Var2, c1 c1Var2, ImageRequest imageRequest) {
            super(nVar, e1Var, c1Var, str);
            this.f15915f = e1Var2;
            this.f15916g = c1Var2;
            this.f15917h = imageRequest;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.k1, i2.h
        public void f(Exception exc) {
            super.f(exc);
            this.f15915f.a(this.f15916g, "VideoThumbnailProducer", false);
            this.f15916g.q("local", "video");
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
        public o2.a<y3.e> d() throws Exception {
            String str;
            Bitmap bitmap;
            try {
                str = r0.this.i(this.f15917h);
            } catch (IllegalArgumentException unused) {
                str = null;
            }
            if (str != null) {
                bitmap = ThumbnailUtils.createVideoThumbnail(str, r0.g(this.f15917h));
            } else {
                bitmap = null;
            }
            if (bitmap == null) {
                bitmap = r0.h(r0.this.f15914b, this.f15917h.w());
            }
            if (bitmap == null) {
                return null;
            }
            y3.f G = y3.f.G(bitmap, q3.f.a(), y3.o.f70637d, 0);
            this.f15916g.putExtra("image_format", "thumbnail");
            G.putExtras(this.f15916g.getExtras());
            return o2.a.w(G);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.k1, i2.h
        /* renamed from: n */
        public void g(o2.a<y3.e> aVar) {
            boolean z10;
            super.g(aVar);
            e1 e1Var = this.f15915f;
            c1 c1Var = this.f15916g;
            if (aVar != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            e1Var.a(c1Var, "VideoThumbnailProducer", z10);
            this.f15916g.q("local", "video");
        }
    }

    /* compiled from: LocalVideoThumbnailProducer.java */
    /* loaded from: classes3.dex */
    class b extends f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ k1 f15919a;

        b(k1 k1Var) {
            this.f15919a = k1Var;
        }

        @Override // com.facebook.imagepipeline.producers.d1
        public void b() {
            this.f15919a.a();
        }
    }

    public r0(Executor executor, ContentResolver contentResolver) {
        this.f15913a = executor;
        this.f15914b = contentResolver;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int g(ImageRequest imageRequest) {
        if (imageRequest.o() <= 96 && imageRequest.n() <= 96) {
            return 3;
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bitmap h(ContentResolver contentResolver, Uri uri) {
        MediaMetadataRetriever mediaMetadataRetriever;
        MediaMetadataRetriever mediaMetadataRetriever2 = null;
        try {
            ParcelFileDescriptor openFileDescriptor = contentResolver.openFileDescriptor(uri, "r");
            k2.h.g(openFileDescriptor);
            mediaMetadataRetriever = new MediaMetadataRetriever();
            try {
                mediaMetadataRetriever.setDataSource(openFileDescriptor.getFileDescriptor());
                Bitmap frameAtTime = mediaMetadataRetriever.getFrameAtTime(-1L);
                try {
                    mediaMetadataRetriever.release();
                } catch (IOException unused) {
                }
                return frameAtTime;
            } catch (FileNotFoundException unused2) {
                if (mediaMetadataRetriever != null) {
                    try {
                        mediaMetadataRetriever.release();
                    } catch (IOException unused3) {
                    }
                }
                return null;
            } catch (Throwable th2) {
                th = th2;
                mediaMetadataRetriever2 = mediaMetadataRetriever;
                if (mediaMetadataRetriever2 != null) {
                    try {
                        mediaMetadataRetriever2.release();
                    } catch (IOException unused4) {
                    }
                }
                throw th;
            }
        } catch (FileNotFoundException unused5) {
            mediaMetadataRetriever = null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String i(ImageRequest imageRequest) {
        return r2.d.e(this.f15914b, imageRequest.w());
    }

    @Override // com.facebook.imagepipeline.producers.b1
    public void b(n<o2.a<y3.e>> nVar, c1 c1Var) {
        e1 l10 = c1Var.l();
        ImageRequest o10 = c1Var.o();
        c1Var.q("local", "video");
        a aVar = new a(nVar, l10, c1Var, "VideoThumbnailProducer", l10, c1Var, o10);
        c1Var.p(new b(aVar));
        this.f15913a.execute(aVar);
    }
}
