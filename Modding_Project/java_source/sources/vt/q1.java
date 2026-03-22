package vt;

import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ut.m;
/* compiled from: NothingSerialDescriptor.kt */
@Metadata
/* loaded from: classes8.dex */
public final class q1 implements SerialDescriptor {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final q1 f69496a = new q1();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final ut.l f69497b = m.d.f68631a;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final String f69498c = "kotlin.Nothing";

    private q1() {
    }

    private final Void a() {
        throw new IllegalStateException("Descriptor for type `kotlin.Nothing` does not have elements");
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
    public ut.l getKind() {
        return f69497b;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public String h() {
        return f69498c;
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

    @NotNull
    public String toString() {
        return "NothingSerialDescriptor";
    }
}
