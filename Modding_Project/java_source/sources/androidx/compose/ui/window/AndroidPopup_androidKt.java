package androidx.compose.ui.window;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.LayoutDirection;
import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidPopup.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidPopup_androidKt {
    @NotNull
    private static final ProvidableCompositionLocal<String> LocalPopupTestTag = CompositionLocalKt.compositionLocalOf$default(null, new Function0<String>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$LocalPopupTestTag$1
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        public final String invoke() {
            return "DEFAULT_TEST_TAG";
        }
    }, 1, null);

    /* JADX WARN: Removed duplicated region for block: B:109:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0262  */
    /* JADX WARN: Removed duplicated region for block: B:165:? A[RETURN, SYNTHETIC] */
    @androidx.compose.runtime.Composable
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void Popup(@org.jetbrains.annotations.NotNull final androidx.compose.ui.window.PopupPositionProvider r27, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function0<kotlin.Unit> r28, @org.jetbrains.annotations.Nullable androidx.compose.ui.window.PopupProperties r29, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r30, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r31, final int r32, final int r33) {
        /*
            Method dump skipped, instructions count: 628
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.window.AndroidPopup_androidKt.Popup(androidx.compose.ui.window.PopupPositionProvider, kotlin.jvm.functions.Function0, androidx.compose.ui.window.PopupProperties, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int):void");
    }

    /* renamed from: Popup$lambda-1 */
    public static final Function2<Composer, Integer, Unit> m4291Popup$lambda1(State<? extends Function2<? super Composer, ? super Integer, Unit>> state) {
        return (Function2) state.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:121:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:189:? A[RETURN, SYNTHETIC] */
    @androidx.compose.runtime.Composable
    @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]")
    /* renamed from: Popup-K5zGePQ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m4292PopupK5zGePQ(@org.jetbrains.annotations.Nullable androidx.compose.ui.Alignment r23, long r24, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function0<kotlin.Unit> r26, @org.jetbrains.annotations.Nullable androidx.compose.ui.window.PopupProperties r27, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r28, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r29, final int r30, final int r31) {
        /*
            Method dump skipped, instructions count: 354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.window.AndroidPopup_androidKt.m4292PopupK5zGePQ(androidx.compose.ui.Alignment, long, kotlin.jvm.functions.Function0, androidx.compose.ui.window.PopupProperties, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int):void");
    }

    @Composable
    @ComposableInferredTarget(scheme = "[0[0]]")
    public static final void PopupTestTag(@NotNull final String tag, @NotNull final Function2<? super Composer, ? super Integer, Unit> content, @Nullable Composer composer, final int i10) {
        int i11;
        int i12;
        int i13;
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(content, "content");
        Composer startRestartGroup = composer.startRestartGroup(-498879600);
        if ((i10 & 14) == 0) {
            if (startRestartGroup.changed(tag)) {
                i13 = 4;
            } else {
                i13 = 2;
            }
            i11 = i13 | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            if (startRestartGroup.changed(content)) {
                i12 = 32;
            } else {
                i12 = 16;
            }
            i11 |= i12;
        }
        if ((i11 & 91) == 18 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            CompositionLocalKt.CompositionLocalProvider(new ProvidedValue[]{LocalPopupTestTag.provides(tag)}, content, startRestartGroup, (i11 & 112) | 8);
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$PopupTestTag$1
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

                public final void invoke(@Nullable Composer composer2, int i14) {
                    AndroidPopup_androidKt.PopupTestTag(tag, content, composer2, i10 | 1);
                }
            });
        }
    }

    @Composable
    @ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]")
    private static final void SimpleStack(Modifier modifier, Function2<? super Composer, ? super Integer, Unit> function2, Composer composer, int i10) {
        composer.startReplaceableGroup(1406149896);
        AndroidPopup_androidKt$SimpleStack$1 androidPopup_androidKt$SimpleStack$1 = AndroidPopup_androidKt$SimpleStack$1.INSTANCE;
        composer.startReplaceableGroup(-1323940314);
        Density density = (Density) composer.consume(CompositionLocalsKt.getLocalDensity());
        LayoutDirection layoutDirection = (LayoutDirection) composer.consume(CompositionLocalsKt.getLocalLayoutDirection());
        ViewConfiguration viewConfiguration = (ViewConfiguration) composer.consume(CompositionLocalsKt.getLocalViewConfiguration());
        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
        Function0<ComposeUiNode> constructor = companion.getConstructor();
        n<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(modifier);
        int i11 = (((((i10 << 3) & 112) | ((i10 >> 3) & 14)) << 9) & 7168) | 6;
        if (composer.getApplier() == null) {
            ComposablesKt.invalidApplier();
        }
        composer.startReusableNode();
        if (composer.getInserting()) {
            composer.createNode(constructor);
        } else {
            composer.useNode();
        }
        composer.disableReusing();
        Composer m1376constructorimpl = Updater.m1376constructorimpl(composer);
        Updater.m1383setimpl(m1376constructorimpl, androidPopup_androidKt$SimpleStack$1, companion.getSetMeasurePolicy());
        Updater.m1383setimpl(m1376constructorimpl, density, companion.getSetDensity());
        Updater.m1383setimpl(m1376constructorimpl, layoutDirection, companion.getSetLayoutDirection());
        Updater.m1383setimpl(m1376constructorimpl, viewConfiguration, companion.getSetViewConfiguration());
        composer.enableReusing();
        materializerOf.invoke(SkippableUpdater.m1349boximpl(SkippableUpdater.m1350constructorimpl(composer)), composer, 0);
        composer.startReplaceableGroup(2058660585);
        function2.invoke(composer, Integer.valueOf((i11 >> 9) & 14));
        composer.endReplaceableGroup();
        composer.endNode();
        composer.endReplaceableGroup();
        composer.endReplaceableGroup();
    }

    @NotNull
    public static final ProvidableCompositionLocal<String> getLocalPopupTestTag() {
        return LocalPopupTestTag;
    }

    public static final boolean isFlagSecureEnabled(@NotNull View view) {
        WindowManager.LayoutParams layoutParams;
        Intrinsics.checkNotNullParameter(view, "<this>");
        ViewGroup.LayoutParams layoutParams2 = view.getRootView().getLayoutParams();
        if (layoutParams2 instanceof WindowManager.LayoutParams) {
            layoutParams = (WindowManager.LayoutParams) layoutParams2;
        } else {
            layoutParams = null;
        }
        if (layoutParams == null || (layoutParams.flags & 8192) == 0) {
            return false;
        }
        return true;
    }

    public static final boolean isPopupLayout(@NotNull View view, @Nullable String str) {
        Intrinsics.checkNotNullParameter(view, "view");
        if ((view instanceof PopupLayout) && (str == null || Intrinsics.areEqual(str, ((PopupLayout) view).getTestTag()))) {
            return true;
        }
        return false;
    }

    public static /* synthetic */ boolean isPopupLayout$default(View view, String str, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str = null;
        }
        return isPopupLayout(view, str);
    }

    public static final IntRect toIntBounds(Rect rect) {
        return new IntRect(rect.left, rect.top, rect.right, rect.bottom);
    }
}
