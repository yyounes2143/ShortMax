package x2;

import com.facebook.fresco.ui.common.ImagePerfState;
import com.facebook.imagepipeline.request.ImageRequest;
/* compiled from: ImagePerfRequestListener.java */
/* loaded from: classes3.dex */
public class a extends a4.a {

    /* renamed from: a  reason: collision with root package name */
    private final q2.b f70393a;

    /* renamed from: b  reason: collision with root package name */
    private final ImagePerfState f70394b;

    public a(q2.b bVar, ImagePerfState imagePerfState) {
        this.f70393a = bVar;
        this.f70394b = imagePerfState;
    }

    @Override // a4.e
    public void b(ImageRequest imageRequest, String str, boolean z10) {
        this.f70394b.setImageRequestEndTimeMs(this.f70393a.now());
        this.f70394b.setImageRequest(imageRequest);
        this.f70394b.setRequestId(str);
        this.f70394b.setPrefetch(z10);
    }

    @Override // a4.e
    public void e(ImageRequest imageRequest, Object obj, String str, boolean z10) {
        this.f70394b.setImageRequestStartTimeMs(this.f70393a.now());
        this.f70394b.setImageRequest(imageRequest);
        this.f70394b.setCallerContext(obj);
        this.f70394b.setRequestId(str);
        this.f70394b.setPrefetch(z10);
    }

    @Override // a4.e
    public void j(ImageRequest imageRequest, String str, Throwable th2, boolean z10) {
        this.f70394b.setImageRequestEndTimeMs(this.f70393a.now());
        this.f70394b.setImageRequest(imageRequest);
        this.f70394b.setRequestId(str);
        this.f70394b.setPrefetch(z10);
    }

    @Override // a4.e
    public void k(String str) {
        this.f70394b.setImageRequestEndTimeMs(this.f70393a.now());
        this.f70394b.setRequestId(str);
    }
}
