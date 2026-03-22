package eq;

import android.view.View;
import io.bidmachine.rendering.model.AnimationDirectionType;
import io.bidmachine.rendering.model.AnimationEventType;
import io.bidmachine.rendering.model.AnimationStyleType;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes8.dex */
public final class l implements g<rq.c> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final rq.c f51543a;

    @Metadata
    /* loaded from: classes8.dex */
    public /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f51544a;

        /* renamed from: b  reason: collision with root package name */
        public static final /* synthetic */ int[] f51545b;

        /* renamed from: c  reason: collision with root package name */
        public static final /* synthetic */ int[] f51546c;

        static {
            int[] iArr = new int[AnimationEventType.values().length];
            try {
                iArr[AnimationEventType.Appear.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AnimationEventType.Disappear.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f51544a = iArr;
            int[] iArr2 = new int[AnimationStyleType.values().length];
            try {
                iArr2[AnimationStyleType.Fade.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[AnimationStyleType.Slide.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            f51545b = iArr2;
            int[] iArr3 = new int[AnimationDirectionType.values().length];
            try {
                iArr3[AnimationDirectionType.Left.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr3[AnimationDirectionType.Right.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr3[AnimationDirectionType.Top.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr3[AnimationDirectionType.Bottom.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            f51546c = iArr3;
        }
    }

    public l(@NotNull rq.c params) {
        Intrinsics.checkNotNullParameter(params, "params");
        this.f51543a = params;
    }

    private final f c(View view, AnimationDirectionType animationDirectionType) {
        float measuredWidth = view.getMeasuredWidth();
        int[] iArr = a.f51546c;
        int i10 = iArr[animationDirectionType.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                measuredWidth = view.getTranslationX();
            } else {
                measuredWidth = -measuredWidth;
            }
        }
        float measuredHeight = view.getMeasuredHeight();
        int i11 = iArr[animationDirectionType.ordinal()];
        if (i11 != 3) {
            if (i11 != 4) {
                measuredHeight = view.getTranslationY();
            } else {
                measuredHeight = -measuredHeight;
            }
        }
        return new f(view.getAlpha(), measuredWidth, measuredHeight);
    }

    private final f d(View view, AnimationStyleType animationStyleType, AnimationDirectionType animationDirectionType) {
        int i10;
        f c10;
        if (animationStyleType == null) {
            i10 = -1;
        } else {
            i10 = a.f51545b[animationStyleType.ordinal()];
        }
        if (i10 != 1) {
            if (i10 != 2) {
                return new f(view);
            }
            if (animationDirectionType == null || (c10 = c(view, animationDirectionType)) == null) {
                return new f(view);
            }
            return c10;
        }
        return new f(0.0f, view.getTranslationX(), view.getTranslationY());
    }

    @Override // eq.g
    @NotNull
    public f a(@NotNull View view, @NotNull AnimationEventType eventType) {
        AnimationStyleType animationStyleType;
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        int i10 = a.f51544a[eventType.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                return new f(view);
            }
            throw new NoWhenBranchMatchedException();
        }
        rq.d dVar = this.f51543a.b().get(eventType);
        AnimationDirectionType animationDirectionType = null;
        if (dVar != null) {
            animationStyleType = dVar.d();
        } else {
            animationStyleType = null;
        }
        if (dVar != null) {
            animationDirectionType = dVar.a();
        }
        return d(view, animationStyleType, animationDirectionType);
    }

    @Override // eq.g
    @NotNull
    public f b(@NotNull View view, @NotNull AnimationEventType eventType) {
        AnimationStyleType animationStyleType;
        AnimationDirectionType a10;
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        int i10 = a.f51544a[eventType.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                rq.d dVar = this.f51543a.b().get(eventType);
                AnimationDirectionType animationDirectionType = null;
                if (dVar != null) {
                    animationStyleType = dVar.d();
                } else {
                    animationStyleType = null;
                }
                if (dVar != null && (a10 = dVar.a()) != null) {
                    animationDirectionType = a10.inverted();
                }
                return d(view, animationStyleType, animationDirectionType);
            }
            throw new NoWhenBranchMatchedException();
        }
        return new f(1.0f, 0.0f, 0.0f);
    }
}
