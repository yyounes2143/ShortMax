package v2;

import android.content.Context;
import android.net.Uri;
import com.facebook.common.internal.ImmutableList;
import com.facebook.drawee.controller.AbstractDraweeControllerBuilder;
import com.facebook.fresco.ui.common.ControllerListener2;
import com.facebook.fresco.ui.common.ImagePerfDataListener;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.ImageRequestBuilder;
import java.util.Set;
import r3.j;
import s3.g;
import t3.r;
import y3.m;
/* compiled from: PipelineDraweeControllerBuilder.java */
/* loaded from: classes3.dex */
public class d extends AbstractDraweeControllerBuilder<d, ImageRequest, o2.a<y3.e>, m> {

    /* renamed from: u  reason: collision with root package name */
    private final r f68653u;

    /* renamed from: v  reason: collision with root package name */
    private final f f68654v;

    /* renamed from: w  reason: collision with root package name */
    private ImmutableList<x3.a> f68655w;

    /* renamed from: x  reason: collision with root package name */
    private ImagePerfDataListener f68656x;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PipelineDraweeControllerBuilder.java */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f68657a;

        static {
            int[] iArr = new int[AbstractDraweeControllerBuilder.CacheLevel.values().length];
            f68657a = iArr;
            try {
                iArr[AbstractDraweeControllerBuilder.CacheLevel.FULL_FETCH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f68657a[AbstractDraweeControllerBuilder.CacheLevel.DISK_CACHE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f68657a[AbstractDraweeControllerBuilder.CacheLevel.BITMAP_MEMORY_CACHE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public d(Context context, f fVar, r rVar, Set<z2.b> set, Set<ControllerListener2> set2) {
        super(context, set, set2);
        this.f68653u = rVar;
        this.f68654v = fVar;
    }

    public static ImageRequest.RequestLevel G(AbstractDraweeControllerBuilder.CacheLevel cacheLevel) {
        int i10 = a.f68657a[cacheLevel.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    return ImageRequest.RequestLevel.BITMAP_MEMORY_CACHE;
                }
                throw new RuntimeException("Cache level" + cacheLevel + "is not supported. ");
            }
            return ImageRequest.RequestLevel.DISK_CACHE;
        }
        return ImageRequest.RequestLevel.FULL_FETCH;
    }

    private f2.a H() {
        ImageRequest n10 = n();
        j j10 = this.f68653u.j();
        if (j10 != null && n10 != null) {
            if (n10.m() != null) {
                return j10.a(n10, f());
            }
            return j10.c(n10, f());
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.controller.AbstractDraweeControllerBuilder
    /* renamed from: I */
    public com.facebook.datasource.b<o2.a<y3.e>> i(f3.a aVar, String str, ImageRequest imageRequest, Object obj, AbstractDraweeControllerBuilder.CacheLevel cacheLevel) {
        return this.f68653u.e(imageRequest, obj, G(cacheLevel), J(aVar), str);
    }

    protected a4.e J(f3.a aVar) {
        if (aVar instanceof c) {
            return ((c) aVar).q0();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.controller.AbstractDraweeControllerBuilder
    /* renamed from: K */
    public c x() {
        c c10;
        if (f4.b.d()) {
            f4.b.a("PipelineDraweeControllerBuilder#obtainController");
        }
        try {
            f3.a p10 = p();
            String e10 = AbstractDraweeControllerBuilder.e();
            if (p10 instanceof c) {
                c10 = (c) p10;
            } else {
                c10 = this.f68654v.c();
            }
            c10.s0(y(c10, e10), e10, H(), f(), this.f68655w);
            c10.t0(this.f68656x, this);
            if (f4.b.d()) {
                f4.b.b();
            }
            return c10;
        } catch (Throwable th2) {
            if (f4.b.d()) {
                f4.b.b();
            }
            throw th2;
        }
    }

    public d L(ImagePerfDataListener imagePerfDataListener) {
        this.f68656x = imagePerfDataListener;
        return r();
    }

    @Override // f3.d
    /* renamed from: M */
    public d a(Uri uri) {
        if (uri == null) {
            return (d) super.C(null);
        }
        return (d) super.C(ImageRequestBuilder.x(uri).O(g.d()).a());
    }
}
