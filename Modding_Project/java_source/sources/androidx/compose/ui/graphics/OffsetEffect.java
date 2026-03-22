package androidx.compose.ui.graphics;

import androidx.annotation.RequiresApi;
import androidx.compose.runtime.Immutable;
import androidx.compose.ui.geometry.Offset;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidRenderEffect.android.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class OffsetEffect extends RenderEffect {
    private final long offset;
    @Nullable
    private final RenderEffect renderEffect;

    public /* synthetic */ OffsetEffect(RenderEffect renderEffect, long j10, DefaultConstructorMarker defaultConstructorMarker) {
        this(renderEffect, j10);
    }

    @Override // androidx.compose.ui.graphics.RenderEffect
    @RequiresApi(31)
    @NotNull
    protected android.graphics.RenderEffect createRenderEffect() {
        return RenderEffectVerificationHelper.INSTANCE.m2113createOffsetEffectUv8p0NA(this.renderEffect, this.offset);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OffsetEffect)) {
            return false;
        }
        OffsetEffect offsetEffect = (OffsetEffect) obj;
        if (Intrinsics.areEqual(this.renderEffect, offsetEffect.renderEffect) && Offset.m1603equalsimpl0(this.offset, offsetEffect.offset)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        RenderEffect renderEffect = this.renderEffect;
        if (renderEffect != null) {
            i10 = renderEffect.hashCode();
        } else {
            i10 = 0;
        }
        return (i10 * 31) + Offset.m1608hashCodeimpl(this.offset);
    }

    @NotNull
    public String toString() {
        return "OffsetEffect(renderEffect=" + this.renderEffect + ", offset=" + ((Object) Offset.m1614toStringimpl(this.offset)) + ')';
    }

    private OffsetEffect(RenderEffect renderEffect, long j10) {
        super(null);
        this.renderEffect = renderEffect;
        this.offset = j10;
    }
}
