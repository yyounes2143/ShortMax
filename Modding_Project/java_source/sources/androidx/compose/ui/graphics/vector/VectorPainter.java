package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composition;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.CompositionKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.unit.LayoutDirection;
import at.o;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: VectorPainter.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class VectorPainter extends Painter {
    public static final int $stable = 8;
    @NotNull
    private final MutableState autoMirror$delegate;
    @Nullable
    private Composition composition;
    private float currentAlpha;
    @Nullable
    private ColorFilter currentColorFilter;
    @NotNull
    private final MutableState isDirty$delegate;
    @NotNull
    private final MutableState size$delegate;
    @NotNull
    private final VectorComponent vector;

    public VectorPainter() {
        MutableState mutableStateOf$default;
        MutableState mutableStateOf$default2;
        MutableState mutableStateOf$default3;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Size.m1663boximpl(Size.Companion.m1684getZeroNHjbRc()), null, 2, null);
        this.size$delegate = mutableStateOf$default;
        mutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
        this.autoMirror$delegate = mutableStateOf$default2;
        VectorComponent vectorComponent = new VectorComponent();
        vectorComponent.setInvalidateCallback$ui_release(new Function0<Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorPainter$vector$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                VectorPainter.this.setDirty(true);
            }
        });
        this.vector = vectorComponent;
        mutableStateOf$default3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.TRUE, null, 2, null);
        this.isDirty$delegate = mutableStateOf$default3;
        this.currentAlpha = 1.0f;
    }

    @ComposableInferredTarget(scheme = "[0[0]]")
    private final Composition composeVector(CompositionContext compositionContext, final o<? super Float, ? super Float, ? super Composer, ? super Integer, Unit> oVar) {
        Composition composition = this.composition;
        if (composition == null || composition.isDisposed()) {
            composition = CompositionKt.Composition(new VectorApplier(this.vector.getRoot()), compositionContext);
        }
        this.composition = composition;
        composition.setContent(ComposableLambdaKt.composableLambdaInstance(-1916507005, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorPainter$composeVector$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                invoke(composer, num.intValue());
                return Unit.f60915a;
            }

            @Composable
            public final void invoke(@Nullable Composer composer, int i10) {
                VectorComponent vectorComponent;
                VectorComponent vectorComponent2;
                if ((i10 & 11) == 2 && composer.getSkipping()) {
                    composer.skipToGroupEnd();
                    return;
                }
                o<Float, Float, Composer, Integer, Unit> oVar2 = oVar;
                vectorComponent = this.vector;
                Float valueOf = Float.valueOf(vectorComponent.getViewportWidth());
                vectorComponent2 = this.vector;
                oVar2.invoke(valueOf, Float.valueOf(vectorComponent2.getViewportHeight()), composer, 0);
            }
        }));
        return composition;
    }

    private final boolean isDirty() {
        return ((Boolean) this.isDirty$delegate.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setDirty(boolean z10) {
        this.isDirty$delegate.setValue(Boolean.valueOf(z10));
    }

    @Composable
    @ComposableInferredTarget(scheme = "[0[0]]")
    public final void RenderVector$ui_release(@NotNull final String name, final float f10, final float f11, @NotNull final o<? super Float, ? super Float, ? super Composer, ? super Integer, Unit> content, @Nullable Composer composer, final int i10) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(content, "content");
        Composer startRestartGroup = composer.startRestartGroup(1264894527);
        VectorComponent vectorComponent = this.vector;
        vectorComponent.setName(name);
        vectorComponent.setViewportWidth(f10);
        vectorComponent.setViewportHeight(f11);
        final Composition composeVector = composeVector(ComposablesKt.rememberCompositionContext(startRestartGroup, 0), content);
        EffectsKt.DisposableEffect(composeVector, new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.ui.graphics.vector.VectorPainter$RenderVector$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
                Intrinsics.checkNotNullParameter(DisposableEffect, "$this$DisposableEffect");
                final Composition composition = Composition.this;
                return new DisposableEffectResult() { // from class: androidx.compose.ui.graphics.vector.VectorPainter$RenderVector$2$invoke$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public void dispose() {
                        Composition.this.dispose();
                    }
                };
            }
        }, startRestartGroup, 8);
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorPainter$RenderVector$3
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.f60915a;
                }

                public final void invoke(@Nullable Composer composer2, int i11) {
                    VectorPainter.this.RenderVector$ui_release(name, f10, f11, content, composer2, i10 | 1);
                }
            });
        }
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected boolean applyAlpha(float f10) {
        this.currentAlpha = f10;
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected boolean applyColorFilter(@Nullable ColorFilter colorFilter) {
        this.currentColorFilter = colorFilter;
        return true;
    }

    public final boolean getAutoMirror$ui_release() {
        return ((Boolean) this.autoMirror$delegate.getValue()).booleanValue();
    }

    @Nullable
    public final ColorFilter getIntrinsicColorFilter$ui_release() {
        return this.vector.getIntrinsicColorFilter$ui_release();
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    /* renamed from: getIntrinsicSize-NH-jbRc */
    public long mo2405getIntrinsicSizeNHjbRc() {
        return m2443getSizeNHjbRc$ui_release();
    }

    /* renamed from: getSize-NH-jbRc$ui_release  reason: not valid java name */
    public final long m2443getSizeNHjbRc$ui_release() {
        return ((Size) this.size$delegate.getValue()).m1680unboximpl();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.compose.ui.graphics.painter.Painter
    public void onDraw(@NotNull DrawScope drawScope) {
        Intrinsics.checkNotNullParameter(drawScope, "<this>");
        VectorComponent vectorComponent = this.vector;
        ColorFilter colorFilter = this.currentColorFilter;
        if (colorFilter == null) {
            colorFilter = vectorComponent.getIntrinsicColorFilter$ui_release();
        }
        if (getAutoMirror$ui_release() && drawScope.getLayoutDirection() == LayoutDirection.Rtl) {
            long mo2335getCenterF1C5BW0 = drawScope.mo2335getCenterF1C5BW0();
            DrawContext drawContext = drawScope.getDrawContext();
            long mo2261getSizeNHjbRc = drawContext.mo2261getSizeNHjbRc();
            drawContext.getCanvas().save();
            drawContext.getTransform().mo2268scale0AR0LA0(-1.0f, 1.0f, mo2335getCenterF1C5BW0);
            vectorComponent.draw(drawScope, this.currentAlpha, colorFilter);
            drawContext.getCanvas().restore();
            drawContext.mo2262setSizeuvyYCjk(mo2261getSizeNHjbRc);
        } else {
            vectorComponent.draw(drawScope, this.currentAlpha, colorFilter);
        }
        if (isDirty()) {
            setDirty(false);
        }
    }

    public final void setAutoMirror$ui_release(boolean z10) {
        this.autoMirror$delegate.setValue(Boolean.valueOf(z10));
    }

    public final void setIntrinsicColorFilter$ui_release(@Nullable ColorFilter colorFilter) {
        this.vector.setIntrinsicColorFilter$ui_release(colorFilter);
    }

    /* renamed from: setSize-uvyYCjk$ui_release  reason: not valid java name */
    public final void m2444setSizeuvyYCjk$ui_release(long j10) {
        this.size$delegate.setValue(Size.m1663boximpl(j10));
    }
}
