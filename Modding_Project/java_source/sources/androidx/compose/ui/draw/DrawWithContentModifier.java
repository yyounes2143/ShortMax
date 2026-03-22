package androidx.compose.ui.draw;

import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DrawModifier.kt */
@Metadata
/* loaded from: classes.dex */
final class DrawWithContentModifier extends InspectorValueInfo implements DrawModifier {
    @NotNull
    private final Function1<ContentDrawScope, Unit> onDraw;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DrawWithContentModifier(@NotNull Function1<? super ContentDrawScope, Unit> onDraw, @NotNull Function1<? super InspectorInfo, Unit> inspectorInfo) {
        super(inspectorInfo);
        Intrinsics.checkNotNullParameter(onDraw, "onDraw");
        Intrinsics.checkNotNullParameter(inspectorInfo, "inspectorInfo");
        this.onDraw = onDraw;
    }

    @Override // androidx.compose.ui.draw.DrawModifier
    public void draw(@NotNull ContentDrawScope contentDrawScope) {
        Intrinsics.checkNotNullParameter(contentDrawScope, "<this>");
        this.onDraw.invoke(contentDrawScope);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DrawWithContentModifier)) {
            return false;
        }
        return Intrinsics.areEqual(this.onDraw, ((DrawWithContentModifier) obj).onDraw);
    }

    @NotNull
    public final Function1<ContentDrawScope, Unit> getOnDraw() {
        return this.onDraw;
    }

    public int hashCode() {
        return this.onDraw.hashCode();
    }
}
