package sc;

import android.animation.ValueAnimator;
import androidx.annotation.NonNull;
import com.scwang.smart.refresh.layout.constant.RefreshState;
/* compiled from: RefreshKernel.java */
/* loaded from: classes6.dex */
public interface e {
    ValueAnimator a(int i10);

    e b(@NonNull a aVar, boolean z10);

    e c(@NonNull a aVar, int i10);

    @NonNull
    f d();

    e e();

    e f(int i10, boolean z10);

    e g(@NonNull RefreshState refreshState);
}
