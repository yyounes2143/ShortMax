package kotlinx.serialization.descriptors;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.c;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IndexedValue;
import kotlin.collections.p0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import kotlin.ranges.e;
import kotlinx.serialization.descriptors.SerialDescriptor;
import ms.i;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ut.l;
import vt.b2;
import vt.i2;
import vt.n;
/* compiled from: SerialDescriptors.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSerialDescriptors.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SerialDescriptors.kt\nkotlinx/serialization/descriptors/SerialDescriptorImpl\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Platform.kt\nkotlinx/serialization/internal/PlatformKt\n+ 5 PluginGeneratedSerialDescriptor.kt\nkotlinx/serialization/internal/PluginGeneratedSerialDescriptorKt\n*L\n1#1,366:1\n37#2,2:367\n37#2,2:369\n1557#3:371\n1628#3,3:372\n16#4:375\n16#4:376\n16#4:377\n21#4:378\n111#5,10:379\n*S KotlinDebug\n*F\n+ 1 SerialDescriptors.kt\nkotlinx/serialization/descriptors/SerialDescriptorImpl\n*L\n336#1:367,2\n338#1:369,2\n340#1:371\n340#1:372,3\n344#1:375\n346#1:376\n347#1:377\n348#1:378\n351#1:379,10\n*E\n"})
/* loaded from: classes8.dex */
public final class a implements SerialDescriptor, n {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f61924a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final l f61925b;

    /* renamed from: c  reason: collision with root package name */
    private final int f61926c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final List<Annotation> f61927d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final Set<String> f61928e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final String[] f61929f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final SerialDescriptor[] f61930g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final List<Annotation>[] f61931h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private final boolean[] f61932i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private final Map<String, Integer> f61933j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private final SerialDescriptor[] f61934k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private final i f61935l;

    public a(@NotNull String serialName, @NotNull l kind, int i10, @NotNull List<? extends SerialDescriptor> typeParameters, @NotNull ut.a builder) {
        Intrinsics.checkNotNullParameter(serialName, "serialName");
        Intrinsics.checkNotNullParameter(kind, "kind");
        Intrinsics.checkNotNullParameter(typeParameters, "typeParameters");
        Intrinsics.checkNotNullParameter(builder, "builder");
        this.f61924a = serialName;
        this.f61925b = kind;
        this.f61926c = i10;
        this.f61927d = builder.c();
        this.f61928e = CollectionsKt.b1(builder.f());
        String[] strArr = (String[]) builder.f().toArray(new String[0]);
        this.f61929f = strArr;
        this.f61930g = b2.b(builder.e());
        this.f61931h = (List[]) builder.d().toArray(new List[0]);
        this.f61932i = CollectionsKt.X0(builder.g());
        Iterable<IndexedValue> H1 = kotlin.collections.n.H1(strArr);
        ArrayList arrayList = new ArrayList(CollectionsKt.z(H1, 10));
        for (IndexedValue indexedValue : H1) {
            arrayList.add(k.a(indexedValue.b(), Integer.valueOf(indexedValue.a())));
        }
        this.f61933j = p0.v(arrayList);
        this.f61934k = b2.b(typeParameters);
        this.f61935l = c.b(new Function0() { // from class: ut.f
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int l10;
                l10 = kotlinx.serialization.descriptors.a.l(kotlinx.serialization.descriptors.a.this);
                return Integer.valueOf(l10);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int l(a aVar) {
        return i2.a(aVar, aVar.f61934k);
    }

    private final int m() {
        return ((Number) this.f61935l.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence n(a aVar, int i10) {
        return aVar.f(i10) + ": " + aVar.d(i10).h();
    }

    @Override // vt.n
    @NotNull
    public Set<String> a() {
        return this.f61928e;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean b() {
        return SerialDescriptor.a.c(this);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int c(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        Integer num = this.f61933j.get(name);
        if (num != null) {
            return num.intValue();
        }
        return -3;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public SerialDescriptor d(int i10) {
        return this.f61930g[i10];
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int e() {
        return this.f61926c;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof a) {
            SerialDescriptor serialDescriptor = (SerialDescriptor) obj;
            if (Intrinsics.areEqual(h(), serialDescriptor.h()) && Arrays.equals(this.f61934k, ((a) obj).f61934k) && e() == serialDescriptor.e()) {
                int e10 = e();
                for (int i10 = 0; i10 < e10; i10++) {
                    if (Intrinsics.areEqual(d(i10).h(), serialDescriptor.d(i10).h()) && Intrinsics.areEqual(d(i10).getKind(), serialDescriptor.d(i10).getKind())) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public String f(int i10) {
        return this.f61929f[i10];
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public List<Annotation> g(int i10) {
        return this.f61931h[i10];
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public List<Annotation> getAnnotations() {
        return this.f61927d;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public l getKind() {
        return this.f61925b;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public String h() {
        return this.f61924a;
    }

    public int hashCode() {
        return m();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean i(int i10) {
        return this.f61932i[i10];
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean isInline() {
        return SerialDescriptor.a.b(this);
    }

    @NotNull
    public String toString() {
        IntRange v10 = e.v(0, e());
        return CollectionsKt.A0(v10, ", ", h() + '(', ")", 0, null, new Function1() { // from class: ut.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                CharSequence n10;
                n10 = kotlinx.serialization.descriptors.a.n(kotlinx.serialization.descriptors.a.this, ((Integer) obj).intValue());
                return n10;
            }
        }, 24, null);
    }
}
