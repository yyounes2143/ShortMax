package androidx.compose.material;

import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: TextFieldImpl.kt */
@Metadata
/* loaded from: classes.dex */
final class TextFieldTransitionScope {
    @NotNull
    public static final TextFieldTransitionScope INSTANCE = new TextFieldTransitionScope();

    /* compiled from: TextFieldImpl.kt */
    @Metadata
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[InputPhase.values().length];
            iArr[InputPhase.Focused.ordinal()] = 1;
            iArr[InputPhase.UnfocusedEmpty.ordinal()] = 2;
            iArr[InputPhase.UnfocusedNotEmpty.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private TextFieldTransitionScope() {
    }

    /* renamed from: Transition_DTcfvLk$lambda-1  reason: not valid java name */
    private static final float m1264Transition_DTcfvLk$lambda1(State<Float> state) {
        return state.getValue().floatValue();
    }

    /* renamed from: Transition_DTcfvLk$lambda-3  reason: not valid java name */
    private static final float m1265Transition_DTcfvLk$lambda3(State<Float> state) {
        return state.getValue().floatValue();
    }

    /* renamed from: Transition_DTcfvLk$lambda-5  reason: not valid java name */
    private static final long m1266Transition_DTcfvLk$lambda5(State<Color> state) {
        return state.getValue().m1852unboximpl();
    }

    /* renamed from: Transition_DTcfvLk$lambda-6  reason: not valid java name */
    private static final long m1267Transition_DTcfvLk$lambda6(State<Color> state) {
        return state.getValue().m1852unboximpl();
    }

    /* JADX WARN: Code restructure failed: missing block: B:77:0x017f, code lost:
        if (r34 != false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01a8, code lost:
        if (r34 != false) goto L79;
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0246  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0260  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0263  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x02c7  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x020f  */
    @androidx.compose.runtime.Composable
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[0[0][0]]")
    /* renamed from: Transition-DTcfvLk  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1268TransitionDTcfvLk(@org.jetbrains.annotations.NotNull final androidx.compose.material.InputPhase r28, final long r29, final long r31, @org.jetbrains.annotations.NotNull final at.n<? super androidx.compose.material.InputPhase, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, androidx.compose.ui.graphics.Color> r33, final boolean r34, @org.jetbrains.annotations.NotNull final at.q<? super java.lang.Float, ? super androidx.compose.ui.graphics.Color, ? super androidx.compose.ui.graphics.Color, ? super java.lang.Float, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r35, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r36, final int r37) {
        /*
            Method dump skipped, instructions count: 899
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.TextFieldTransitionScope.m1268TransitionDTcfvLk(androidx.compose.material.InputPhase, long, long, at.n, boolean, at.q, androidx.compose.runtime.Composer, int):void");
    }
}
