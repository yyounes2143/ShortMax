package xc;

import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import sc.e;
/* compiled from: DesignUtil.java */
/* loaded from: classes6.dex */
public class a {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DesignUtil.java */
    /* renamed from: xc.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public class C0967a implements AppBarLayout.OnOffsetChangedListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ vc.a f70436a;

        C0967a(vc.a aVar) {
            this.f70436a = aVar;
        }

        @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
        public void onOffsetChanged(AppBarLayout appBarLayout, int i10) {
            boolean z10;
            vc.a aVar = this.f70436a;
            boolean z11 = false;
            if (i10 >= 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (appBarLayout.getTotalScrollRange() + i10 <= 0) {
                z11 = true;
            }
            aVar.j(z10, z11);
        }
    }

    public static void a(View view, e eVar, vc.a aVar) {
        try {
            if (view instanceof CoordinatorLayout) {
                eVar.d().a(false);
                ViewGroup viewGroup = (ViewGroup) view;
                for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                    View childAt = viewGroup.getChildAt(childCount);
                    if (childAt instanceof AppBarLayout) {
                        ((AppBarLayout) childAt).addOnOffsetChangedListener((AppBarLayout.OnOffsetChangedListener) new C0967a(aVar));
                    }
                }
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }
}
