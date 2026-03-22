package androidx.compose.foundation.layout;

import android.os.Build;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WindowInsetsConnection.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class WindowInsetsConnection_androidKt {
    private static final double DecelMinusOne;
    private static final double DecelerationRate;
    private static final float EndTension = 1.0f;
    private static final float GravityEarth = 9.80665f;
    private static final float InchesPerMeter = 39.37f;
    private static final float Inflection = 0.35f;
    private static final float P1 = 0.175f;
    private static final float P2 = 0.35000002f;
    private static final float PlatformFlingScrollFriction = ViewConfiguration.getScrollFriction();
    private static final float StartTension = 0.5f;

    static {
        double log = Math.log(0.78d) / Math.log(0.9d);
        DecelerationRate = log;
        DecelMinusOne = log - 1.0d;
    }

    @ExperimentalLayoutApi
    @NotNull
    public static final Modifier imeNestedScroll(@NotNull Modifier modifier) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        if (Build.VERSION.SDK_INT < 30) {
            return modifier;
        }
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.WindowInsetsConnection_androidKt$imeNestedScroll$$inlined$debugInspectorInfo$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(InspectorInfo inspectorInfo) {
                    invoke2(inspectorInfo);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull InspectorInfo inspectorInfo) {
                    Intrinsics.checkNotNullParameter(inspectorInfo, "$this$null");
                    inspectorInfo.setName("imeNestedScroll");
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return ComposedModifierKt.composed(modifier, noInspectorInfo, new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.layout.WindowInsetsConnection_androidKt$imeNestedScroll$2
            @Override // at.n
            public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier2, Composer composer, Integer num) {
                return invoke(modifier2, composer, num.intValue());
            }

            @Composable
            @NotNull
            public final Modifier invoke(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(-369978792);
                Modifier nestedScroll$default = NestedScrollModifierKt.nestedScroll$default(composed, WindowInsetsConnection_androidKt.m502rememberWindowInsetsConnectionVRgvIgI(WindowInsetsHolder.Companion.current(composer, 8).getIme(), WindowInsetsSides.Companion.m526getBottomJoeWqyM(), composer, 48), null, 2, null);
                composer.endReplaceableGroup();
                return nestedScroll$default;
            }
        });
    }

    @Composable
    @ExperimentalLayoutApi
    @NotNull
    /* renamed from: rememberWindowInsetsConnection-VRgvIgI  reason: not valid java name */
    public static final NestedScrollConnection m502rememberWindowInsetsConnectionVRgvIgI(@NotNull AndroidWindowInsets windowInsets, int i10, @Nullable Composer composer, int i11) {
        Intrinsics.checkNotNullParameter(windowInsets, "windowInsets");
        composer.startReplaceableGroup(-1011341039);
        if (Build.VERSION.SDK_INT < 30) {
            DoNothingNestedScrollConnection doNothingNestedScrollConnection = DoNothingNestedScrollConnection.INSTANCE;
            composer.endReplaceableGroup();
            return doNothingNestedScrollConnection;
        }
        SideCalculator m471chooseCalculatorni1skBw = SideCalculator.Companion.m471chooseCalculatorni1skBw(i10, (LayoutDirection) composer.consume(CompositionLocalsKt.getLocalLayoutDirection()));
        View view = (View) composer.consume(AndroidCompositionLocals_androidKt.getLocalView());
        Density density = (Density) composer.consume(CompositionLocalsKt.getLocalDensity());
        Object[] objArr = {windowInsets, view, m471chooseCalculatorni1skBw, density};
        composer.startReplaceableGroup(-568225417);
        boolean z10 = false;
        for (int i12 = 0; i12 < 4; i12++) {
            z10 |= composer.changed(objArr[i12]);
        }
        Object rememberedValue = composer.rememberedValue();
        if (z10 || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new WindowInsetsNestedScrollConnection(windowInsets, view, m471chooseCalculatorni1skBw, density);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        final WindowInsetsNestedScrollConnection windowInsetsNestedScrollConnection = (WindowInsetsNestedScrollConnection) rememberedValue;
        EffectsKt.DisposableEffect(windowInsetsNestedScrollConnection, new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.foundation.layout.WindowInsetsConnection_androidKt$rememberWindowInsetsConnection$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
                Intrinsics.checkNotNullParameter(DisposableEffect, "$this$DisposableEffect");
                final WindowInsetsNestedScrollConnection windowInsetsNestedScrollConnection2 = WindowInsetsNestedScrollConnection.this;
                return new DisposableEffectResult() { // from class: androidx.compose.foundation.layout.WindowInsetsConnection_androidKt$rememberWindowInsetsConnection$1$invoke$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public void dispose() {
                        WindowInsetsNestedScrollConnection.this.dispose();
                    }
                };
            }
        }, composer, 8);
        composer.endReplaceableGroup();
        return windowInsetsNestedScrollConnection;
    }
}
