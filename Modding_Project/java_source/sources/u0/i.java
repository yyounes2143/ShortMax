package u0;

import android.graphics.Path;
import android.graphics.PointF;
import androidx.annotation.Nullable;
/* compiled from: PathKeyframe.java */
/* loaded from: classes2.dex */
public class i extends e1.a<PointF> {
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private Path f67733q;

    /* renamed from: r  reason: collision with root package name */
    private final e1.a<PointF> f67734r;

    public i(com.airbnb.lottie.i iVar, e1.a<PointF> aVar) {
        super(iVar, aVar.f50724b, aVar.f50725c, aVar.f50726d, aVar.f50727e, aVar.f50728f, aVar.f50729g, aVar.f50730h);
        this.f67734r = aVar;
        j();
    }

    public void j() {
        boolean z10;
        T t10;
        T t11;
        T t12 = this.f50725c;
        if (t12 != 0 && (t11 = this.f50724b) != 0 && ((PointF) t11).equals(((PointF) t12).x, ((PointF) t12).y)) {
            z10 = true;
        } else {
            z10 = false;
        }
        T t13 = this.f50724b;
        if (t13 != 0 && (t10 = this.f50725c) != 0 && !z10) {
            e1.a<PointF> aVar = this.f67734r;
            this.f67733q = d1.p.d((PointF) t13, (PointF) t10, aVar.f50737o, aVar.f50738p);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Path k() {
        return this.f67733q;
    }
}
