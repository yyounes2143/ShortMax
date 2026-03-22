package wt;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ut.l;
import ut.m;
import vt.o1;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TreeJsonEncoder.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTreeJsonEncoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TreeJsonEncoder.kt\nkotlinx/serialization/json/internal/AbstractJsonTreeEncoder\n+ 2 Polymorphic.kt\nkotlinx/serialization/json/internal/PolymorphicKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 WriteMode.kt\nkotlinx/serialization/json/internal/WriteModeKt\n*L\n1#1,280:1\n21#2,12:281\n35#2,13:294\n1#3:293\n36#4,9:307\n*S KotlinDebug\n*F\n+ 1 TreeJsonEncoder.kt\nkotlinx/serialization/json/internal/AbstractJsonTreeEncoder\n*L\n84#1:281,12\n84#1:294,13\n84#1:293\n154#1:307,9\n*E\n"})
/* loaded from: classes8.dex */
public abstract class e extends o1 implements kotlinx.serialization.json.q {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final kotlinx.serialization.json.a f70287b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Function1<JsonElement, Unit> f70288c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    protected final kotlinx.serialization.json.e f70289d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private String f70290e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private String f70291f;

    /* compiled from: TreeJsonEncoder.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a extends kotlinx.serialization.encoding.b {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f70293b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ SerialDescriptor f70294c;

        a(String str, SerialDescriptor serialDescriptor) {
            this.f70293b = str;
            this.f70294c = serialDescriptor;
        }

        @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
        public void encodeString(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            e.this.R(this.f70293b, new kotlinx.serialization.json.t(value, false, this.f70294c));
        }

        @Override // kotlinx.serialization.encoding.Encoder
        public xt.a getSerializersModule() {
            return e.this.a().getSerializersModule();
        }
    }

    /* compiled from: TreeJsonEncoder.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class b extends kotlinx.serialization.encoding.b {

        /* renamed from: a  reason: collision with root package name */
        private final xt.a f70295a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f70297c;

        b(String str) {
            this.f70297c = str;
            this.f70295a = e.this.a().getSerializersModule();
        }

        public final void c(String s10) {
            Intrinsics.checkNotNullParameter(s10, "s");
            e.this.R(this.f70297c, new kotlinx.serialization.json.t(s10, false, null, 4, null));
        }

        @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
        public void encodeByte(byte b10) {
            c(ms.l.f(ms.l.b(b10)));
        }

        @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
        public void encodeInt(int i10) {
            c(f.a(ms.n.b(i10)));
        }

        @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
        public void encodeLong(long j10) {
            String a10;
            a10 = h.a(ms.p.b(j10), 10);
            c(a10);
        }

        @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
        public void encodeShort(short s10) {
            c(ms.s.f(ms.s.b(s10)));
        }

