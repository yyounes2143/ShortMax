package androidx.compose.material;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: AppBar.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class AppBarDefaults {
    public static final int $stable = 0;
    @NotNull
    private static final PaddingValues ContentPadding;
    @NotNull
    public static final AppBarDefaults INSTANCE = new AppBarDefaults();
    private static final float TopAppBarElevation = Dp.m4049constructorimpl(4);
    private static final float BottomAppBarElevation = Dp.m4049constructorimpl(8);

    static {
        float f10;
        float f11;
        f10 = AppBarKt.AppBarHorizontalPadding;
        f11 = AppBarKt.AppBarHorizontalPadding;
        ContentPadding = PaddingKt.m444PaddingValuesa9UjIt4$default(f10, 0.0f, f11, 0.0f, 10, null);
    }

    private AppBarDefaults() {
    }

    /* renamed from: getBottomAppBarElevation-D9Ej5fM  reason: not valid java name */
    public final float m909getBottomAppBarElevationD9Ej5fM() {
        return BottomAppBarElevation;
    }

    @NotNull
    public final PaddingValues getContentPadding() {
        return ContentPadding;
    }

    /* renamed from: getTopAppBarElevation-D9Ej5fM  reason: not valid java name */
    public final float m910getTopAppBarElevationD9Ej5fM() {
        return TopAppBarElevation;
    }
}
