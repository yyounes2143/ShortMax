package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.MagnifierKt;
import androidx.compose.foundation.MagnifierStyle;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SelectionManager.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class SelectionManager_androidKt$selectionMagnifier$1 extends Lambda implements n<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ SelectionManager $manager;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectionManager_androidKt$selectionMagnifier$1(SelectionManager selectionManager) {
        super(3);
        this.$manager = selectionManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: invoke$lambda-1  reason: not valid java name */
    public static final long m873invoke$lambda1(MutableState<IntSize> mutableState) {
        return mutableState.getValue().m4213unboximpl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: invoke$lambda-2  reason: not valid java name */
    public static final void m874invoke$lambda2(MutableState<IntSize> mutableState, long j10) {
        mutableState.setValue(IntSize.m4201boximpl(j10));
    }

    @Override // at.n
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return invoke(modifier, composer, num.intValue());
    }

    @Composable
    @NotNull
    public final Modifier invoke(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        Intrinsics.checkNotNullParameter(composed, "$this$composed");
        composer.startReplaceableGroup(-1914520728);
        final Density density = (Density) composer.consume(CompositionLocalsKt.getLocalDensity());
        composer.startReplaceableGroup(-492369756);
        Object rememberedValue = composer.rememberedValue();
        if (rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(IntSize.m4201boximpl(IntSize.Companion.m4214getZeroYbymL2g()), null, 2, null);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        final MutableState mutableState = (MutableState) rememberedValue;
        final SelectionManager selectionManager = this.$manager;
        Modifier animatedSelectionMagnifier = SelectionMagnifierKt.animatedSelectionMagnifier(composed, new Function0<Offset>() { // from class: androidx.compose.foundation.text.selection.SelectionManager_androidKt$selectionMagnifier$1.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Offset invoke() {
                return Offset.m1595boximpl(m875invokeF1C5BW0());
            }

            /* renamed from: invoke-F1C5BW0  reason: not valid java name */
            public final long m875invokeF1C5BW0() {
                return SelectionManagerKt.m868calculateSelectionMagnifierCenterAndroidO0kMr_c(SelectionManager.this, SelectionManager_androidKt$selectionMagnifier$1.m873invoke$lambda1(mutableState));
            }
        }, new Function1<Function0<? extends Offset>, Modifier>() { // from class: androidx.compose.foundation.text.selection.SelectionManager_androidKt$selectionMagnifier$1.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Modifier invoke(Function0<? extends Offset> function0) {
                return invoke2((Function0<Offset>) function0);
            }

            @NotNull
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Modifier invoke2(@NotNull final Function0<Offset> center) {
                Intrinsics.checkNotNullParameter(center, "center");
                Modifier.Companion companion = Modifier.Companion;
                MagnifierStyle textDefault = MagnifierStyle.Companion.getTextDefault();
                Function1<Density, Offset> function1 = new Function1<Density, Offset>() { // from class: androidx.compose.foundation.text.selection.SelectionManager_androidKt.selectionMagnifier.1.2.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Offset invoke(Density density2) {
                        return Offset.m1595boximpl(m876invoketuRUvjQ(density2));
                    }

                    /* renamed from: invoke-tuRUvjQ  reason: not valid java name */
                    public final long m876invoketuRUvjQ(@NotNull Density magnifier) {
                        Intrinsics.checkNotNullParameter(magnifier, "$this$magnifier");
                        return center.invoke().m1616unboximpl();
                    }
                };
                final Density density2 = Density.this;
                final MutableState<IntSize> mutableState2 = mutableState;
                return MagnifierKt.magnifier$default(companion, function1, null, 0.0f, textDefault, new Function1<DpSize, Unit>() { // from class: androidx.compose.foundation.text.selection.SelectionManager_androidKt.selectionMagnifier.1.2.2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(DpSize dpSize) {
                        m877invokeEaSLcWc(dpSize.m4155unboximpl());
                        return Unit.f60915a;
                    }

                    /* renamed from: invoke-EaSLcWc  reason: not valid java name */
                    public final void m877invokeEaSLcWc(long j10) {
                        MutableState<IntSize> mutableState3 = mutableState2;
                        Density density3 = Density.this;
                        SelectionManager_androidKt$selectionMagnifier$1.m874invoke$lambda2(mutableState3, IntSizeKt.IntSize(density3.mo336roundToPx0680j_4(DpSize.m4147getWidthD9Ej5fM(j10)), density3.mo336roundToPx0680j_4(DpSize.m4145getHeightD9Ej5fM(j10))));
                    }
                }, 6, null);
            }
        });
        composer.endReplaceableGroup();
        return animatedSelectionMagnifier;
    }
}
