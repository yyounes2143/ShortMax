package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Vector.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public abstract class VNode {
    public static final int $stable = 8;
    @Nullable
    private Function0<Unit> invalidateListener;

    public /* synthetic */ VNode(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract void draw(@NotNull DrawScope drawScope);

    @Nullable
    public Function0<Unit> getInvalidateListener$ui_release() {
        return this.invalidateListener;
    }

    public final void invalidate() {
        Function0<Unit> invalidateListener$ui_release = getInvalidateListener$ui_release();
        if (invalidateListener$ui_release != null) {
            invalidateListener$ui_release.invoke();
        }
    }

    public void setInvalidateListener$ui_release(@Nullable Function0<Unit> function0) {
        this.invalidateListener = function0;
    }

    private VNode() {
    }
}
