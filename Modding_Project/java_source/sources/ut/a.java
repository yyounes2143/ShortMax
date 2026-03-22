package ut;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
/* compiled from: SerialDescriptors.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSerialDescriptors.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SerialDescriptors.kt\nkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,366:1\n1#2:367\n*E\n"})
/* loaded from: classes8.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f68597a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private List<? extends Annotation> f68598b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final List<String> f68599c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final Set<String> f68600d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final List<SerialDescriptor> f68601e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final List<List<Annotation>> f68602f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final List<Boolean> f68603g;

    public a(@NotNull String serialName) {
        Intrinsics.checkNotNullParameter(serialName, "serialName");
        this.f68597a = serialName;
        this.f68598b = CollectionsKt.n();
        this.f68599c = new ArrayList();
        this.f68600d = new HashSet();
        this.f68601e = new ArrayList();
        this.f68602f = new ArrayList();
        this.f68603g = new ArrayList();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void b(a aVar, String str, SerialDescriptor serialDescriptor, List list, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            list = CollectionsKt.n();
        }
        if ((i10 & 8) != 0) {
            z10 = false;
        }
        aVar.a(str, serialDescriptor, list, z10);
    }

    public final void a(@NotNull String elementName, @NotNull SerialDescriptor descriptor, @NotNull List<? extends Annotation> annotations, boolean z10) {
        Intrinsics.checkNotNullParameter(elementName, "elementName");
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(annotations, "annotations");
        if (this.f68600d.add(elementName)) {
            this.f68599c.add(elementName);
            this.f68601e.add(descriptor);
            this.f68602f.add(annotations);
            this.f68603g.add(Boolean.valueOf(z10));
            return;
        }
        throw new IllegalArgumentException(("Element with name '" + elementName + "' is already registered in " + this.f68597a).toString());
    }

    @NotNull
    public final List<Annotation> c() {
        return this.f68598b;
    }

    @NotNull
    public final List<List<Annotation>> d() {
        return this.f68602f;
    }

    @NotNull
    public final List<SerialDescriptor> e() {
        return this.f68601e;
    }

    @NotNull
    public final List<String> f() {
        return this.f68599c;
    }

    @NotNull
    public final List<Boolean> g() {
        return this.f68603g;
    }

    public final void h(@NotNull List<? extends Annotation> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.f68598b = list;
    }
}
