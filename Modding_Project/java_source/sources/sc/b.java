package sc;

import android.animation.ValueAnimator;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.NonNull;
import vc.i;
/* compiled from: RefreshContent.java */
/* loaded from: classes6.dex */
public interface b {
    void a(MotionEvent motionEvent);

    void b(boolean z10);

    ValueAnimator.AnimatorUpdateListener c(int i10);

    void d(int i10, int i11, int i12);

    boolean e();

    void f(e eVar, View view, View view2);

    void g(i iVar);

    @NonNull
    View getView();

    @NonNull
    View h();

    boolean i();
}
