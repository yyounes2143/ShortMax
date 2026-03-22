package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.graphics.Canvas;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: DrawContext.kt */
@Metadata
/* loaded from: classes.dex */
public interface DrawContext {
    @NotNull
    Canvas getCanvas();

    /* renamed from: getSize-NH-jbRc */
    long mo2261getSizeNHjbRc();

    @NotNull
    DrawTransform getTransform();

    /* renamed from: setSize-uvyYCjk */
    void mo2262setSizeuvyYCjk(long j10);
}
