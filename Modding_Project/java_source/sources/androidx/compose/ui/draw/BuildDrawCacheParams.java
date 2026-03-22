package androidx.compose.ui.draw;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: DrawModifier.kt */
@Metadata
/* loaded from: classes.dex */
public interface BuildDrawCacheParams {
    @NotNull
    Density getDensity();

    @NotNull
    LayoutDirection getLayoutDirection();

    /* renamed from: getSize-NH-jbRc  reason: not valid java name */
    long mo1528getSizeNHjbRc();
}
