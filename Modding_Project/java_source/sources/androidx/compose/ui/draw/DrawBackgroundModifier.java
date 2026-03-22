package androidx.compose.ui.draw;

import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DrawModifier.kt */
@Metadata
/* loaded from: classes.dex */
public final class DrawBackgroundModifier extends InspectorValueInfo implements DrawModifier {
    @NotNull
    private final Function1<DrawScope, Unit> onDraw;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DrawBackgroundModifier(@NotNull Function1<? super DrawScope, Unit> onDraw, @NotNull Function1<? super InspectorInfo, Unit> inspectorInfo) {
        super(inspectorInfo);
        Intrinsics.checkNotNullParameter(onDraw, "onDraw");
        Intrinsics.checkNotNullParameter(inspectorInfo, "inspectorInfo");
        this.onDraw = onDraw;
    }

    @Override // androidx.compose.ui.draw.DrawModifier
    public void draw(@NotNull ContentDrawScope contentDrawScope) {
        Intrinsics.checkNotNullParameter(contentDrawScope, "<this>");
        this.onDraw.invoke(contentDrawScope);
        contentDrawScope.drawContent();
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DrawBackgroundModifier)) {
            return false;
        }
        return Intrinsics.areEqual(this.onDraw, ((DrawBackgroundModifier) obj).onDraw);
    }

    @NotNull
    public final Function1<DrawScope, Unit> getOnDraw() {
        return this.onDraw;
    }

    public int hashCode() {
        return this.onDraw.hashCode();
    }
}