        @Override // kotlinx.serialization.encoding.Encoder
        public xt.a getSerializersModule() {
            return this.f70295a;
        }
    }

    public /* synthetic */ e(kotlinx.serialization.json.a aVar, Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit A(e eVar, JsonElement node) {
        Intrinsics.checkNotNullParameter(node, "node");
        eVar.R(eVar.q(), node);
        return Unit.f60915a;
    }

    private final a P(String str, SerialDescriptor serialDescriptor) {
        return new a(str, serialDescriptor);
    }

    private final b Q(String str) {
        return new b(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a3
    /* renamed from: B */
    public void e(@NotNull String tag, boolean z10) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        R(tag, kotlinx.serialization.json.h.a(Boolean.valueOf(z10)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a3
    /* renamed from: C */
    public void f(@NotNull String tag, byte b10) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        R(tag, kotlinx.serialization.json.h.b(Byte.valueOf(b10)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a3
    /* renamed from: D */
    public void g(@NotNull String tag, char c10) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        R(tag, kotlinx.serialization.json.h.c(String.valueOf(c10)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a3
    /* renamed from: E */
    public void h(@NotNull String tag, double d10) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        R(tag, kotlinx.serialization.json.h.b(Double.valueOf(d10)));
        if (!this.f70289d.b()) {
            if (Double.isInfinite(d10) || Double.isNaN(d10)) {
                throw b0.c(Double.valueOf(d10), tag, N().toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a3
    /* renamed from: F */
    public void i(@NotNull String tag, @NotNull SerialDescriptor enumDescriptor, int i10) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(enumDescriptor, "enumDescriptor");
        R(tag, kotlinx.serialization.json.h.c(enumDescriptor.f(i10)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a3
    /* renamed from: G */
    public void j(@NotNull String tag, float f10) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        R(tag, kotlinx.serialization.json.h.b(Float.valueOf(f10)));
        if (!this.f70289d.b()) {
            if (Float.isInfinite(f10) || Float.isNaN(f10)) {
                throw b0.c(Float.valueOf(f10), tag, N().toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a3
    @NotNull
    /* renamed from: H */
    public Encoder k(@NotNull String tag, @NotNull SerialDescriptor inlineDescriptor) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(inlineDescriptor, "inlineDescriptor");
        if (t0.b(inlineDescriptor)) {
            return Q(tag);
        }
        if (t0.a(inlineDescriptor)) {
            return P(tag, inlineDescriptor);
        }
        return super.k(tag, inlineDescriptor);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a3
    /* renamed from: I */
    public void l(@NotNull String tag, int i10) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        R(tag, kotlinx.serialization.json.h.b(Integer.valueOf(i10)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a3
    /* renamed from: J */
    public void m(@NotNull String tag, long j10) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        R(tag, kotlinx.serialization.json.h.b(Long.valueOf(j10)));
    }

    protected void K(@NotNull String tag) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        R(tag, JsonNull.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a3
    /* renamed from: L */
    public void n(@NotNull String tag, short s10) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        R(tag, kotlinx.serialization.json.h.b(Short.valueOf(s10)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // vt.a3
    /* renamed from: M */
    public void o(@NotNull String tag, @NotNull String value) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(value, "value");
        R(tag, kotlinx.serialization.json.h.c(value));
    }

    @NotNull
    public abstract JsonElement N();

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final Function1<JsonElement, Unit> O() {
        return this.f70288c;
    }

    public abstract void R(@NotNull String str, @NotNull JsonElement jsonElement);

    @Override // kotlinx.serialization.json.q
    @NotNull
    public final kotlinx.serialization.json.a a() {
        return this.f70287b;
    }

    @Override // kotlinx.serialization.json.q
    public void b(@NotNull JsonElement element) {
        Intrinsics.checkNotNullParameter(element, "element");
        if (this.f70290e != null && !(element instanceof JsonObject)) {
            p0.d(this.f70291f, element);
            throw new KotlinNothingValueException();
        } else {
            encodeSerializableValue(kotlinx.serialization.json.o.f62005a, element);
        }
    }

    @Override // kotlinx.serialization.encoding.Encoder
    @NotNull
    public kotlinx.serialization.encoding.d beginStructure(@NotNull SerialDescriptor descriptor) {
        Function1<JsonElement, Unit> function1;
        e m0Var;
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        if (r() == null) {
            function1 = this.f70288c;
        } else {
            function1 = new Function1() { // from class: wt.d
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit A;
                    A = e.A(e.this, (JsonElement) obj);
                    return A;
                }
            };
        }
        ut.l kind = descriptor.getKind();
        if (!Intrinsics.areEqual(kind, m.b.f68629a) && !(kind instanceof ut.d)) {
            if (Intrinsics.areEqual(kind, m.c.f68630a)) {
                kotlinx.serialization.json.a aVar = this.f70287b;
                SerialDescriptor a10 = b1.a(descriptor.d(0), aVar.getSerializersModule());
                ut.l kind2 = a10.getKind();
                if (!(kind2 instanceof ut.e) && !Intrinsics.areEqual(kind2, l.b.f68627a)) {
                    if (aVar.d().c()) {
                        m0Var = new m0(this.f70287b, function1);
                    } else {
                        throw b0.d(a10);
                    }
                } else {
                    m0Var = new o0(this.f70287b, function1);
                }
            } else {
                m0Var = new k0(this.f70287b, function1);
            }
        } else {
            m0Var = new m0(this.f70287b, function1);
        }
        String str = this.f70290e;
        if (str != null) {
            if (m0Var instanceof o0) {
                o0 o0Var = (o0) m0Var;
                o0Var.R("key", kotlinx.serialization.json.h.c(str));
                String str2 = this.f70291f;
                if (str2 == null) {
                    str2 = descriptor.h();
                }
                o0Var.R(AppMeasurementSdk.ConditionalUserProperty.VALUE, kotlinx.serialization.json.h.c(str2));
            } else {
                String str3 = this.f70291f;
                if (str3 == null) {
                    str3 = descriptor.h();
                }
                m0Var.R(str, kotlinx.serialization.json.h.c(str3));
            }
            this.f70290e = null;
            this.f70291f = null;
        }
        return m0Var;
    }

    @Override // vt.a3, kotlinx.serialization.encoding.Encoder
    @NotNull
    public Encoder encodeInline(@NotNull SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        if (r() != null) {
            if (this.f70290e != null) {
                this.f70291f = descriptor.h();
            }
            return super.encodeInline(descriptor);
        }
        return new g0(this.f70287b, this.f70288c).encodeInline(descriptor);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void encodeNull() {
        String r10 = r();
        if (r10 == null) {
            this.f70288c.invoke(JsonNull.INSTANCE);
        } else {
            K(r10);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0051, code lost:
        if (a().d().f() != kotlinx.serialization.json.ClassDiscriminatorMode.NONE) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0087, code lost:
        if (kotlin.jvm.internal.Intrinsics.areEqual(r1, ut.m.d.f68631a) == false) goto L16;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // vt.a3, kotlinx.serialization.encoding.Encoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T> void encodeSerializableValue(@org.jetbrains.annotations.NotNull st.l<? super T> r4, T r5) {
        /*
            r3 = this;
            java.lang.String r0 = "serializer"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            java.lang.Object r0 = r3.r()
            if (r0 != 0) goto L2c
            kotlinx.serialization.descriptors.SerialDescriptor r0 = r4.getDescriptor()
            xt.a r1 = r3.getSerializersModule()
            kotlinx.serialization.descriptors.SerialDescriptor r0 = wt.b1.a(r0, r1)
            boolean r0 = wt.a1.b(r0)
            if (r0 != 0) goto L1e
            goto L2c
        L1e:
            wt.g0 r0 = new wt.g0
            kotlinx.serialization.json.a r1 = r3.f70287b
            kotlin.jvm.functions.Function1<kotlinx.serialization.json.JsonElement, kotlin.Unit> r2 = r3.f70288c
            r0.<init>(r1, r2)
            r0.encodeSerializableValue(r4, r5)
            goto Lf4
        L2c:
            kotlinx.serialization.json.a r0 = r3.a()
            kotlinx.serialization.json.e r0 = r0.d()
            boolean r0 = r0.p()
            if (r0 == 0) goto L3f
            r4.serialize(r3, r5)
            goto Lf4
        L3f:
            boolean r0 = r4 instanceof vt.b
            if (r0 == 0) goto L54
            kotlinx.serialization.json.a r1 = r3.a()
            kotlinx.serialization.json.e r1 = r1.d()
            kotlinx.serialization.json.ClassDiscriminatorMode r1 = r1.f()
            kotlinx.serialization.json.ClassDiscriminatorMode r2 = kotlinx.serialization.json.ClassDiscriminatorMode.NONE
            if (r1 == r2) goto L9c
            goto L89
        L54:
            kotlinx.serialization.json.a r1 = r3.a()
            kotlinx.serialization.json.e r1 = r1.d()
            kotlinx.serialization.json.ClassDiscriminatorMode r1 = r1.f()
            int[] r2 = wt.p0.a.$EnumSwitchMapping$0
            int r1 = r1.ordinal()
            r1 = r2[r1]
            r2 = 1
            if (r1 == r2) goto L9c
            r2 = 2
            if (r1 == r2) goto L9c
            r2 = 3
            if (r1 != r2) goto L96
            kotlinx.serialization.descriptors.SerialDescriptor r1 = r4.getDescriptor()
            ut.l r1 = r1.getKind()
            ut.m$a r2 = ut.m.a.f68628a
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r2)
            if (r2 != 0) goto L89
            ut.m$d r2 = ut.m.d.f68631a
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r2)
            if (r1 == 0) goto L9c
        L89:
            kotlinx.serialization.descriptors.SerialDescriptor r1 = r4.getDescriptor()
            kotlinx.serialization.json.a r2 = r3.a()
            java.lang.String r1 = wt.p0.c(r1, r2)
            goto L9d
        L96:
            kotlin.NoWhenBranchMatchedException r4 = new kotlin.NoWhenBranchMatchedException
            r4.<init>()
            throw r4
        L9c:
            r1 = 0
        L9d:
            if (r0 == 0) goto Le3
            r0 = r4
            vt.b r0 = (vt.b) r0
            if (r5 == 0) goto Lbf
            st.l r0 = st.h.b(r0, r3, r5)
            if (r1 == 0) goto Lad
            wt.p0.a(r4, r0, r1)
        Lad:
            kotlinx.serialization.descriptors.SerialDescriptor r4 = r0.getDescriptor()
            ut.l r4 = r4.getKind()
            wt.p0.b(r4)
            java.lang.String r4 = "null cannot be cast to non-null type kotlinx.serialization.SerializationStrategy<T of kotlinx.serialization.json.internal.PolymorphicKt.encodePolymorphically>"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0, r4)
            r4 = r0
            goto Le3
        Lbf:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = "Value for serializer "
            r4.append(r5)
            kotlinx.serialization.descriptors.SerialDescriptor r5 = r0.getDescriptor()
            r4.append(r5)
            java.lang.String r5 = " should always be non-null. Please report issue to the kotlinx.serialization tracker."
            r4.append(r5)
            java.lang.String r4 = r4.toString()
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.String r4 = r4.toString()
            r5.<init>(r4)
            throw r5
        Le3:
            if (r1 == 0) goto Lf1
            kotlinx.serialization.descriptors.SerialDescriptor r0 = r4.getDescriptor()
            java.lang.String r0 = r0.h()
            r3.f70290e = r1
            r3.f70291f = r0
        Lf1:
            r4.serialize(r3, r5)
        Lf4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: wt.e.encodeSerializableValue(st.l, java.lang.Object):void");
    }

    @Override // kotlinx.serialization.encoding.Encoder
    @NotNull
    public final xt.a getSerializersModule() {
        return this.f70287b.getSerializersModule();
    }

    @Override // vt.a3
    protected void p(@NotNull SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        this.f70288c.invoke(N());
    }

    @Override // kotlinx.serialization.encoding.d
    public boolean shouldEncodeElementDefault(@NotNull SerialDescriptor descriptor, int i10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return this.f70289d.i();
    }

    @Override // vt.o1
    @NotNull
    protected String v(@NotNull String parentName, @NotNull String childName) {
        Intrinsics.checkNotNullParameter(parentName, "parentName");
        Intrinsics.checkNotNullParameter(childName, "childName");
        return childName;
    }

    @Override // vt.o1
    @NotNull
    protected String w(@NotNull SerialDescriptor descriptor, int i10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return d0.h(descriptor, this.f70287b, i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private e(kotlinx.serialization.json.a aVar, Function1<? super JsonElement, Unit> function1) {
        this.f70287b = aVar;
        this.f70288c = function1;
        this.f70289d = aVar.d();
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void encodeNotNullMark() {
    }
}
