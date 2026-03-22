package androidx.compose.material;

import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ExposedDropdownMenu.kt */
@Metadata
@ExperimentalMaterialApi
/* loaded from: classes.dex */
public interface ExposedDropdownMenuBoxScope {

    /* compiled from: ExposedDropdownMenu.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        /* JADX WARN: Removed duplicated region for block: B:36:0x006b  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x006e  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x0082  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x0087  */
        /* JADX WARN: Removed duplicated region for block: B:61:0x00b3  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x00b8  */
        /* JADX WARN: Removed duplicated region for block: B:65:0x00cc  */
        /* JADX WARN: Removed duplicated region for block: B:74:0x010c  */
        /* JADX WARN: Removed duplicated region for block: B:85:0x0192  */
        /* JADX WARN: Removed duplicated region for block: B:87:? A[RETURN, SYNTHETIC] */
        @androidx.compose.runtime.Composable
        @androidx.compose.runtime.ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]")
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static void ExposedDropdownMenu(@org.jetbrains.annotations.NotNull final androidx.compose.material.ExposedDropdownMenuBoxScope r23, final boolean r24, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function0<kotlin.Unit> r25, @org.jetbrains.annotations.Nullable androidx.compose.ui.Modifier r26, @org.jetbrains.annotations.NotNull final at.n<? super androidx.compose.foundation.layout.ColumnScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r27, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r28, final int r29, final int r30) {
            /*
                Method dump skipped, instructions count: 424
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.ExposedDropdownMenuBoxScope.DefaultImpls.ExposedDropdownMenu(androidx.compose.material.ExposedDropdownMenuBoxScope, boolean, kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, at.n, androidx.compose.runtime.Composer, int, int):void");
        }

        public static /* synthetic */ Modifier exposedDropdownSize$default(ExposedDropdownMenuBoxScope exposedDropdownMenuBoxScope, Modifier modifier, boolean z10, int i10, Object obj) {
            if (obj == null) {
                if ((i10 & 1) != 0) {
                    z10 = true;
                }
                return exposedDropdownMenuBoxScope.exposedDropdownSize(modifier, z10);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: exposedDropdownSize");
        }
    }

    @Composable
    @ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]")
    void ExposedDropdownMenu(boolean z10, @NotNull Function0<Unit> function0, @Nullable Modifier modifier, @NotNull n<? super ColumnScope, ? super Composer, ? super Integer, Unit> nVar, @Nullable Composer composer, int i10, int i11);

    @NotNull
    Modifier exposedDropdownSize(@NotNull Modifier modifier, boolean z10);
}
