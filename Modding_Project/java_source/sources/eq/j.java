package eq;

import android.animation.TimeInterpolator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import io.bidmachine.rendering.model.AnimationEventType;
import io.bidmachine.rendering.model.AnimationFunctionType;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes8.dex */
public final class j {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Map<AnimationEventType, rq.d> f51535a;

    @Metadata
    /* loaded from: classes8.dex */
    public /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f51536a;

        static {
            int[] iArr = new int[AnimationFunctionType.values().length];
            try {
                iArr[AnimationFunctionType.EaseIn.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AnimationFunctionType.EaseOut.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AnimationFunctionType.EaseInOut.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f51536a = iArr;
        }
    }

    public j(@NotNull Map<AnimationEventType, rq.d> params) {
        Intrinsics.checkNotNullParameter(params, "params");
        this.f51535a = params;
    }

    private final TimeInterpolator b(AnimationFunctionType animationFunctionType) {
        int i10;
        if (animationFunctionType == null) {
            i10 = -1;
        } else {
            i10 = a.f51536a[animationFunctionType.ordinal()];
        }
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    return new LinearInterpolator();
                }
                return new AccelerateDecelerateInterpolator();
            }
            return new DecelerateInterpolator();
        }
        return new AccelerateInterpolator();
    }

    @Nullable
    public final ViewPropertyAnimator c(@NotNull View view, @NotNull AnimationEventType eventType, @NotNull f targetValues) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        Intrinsics.checkNotNullParameter(targetValues, "targetValues");
        rq.d dVar = this.f51535a.get(eventType);
        if (dVar == null) {
            return null;
        }
        ViewPropertyAnimator withStartAction = view.animate().alpha(targetValues.a()).translationX(targetValues.b()).translationY(targetValues.c()).setDuration(dVar.b()).withStartAction(new Runnable() { // from class: eq.i
            @Override // java.lang.Runnable
            public final void run() {
                j.d();
            }
        });
        withStartAction.setInterpolator(b(dVar.c()));
        return withStartAction;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d() {
    }
}
