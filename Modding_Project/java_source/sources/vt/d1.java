package vt;

import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ut.m;
/* compiled from: CollectionDescriptors.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCollectionDescriptors.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CollectionDescriptors.kt\nkotlinx/serialization/internal/ListLikeDescriptor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,138:1\n1#2:139\n*E\n"})
/* loaded from: classes8.dex */
public abstract class d1 implements SerialDescriptor {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final SerialDescriptor f69391a;

    /* renamed from: b  reason: collision with root package name */
    private final int f69392b;

    public /* synthetic */ d1(SerialDescriptor serialDescriptor, DefaultConstructorMarker defaultConstructorMarker) {
        this(serialDescriptor);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean b() {
        return SerialDescriptor.a.c(this);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int c(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        Integer intOrNull = StringsKt.toIntOrNull(name);
        if (intOrNull != null) {
            return intOrNull.intValue();
        }
        throw new IllegalArgumentException(name + " is not a valid list index");
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public SerialDescriptor d(int i10) {
        if (i10 >= 0) {
            return this.f69391a;
        }
        throw new IllegalArgumentException(("Illegal index " + i10 + ", " + h() + " expects only non-negative indices").toString());
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int e() {
        return this.f69392b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d1)) {
            return false;
        }
        d1 d1Var = (d1) obj;
        if (Intrinsics.areEqual(this.f69391a, d1Var.f69391a) && Intrinsics.areEqual(h(), d1Var.h())) {
            return true;
        }
        return false;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public String f(int i10) {
        return String.valueOf(i10);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public List<Annotation> g(int i10) {
        if (i10 >= 0) {
            return CollectionsKt.n();
        }
        throw new IllegalArgumentException(("Illegal index " + i10 + ", " + h() + " expects only non-negative indices").toString());
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public List<Annotation> getAnnotations() {
        return SerialDescriptor.a.a(this);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public ut.l getKind() {
        return m.b.f68629a;
    }

    public int hashCode() {
        return (this.f69391a.hashCode() * 31) + h().hashCode();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean i(int i10) {
        if (i10 >= 0) {
            return false;
        }
        throw new IllegalArgumentException(("Illegal index " + i10 + ", " + h() + " expects only non-negative indices").toString());
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean isInline() {
        return SerialDescriptor.a.b(this);
    }

    @NotNull
    public String toString() {
        return h() + '(' + this.f69391a + ')';
    }

    private d1(SerialDescriptor serialDescriptor) {
        this.f69391a = serialDescriptor;
        this.f69392b = 1;
    }
}
