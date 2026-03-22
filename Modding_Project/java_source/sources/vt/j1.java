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
@SourceDebugExtension({"SMAP\nCollectionDescriptors.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CollectionDescriptors.kt\nkotlinx/serialization/internal/MapLikeDescriptor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,138:1\n1#2:139\n*E\n"})
/* loaded from: classes8.dex */
public abstract class j1 implements SerialDescriptor {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f69454a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final SerialDescriptor f69455b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final SerialDescriptor f69456c;

    /* renamed from: d  reason: collision with root package name */
    private final int f69457d;

    public /* synthetic */ j1(String str, SerialDescriptor serialDescriptor, SerialDescriptor serialDescriptor2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, serialDescriptor, serialDescriptor2);
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
        throw new IllegalArgumentException(name + " is not a valid map index");
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public SerialDescriptor d(int i10) {
        if (i10 >= 0) {
            int i11 = i10 % 2;
            if (i11 != 0) {
                if (i11 == 1) {
                    return this.f69456c;
                }
                throw new IllegalStateException("Unreached");
            }
            return this.f69455b;
        }
        throw new IllegalArgumentException(("Illegal index " + i10 + ", " + h() + " expects only non-negative indices").toString());
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int e() {
        return this.f69457d;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j1)) {
            return false;
        }
        j1 j1Var = (j1) obj;
        if (Intrinsics.areEqual(h(), j1Var.h()) && Intrinsics.areEqual(this.f69455b, j1Var.f69455b) && Intrinsics.areEqual(this.f69456c, j1Var.f69456c)) {
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
        return m.c.f68630a;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public String h() {
        return this.f69454a;
    }

    public int hashCode() {
        return (((h().hashCode() * 31) + this.f69455b.hashCode()) * 31) + this.f69456c.hashCode();
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
        return h() + '(' + this.f69455b + ", " + this.f69456c + ')';
    }

    private j1(String str, SerialDescriptor serialDescriptor, SerialDescriptor serialDescriptor2) {
        this.f69454a = str;
        this.f69455b = serialDescriptor;
        this.f69456c = serialDescriptor2;
        this.f69457d = 2;
    }
}
