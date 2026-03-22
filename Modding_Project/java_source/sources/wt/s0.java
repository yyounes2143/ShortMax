package wt;

import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.internal.WriteMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: StreamingJsonEncoder.kt */
@Metadata
@SourceDebugExtension({"SMAP\nStreamingJsonEncoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StreamingJsonEncoder.kt\nkotlinx/serialization/json/internal/StreamingJsonEncoder\n+ 2 Polymorphic.kt\nkotlinx/serialization/json/internal/PolymorphicKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,232:1\n178#1,2:259\n178#1,2:261\n21#2,12:233\n35#2,13:246\n1#3:245\n1#3:263\n*S KotlinDebug\n*F\n+ 1 StreamingJsonEncoder.kt\nkotlinx/serialization/json/internal/StreamingJsonEncoder\n*L\n168#1:259,2\n169#1:261,2\n68#1:233,12\n68#1:246,13\n68#1:245\n*E\n"})
/* loaded from: classes8.dex */
public final class s0 extends kotlinx.serialization.encoding.b implements kotlinx.serialization.json.q {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final m f70342a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final kotlinx.serialization.json.a f70343b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final WriteMode f70344c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final kotlinx.serialization.json.q[] f70345d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final xt.a f70346e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final kotlinx.serialization.json.e f70347f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f70348g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private String f70349h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private String f70350i;

