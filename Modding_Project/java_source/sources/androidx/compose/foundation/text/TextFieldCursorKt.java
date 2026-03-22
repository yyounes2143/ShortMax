package androidx.compose.foundation.text;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.KeyframesSpec;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.unit.Dp;
import at.n;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: TextFieldCursor.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextFieldCursorKt {
    private static final float DefaultCursorThickness = Dp.m4049constructorimpl(2);

    @NotNull
    public static final Modifier cursor(@NotNull Modifier modifier, @NotNull final TextFieldState state, @NotNull final TextFieldValue value, @NotNull final OffsetMapping offsetMapping, @NotNull final Brush cursorBrush, boolean z10) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(offsetMapping, "offsetMapping");
        Intrinsics.checkNotNullParameter(cursorBrush, "cursorBrush");
        if (z10) {
            return ComposedModifierKt.composed$default(modifier, null, new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.text.TextFieldCursorKt$cursor$1

                /* JADX INFO: Access modifiers changed from: package-private */
                /* compiled from: TextFieldCursor.kt */
                @Metadata
                @d(c = "androidx.compose.foundation.text.TextFieldCursorKt$cursor$1$1", f = "TextFieldCursor.kt", l = {49}, m = "invokeSuspend")
                /* renamed from: androidx.compose.foundation.text.TextFieldCursorKt$cursor$1$1  reason: invalid class name */
                /* loaded from: classes.dex */
                public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
                    final /* synthetic */ Animatable<Float, AnimationVector1D> $cursorAlpha;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    AnonymousClass1(Animatable<Float, AnimationVector1D> animatable, c<? super AnonymousClass1> cVar) {
                        super(2, cVar);
                        this.$cursorAlpha = animatable;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @NotNull
                    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                        return new AnonymousClass1(this.$cursorAlpha, cVar);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    @Nullable
                    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
                        return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @Nullable
                    public final Object invokeSuspend(@NotNull Object obj) {
                        AnimationSpec cursorAnimationSpec;
                        Object f10 = a.f();
                        int i10 = this.label;
                        if (i10 != 0) {
                            if (i10 == 1) {
                                f.b(obj);
                            } else {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                        } else {
                            f.b(obj);
                            Animatable<Float, AnimationVector1D> animatable = this.$cursorAlpha;
                            Float c10 = kotlin.coroutines.jvm.internal.a.c(0.0f);
                            cursorAnimationSpec = TextFieldCursorKt.getCursorAnimationSpec();
                            this.label = 1;
                            if (Animatable.animateTo$default(animatable, c10, cursorAnimationSpec, null, null, this, 12, null) == f10) {
                                return f10;
                            }
                        }
                        return Unit.f60915a;
                    }
                }

                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                @Override // at.n
                public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier2, Composer composer, Integer num) {
                    return invoke(modifier2, composer, num.intValue());
                }

                @Composable
                @NotNull
                public final Modifier invoke(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
                    Modifier modifier2;
                    Intrinsics.checkNotNullParameter(composed, "$this$composed");
                    composer.startReplaceableGroup(1634330012);
                    composer.startReplaceableGroup(-492369756);
                    Object rememberedValue = composer.rememberedValue();
                    if (rememberedValue == Composer.Companion.getEmpty()) {
                        rememberedValue = AnimatableKt.Animatable$default(1.0f, 0.0f, 2, null);
                        composer.updateRememberedValue(rememberedValue);
                    }
                    composer.endReplaceableGroup();
                    final Animatable animatable = (Animatable) rememberedValue;
                    Brush brush = Brush.this;
                    boolean z11 = ((brush instanceof SolidColor) && ((SolidColor) brush).m2128getValue0d7_KjU() == Color.Companion.m1878getUnspecified0d7_KjU()) ? false : true;
                    if (state.getHasFocus() && TextRange.m3691getCollapsedimpl(value.m3874getSelectiond9O1mEE()) && z11) {
                        EffectsKt.LaunchedEffect(Brush.this, value.getAnnotatedString(), TextRange.m3685boximpl(value.m3874getSelectiond9O1mEE()), new AnonymousClass1(animatable, null), composer, 0);
                        final OffsetMapping offsetMapping2 = offsetMapping;
                        final TextFieldValue textFieldValue = value;
                        final TextFieldState textFieldState = state;
                        final Brush brush2 = Brush.this;
                        modifier2 = DrawModifierKt.drawWithContent(composed, new Function1<ContentDrawScope, Unit>() { // from class: androidx.compose.foundation.text.TextFieldCursorKt$cursor$1.2
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(ContentDrawScope contentDrawScope) {
                                invoke2(contentDrawScope);
                                return Unit.f60915a;
                            }

                            /* renamed from: invoke  reason: avoid collision after fix types in other method */
                            public final void invoke2(@NotNull ContentDrawScope drawWithContent) {
                                Rect rect;
                                TextLayoutResult value2;
                                Intrinsics.checkNotNullParameter(drawWithContent, "$this$drawWithContent");
                                drawWithContent.drawContent();
                                float m10 = e.m(animatable.getValue().floatValue(), 0.0f, 1.0f);
                                if (m10 == 0.0f) {
                                    return;
                                }
                                int originalToTransformed = offsetMapping2.originalToTransformed(TextRange.m3697getStartimpl(textFieldValue.m3874getSelectiond9O1mEE()));
                                TextLayoutResultProxy layoutResult = textFieldState.getLayoutResult();
                                if (layoutResult == null || (value2 = layoutResult.getValue()) == null || (rect = value2.getCursorRect(originalToTransformed)) == null) {
                                    rect = new Rect(0.0f, 0.0f, 0.0f, 0.0f);
                                }
                                float mo342toPx0680j_4 = drawWithContent.mo342toPx0680j_4(TextFieldCursorKt.getDefaultCursorThickness());
                                float f10 = mo342toPx0680j_4 / 2;
                                float i11 = e.i(rect.getLeft() + f10, Size.m1675getWidthimpl(drawWithContent.mo2336getSizeNHjbRc()) - f10);
                                DrawScope.m2322drawLine1RTmtNc$default(drawWithContent, brush2, OffsetKt.Offset(i11, rect.getTop()), OffsetKt.Offset(i11, rect.getBottom()), mo342toPx0680j_4, 0, null, m10, null, 0, TTVideoEngineInterface.PLAYER_OPTION_ENABLE_h266, null);
                            }
                        });
                    } else {
                        modifier2 = Modifier.Companion;
                    }
                    composer.endReplaceableGroup();
                    return modifier2;
                }
            }, 1, null);
        }
        return modifier;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AnimationSpec<Float> getCursorAnimationSpec() {
        return AnimationSpecKt.m137infiniteRepeatable9IiC70o$default(AnimationSpecKt.keyframes(new Function1<KeyframesSpec.KeyframesSpecConfig<Float>, Unit>() { // from class: androidx.compose.foundation.text.TextFieldCursorKt$cursorAnimationSpec$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(KeyframesSpec.KeyframesSpecConfig<Float> keyframesSpecConfig) {
                invoke2(keyframesSpecConfig);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull KeyframesSpec.KeyframesSpecConfig<Float> keyframes) {
                Intrinsics.checkNotNullParameter(keyframes, "$this$keyframes");
                keyframes.setDurationMillis(1000);
                Float valueOf = Float.valueOf(1.0f);
                keyframes.at(valueOf, 0);
                keyframes.at(valueOf, TTVideoEngineInterface.PLAYER_OPTION_ENABLE_OPEN_BARRAGE_MASK);
                Float valueOf2 = Float.valueOf(0.0f);
                keyframes.at(valueOf2, 500);
                keyframes.at(valueOf2, 999);
            }
        }), null, 0L, 6, null);
    }

    public static final float getDefaultCursorThickness() {
        return DefaultCursorThickness;
    }
}
