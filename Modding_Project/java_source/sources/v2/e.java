package v2;

import android.content.Context;
import com.facebook.fresco.ui.common.ControllerListener2;
import com.facebook.fresco.ui.common.ImagePerfDataListener;
import i2.i;
import java.util.Set;
import k2.k;
import t3.r;
import t3.v;
/* compiled from: PipelineDraweeControllerBuilderSupplier.java */
/* loaded from: classes3.dex */
public class e implements k<d> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f68658a;

    /* renamed from: b  reason: collision with root package name */
    private final r f68659b;

    /* renamed from: c  reason: collision with root package name */
    private final f f68660c;

    /* renamed from: d  reason: collision with root package name */
    private final Set<z2.b> f68661d;

    /* renamed from: e  reason: collision with root package name */
    private final Set<ControllerListener2> f68662e;

    /* renamed from: f  reason: collision with root package name */
    private final ImagePerfDataListener f68663f;

    public e(Context context, b bVar) {
        this(context, v.l(), bVar);
    }

    @Override // k2.k
    /* renamed from: a */
    public d get() {
        return new d(this.f68658a, this.f68660c, this.f68659b, this.f68661d, this.f68662e).L(this.f68663f);
    }

    public e(Context context, v vVar, b bVar) {
        this(context, vVar, null, null, bVar);
    }

    public e(Context context, v vVar, Set<z2.b> set, Set<ControllerListener2> set2, b bVar) {
        this.f68658a = context;
        r j10 = vVar.j();
        this.f68659b = j10;
        f fVar = new f();
        this.f68660c = fVar;
        fVar.a(context.getResources(), y2.a.b(), vVar.b(context), vVar.q(), i.g(), j10.h(), null, null);
        this.f68661d = set;
        this.f68662e = set2;
        this.f68663f = null;
    }
}
