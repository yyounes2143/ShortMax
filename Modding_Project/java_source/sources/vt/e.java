package vt;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
/* compiled from: CollectionDescriptors.kt */
@Metadata
/* loaded from: classes8.dex */
public final class e extends d1 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(@NotNull SerialDescriptor elementDesc) {
        super(elementDesc, null);
        Intrinsics.checkNotNullParameter(elementDesc, "elementDesc");
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public String h() {
        return "kotlin.collections.ArrayList";
    }
}
