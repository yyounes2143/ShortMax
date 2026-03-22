package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Offset;
import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: TransformableState.kt */
@Metadata
/* loaded from: classes.dex */
public final class TransformableStateKt {
    @NotNull
    public static final TransformableState TransformableState(@NotNull n<? super Float, ? super Offset, ? super Float, Unit> onTransformation) {
        Intrinsics.checkNotNullParameter(onTransformation, "onTransformation");
        return new DefaultTransformableState(onTransformation);
    }

    @Nullable
    /* renamed from: animatePanBy-ubNVwUQ  reason: not valid java name */
    public static final Object m363animatePanByubNVwUQ(@NotNull TransformableState transformableState, long j10, @NotNull AnimationSpec<Offset> animationSpec, @NotNull c<? super Unit> cVar) {
        Ref.LongRef longRef = new Ref.LongRef();
        longRef.element = Offset.Companion.m1622getZeroF1C5BW0();
        Object transform$default = TransformableState.transform$default(transformableState, null, new TransformableStateKt$animatePanBy$2(longRef, j10, animationSpec, null), cVar, 1, null);
        if (transform$default == a.f()) {
            return transform$default;
        }
        return Unit.f60915a;
    }

    /* renamed from: animatePanBy-ubNVwUQ$default  reason: not valid java name */
    public static /* synthetic */ Object m364animatePanByubNVwUQ$default(TransformableState transformableState, long j10, AnimationSpec animationSpec, c cVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            animationSpec = new SpringSpec(0.0f, 200.0f, null, 5, null);
        }
        return m363animatePanByubNVwUQ(transformableState, j10, animationSpec, cVar);
    }

    @Nullable
    public static final Object animateRotateBy(@NotNull TransformableState transformableState, float f10, @NotNull AnimationSpec<Float> animationSpec, @NotNull c<? super Unit> cVar) {
        Object transform$default = TransformableState.transform$default(transformableState, null, new TransformableStateKt$animateRotateBy$2(new Ref.FloatRef(), f10, animationSpec, null), cVar, 1, null);
        if (transform$default == a.f()) {
            return transform$default;
        }
        return Unit.f60915a;
    }

    public static /* synthetic */ Object animateRotateBy$default(TransformableState transformableState, float f10, AnimationSpec animationSpec, c cVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            animationSpec = new SpringSpec(0.0f, 200.0f, null, 5, null);
        }
        return animateRotateBy(transformableState, f10, animationSpec, cVar);
    }

    @Nullable
    public static final Object animateZoomBy(@NotNull TransformableState transformableState, float f10, @NotNull AnimationSpec<Float> animationSpec, @NotNull c<? super Unit> cVar) {
        if (f10 > 0.0f) {
            Ref.FloatRef floatRef = new Ref.FloatRef();
            floatRef.element = 1.0f;
            Object transform$default = TransformableState.transform$default(transformableState, null, new TransformableStateKt$animateZoomBy$3(floatRef, f10, animationSpec, null), cVar, 1, null);
            if (transform$default == a.f()) {
                return transform$default;
            }
            return Unit.f60915a;
        }
        throw new IllegalArgumentException("zoom value should be greater than 0");
    }

    public static /* synthetic */ Object animateZoomBy$default(TransformableState transformableState, float f10, AnimationSpec animationSpec, c cVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            animationSpec = new SpringSpec(0.0f, 200.0f, null, 5, null);
        }
        return animateZoomBy(transformableState, f10, animationSpec, cVar);
    }

    @Nullable
    /* renamed from: panBy-d-4ec7I  reason: not valid java name */
    public static final Object m365panByd4ec7I(@NotNull TransformableState transformableState, long j10, @NotNull c<? super Unit> cVar) {
        Object transform$default = TransformableState.transform$default(transformableState, null, new TransformableStateKt$panBy$2(j10, null), cVar, 1, null);
        if (transform$default == a.f()) {
            return transform$default;
        }
        return Unit.f60915a;
    }

    @Composable
    @NotNull
    public static final TransformableState rememberTransformableState(@NotNull n<? super Float, ? super Offset, ? super Float, Unit> onTransformation, @Nullable Composer composer, int i10) {
        Intrinsics.checkNotNullParameter(onTransformation, "onTransformation");
        composer.startReplaceableGroup(1681419281);
        final State rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(onTransformation, composer, i10 & 14);
        composer.startReplaceableGroup(-492369756);
        Object rememberedValue = composer.rememberedValue();
        if (rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = TransformableState(new n<Float, Offset, Float, Unit>() { // from class: androidx.compose.foundation.gestures.TransformableStateKt$rememberTransformableState$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(3);
                }

                @Override // at.n
                public /* bridge */ /* synthetic */ Unit invoke(Float f10, Offset offset, Float f11) {
                    m366invoked4ec7I(f10.floatValue(), offset.m1616unboximpl(), f11.floatValue());
                    return Unit.f60915a;
                }

                /* renamed from: invoke-d-4ec7I  reason: not valid java name */
                public final void m366invoked4ec7I(float f10, long j10, float f11) {
                    rememberUpdatedState.getValue().invoke(Float.valueOf(f10), Offset.m1595boximpl(j10), Float.valueOf(f11));
                }
            });
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        TransformableState transformableState = (TransformableState) rememberedValue;
        composer.endReplaceableGroup();
        return transformableState;
    }

    @Nullable
    public static final Object rotateBy(@NotNull TransformableState transformableState, float f10, @NotNull c<? super Unit> cVar) {
        Object transform$default = TransformableState.transform$default(transformableState, null, new TransformableStateKt$rotateBy$2(f10, null), cVar, 1, null);
        if (transform$default == a.f()) {
            return transform$default;
        }
        return Unit.f60915a;
    }

    @Nullable
    public static final Object stopTransformation(@NotNull TransformableState transformableState, @NotNull MutatePriority mutatePriority, @NotNull c<? super Unit> cVar) {
        Object transform = transformableState.transform(mutatePriority, new TransformableStateKt$stopTransformation$2(null), cVar);
        if (transform == a.f()) {
            return transform;
        }
        return Unit.f60915a;
    }

    public static /* synthetic */ Object stopTransformation$default(TransformableState transformableState, MutatePriority mutatePriority, c cVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            mutatePriority = MutatePriority.Default;
        }
        return stopTransformation(transformableState, mutatePriority, cVar);
    }

    @Nullable
    public static final Object zoomBy(@NotNull TransformableState transformableState, float f10, @NotNull c<? super Unit> cVar) {
        Object transform$default = TransformableState.transform$default(transformableState, null, new TransformableStateKt$zoomBy$2(f10, null), cVar, 1, null);
        if (transform$default == a.f()) {
            return transform$default;
        }
        return Unit.f60915a;
    }
}
