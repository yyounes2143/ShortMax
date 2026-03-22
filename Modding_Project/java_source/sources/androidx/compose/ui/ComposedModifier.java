package androidx.compose.ui;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ComposedModifier.kt */
@Metadata
/* loaded from: classes.dex */
class ComposedModifier extends InspectorValueInfo implements Modifier.Element {
    @NotNull
    private final n<Modifier, Composer, Integer, Modifier> factory;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ComposedModifier(@NotNull Function1<? super InspectorInfo, Unit> inspectorInfo, @NotNull n<? super Modifier, ? super Composer, ? super Integer, ? extends Modifier> factory) {
        super(inspectorInfo);
        Intrinsics.checkNotNullParameter(inspectorInfo, "inspectorInfo");
        Intrinsics.checkNotNullParameter(factory, "factory");
        this.factory = factory;
    }

    @NotNull
    public final n<Modifier, Composer, Integer, Modifier> getFactory() {
        return this.factory;
    }
}
