package androidx.compose.foundation;

import androidx.compose.ui.draw.DrawModifier;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidOverscroll.kt */
@Metadata
/* loaded from: classes.dex */
final class DrawOverscrollModifier extends InspectorValueInfo implements DrawModifier {
    @NotNull
    private final AndroidEdgeEffectOverscrollEffect overscrollEffect;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DrawOverscrollModifier(@NotNull AndroidEdgeEffectOverscrollEffect overscrollEffect, @NotNull Function1<? super InspectorInfo, Unit> inspectorInfo) {
        super(inspectorInfo);
        Intrinsics.checkNotNullParameter(overscrollEffect, "overscrollEffect");
        Intrinsics.checkNotNullParameter(inspectorInfo, "inspectorInfo");
        this.overscrollEffect = overscrollEffect;
    }

    @Override // androidx.compose.ui.draw.DrawModifier
    public void draw(@NotNull ContentDrawScope contentDrawScope) {
        Intrinsics.checkNotNullParameter(contentDrawScope, "<this>");
        contentDrawScope.drawContent();
        this.overscrollEffect.drawOverscroll(contentDrawScope);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DrawOverscrollModifier)) {
            return false;
        }
        return Intrinsics.areEqual(this.overscrollEffect, ((DrawOverscrollModifier) obj).overscrollEffect);
    }

    public int hashCode() {
        return this.overscrollEffect.hashCode();
    }

    @NotNull
    public String toString() {
        return "DrawOverscrollModifier(overscrollEffect=" + this.overscrollEffect + ')';
    }
}
