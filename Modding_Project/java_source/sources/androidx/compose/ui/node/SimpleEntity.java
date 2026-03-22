package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SimpleEntity.kt */
@Metadata
/* loaded from: classes.dex */
public final class SimpleEntity<M extends Modifier> extends LayoutNodeEntity<SimpleEntity<M>, M> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SimpleEntity(@NotNull LayoutNodeWrapper layoutNodeWrapper, @NotNull M modifier) {
        super(layoutNodeWrapper, modifier);
        Intrinsics.checkNotNullParameter(layoutNodeWrapper, "layoutNodeWrapper");
        Intrinsics.checkNotNullParameter(modifier, "modifier");
    }
}
