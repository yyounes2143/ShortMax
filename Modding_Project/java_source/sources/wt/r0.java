package wt;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.internal.JsonElementMarker;
import kotlinx.serialization.json.internal.JsonTreeReader;
import kotlinx.serialization.json.internal.WriteMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ut.l;
/* compiled from: StreamingJsonDecoder.kt */
@Metadata
@SourceDebugExtension({"SMAP\nStreamingJsonDecoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StreamingJsonDecoder.kt\nkotlinx/serialization/json/internal/StreamingJsonDecoder\n+ 2 Polymorphic.kt\nkotlinx/serialization/json/internal/PolymorphicKt\n+ 3 TreeJsonEncoder.kt\nkotlinx/serialization/json/internal/TreeJsonEncoderKt\n+ 4 AbstractJsonLexer.kt\nkotlinx/serialization/json/internal/AbstractJsonLexer\n+ 5 JsonNamesMap.kt\nkotlinx/serialization/json/internal/JsonNamesMapKt\n+ 6 StreamingJsonDecoder.kt\nkotlinx/serialization/json/internal/StreamingJsonDecoderKt\n*L\n1#1,391:1\n76#2,6:392\n82#2,9:406\n271#3,8:398\n513#4,3:415\n513#4,3:418\n133#5,18:421\n384#6,5:439\n384#6,5:444\n*S KotlinDebug\n*F\n+ 1 StreamingJsonDecoder.kt\nkotlinx/serialization/json/internal/StreamingJsonDecoder\n*L\n75#1:392,6\n75#1:406,9\n75#1:398,8\n202#1:415,3\n203#1:418,3\n215#1:421,18\n308#1:439,5\n315#1:444,5\n*E\n"})
/* loaded from: classes8.dex */
public class r0 extends kotlinx.serialization.encoding.a implements kotlinx.serialization.json.f {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final kotlinx.serialization.json.a f70333a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final WriteMode f70334b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final wt.a f70335c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final xt.a f70336d;

    /* renamed from: e  reason: collision with root package name */
    private int f70337e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private a f70338f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final kotlinx.serialization.json.e f70339g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final JsonElementMarker f70340h;

