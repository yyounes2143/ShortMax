package vt;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ut.m;
/* compiled from: PluginGeneratedSerialDescriptor.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPluginGeneratedSerialDescriptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginGeneratedSerialDescriptor.kt\nkotlinx/serialization/internal/PluginGeneratedSerialDescriptor\n+ 2 Platform.kt\nkotlinx/serialization/internal/PlatformKt\n+ 3 PluginGeneratedSerialDescriptor.kt\nkotlinx/serialization/internal/PluginGeneratedSerialDescriptorKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,134:1\n16#2:135\n21#2:136\n16#2:137\n16#2:138\n111#3,10:139\n11165#4:149\n11500#4,3:150\n*S KotlinDebug\n*F\n+ 1 PluginGeneratedSerialDescriptor.kt\nkotlinx/serialization/internal/PluginGeneratedSerialDescriptor\n*L\n76#1:135\n79#1:136\n81#1:137\n82#1:138\n93#1:139,10\n40#1:149\n40#1:150,3\n*E\n"})
/* loaded from: classes8.dex */
public class h2 implements SerialDescriptor, n {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f69427a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final m0<?> f69428b;

    /* renamed from: c  reason: collision with root package name */
    private final int f69429c;

    /* renamed from: d  reason: collision with root package name */
    private int f69430d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final String[] f69431e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final List<Annotation>[] f69432f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private List<Annotation> f69433g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final boolean[] f69434h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private Map<String, Integer> f69435i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private final ms.i f69436j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private final ms.i f69437k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private final ms.i f69438l;

    public h2(@NotNull String serialName, @Nullable m0<?> m0Var, int i10) {
        Intrinsics.checkNotNullParameter(serialName, "serialName");
        this.f69427a = serialName;
        this.f69428b = m0Var;
        this.f69429c = i10;
        this.f69430d = -1;
        String[] strArr = new String[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            strArr[i11] = "[UNINITIALIZED]";
        }
        this.f69431e = strArr;
        int i12 = this.f69429c;
        this.f69432f = new List[i12];
        this.f69434h = new boolean[i12];
        this.f69435i = kotlin.collections.p0.i();
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        this.f69436j = kotlin.c.a(lazyThreadSafetyMode, new Function0() { // from class: vt.e2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                KSerializer[] r10;
                r10 = h2.r(h2.this);
                return r10;
            }
        });
        this.f69437k = kotlin.c.a(lazyThreadSafetyMode, new Function0() { // from class: vt.f2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                SerialDescriptor[] w10;
                w10 = h2.w(h2.this);
                return w10;
            }
        });
        this.f69438l = kotlin.c.a(lazyThreadSafetyMode, new Function0() { // from class: vt.g2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int n10;
                n10 = h2.n(h2.this);
                return Integer.valueOf(n10);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int n(h2 h2Var) {
        return i2.a(h2Var, h2Var.t());
    }

    public static /* synthetic */ void p(h2 h2Var, String str, boolean z10, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 2) != 0) {
                z10 = false;
            }
            h2Var.o(str, z10);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addElement");
    }

    private final Map<String, Integer> q() {
        HashMap hashMap = new HashMap();
        int length = this.f69431e.length;
        for (int i10 = 0; i10 < length; i10++) {
            hashMap.put(this.f69431e[i10], Integer.valueOf(i10));
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final KSerializer[] r(h2 h2Var) {
        KSerializer<?>[] childSerializers;
        m0<?> m0Var = h2Var.f69428b;
        if (m0Var == null || (childSerializers = m0Var.childSerializers()) == null) {
            return j2.f69458a;
        }
        return childSerializers;
    }

    private final KSerializer<?>[] s() {
        return (KSerializer[]) this.f69436j.getValue();
    }

    private final int u() {
        return ((Number) this.f69438l.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence v(h2 h2Var, int i10) {
        return h2Var.f(i10) + ": " + h2Var.d(i10).h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SerialDescriptor[] w(h2 h2Var) {
        ArrayList arrayList;
        KSerializer<?>[] typeParametersSerializers;
        m0<?> m0Var = h2Var.f69428b;
        if (m0Var != null && (typeParametersSerializers = m0Var.typeParametersSerializers()) != null) {
            arrayList = new ArrayList(typeParametersSerializers.length);
            for (KSerializer<?> kSerializer : typeParametersSerializers) {
                arrayList.add(kSerializer.getDescriptor());
            }
        } else {
            arrayList = null;
        }
        return b2.b(arrayList);
    }

    @Override // vt.n
    @NotNull
    public Set<String> a() {
        return this.f69435i.keySet();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean b() {
        return SerialDescriptor.a.c(this);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public int c(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        Integer num = this.f69435i.get(name);
        if (num != null) {
            return num.intValue();
        }
        return -3;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public SerialDescriptor d(int i10) {
        return s()[i10].getDescriptor();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final int e() {
        return this.f69429c;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof h2) {
            SerialDescriptor serialDescriptor = (SerialDescriptor) obj;
            if (Intrinsics.areEqual(h(), serialDescriptor.h()) && Arrays.equals(t(), ((h2) obj).t()) && e() == serialDescriptor.e()) {
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
        return this.f69431e[i10];
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public List<Annotation> g(int i10) {
        List<Annotation> list = this.f69432f[i10];
        if (list == null) {
            return CollectionsKt.n();
        }
        return list;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public List<Annotation> getAnnotations() {
        List<Annotation> list = this.f69433g;
        if (list == null) {
            return CollectionsKt.n();
        }
        return list;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public ut.l getKind() {
        return m.a.f68628a;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    @NotNull
    public String h() {
        return this.f69427a;
    }

    public int hashCode() {
        return u();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean i(int i10) {
        return this.f69434h[i10];
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public boolean isInline() {
        return SerialDescriptor.a.b(this);
    }

    public final void o(@NotNull String name, boolean z10) {
        Intrinsics.checkNotNullParameter(name, "name");
        String[] strArr = this.f69431e;
        int i10 = this.f69430d + 1;
        this.f69430d = i10;
        strArr[i10] = name;
        this.f69434h[i10] = z10;
        this.f69432f[i10] = null;
        if (i10 == this.f69429c - 1) {
            this.f69435i = q();
        }
    }

    @NotNull
    public final SerialDescriptor[] t() {
        return (SerialDescriptor[]) this.f69437k.getValue();
    }

    @NotNull
    public String toString() {
        IntRange v10 = kotlin.ranges.e.v(0, this.f69429c);
        return CollectionsKt.A0(v10, ", ", h() + '(', ")", 0, null, new Function1() { // from class: vt.d2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                CharSequence v11;
                v11 = h2.v(h2.this, ((Integer) obj).intValue());
                return v11;
            }
        }, 24, null);
    }

    public /* synthetic */ h2(String str, m0 m0Var, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i11 & 2) != 0 ? null : m0Var, i10);
    }
}
