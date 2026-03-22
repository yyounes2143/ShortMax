package vt;

import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Primitives.kt */
@Metadata
/* loaded from: classes8.dex */
public final class n2 implements SerialDescriptor {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f69478a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final ut.e f69479b;

    public n2(@NotNull String serialName, @NotNull ut.e kind) {
        Intrinsics.checkNotNullParameter(serialName, "serialName");
        Intrinsics.checkNotNullParameter(kind, "kind");
        this.f69478a = serialName;
        this.f69479b = kind;
    }

    private final Void a() {
        throw new IllegalStateException("Primitive descriptor does not have elements");
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean b() {
        return SerialDescriptor.a.c(this);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int c(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        a();
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public SerialDescriptor d(int i10) {
        a();
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int e() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n2)) {
            return false;
        }
        n2 n2Var = (n2) obj;
        if (Intrinsics.areEqual(h(), n2Var.h()) && Intrinsics.areEqual(getKind(), n2Var.getKind())) {
            return true;
        }
        return false;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public String f(int i10) {
        a();
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public List<Annotation> g(int i10) {
        a();
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public List<Annotation> getAnnotations() {
        return SerialDescriptor.a.a(this);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public String h() {
        return this.f69478a;
    }

    public int hashCode() {
        return h().hashCode() + (getKind().hashCode() * 31);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean i(int i10) {
        a();
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean isInline() {
        return SerialDescriptor.a.b(this);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    /* renamed from: j */
    public ut.e getKind() {
        return this.f69479b;
    }

    @NotNull
    public String toString() {
        return "PrimitiveDescriptor(" + h() + ')';
    }
}
