package androidx.compose.material;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: BottomSheetScaffold.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class BottomSheetScaffoldDefaults {
    public static final int $stable = 0;
    @NotNull
    public static final BottomSheetScaffoldDefaults INSTANCE = new BottomSheetScaffoldDefaults();
    private static final float SheetElevation = Dp.m4049constructorimpl(8);
    private static final float SheetPeekHeight = Dp.m4049constructorimpl(56);

    private BottomSheetScaffoldDefaults() {
    }

    /* renamed from: getSheetElevation-D9Ej5fM  reason: not valid java name */
    public final float m942getSheetElevationD9Ej5fM() {
        return SheetElevation;
    }

    /* renamed from: getSheetPeekHeight-D9Ej5fM  reason: not valid java name */
    public final float m943getSheetPeekHeightD9Ej5fM() {
        return SheetPeekHeight;
    }
}
