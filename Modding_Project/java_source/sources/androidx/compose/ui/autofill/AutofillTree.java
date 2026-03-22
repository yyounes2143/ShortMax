package androidx.compose.ui.autofill;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.ExperimentalComposeUiApi;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AutofillTree.kt */
@StabilityInferred(parameters = 0)
@ExperimentalComposeUiApi
@Metadata
/* loaded from: classes.dex */
public final class AutofillTree {
    public static final int $stable = 8;
    @NotNull
    private final Map<Integer, AutofillNode> children = new LinkedHashMap();

    @NotNull
    public final Map<Integer, AutofillNode> getChildren() {
        return this.children;
    }

    @Nullable
    public final Unit performAutofill(int i10, @NotNull String value) {
        Function1<String, Unit> onFill;
        Intrinsics.checkNotNullParameter(value, "value");
        AutofillNode autofillNode = this.children.get(Integer.valueOf(i10));
        if (autofillNode != null && (onFill = autofillNode.getOnFill()) != null) {
            onFill.invoke(value);
            return Unit.f60915a;
        }
        return null;
    }

    public final void plusAssign(@NotNull AutofillNode autofillNode) {
        Intrinsics.checkNotNullParameter(autofillNode, "autofillNode");
        this.children.put(Integer.valueOf(autofillNode.getId()), autofillNode);
    }
}
