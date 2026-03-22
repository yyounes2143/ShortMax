package androidx.compose.material;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Menu.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class MenuDefaults {
    public static final int $stable = 0;
    @NotNull
    private static final PaddingValues DropdownMenuItemContentPadding;
    @NotNull
    public static final MenuDefaults INSTANCE = new MenuDefaults();

    static {
        float f10;
        f10 = MenuKt.DropdownMenuItemHorizontalPadding;
        DropdownMenuItemContentPadding = PaddingKt.m441PaddingValuesYgX7TsA(f10, Dp.m4049constructorimpl(0));
    }

    private MenuDefaults() {
    }

    @NotNull
    public final PaddingValues getDropdownMenuItemContentPadding() {
        return DropdownMenuItemContentPadding;
    }
}
