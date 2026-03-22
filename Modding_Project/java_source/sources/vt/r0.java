package vt;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: InlineClassDescriptor.kt */
@Metadata
@SourceDebugExtension({"SMAP\nInlineClassDescriptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InlineClassDescriptor.kt\nkotlinx/serialization/internal/InlineClassDescriptor\n+ 2 PluginGeneratedSerialDescriptor.kt\nkotlinx/serialization/internal/PluginGeneratedSerialDescriptorKt\n*L\n1#1,44:1\n111#2,10:45\n*S KotlinDebug\n*F\n+ 1 InlineClassDescriptor.kt\nkotlinx/serialization/internal/InlineClassDescriptor\n*L\n22#1:45,10\n*E\n"})
/* loaded from: classes8.dex */
public final class r0 extends h2 {

    /* renamed from: m  reason: collision with root package name */
    private final boolean f69506m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r0(@NotNull String name, @NotNull m0<?> generatedSerializer) {
        super(name, generatedSerializer, 1);
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(generatedSerializer, "generatedSerializer");
        this.f69506m = true;
    }

    @Override // vt.h2
    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof r0) {
            SerialDescriptor serialDescriptor = (SerialDescriptor) obj;
            if (Intrinsics.areEqual(h(), serialDescriptor.h())) {
                r0 r0Var = (r0) obj;
                if (r0Var.isInline() && Arrays.equals(t(), r0Var.t()) && e() == serialDescriptor.e()) {
                    int e10 = e();
                    for (int i10 = 0; i10 < e10; i10++) {
                        if (Intrinsics.areEqual(d(i10).h(), serialDescriptor.d(i10).h()) && Intrinsics.areEqual(d(i10).getKind(), serialDescriptor.d(i10).getKind())) {
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    @Override // vt.h2
    public int hashCode() {
        return super.hashCode() * 31;
    }

    @Override // vt.h2, kotlinx.serialization.descriptors.SerialDescriptor
    public boolean isInline() {
        return this.f69506m;
    }
}
