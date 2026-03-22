package androidx.compose.ui.graphics;

import android.graphics.Shader;
import androidx.compose.runtime.Immutable;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Color;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Brush.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public abstract class ShaderBrush extends Brush {
    private long createdSize;
    @Nullable
    private Shader internalShader;

    public ShaderBrush() {
        super(null);
        this.createdSize = Size.Companion.m1683getUnspecifiedNHjbRc();
    }

    @Override // androidx.compose.ui.graphics.Brush
    /* renamed from: applyTo-Pq9zytI */
    public final void mo1789applyToPq9zytI(long j10, @NotNull Paint p10, float f10) {
        Intrinsics.checkNotNullParameter(p10, "p");
        Shader shader = this.internalShader;
        if (shader == null || !Size.m1671equalsimpl0(this.createdSize, j10)) {
            shader = mo1811createShaderuvyYCjk(j10);
            this.internalShader = shader;
            this.createdSize = j10;
        }
        long mo1720getColor0d7_KjU = p10.mo1720getColor0d7_KjU();
        Color.Companion companion = Color.Companion;
        if (!Color.m1843equalsimpl0(mo1720getColor0d7_KjU, companion.m1868getBlack0d7_KjU())) {
            p10.mo1726setColor8_81llA(companion.m1868getBlack0d7_KjU());
        }
        if (!Intrinsics.areEqual(p10.getShader(), shader)) {
            p10.setShader(shader);
        }
        if (p10.getAlpha() != f10) {
            p10.setAlpha(f10);
        }
    }

    @NotNull
    /* renamed from: createShader-uvyYCjk */
    public abstract Shader mo1811createShaderuvyYCjk(long j10);
}
