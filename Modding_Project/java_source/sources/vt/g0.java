package vt;

import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ut.l;
import ut.m;
/* compiled from: Enums.kt */
@Metadata
@SourceDebugExtension({"SMAP\nEnums.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Enums.kt\nkotlinx/serialization/internal/EnumDescriptor\n+ 2 Platform.kt\nkotlinx/serialization/internal/PlatformKt\n+ 3 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,148:1\n16#2:149\n160#3:150\n1797#4,3:151\n*S KotlinDebug\n*F\n+ 1 Enums.kt\nkotlinx/serialization/internal/EnumDescriptor\n*L\n28#1:149\n46#1:150\n46#1:151,3\n*E\n"})
/* loaded from: classes8.dex */
public final class g0 extends h2 {
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private final ut.l f69415m;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    private final ms.i f69416n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g0(@NotNull final String name, final int i10) {
        super(name, null, i10, 2, null);
        Intrinsics.checkNotNullParameter(name, "name");
        this.f69415m = l.b.f68627a;
        this.f69416n = kotlin.c.b(new Function0() { // from class: vt.f0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                SerialDescriptor[] y10;
                y10 = g0.y(i10, name, this);
                return y10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SerialDescriptor[] y(int i10, String str, g0 g0Var) {
        SerialDescriptor[] serialDescriptorArr = new SerialDescriptor[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            serialDescriptorArr[i11] = ut.k.i(str + '.' + g0Var.f(i11), m.d.f68631a, new SerialDescriptor[0], null, 8, null);
        }
        return serialDescriptorArr;
    }

    private final SerialDescriptor[] z() {
        return (SerialDescriptor[]) this.f69416n.getValue();
    }

    @Override // vt.h2, kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public SerialDescriptor d(int i10) {
        return z()[i10];
    }

    @Override // vt.h2
    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof SerialDescriptor)) {
            return false;
        }
        SerialDescriptor serialDescriptor = (SerialDescriptor) obj;
        if (serialDescriptor.getKind() == l.b.f68627a && Intrinsics.areEqual(h(), serialDescriptor.h()) && Intrinsics.areEqual(b2.a(this), b2.a(serialDescriptor))) {
            return true;
        }
        return false;
    }

    @Override // vt.h2, kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public ut.l getKind() {
        return this.f69415m;
    }

    @Override // vt.h2
    public int hashCode() {
        int i10;
        int hashCode = h().hashCode();
        int i11 = 1;
        for (String str : ut.h.b(this)) {
            int i12 = i11 * 31;
            if (str != null) {
                i10 = str.hashCode();
            } else {
                i10 = 0;
            }
            i11 = i12 + i10;
        }
        return (hashCode * 31) + i11;
    }

    @Override // vt.h2
    @NotNull
    public String toString() {
        Iterable<String> b10 = ut.h.b(this);
        return CollectionsKt.A0(b10, ", ", h() + '(', ")", 0, null, null, 56, null);
    }
}
