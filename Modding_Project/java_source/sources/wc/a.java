package wc;

import android.graphics.PointF;
import android.view.View;
import vc.i;
import xc.b;
/* compiled from: SimpleBoundaryDecider.java */
/* loaded from: classes6.dex */
public class a implements i {

    /* renamed from: a  reason: collision with root package name */
    public PointF f69828a;

    /* renamed from: b  reason: collision with root package name */
    public i f69829b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f69830c = true;

    @Override // vc.i
    public boolean a(View view) {
        i iVar = this.f69829b;
        if (iVar != null) {
            return iVar.a(view);
        }
        return b.a(view, this.f69828a, this.f69830c);
    }

    @Override // vc.i
    public boolean b(View view) {
        i iVar = this.f69829b;
        if (iVar != null) {
            return iVar.b(view);
        }
        return b.b(view, this.f69828a);
    }
}
