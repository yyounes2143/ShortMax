package androidx.compose.ui.platform.actionmodecallback;

import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import androidx.annotation.VisibleForTesting;
import androidx.compose.ui.geometry.Rect;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TextActionModeCallback.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextActionModeCallback {
    @Nullable
    private final Function0<Unit> onActionModeDestroy;
    @Nullable
    private Function0<Unit> onCopyRequested;
    @Nullable
    private Function0<Unit> onCutRequested;
    @Nullable
    private Function0<Unit> onPasteRequested;
    @Nullable
    private Function0<Unit> onSelectAllRequested;
    @NotNull
    private Rect rect;

    public TextActionModeCallback() {
        this(null, null, null, null, null, null, 63, null);
    }

    private final void addOrRemoveMenuItem(Menu menu, MenuItemOption menuItemOption, Function0<Unit> function0) {
        if (function0 != null && menu.findItem(menuItemOption.getId()) == null) {
            addMenuItem$ui_release(menu, menuItemOption);
        } else if (function0 == null && menu.findItem(menuItemOption.getId()) != null) {
            menu.removeItem(menuItemOption.getId());
        }
    }

    public final void addMenuItem$ui_release(@NotNull Menu menu, @NotNull MenuItemOption item) {
        Intrinsics.checkNotNullParameter(menu, "menu");
        Intrinsics.checkNotNullParameter(item, "item");
        menu.add(0, item.getId(), item.getOrder(), item.getTitleResource()).setShowAsAction(1);
    }

    @Nullable
    public final Function0<Unit> getOnActionModeDestroy() {
        return this.onActionModeDestroy;
    }

    @Nullable
    public final Function0<Unit> getOnCopyRequested() {
        return this.onCopyRequested;
    }

    @Nullable
    public final Function0<Unit> getOnCutRequested() {
        return this.onCutRequested;
    }

    @Nullable
    public final Function0<Unit> getOnPasteRequested() {
        return this.onPasteRequested;
    }

    @Nullable
    public final Function0<Unit> getOnSelectAllRequested() {
        return this.onSelectAllRequested;
    }

    @NotNull
    public final Rect getRect() {
        return this.rect;
    }

    public final boolean onActionItemClicked(@Nullable ActionMode actionMode, @Nullable MenuItem menuItem) {
        Intrinsics.checkNotNull(menuItem);
        int itemId = menuItem.getItemId();
        if (itemId == MenuItemOption.Copy.getId()) {
            Function0<Unit> function0 = this.onCopyRequested;
            if (function0 != null) {
                function0.invoke();
            }
        } else if (itemId == MenuItemOption.Paste.getId()) {
            Function0<Unit> function02 = this.onPasteRequested;
            if (function02 != null) {
                function02.invoke();
            }
        } else if (itemId == MenuItemOption.Cut.getId()) {
            Function0<Unit> function03 = this.onCutRequested;
            if (function03 != null) {
                function03.invoke();
            }
        } else if (itemId == MenuItemOption.SelectAll.getId()) {
            Function0<Unit> function04 = this.onSelectAllRequested;
            if (function04 != null) {
                function04.invoke();
            }
        } else {
            return false;
        }
        if (actionMode != null) {
            actionMode.finish();
            return true;
        }
        return true;
    }

    public final boolean onCreateActionMode(@Nullable ActionMode actionMode, @Nullable Menu menu) {
        if (menu != null) {
            if (actionMode != null) {
                if (this.onCopyRequested != null) {
                    addMenuItem$ui_release(menu, MenuItemOption.Copy);
                }
                if (this.onPasteRequested != null) {
                    addMenuItem$ui_release(menu, MenuItemOption.Paste);
                }
                if (this.onCutRequested != null) {
                    addMenuItem$ui_release(menu, MenuItemOption.Cut);
                }
                if (this.onSelectAllRequested != null) {
                    addMenuItem$ui_release(menu, MenuItemOption.SelectAll);
                    return true;
                }
                return true;
            }
            throw new IllegalArgumentException("Required value was null.");
        }
        throw new IllegalArgumentException("Required value was null.");
    }

    public final void onDestroyActionMode() {
        Function0<Unit> function0 = this.onActionModeDestroy;
        if (function0 != null) {
            function0.invoke();
        }
    }

    public final boolean onPrepareActionMode(@Nullable ActionMode actionMode, @Nullable Menu menu) {
        if (actionMode != null && menu != null) {
            updateMenuItems$ui_release(menu);
            return true;
        }
        return false;
    }

    public final void setOnCopyRequested(@Nullable Function0<Unit> function0) {
        this.onCopyRequested = function0;
    }

    public final void setOnCutRequested(@Nullable Function0<Unit> function0) {
        this.onCutRequested = function0;
    }

    public final void setOnPasteRequested(@Nullable Function0<Unit> function0) {
        this.onPasteRequested = function0;
    }

    public final void setOnSelectAllRequested(@Nullable Function0<Unit> function0) {
        this.onSelectAllRequested = function0;
    }

    public final void setRect(@NotNull Rect rect) {
        Intrinsics.checkNotNullParameter(rect, "<set-?>");
        this.rect = rect;
    }

    @VisibleForTesting
    public final void updateMenuItems$ui_release(@NotNull Menu menu) {
        Intrinsics.checkNotNullParameter(menu, "menu");
        addOrRemoveMenuItem(menu, MenuItemOption.Copy, this.onCopyRequested);
        addOrRemoveMenuItem(menu, MenuItemOption.Paste, this.onPasteRequested);
        addOrRemoveMenuItem(menu, MenuItemOption.Cut, this.onCutRequested);
        addOrRemoveMenuItem(menu, MenuItemOption.SelectAll, this.onSelectAllRequested);
    }

    public TextActionModeCallback(@Nullable Function0<Unit> function0, @NotNull Rect rect, @Nullable Function0<Unit> function02, @Nullable Function0<Unit> function03, @Nullable Function0<Unit> function04, @Nullable Function0<Unit> function05) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        this.onActionModeDestroy = function0;
        this.rect = rect;
        this.onCopyRequested = function02;
        this.onPasteRequested = function03;
        this.onCutRequested = function04;
        this.onSelectAllRequested = function05;
    }

    public /* synthetic */ TextActionModeCallback(Function0 function0, Rect rect, Function0 function02, Function0 function03, Function0 function04, Function0 function05, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : function0, (i10 & 2) != 0 ? Rect.Companion.getZero() : rect, (i10 & 4) != 0 ? null : function02, (i10 & 8) != 0 ? null : function03, (i10 & 16) != 0 ? null : function04, (i10 & 32) != 0 ? null : function05);
    }
}
