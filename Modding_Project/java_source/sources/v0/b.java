package v0;

import android.content.Context;
import androidx.annotation.Nullable;
import com.airbnb.lottie.configurations.reducemotion.ReducedMotionMode;
import d1.p;
/* compiled from: SystemReducedMotionOption.java */
/* loaded from: classes2.dex */
public class b implements a {
    @Override // v0.a
    public ReducedMotionMode a(@Nullable Context context) {
        if (context != null && p.f(context) == 0.0f) {
            return ReducedMotionMode.REDUCED_MOTION;
        }
        return ReducedMotionMode.STANDARD_MOTION;
    }
}
