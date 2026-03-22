package androidx.compose.ui.platform;

import android.view.ActionMode;
import android.view.View;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidTextToolbar.android.kt */
@RequiresApi(23)
@Metadata
/* loaded from: classes.dex */
public final class TextToolbarHelperMethods {
    @NotNull
    public static final TextToolbarHelperMethods INSTANCE = new TextToolbarHelperMethods();

    private TextToolbarHelperMethods() {
    }

    @DoNotInline
    @RequiresApi(23)
    public final void invalidateContentRect(@NotNull ActionMode actionMode) {
        Intrinsics.checkNotNullParameter(actionMode, "actionMode");
        actionMode.invalidateContentRect();
    }

    @DoNotInline
    @RequiresApi(23)
    @Nullable
    public final ActionMode startActionMode(@NotNull View view, @NotNull ActionMode.Callback actionModeCallback, int i10) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(actionModeCallback, "actionModeCallback");
        return view.startActionMode(actionModeCallback, i10);
    }
}
