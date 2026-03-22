package com.inmobi.media;

import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class Y7 implements hf {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Z7 f24402a;

    public Y7(Z7 z72) {
        this.f24402a = z72;
    }

    @Override // com.inmobi.media.hf
    public final void a(ArrayList visibleViews, ArrayList invisibleViews) {
        Intrinsics.checkNotNullParameter(visibleViews, "visibleViews");
        Intrinsics.checkNotNullParameter(invisibleViews, "invisibleViews");
        Iterator it = visibleViews.iterator();
        while (it.hasNext()) {
            View view = (View) it.next();
            ef efVar = (ef) this.f24402a.f24444f.get(view);
            if (efVar != null) {
                efVar.a(view, true);
            }
        }
        Iterator it2 = invisibleViews.iterator();
        while (it2.hasNext()) {
            View view2 = (View) it2.next();
            ef efVar2 = (ef) this.f24402a.f24444f.get(view2);
            if (efVar2 != null) {
                efVar2.a(view2, false);
            }
        }
    }
}
