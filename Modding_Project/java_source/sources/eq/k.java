package eq;

import android.content.Context;
import android.view.View;
import io.bidmachine.rendering.model.AnimationDirectionType;
import io.bidmachine.rendering.model.AnimationEventType;
import io.bidmachine.rendering.model.AnimationStyleType;
import io.bidmachine.rendering.model.SideType;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import rq.s;
@Metadata
/* loaded from: classes8.dex */
public final class k implements g<rq.a> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final rq.a f51537a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f51538b;

    @Metadata
    /* loaded from: classes8.dex */
    public /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f51539a;

        /* renamed from: b  reason: collision with root package name */
        public static final /* synthetic */ int[] f51540b;

        /* renamed from: c  reason: collision with root package name */
        public static final /* synthetic */ int[] f51541c;

        /* renamed from: d  reason: collision with root package name */
        public static final /* synthetic */ int[] f51542d;

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
            f51539a = iArr;
            int[] iArr2 = new int[AnimationStyleType.values().length];
            try {
                iArr2[AnimationStyleType.Fade.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[AnimationStyleType.Slide.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            f51540b = iArr2;
            int[] iArr3 = new int[SideType.values().length];
            try {
                iArr3[SideType.Left.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr3[SideType.Right.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr3[SideType.Top.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr3[SideType.Bottom.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            f51541c = iArr3;
            int[] iArr4 = new int[AnimationDirectionType.values().length];
            try {
                iArr4[AnimationDirectionType.Left.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr4[AnimationDirectionType.Right.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr4[AnimationDirectionType.Top.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr4[AnimationDirectionType.Bottom.ordinal()] = 4;
            } catch (NoSuchFieldError unused12) {
            }
            f51542d = iArr4;
        }
    }

    public k(@NotNull rq.a params, boolean z10) {
        Intrinsics.checkNotNullParameter(params, "params");
        this.f51537a = params;
        this.f51538b = z10;
    }

    private final f c(View view) {
        float alpha;
        if (this.f51538b) {
            alpha = 0.0f;
        } else {
            alpha = view.getAlpha();
        }
        return new f(alpha, view.getTranslationX(), view.getTranslationY());
    }

    private final f d(View view, s sVar, AnimationDirectionType animationDirectionType) {
        int i10;
        float f10;
        float f11;
        int i11;
        Context context = view.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        float f12 = sVar.f(context);
        float g10 = sVar.g(context);
        float h10 = sVar.h(context);
        float e10 = sVar.e(context);
        float n10 = sVar.n(context);
        float c10 = sVar.c(context);
        int[] iArr = a.f51542d;
        int i12 = iArr[animationDirectionType.ordinal()];
        int i13 = -1;
        if (i12 != 1) {
            if (i12 != 2) {
                f10 = view.getTranslationX();
            } else {
                SideType a10 = h.a(sVar);
                if (a10 == null) {
                    i11 = -1;
                } else {
                    i11 = a.f51541c[a10.ordinal()];
                }
                if (i11 != 1) {
                    if (i11 != 2) {
                        f10 = view.getTranslationX();
                    } else {
                        f10 = n10 - f12;
                    }
                } else {
                    f10 = (-n10) - f12;
                }
            }
        } else {
            SideType a11 = h.a(sVar);
            if (a11 == null) {
                i10 = -1;
            } else {
                i10 = a.f51541c[a11.ordinal()];
            }
            if (i10 != 1) {
                if (i10 != 2) {
                    f10 = view.getTranslationX();
                } else {
                    f10 = n10 - g10;
                }
            } else {
                f10 = (-n10) - g10;
            }
        }
        int i14 = iArr[animationDirectionType.ordinal()];
        if (i14 != 3) {
            if (i14 != 4) {
                f11 = view.getTranslationY();
            } else {
                SideType b10 = h.b(sVar);
                if (b10 != null) {
                    i13 = a.f51541c[b10.ordinal()];
                }
                if (i13 != 3 && i13 != 4) {
                    f11 = view.getTranslationY();
                } else {
                    f11 = (-c10) - h10;
                }
            }
        } else {
            SideType b11 = h.b(sVar);
            if (b11 != null) {
                i13 = a.f51541c[b11.ordinal()];
            }
            if (i13 != 3 && i13 != 4) {
                f11 = view.getTranslationY();
            } else {
                f11 = c10 - e10;
            }
        }
        return new f(view.getAlpha(), f10, f11);
    }

    private final f e(View view, s sVar, AnimationStyleType animationStyleType, AnimationDirectionType animationDirectionType) {
        int i10;
        f fVar;
        if (animationStyleType == null) {
            i10 = -1;
        } else {
            i10 = a.f51540b[animationStyleType.ordinal()];
        }
        if (i10 != 1) {
            if (i10 != 2) {
                return c(view);
            }
            if (animationDirectionType == null || (fVar = d(view, sVar, animationDirectionType)) == null) {
                return c(view);
            }
        } else {
            fVar = new f(0.0f, view.getTranslationX(), view.getTranslationY());
        }
        return fVar;
    }

    @Override // eq.g
    @NotNull
    public f a(@NotNull View view, @NotNull AnimationEventType eventType) {
        AnimationStyleType animationStyleType;
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        int i10 = a.f51539a[eventType.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                return c(view);
            }
            throw new NoWhenBranchMatchedException();
        }
        rq.d dVar = this.f51537a.b().get(eventType);
        s g10 = this.f51537a.g();
        AnimationDirectionType animationDirectionType = null;
        if (dVar != null) {
            animationStyleType = dVar.d();
        } else {
            animationStyleType = null;
        }
        if (dVar != null) {
            animationDirectionType = dVar.a();
        }
        return e(view, g10, animationStyleType, animationDirectionType);
    }

    @Override // eq.g
    @NotNull
    public f b(@NotNull View view, @NotNull AnimationEventType eventType) {
        float f10;
        AnimationStyleType animationStyleType;
        AnimationDirectionType a10;
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        s g10 = this.f51537a.g();
        int i10 = a.f51539a[eventType.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                rq.d dVar = this.f51537a.b().get(eventType);
                AnimationDirectionType animationDirectionType = null;
                if (dVar != null) {
                    animationStyleType = dVar.d();
                } else {
                    animationStyleType = null;
                }
                if (dVar != null && (a10 = dVar.a()) != null) {
                    animationDirectionType = a10.inverted();
                }
                return e(view, g10, animationStyleType, animationDirectionType);
            }
            throw new NoWhenBranchMatchedException();
        }
        Float l10 = this.f51537a.c().l();
        if (l10 != null) {
            f10 = l10.floatValue();
        } else {
            f10 = 1.0f;
        }
        Context context = view.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        return new f(f10, g10.k(context), g10.l(context));
    }
}
