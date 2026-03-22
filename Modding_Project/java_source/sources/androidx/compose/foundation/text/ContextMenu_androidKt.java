package androidx.compose.foundation.text;

import androidx.compose.foundation.text.selection.SelectionManager;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ContextMenu.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class ContextMenu_androidKt {
    @Composable
    @ComposableInferredTarget(scheme = "[0[0]]")
    public static final void ContextMenuArea(@NotNull final TextFieldSelectionManager manager, @NotNull final Function2<? super Composer, ? super Integer, Unit> content, @Nullable Composer composer, final int i10) {
        int i11;
        Intrinsics.checkNotNullParameter(manager, "manager");
        Intrinsics.checkNotNullParameter(content, "content");
        Composer startRestartGroup = composer.startRestartGroup(-1985516685);
        if ((i10 & 112) == 0) {
            i11 = (startRestartGroup.changed(content) ? 32 : 16) | i10;
        } else {
            i11 = i10;
        }
        if ((i11 & 81) == 16 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            content.invoke(startRestartGroup, Integer.valueOf((i11 >> 3) & 14));
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.ContextMenu_androidKt$ContextMenuArea$1
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

            public final void invoke(@Nullable Composer composer2, int i12) {
                ContextMenu_androidKt.ContextMenuArea(TextFieldSelectionManager.this, content, composer2, i10 | 1);
            }
        });
    }

    @Composable
    @ComposableInferredTarget(scheme = "[0[0]]")
    public static final void ContextMenuArea(@NotNull final SelectionManager manager, @NotNull final Function2<? super Composer, ? super Integer, Unit> content, @Nullable Composer composer, final int i10) {
        int i11;
        Intrinsics.checkNotNullParameter(manager, "manager");
        Intrinsics.checkNotNullParameter(content, "content");
        Composer startRestartGroup = composer.startRestartGroup(605522716);
        if ((i10 & 112) == 0) {
            i11 = (startRestartGroup.changed(content) ? 32 : 16) | i10;
        } else {
            i11 = i10;
        }
        if ((i11 & 81) == 16 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            content.invoke(startRestartGroup, Integer.valueOf((i11 >> 3) & 14));
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.ContextMenu_androidKt$ContextMenuArea$2
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

            public final void invoke(@Nullable Composer composer2, int i12) {
                ContextMenu_androidKt.ContextMenuArea(SelectionManager.this, content, composer2, i10 | 1);
            }
        });
    }
}
