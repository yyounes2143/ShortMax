package w2;

import android.graphics.Rect;
import com.facebook.fresco.ui.common.ImageLoadStatus;
import com.facebook.fresco.ui.common.ImagePerfData;
import com.facebook.fresco.ui.common.ImagePerfDataListener;
import com.facebook.fresco.ui.common.ImagePerfNotifier;
import com.facebook.fresco.ui.common.ImagePerfState;
import com.facebook.fresco.ui.common.ImageRenderingInfra;
import com.facebook.fresco.ui.common.VisibilityState;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import q2.b;
import v2.c;
/* compiled from: ImagePerfMonitor.java */
/* loaded from: classes3.dex */
public class a implements ImagePerfNotifier {

    /* renamed from: a  reason: collision with root package name */
    private final c f69607a;

    /* renamed from: b  reason: collision with root package name */
    private final b f69608b;

    /* renamed from: c  reason: collision with root package name */
    private final ImagePerfState f69609c = new ImagePerfState(ImageRenderingInfra.DRAWEE);

    /* renamed from: d  reason: collision with root package name */
    private x2.a f69610d;

    /* renamed from: e  reason: collision with root package name */
    private x2.b f69611e;

    /* renamed from: f  reason: collision with root package name */
    private a4.c f69612f;

    /* renamed from: g  reason: collision with root package name */
    private List<ImagePerfDataListener> f69613g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f69614h;

    public a(b bVar, c cVar) {
        this.f69608b = bVar;
        this.f69607a = cVar;
    }

    private void f() {
        if (this.f69611e == null) {
            this.f69611e = new x2.b(this.f69608b, this.f69609c, this);
        }
        if (this.f69610d == null) {
            this.f69610d = new x2.a(this.f69608b, this.f69609c);
        }
        if (this.f69612f == null) {
            this.f69612f = new a4.c(this.f69610d);
        }
    }

    public void a(ImagePerfDataListener imagePerfDataListener) {
        if (imagePerfDataListener == null) {
            return;
        }
        if (this.f69613g == null) {
            this.f69613g = new CopyOnWriteArrayList();
        }
        this.f69613g.add(imagePerfDataListener);
    }

    public void b() {
        f3.b e10 = this.f69607a.e();
        if (e10 != null && e10.b() != null) {
            Rect bounds = e10.b().getBounds();
            this.f69609c.setOnScreenWidth(bounds.width());
            this.f69609c.setOnScreenHeight(bounds.height());
        }
    }

    public void c() {
        List<ImagePerfDataListener> list = this.f69613g;
        if (list != null) {
            list.clear();
        }
    }

    public void d() {
        c();
        e(false);
        this.f69609c.reset();
    }

    public void e(boolean z10) {
        this.f69614h = z10;
        if (z10) {
            f();
            x2.b bVar = this.f69611e;
            if (bVar != null) {
                this.f69607a.l(bVar);
            }
            a4.c cVar = this.f69612f;
            if (cVar != null) {
                this.f69607a.j0(cVar);
                return;
            }
            return;
        }
        x2.b bVar2 = this.f69611e;
        if (bVar2 != null) {
            this.f69607a.S(bVar2);
        }
        a4.c cVar2 = this.f69612f;
        if (cVar2 != null) {
            this.f69607a.z0(cVar2);
        }
    }

    @Override // com.facebook.fresco.ui.common.ImagePerfNotifier
    public void notifyStatusUpdated(ImagePerfState imagePerfState, ImageLoadStatus imageLoadStatus) {
        List<ImagePerfDataListener> list;
        imagePerfState.setImageLoadStatus(imageLoadStatus);
        if (this.f69614h && (list = this.f69613g) != null && !list.isEmpty()) {
            if (imageLoadStatus == ImageLoadStatus.SUCCESS) {
                b();
            }
            ImagePerfData snapshot = imagePerfState.snapshot();
            for (ImagePerfDataListener imagePerfDataListener : this.f69613g) {
                imagePerfDataListener.onImageLoadStatusUpdated(snapshot, imageLoadStatus);
            }
        }
    }

    @Override // com.facebook.fresco.ui.common.ImagePerfNotifier
    public void notifyVisibilityUpdated(ImagePerfState imagePerfState, VisibilityState visibilityState) {
        List<ImagePerfDataListener> list;
        if (this.f69614h && (list = this.f69613g) != null && !list.isEmpty()) {
            ImagePerfData snapshot = imagePerfState.snapshot();
            for (ImagePerfDataListener imagePerfDataListener : this.f69613g) {
                imagePerfDataListener.onImageVisibilityUpdated(snapshot, visibilityState);
            }
        }
    }
}
