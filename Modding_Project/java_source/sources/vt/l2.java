package vt;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
/* compiled from: CollectionDescriptors.kt */
@Metadata
/* loaded from: classes8.dex */
public final class l2 extends d1 {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final String f69472c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l2(@NotNull SerialDescriptor primitive) {
        super(primitive, null);
        Intrinsics.checkNotNullParameter(primitive, "primitive");
        this.f69472c = primitive.h() + "Array";
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public String h() {
        return this.f69472c;
    }
}
