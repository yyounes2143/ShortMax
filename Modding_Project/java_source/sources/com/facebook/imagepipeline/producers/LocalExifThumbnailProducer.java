package com.facebook.imagepipeline.producers;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.media.ExifInterface;
import android.net.Uri;
import android.util.Pair;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.imagepipeline.request.ImageRequest;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes3.dex */
public class LocalExifThumbnailProducer implements s1<y3.k> {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f15717a;

    /* renamed from: b  reason: collision with root package name */
    private final n2.g f15718b;

    /* renamed from: c  reason: collision with root package name */
    private final ContentResolver f15719c;

    /* JADX INFO: Access modifiers changed from: private */
    @com.facebook.soloader.g
    /* loaded from: classes3.dex */
    public class Api24Utils {
        ExifInterface a(FileDescriptor fileDescriptor) throws IOException {
            return new ExifInterface(fileDescriptor);
        }

        private Api24Utils() {
        }
    }

    /* loaded from: classes3.dex */
    class a extends k1<y3.k> {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ ImageRequest f15721f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(n nVar, e1 e1Var, c1 c1Var, String str, ImageRequest imageRequest) {
            super(nVar, e1Var, c1Var, str);
            this.f15721f = imageRequest;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // i2.h
        /* renamed from: k */
        public void c(y3.k kVar) {
            y3.k.i(kVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.k1
        /* renamed from: l */
        public Map<String, String> j(y3.k kVar) {
            boolean z10;
            if (kVar != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            return ImmutableMap.of("createdThumbnail", Boolean.toString(z10));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // i2.h
        /* renamed from: m */
        public y3.k d() throws Exception {
            ExifInterface g10 = LocalExifThumbnailProducer.this.g(this.f15721f.w());
            if (g10 != null && g10.hasThumbnail()) {
                return LocalExifThumbnailProducer.this.e(LocalExifThumbnailProducer.this.f15718b.c((byte[]) k2.h.g(g10.getThumbnail())), g10);
            }
            return null;
        }
    }

    /* loaded from: classes3.dex */
    class b extends f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ k1 f15723a;

        b(k1 k1Var) {
            this.f15723a = k1Var;
        }

        @Override // com.facebook.imagepipeline.producers.d1
        public void b() {
            this.f15723a.a();
        }
    }

    public LocalExifThumbnailProducer(Executor executor, n2.g gVar, ContentResolver contentResolver) {
        this.f15717a = executor;
        this.f15718b = gVar;
        this.f15719c = contentResolver;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public y3.k e(PooledByteBuffer pooledByteBuffer, ExifInterface exifInterface) {
        int i10;
        Pair<Integer, Integer> d10 = com.facebook.imageutils.d.d(new n2.h(pooledByteBuffer));
        int h10 = h(exifInterface);
        int i11 = -1;
        if (d10 != null) {
            i10 = ((Integer) d10.first).intValue();
        } else {
            i10 = -1;
        }
        if (d10 != null) {
            i11 = ((Integer) d10.second).intValue();
        }
        o2.a w10 = o2.a.w(pooledByteBuffer);
        try {
            y3.k kVar = new y3.k(w10);
            o2.a.r(w10);
            kVar.e0(com.facebook.imageformat.b.f15604b);
            kVar.f0(h10);
            kVar.i0(i10);
            kVar.d0(i11);
            return kVar;
        } catch (Throwable th2) {
            o2.a.r(w10);
            throw th2;
        }
    }

    private int h(ExifInterface exifInterface) {
        return com.facebook.imageutils.g.a(Integer.parseInt((String) k2.h.g(exifInterface.getAttribute(androidx.exifinterface.media.ExifInterface.TAG_ORIENTATION))));
    }

    @Override // com.facebook.imagepipeline.producers.s1
    public boolean a(s3.f fVar) {
        return t1.b(512, 512, fVar);
    }

    @Override // com.facebook.imagepipeline.producers.b1
    public void b(n<y3.k> nVar, c1 c1Var) {
        e1 l10 = c1Var.l();
        ImageRequest o10 = c1Var.o();
        c1Var.q("local", "exif");
        a aVar = new a(nVar, l10, c1Var, "LocalExifThumbnailProducer", o10);
        c1Var.p(new b(aVar));
        this.f15717a.execute(aVar);
    }

    @VisibleForTesting
    boolean f(String str) throws IOException {
        if (str == null) {
            return false;
        }
        File file = new File(str);
        if (!file.exists() || !file.canRead()) {
            return false;
        }
        return true;
    }

    @VisibleForTesting
    ExifInterface g(Uri uri) {
        String e10 = r2.d.e(this.f15719c, uri);
        if (e10 == null) {
            return null;
        }
        try {
        } catch (IOException unused) {
        } catch (StackOverflowError unused2) {
            l2.a.e(LocalExifThumbnailProducer.class, "StackOverflowError in ExifInterface constructor");
        }
        if (f(e10)) {
            return new ExifInterface(e10);
        }
        AssetFileDescriptor a10 = r2.d.a(this.f15719c, uri);
        if (a10 != null) {
            ExifInterface a11 = new Api24Utils().a(a10.getFileDescriptor());
            a10.close();
            return a11;
        }
        return null;
    }
}
