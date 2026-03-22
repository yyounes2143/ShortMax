package ut;

import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
/* compiled from: SerialDescriptors.kt */
@Metadata
/* loaded from: classes8.dex */
public final class n implements SerialDescriptor {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ SerialDescriptor f68632a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f68633b;

    public n(@NotNull String serialName, @NotNull SerialDescriptor original) {
        Intrinsics.checkNotNullParameter(serialName, "serialName");
        Intrinsics.checkNotNullParameter(original, "original");
        this.f68632a = original;
        this.f68633b = serialName;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean b() {
        return this.f68632a.b();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int c(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return this.f68632a.c(name);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public SerialDescriptor d(int i10) {
        return this.f68632a.d(i10);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int e() {
        return this.f68632a.e();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public String f(int i10) {
        return this.f68632a.f(i10);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public List<Annotation> g(int i10) {
        return this.f68632a.g(i10);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public List<Annotation> getAnnotations() {
        return this.f68632a.getAnnotations();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public l getKind() {
        return this.f68632a.getKind();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public String h() {
        return this.f68633b;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean i(int i10) {
        return this.f68632a.i(i10);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean isInline() {
        return this.f68632a.isInline();
    }
}