    /* compiled from: StreamingJsonEncoder.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[WriteMode.values().length];
            try {
                iArr[WriteMode.LIST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[WriteMode.MAP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[WriteMode.POLY_OBJ.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public s0(@NotNull m composer, @NotNull kotlinx.serialization.json.a json, @NotNull WriteMode mode, @Nullable kotlinx.serialization.json.q[] qVarArr) {
        Intrinsics.checkNotNullParameter(composer, "composer");
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(mode, "mode");
        this.f70342a = composer;
        this.f70343b = json;
        this.f70344c = mode;
        this.f70345d = qVarArr;
        this.f70346e = a().getSerializersModule();
        this.f70347f = a().d();
        int ordinal = mode.ordinal();
        if (qVarArr != null) {
            kotlinx.serialization.json.q qVar = qVarArr[ordinal];
            if (qVar == null && qVar == this) {
                return;
            }
            qVarArr[ordinal] = this;
        }
    }

    private final void c(String str, String str2) {
        this.f70342a.c();
        encodeString(str);
        this.f70342a.f(':');
        this.f70342a.p();
        encodeString(str2);
    }

    @Override // kotlinx.serialization.json.q
    @NotNull
    public kotlinx.serialization.json.a a() {
        return this.f70343b;
    }

    @Override // kotlinx.serialization.json.q
    public void b(@NotNull JsonElement element) {
        Intrinsics.checkNotNullParameter(element, "element");
        if (this.f70349h != null && !(element instanceof JsonObject)) {
            p0.d(this.f70350i, element);
            throw new KotlinNothingValueException();
        } else {
            encodeSerializableValue(kotlinx.serialization.json.o.f62005a, element);
        }
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    @NotNull
    public kotlinx.serialization.encoding.d beginStructure(@NotNull SerialDescriptor descriptor) {
        kotlinx.serialization.json.q qVar;
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        WriteMode b10 = b1.b(a(), descriptor);
        char c10 = b10.begin;
        if (c10 != 0) {
            this.f70342a.f(c10);
            this.f70342a.b();
        }
        String str = this.f70349h;
        if (str != null) {
            String str2 = this.f70350i;
            if (str2 == null) {
                str2 = descriptor.h();
            }
            c(str, str2);
            this.f70349h = null;
            this.f70350i = null;
        }
        if (this.f70344c == b10) {
            return this;
        }
        kotlinx.serialization.json.q[] qVarArr = this.f70345d;
        if (qVarArr == null || (qVar = qVarArr[b10.ordinal()]) == null) {
            return new s0(this.f70342a, a(), b10, this.f70345d);
        }
        return qVar;
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void encodeBoolean(boolean z10) {
        if (this.f70348g) {
            encodeString(String.valueOf(z10));
        } else {
            this.f70342a.m(z10);
        }
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void encodeByte(byte b10) {
        if (this.f70348g) {
            encodeString(String.valueOf((int) b10));
        } else {
            this.f70342a.e(b10);
        }
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void encodeChar(char c10) {
        encodeString(String.valueOf(c10));
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void encodeDouble(double d10) {
        if (this.f70348g) {
            encodeString(String.valueOf(d10));
        } else {
            this.f70342a.g(d10);
        }
        if (!this.f70347f.b()) {
            if (Double.isInfinite(d10) || Double.isNaN(d10)) {
                throw b0.b(Double.valueOf(d10), this.f70342a.f70321a.toString());
            }
        }
    }

    @Override // kotlinx.serialization.encoding.b
    public boolean encodeElement(@NotNull SerialDescriptor descriptor, int i10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        int i11 = a.$EnumSwitchMapping$0[this.f70344c.ordinal()];
        if (i11 != 1) {
            boolean z10 = false;
            if (i11 != 2) {
                if (i11 != 3) {
                    if (!this.f70342a.a()) {
                        this.f70342a.f(',');
                    }
                    this.f70342a.c();
                    encodeString(d0.h(descriptor, a(), i10));
                    this.f70342a.f(':');
                    this.f70342a.p();
                } else {
                    if (i10 == 0) {
                        this.f70348g = true;
                    }
                    if (i10 == 1) {
                        this.f70342a.f(',');
                        this.f70342a.p();
                        this.f70348g = false;
                    }
                }
            } else if (!this.f70342a.a()) {
                if (i10 % 2 == 0) {
                    this.f70342a.f(',');
                    this.f70342a.c();
                    z10 = true;
                } else {
                    this.f70342a.f(':');
                    this.f70342a.p();
                }
                this.f70348g = z10;
            } else {
                this.f70348g = true;
                this.f70342a.c();
            }
        } else {
            if (!this.f70342a.a()) {
                this.f70342a.f(',');
            }
            this.f70342a.c();
        }
        return true;
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void encodeEnum(@NotNull SerialDescriptor enumDescriptor, int i10) {
        Intrinsics.checkNotNullParameter(enumDescriptor, "enumDescriptor");
        encodeString(enumDescriptor.f(i10));
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void encodeFloat(float f10) {
        if (this.f70348g) {
            encodeString(String.valueOf(f10));
        } else {
            this.f70342a.h(f10);
        }
        if (!this.f70347f.b()) {
            if (Float.isInfinite(f10) || Float.isNaN(f10)) {
                throw b0.b(Float.valueOf(f10), this.f70342a.f70321a.toString());
            }
        }
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    @NotNull
    public Encoder encodeInline(@NotNull SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        if (t0.b(descriptor)) {
            m mVar = this.f70342a;
            if (!(mVar instanceof u)) {
                mVar = new u(mVar.f70321a, this.f70348g);
            }
            return new s0(mVar, a(), this.f70344c, (kotlinx.serialization.json.q[]) null);
        } else if (t0.a(descriptor)) {
            m mVar2 = this.f70342a;
            if (!(mVar2 instanceof n)) {
                mVar2 = new n(mVar2.f70321a, this.f70348g);
            }
            return new s0(mVar2, a(), this.f70344c, (kotlinx.serialization.json.q[]) null);
        } else if (this.f70349h != null) {
            this.f70350i = descriptor.h();
            return this;
        } else {
            return super.encodeInline(descriptor);
        }
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void encodeInt(int i10) {
        if (this.f70348g) {
            encodeString(String.valueOf(i10));
        } else {
            this.f70342a.i(i10);
        }
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void encodeLong(long j10) {
        if (this.f70348g) {
            encodeString(String.valueOf(j10));
        } else {
            this.f70342a.j(j10);
        }
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void encodeNull() {
        this.f70342a.k("null");
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.d
    public <T> void encodeNullableSerializableElement(@NotNull SerialDescriptor descriptor, int i10, @NotNull st.l<? super T> serializer, @Nullable T t10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        if (t10 != null || this.f70347f.j()) {
            super.encodeNullableSerializableElement(descriptor, i10, serializer, t10);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0060, code lost:
        if (kotlin.jvm.internal.Intrinsics.areEqual(r1, ut.m.d.f68631a) == false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x002a, code lost:
        if (a().d().f() != kotlinx.serialization.json.ClassDiscriminatorMode.NONE) goto L24;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T> void encodeSerializableValue(@org.jetbrains.annotations.NotNull st.l<? super T> r4, T r5) {
        /*
            r3 = this;
            java.lang.String r0 = "serializer"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            kotlinx.serialization.json.a r0 = r3.a()
            kotlinx.serialization.json.e r0 = r0.d()
            boolean r0 = r0.p()
            if (r0 == 0) goto L18
            r4.serialize(r3, r5)
            goto Lcd
        L18:
            boolean r0 = r4 instanceof vt.b
            if (r0 == 0) goto L2d
            kotlinx.serialization.json.a r1 = r3.a()
            kotlinx.serialization.json.e r1 = r1.d()
            kotlinx.serialization.json.ClassDiscriminatorMode r1 = r1.f()
            kotlinx.serialization.json.ClassDiscriminatorMode r2 = kotlinx.serialization.json.ClassDiscriminatorMode.NONE
            if (r1 == r2) goto L75
            goto L62
        L2d:
            kotlinx.serialization.json.a r1 = r3.a()
            kotlinx.serialization.json.e r1 = r1.d()
            kotlinx.serialization.json.ClassDiscriminatorMode r1 = r1.f()
            int[] r2 = wt.p0.a.$EnumSwitchMapping$0
            int r1 = r1.ordinal()
            r1 = r2[r1]
            r2 = 1
            if (r1 == r2) goto L75
            r2 = 2
            if (r1 == r2) goto L75
            r2 = 3
            if (r1 != r2) goto L6f
            kotlinx.serialization.descriptors.SerialDescriptor r1 = r4.getDescriptor()
            ut.l r1 = r1.getKind()
            ut.m$a r2 = ut.m.a.f68628a
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r2)
            if (r2 != 0) goto L62
            ut.m$d r2 = ut.m.d.f68631a
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r2)
            if (r1 == 0) goto L75
        L62:
            kotlinx.serialization.descriptors.SerialDescriptor r1 = r4.getDescriptor()
            kotlinx.serialization.json.a r2 = r3.a()
            java.lang.String r1 = wt.p0.c(r1, r2)
            goto L76
        L6f:
            kotlin.NoWhenBranchMatchedException r4 = new kotlin.NoWhenBranchMatchedException
            r4.<init>()
            throw r4
        L75:
            r1 = 0
        L76:
            if (r0 == 0) goto Lbc
            r0 = r4
            vt.b r0 = (vt.b) r0
            if (r5 == 0) goto L98
            st.l r0 = st.h.b(r0, r3, r5)
            if (r1 == 0) goto L86
            wt.p0.a(r4, r0, r1)
        L86:
            kotlinx.serialization.descriptors.SerialDescriptor r4 = r0.getDescriptor()
            ut.l r4 = r4.getKind()
            wt.p0.b(r4)
            java.lang.String r4 = "null cannot be cast to non-null type kotlinx.serialization.SerializationStrategy<T of kotlinx.serialization.json.internal.PolymorphicKt.encodePolymorphically>"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0, r4)
            r4 = r0
            goto Lbc
        L98:
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
        Lbc:
            if (r1 == 0) goto Lca
            kotlinx.serialization.descriptors.SerialDescriptor r0 = r4.getDescriptor()
            java.lang.String r0 = r0.h()
            r3.f70349h = r1
            r3.f70350i = r0
        Lca:
            r4.serialize(r3, r5)
        Lcd:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: wt.s0.encodeSerializableValue(st.l, java.lang.Object):void");
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void encodeShort(short s10) {
        if (this.f70348g) {
            encodeString(String.valueOf((int) s10));
        } else {
            this.f70342a.l(s10);
        }
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.Encoder
    public void encodeString(@NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.f70342a.n(value);
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.d
    public void endStructure(@NotNull SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        if (this.f70344c.end != 0) {
            this.f70342a.q();
            this.f70342a.d();
            this.f70342a.f(this.f70344c.end);
        }
    }

    @Override // kotlinx.serialization.encoding.Encoder
    @NotNull
    public xt.a getSerializersModule() {
        return this.f70346e;
    }

    @Override // kotlinx.serialization.encoding.b, kotlinx.serialization.encoding.d
    public boolean shouldEncodeElementDefault(@NotNull SerialDescriptor descriptor, int i10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return this.f70347f.i();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public s0(@NotNull z output, @NotNull kotlinx.serialization.json.a json, @NotNull WriteMode mode, @NotNull kotlinx.serialization.json.q[] modeReuseCache) {
        this(w.a(output, json), json, mode, modeReuseCache);
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.checkNotNullParameter(modeReuseCache, "modeReuseCache");
    }
}