    /* compiled from: StreamingJsonDecoder.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        public String f70341a;

        public a(@Nullable String str) {
            this.f70341a = str;
        }
    }

    /* compiled from: StreamingJsonDecoder.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public /* synthetic */ class b {
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
            try {
                iArr[WriteMode.OBJ.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public r0(@NotNull kotlinx.serialization.json.a json, @NotNull WriteMode mode, @NotNull wt.a lexer, @NotNull SerialDescriptor descriptor, @Nullable a aVar) {
        JsonElementMarker jsonElementMarker;
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.checkNotNullParameter(lexer, "lexer");
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        this.f70333a = json;
        this.f70334b = mode;
        this.f70335c = lexer;
        this.f70336d = json.getSerializersModule();
        this.f70337e = -1;
        this.f70338f = aVar;
        kotlinx.serialization.json.e d10 = json.d();
        this.f70339g = d10;
        if (d10.j()) {
            jsonElementMarker = null;
        } else {
            jsonElementMarker = new JsonElementMarker(descriptor);
        }
        this.f70340h = jsonElementMarker;
    }

    private final void c() {
        if (this.f70335c.F() != 4) {
            return;
        }
        wt.a.x(this.f70335c, "Unexpected leading comma", 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    private final boolean d(SerialDescriptor serialDescriptor, int i10) {
        String G;
        boolean z10;
        kotlinx.serialization.json.a aVar = this.f70333a;
        boolean i11 = serialDescriptor.i(i10);
        SerialDescriptor d10 = serialDescriptor.d(i10);
        if (i11 && !d10.b() && this.f70335c.N(true)) {
            return true;
        }
        if (Intrinsics.areEqual(d10.getKind(), l.b.f68627a) && ((!d10.b() || !this.f70335c.N(false)) && (G = this.f70335c.G(this.f70339g.q())) != null)) {
            int i12 = d0.i(d10, aVar, G);
            if (!aVar.d().j() && d10.b()) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (i12 == -3 && (i11 || z10)) {
                this.f70335c.o();
                return true;
            }
        }
        return false;
    }

    private final int e() {
        boolean M = this.f70335c.M();
        if (this.f70335c.e()) {
            int i10 = this.f70337e;
            if (i10 != -1 && !M) {
                wt.a.x(this.f70335c, "Expected end of the array or comma", 0, null, 6, null);
                throw new KotlinNothingValueException();
            }
            int i11 = i10 + 1;
            this.f70337e = i11;
            return i11;
        } else if (!M || this.f70333a.d().d()) {
            return -1;
        } else {
            b0.h(this.f70335c, "array");
            throw new KotlinNothingValueException();
        }
    }

    private final int f() {
        boolean z10;
        int i10 = this.f70337e;
        boolean z11 = false;
        if (i10 % 2 != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            if (i10 != -1) {
                z11 = this.f70335c.M();
            }
        } else {
            this.f70335c.l(':');
        }
        if (this.f70335c.e()) {
            if (z10) {
                if (this.f70337e == -1) {
                    wt.a aVar = this.f70335c;
                    int i11 = aVar.f70272a;
                    if (z11) {
                        wt.a.x(aVar, "Unexpected leading comma", i11, null, 4, null);
                        throw new KotlinNothingValueException();
                    }
                } else {
                    wt.a aVar2 = this.f70335c;
                    int i12 = aVar2.f70272a;
                    if (!z11) {
                        wt.a.x(aVar2, "Expected comma after the key-value pair", i12, null, 4, null);
                        throw new KotlinNothingValueException();
                    }
                }
            }
            int i13 = this.f70337e + 1;
            this.f70337e = i13;
            return i13;
        } else if (!z11 || this.f70333a.d().d()) {
            return -1;
        } else {
            b0.i(this.f70335c, null, 1, null);
            throw new KotlinNothingValueException();
        }
    }

    private final int g(SerialDescriptor serialDescriptor) {
        int i10;
        boolean z10;
        boolean M = this.f70335c.M();
        while (true) {
            boolean z11 = true;
            if (this.f70335c.e()) {
                String h10 = h();
                this.f70335c.l(':');
                i10 = d0.i(serialDescriptor, this.f70333a, h10);
                if (i10 != -3) {
                    if (!this.f70339g.g() || !d(serialDescriptor, i10)) {
                        break;
                    }
                    z10 = this.f70335c.M();
                    z11 = false;
                } else {
                    z10 = false;
                }
                if (z11) {
                    M = i(h10);
                } else {
                    M = z10;
                }
            } else if (M && !this.f70333a.d().d()) {
                b0.i(this.f70335c, null, 1, null);
                throw new KotlinNothingValueException();
            } else {
                JsonElementMarker jsonElementMarker = this.f70340h;
                if (jsonElementMarker != null) {
                    return jsonElementMarker.d();
                }
                return -1;
            }
        }
        JsonElementMarker jsonElementMarker2 = this.f70340h;
        if (jsonElementMarker2 != null) {
            jsonElementMarker2.c(i10);
        }
        return i10;
    }

    private final String h() {
        if (this.f70339g.q()) {
            return this.f70335c.r();
        }
        return this.f70335c.i();
    }

    private final boolean i(String str) {
        if (!this.f70339g.k() && !k(this.f70338f, str)) {
            this.f70335c.A(str);
        } else {
            this.f70335c.I(this.f70339g.q());
        }
        return this.f70335c.M();
    }

    private final void j(SerialDescriptor serialDescriptor) {
        do {
        } while (decodeElementIndex(serialDescriptor) != -1);
    }

    private final boolean k(a aVar, String str) {
        if (aVar == null || !Intrinsics.areEqual(aVar.f70341a, str)) {
            return false;
        }
        aVar.f70341a = null;
        return true;
    }

    @Override // kotlinx.serialization.json.f
    @NotNull
    public final kotlinx.serialization.json.a a() {
        return this.f70333a;
    }

    @Override // kotlinx.serialization.json.f
    @NotNull
    public JsonElement b() {
        return new JsonTreeReader(this.f70333a.d(), this.f70335c).e();
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    @NotNull
    public kotlinx.serialization.encoding.c beginStructure(@NotNull SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        WriteMode b10 = b1.b(this.f70333a, descriptor);
        this.f70335c.f70273b.c(descriptor);
        this.f70335c.l(b10.begin);
        c();
        int i10 = b.$EnumSwitchMapping$0[b10.ordinal()];
        if (i10 != 1 && i10 != 2 && i10 != 3) {
            if (this.f70334b == b10 && this.f70333a.d().j()) {
                return this;
            }
            return new r0(this.f70333a, b10, this.f70335c, descriptor, this.f70338f);
        }
        return new r0(this.f70333a, b10, this.f70335c, descriptor, this.f70338f);
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    public boolean decodeBoolean() {
        return this.f70335c.g();
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    public byte decodeByte() {
        long m10 = this.f70335c.m();
        byte b10 = (byte) m10;
        if (m10 == b10) {
            return b10;
        }
        wt.a aVar = this.f70335c;
        wt.a.x(aVar, "Failed to parse byte for input '" + m10 + '\'', 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    public char decodeChar() {
        String q10 = this.f70335c.q();
        if (q10.length() == 1) {
            return q10.charAt(0);
        }
        wt.a aVar = this.f70335c;
        wt.a.x(aVar, "Expected single char, but got '" + q10 + '\'', 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    public double decodeDouble() {
        wt.a aVar = this.f70335c;
        String q10 = aVar.q();
        try {
            double parseDouble = Double.parseDouble(q10);
            if (!this.f70333a.d().b() && (Double.isInfinite(parseDouble) || Double.isNaN(parseDouble))) {
                b0.l(this.f70335c, Double.valueOf(parseDouble));
                throw new KotlinNothingValueException();
            }
            return parseDouble;
        } catch (IllegalArgumentException unused) {
            wt.a.x(aVar, "Failed to parse type 'double' for input '" + q10 + '\'', 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
    }

    @Override // kotlinx.serialization.encoding.c
    public int decodeElementIndex(@NotNull SerialDescriptor descriptor) {
        int f10;
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        int i10 = b.$EnumSwitchMapping$0[this.f70334b.ordinal()];
        if (i10 != 2) {
            if (i10 != 4) {
                f10 = e();
            } else {
                f10 = g(descriptor);
            }
        } else {
            f10 = f();
        }
        if (this.f70334b != WriteMode.MAP) {
            this.f70335c.f70273b.g(f10);
        }
        return f10;
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    public int decodeEnum(@NotNull SerialDescriptor enumDescriptor) {
        Intrinsics.checkNotNullParameter(enumDescriptor, "enumDescriptor");
        kotlinx.serialization.json.a aVar = this.f70333a;
        String decodeString = decodeString();
        return d0.j(enumDescriptor, aVar, decodeString, " at path " + this.f70335c.f70273b.a());
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    public float decodeFloat() {
        wt.a aVar = this.f70335c;
        String q10 = aVar.q();
        try {
            float parseFloat = Float.parseFloat(q10);
            if (!this.f70333a.d().b() && (Float.isInfinite(parseFloat) || Float.isNaN(parseFloat))) {
                b0.l(this.f70335c, Float.valueOf(parseFloat));
                throw new KotlinNothingValueException();
            }
            return parseFloat;
        } catch (IllegalArgumentException unused) {
            wt.a.x(aVar, "Failed to parse type '" + TypedValues.Custom.S_FLOAT + "' for input '" + q10 + '\'', 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    @NotNull
    public Decoder decodeInline(@NotNull SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        if (t0.b(descriptor)) {
            return new a0(this.f70335c, this.f70333a);
        }
        return super.decodeInline(descriptor);
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    public int decodeInt() {
        long m10 = this.f70335c.m();
        int i10 = (int) m10;
        if (m10 == i10) {
            return i10;
        }
        wt.a aVar = this.f70335c;
        wt.a.x(aVar, "Failed to parse int for input '" + m10 + '\'', 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    public long decodeLong() {
        return this.f70335c.m();
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    public boolean decodeNotNullMark() {
        boolean z10;
        JsonElementMarker jsonElementMarker = this.f70340h;
        if (jsonElementMarker != null) {
            z10 = jsonElementMarker.b();
        } else {
            z10 = false;
        }
        if (z10 || wt.a.O(this.f70335c, false, 1, null)) {
            return false;
        }
        return true;
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    @Nullable
    public Void decodeNull() {
        return null;
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.c
    public <T> T decodeSerializableElement(@NotNull SerialDescriptor descriptor, int i10, @NotNull st.c<? extends T> deserializer, @Nullable T t10) {
        boolean z10;
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(deserializer, "deserializer");
        if (this.f70334b == WriteMode.MAP && (i10 & 1) == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            this.f70335c.f70273b.d();
        }
        T t11 = (T) super.decodeSerializableElement(descriptor, i10, deserializer, t10);
        if (z10) {
            this.f70335c.f70273b.f(t11);
        }
        return t11;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x015a  */
    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T> T decodeSerializableValue(@org.jetbrains.annotations.NotNull st.c<? extends T> r12) {
        /*
            Method dump skipped, instructions count: 388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: wt.r0.decodeSerializableValue(st.c):java.lang.Object");
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    public short decodeShort() {
        long m10 = this.f70335c.m();
        short s10 = (short) m10;
        if (m10 == s10) {
            return s10;
        }
        wt.a aVar = this.f70335c;
        wt.a.x(aVar, "Failed to parse short for input '" + m10 + '\'', 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.Decoder
    @NotNull
    public String decodeString() {
        if (this.f70339g.q()) {
            return this.f70335c.r();
        }
        return this.f70335c.o();
    }

    @Override // kotlinx.serialization.encoding.a, kotlinx.serialization.encoding.c
    public void endStructure(@NotNull SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        if (this.f70333a.d().k() && descriptor.e() == 0) {
            j(descriptor);
        }
        if (this.f70335c.M() && !this.f70333a.d().d()) {
            b0.h(this.f70335c, "");
            throw new KotlinNothingValueException();
        }
        this.f70335c.l(this.f70334b.end);
        this.f70335c.f70273b.b();
    }

    @Override // kotlinx.serialization.encoding.Decoder, kotlinx.serialization.encoding.c
    @NotNull
    public xt.a getSerializersModule() {
        return this.f70336d;
    }
}
