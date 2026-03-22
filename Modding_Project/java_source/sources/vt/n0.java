package vt;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
/* compiled from: CollectionDescriptors.kt */
@Metadata
/* loaded from: classes8.dex */
public final class n0 extends j1 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n0(@NotNull SerialDescriptor keyDesc, @NotNull SerialDescriptor valueDesc) {
        super("kotlin.collections.HashMap", keyDesc, valueDesc, null);
        Intrinsics.checkNotNullParameter(keyDesc, "keyDesc");
        Intrinsics.checkNotNullParameter(valueDesc, "valueDesc");
    }
}
