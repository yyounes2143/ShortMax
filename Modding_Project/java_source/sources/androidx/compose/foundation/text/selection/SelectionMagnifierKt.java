package androidx.compose.foundation.text.selection;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SelectionMagnifier.kt */
@Metadata
/* loaded from: classes.dex */
public final class SelectionMagnifierKt {
    @NotNull
    private static final SpringSpec<Offset> MagnifierSpringSpec;
    private static final long OffsetDisplacementThreshold;
    @NotNull
    private static final AnimationVector2D UnspecifiedAnimationVector2D = new AnimationVector2D(Float.NaN, Float.NaN);
    @NotNull
    private static final TwoWayConverter<Offset, AnimationVector2D> UnspecifiedSafeOffsetVectorConverter = VectorConvertersKt.TwoWayConverter(new Function1<Offset, AnimationVector2D>() { // from class: androidx.compose.foundation.text.selection.SelectionMagnifierKt$UnspecifiedSafeOffsetVectorConverter$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ AnimationVector2D invoke(Offset offset) {
            return m835invokek4lQ0M(offset.m1616unboximpl());
        }

        @NotNull
        /* renamed from: invoke-k-4lQ0M  reason: not valid java name */
        public final AnimationVector2D m835invokek4lQ0M(long j10) {
            AnimationVector2D animationVector2D;
            if (!OffsetKt.m1625isSpecifiedk4lQ0M(j10)) {
                animationVector2D = SelectionMagnifierKt.UnspecifiedAnimationVector2D;
                return animationVector2D;
            }
            return new AnimationVector2D(Offset.m1606getXimpl(j10), Offset.m1607getYimpl(j10));
        }
    }, new Function1<AnimationVector2D, Offset>() { // from class: androidx.compose.foundation.text.selection.SelectionMagnifierKt$UnspecifiedSafeOffsetVectorConverter$2
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Offset invoke(AnimationVector2D animationVector2D) {
            return Offset.m1595boximpl(m836invoketuRUvjQ(animationVector2D));
        }

        /* renamed from: invoke-tuRUvjQ  reason: not valid java name */
        public final long m836invoketuRUvjQ(@NotNull AnimationVector2D it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return OffsetKt.Offset(it.getV1(), it.getV2());
        }
    });

    static {
        long Offset = OffsetKt.Offset(0.01f, 0.01f);
        OffsetDisplacementThreshold = Offset;
        MagnifierSpringSpec = new SpringSpec<>(0.0f, 0.0f, Offset.m1595boximpl(Offset), 3, null);
    }

    @NotNull
    public static final Modifier animatedSelectionMagnifier(@NotNull Modifier modifier, @NotNull final Function0<Offset> magnifierCenter, @NotNull final Function1<? super Function0<Offset>, ? extends Modifier> platformMagnifier) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(magnifierCenter, "magnifierCenter");
        Intrinsics.checkNotNullParameter(platformMagnifier, "platformMagnifier");
        return ComposedModifierKt.composed$default(modifier, null, new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.text.selection.SelectionMagnifierKt$animatedSelectionMagnifier$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(3);
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: invoke$lambda-0  reason: not valid java name */
            public static final long m838invoke$lambda0(State<Offset> state) {
                return state.getValue().m1616unboximpl();
            }

            @Override // at.n
            public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier2, Composer composer, Integer num) {
                return invoke(modifier2, composer, num.intValue());
            }

            @Composable
            @NotNull
            public final Modifier invoke(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
                final State rememberAnimatedMagnifierPosition;
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(759876635);
                rememberAnimatedMagnifierPosition = SelectionMagnifierKt.rememberAnimatedMagnifierPosition(magnifierCenter, composer, 0);
                Modifier invoke = platformMagnifier.invoke(new Function0<Offset>() { // from class: androidx.compose.foundation.text.selection.SelectionMagnifierKt$animatedSelectionMagnifier$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Offset invoke() {
                        return Offset.m1595boximpl(m839invokeF1C5BW0());
                    }

                    /* renamed from: invoke-F1C5BW0  reason: not valid java name */
                    public final long m839invokeF1C5BW0() {
                        return SelectionMagnifierKt$animatedSelectionMagnifier$1.m838invoke$lambda0(rememberAnimatedMagnifierPosition);
                    }
                });
                composer.endReplaceableGroup();
                return invoke;
            }
        }, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    public static final State<Offset> rememberAnimatedMagnifierPosition(Function0<Offset> function0, Composer composer, int i10) {
        composer.startReplaceableGroup(-1589795249);
        composer.startReplaceableGroup(-492369756);
        Object rememberedValue = composer.rememberedValue();
        Composer.Companion companion = Composer.Companion;
        if (rememberedValue == companion.getEmpty()) {
            rememberedValue = SnapshotStateKt.derivedStateOf(function0);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        State state = (State) rememberedValue;
        composer.startReplaceableGroup(-492369756);
        Object rememberedValue2 = composer.rememberedValue();
        if (rememberedValue2 == companion.getEmpty()) {
            rememberedValue2 = new Animatable(Offset.m1595boximpl(m834rememberAnimatedMagnifierPosition$lambda1(state)), UnspecifiedSafeOffsetVectorConverter, Offset.m1595boximpl(OffsetDisplacementThreshold));
            composer.updateRememberedValue(rememberedValue2);
        }
        composer.endReplaceableGroup();
        Animatable animatable = (Animatable) rememberedValue2;
        EffectsKt.LaunchedEffect(Unit.f60915a, new SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1(state, animatable, null), composer, 0);
        State<Offset> asState = animatable.asState();
        composer.endReplaceableGroup();
        return asState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: rememberAnimatedMagnifierPosition$lambda-1  reason: not valid java name */
    public static final long m834rememberAnimatedMagnifierPosition$lambda1(State<Offset> state) {
        return state.getValue().m1616unboximpl();
    }
}
