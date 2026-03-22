package z2;

import android.graphics.drawable.Animatable;
import android.util.Log;
import com.facebook.fresco.ui.common.DimensionsInfo;
import com.facebook.fresco.ui.common.OnDrawControllerListener;
import java.util.ArrayList;
import java.util.List;
/* compiled from: ForwardingControllerListener.java */
/* loaded from: classes3.dex */
public class d<INFO> implements b<INFO>, OnDrawControllerListener<INFO> {

    /* renamed from: a  reason: collision with root package name */
    private final List<b<? super INFO>> f71242a = new ArrayList(2);

    private synchronized void h(String str, Throwable th2) {
        Log.e("FdingControllerListener", str, th2);
    }

    @Override // z2.b
    public synchronized void a(String str) {
        int size = this.f71242a.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                b<? super INFO> bVar = this.f71242a.get(i10);
                if (bVar != null) {
                    bVar.a(str);
                }
            } catch (Exception e10) {
                h("InternalListener exception in onRelease", e10);
            }
        }
    }

    @Override // z2.b
    public synchronized void b(String str, Object obj) {
        int size = this.f71242a.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                b<? super INFO> bVar = this.f71242a.get(i10);
                if (bVar != null) {
                    bVar.b(str, obj);
                }
            } catch (Exception e10) {
                h("InternalListener exception in onSubmit", e10);
            }
        }
    }

    @Override // z2.b
    public synchronized void c(String str, Throwable th2) {
        int size = this.f71242a.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                b<? super INFO> bVar = this.f71242a.get(i10);
                if (bVar != null) {
                    bVar.c(str, th2);
                }
            } catch (Exception e10) {
                h("InternalListener exception in onFailure", e10);
            }
        }
    }

    @Override // z2.b
    public synchronized void d(String str, INFO info, Animatable animatable) {
        int size = this.f71242a.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                b<? super INFO> bVar = this.f71242a.get(i10);
                if (bVar != null) {
                    bVar.d(str, info, animatable);
                }
            } catch (Exception e10) {
                h("InternalListener exception in onFinalImageSet", e10);
            }
        }
    }

    @Override // z2.b
    public void e(String str, Throwable th2) {
        int size = this.f71242a.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                b<? super INFO> bVar = this.f71242a.get(i10);
                if (bVar != null) {
                    bVar.e(str, th2);
                }
            } catch (Exception e10) {
                h("InternalListener exception in onIntermediateImageFailed", e10);
            }
        }
    }

    public synchronized void f(b<? super INFO> bVar) {
        this.f71242a.add(bVar);
    }

    public synchronized void g() {
        this.f71242a.clear();
    }

    @Override // com.facebook.fresco.ui.common.OnDrawControllerListener
    public void onImageDrawn(String str, INFO info, DimensionsInfo dimensionsInfo) {
        int size = this.f71242a.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                b<? super INFO> bVar = this.f71242a.get(i10);
                if (bVar instanceof OnDrawControllerListener) {
                    ((OnDrawControllerListener) bVar).onImageDrawn(str, info, dimensionsInfo);
                }
            } catch (Exception e10) {
                h("InternalListener exception in onImageDrawn", e10);
            }
        }
    }

    @Override // z2.b
    public void onIntermediateImageSet(String str, INFO info) {
        int size = this.f71242a.size();
        for (int i10 = 0; i10 < size; i10++) {
            try {
                b<? super INFO> bVar = this.f71242a.get(i10);
                if (bVar != null) {
                    bVar.onIntermediateImageSet(str, info);
                }
            } catch (Exception e10) {
                h("InternalListener exception in onIntermediateImageSet", e10);
            }
        }
    }
}
