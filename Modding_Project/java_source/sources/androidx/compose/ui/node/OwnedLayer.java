package androidx.compose.ui.node;

import androidx.compose.ui.geometry.MutableRect;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.RenderEffect;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: OwnedLayer.kt */
@Metadata
/* loaded from: classes.dex */
public interface OwnedLayer {
    void destroy();

    void drawLayer(@NotNull Canvas canvas);

    void invalidate();

    /* renamed from: isInLayer-k-4lQ0M  reason: not valid java name */
    boolean mo3502isInLayerk4lQ0M(long j10);

    void mapBounds(@NotNull MutableRect mutableRect, boolean z10);

    /* renamed from: mapOffset-8S9VItk  reason: not valid java name */
    long mo3503mapOffset8S9VItk(long j10, boolean z10);

    /* renamed from: move--gyyYBs  reason: not valid java name */
    void mo3504movegyyYBs(long j10);

    /* renamed from: resize-ozmzZPI  reason: not valid java name */
    void mo3505resizeozmzZPI(long j10);

    void reuseLayer(@NotNull Function1<? super Canvas, Unit> function1, @NotNull Function0<Unit> function0);

    void updateDisplayList();

    /* renamed from: updateLayerProperties-NHXXZp8  reason: not valid java name */
    void mo3506updateLayerPropertiesNHXXZp8(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, long j10, @NotNull Shape shape, boolean z10, @Nullable RenderEffect renderEffect, long j11, long j12, @NotNull LayoutDirection layoutDirection, @NotNull Density density);
}
