package vt;

import java.lang.annotation.Annotation;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NullableSerializer.kt */
@Metadata
/* loaded from: classes8.dex */
public final class q2 implements SerialDescriptor, n {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final SerialDescriptor f69499a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f69500b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Set<String> f69501c;

    public q2(@NotNull SerialDescriptor original) {
        Intrinsics.checkNotNullParameter(original, "original");
        this.f69499a = original;
        this.f69500b = original.h() + '?';
        this.f69501c = b2.a(original);
    }

    @Override // vt.n
    @NotNull
    public Set<String> a() {
        return this.f69501c;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean b() {
        return true;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int c(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return this.f69499a.c(name);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public SerialDescriptor d(int i10) {
        return this.f69499a.d(i10);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int e() {
        return this.f69499a.e();
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof q2) && Intrinsics.areEqual(this.f69499a, ((q2) obj).f69499a)) {
            return true;
        }
        return false;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public String f(int i10) {
        return this.f69499a.f(i10);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public List<Annotation> g(int i10) {
        return this.f69499a.g(i10);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public List<Annotation> getAnnotations() {
        return this.f69499a.getAnnotations();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public ut.l getKind() {
        return this.f69499a.getKind();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public String h() {
        return this.f69500b;
    }

    public int hashCode() {
        return this.f69499a.hashCode() * 31;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean i(int i10) {
        return this.f69499a.i(i10);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean isInline() {
        return this.f69499a.isInline();
    }

    @NotNull
    public final SerialDescriptor j() {
        return this.f69499a;
    }

    @NotNull
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f69499a);
        sb2.append('?');
        return sb2.toString();
    }
}
