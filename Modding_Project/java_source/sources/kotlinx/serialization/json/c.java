package kotlinx.serialization.json;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Json.kt */
@Metadata
@SourceDebugExtension({"SMAP\nJson.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Json.kt\nkotlinx/serialization/json/JsonBuilder\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,684:1\n1069#2,2:685\n*S KotlinDebug\n*F\n+ 1 Json.kt\nkotlinx/serialization/json/JsonBuilder\n*L\n647#1:685,2\n*E\n"})
/* loaded from: classes8.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private boolean f61955a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f61956b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f61957c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f61958d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f61959e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private String f61960f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f61961g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private String f61962h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private ClassDiscriminatorMode f61963i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f61964j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f61965k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f61966l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f61967m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f61968n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f61969o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f61970p;
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    private xt.a f61971q;

    public c(@NotNull a json) {
        Intrinsics.checkNotNullParameter(json, "json");
        this.f61955a = json.d().i();
        this.f61956b = json.d().j();
        this.f61957c = json.d().k();
        this.f61958d = json.d().q();
        this.f61959e = json.d().m();
        this.f61960f = json.d().n();
        this.f61961g = json.d().g();
        this.f61962h = json.d().e();
        this.f61963i = json.d().f();
        this.f61964j = json.d().o();
        json.d().l();
        this.f61965k = json.d().h();
        this.f61966l = json.d().d();
        this.f61967m = json.d().a();
        this.f61968n = json.d().b();
        this.f61969o = json.d().c();
        this.f61970p = json.d().p();
        this.f61971q = json.getSerializersModule();
    }

    @NotNull
    public final e a() {
        if (this.f61970p) {
            if (Intrinsics.areEqual(this.f61962h, "type")) {
                if (this.f61963i != ClassDiscriminatorMode.POLYMORPHIC) {
                    throw new IllegalArgumentException("useArrayPolymorphism option can only be used if classDiscriminatorMode in a default POLYMORPHIC state.");
                }
            } else {
                throw new IllegalArgumentException("Class discriminator should not be specified when array polymorphism is specified");
            }
        }
        if (!this.f61959e) {
            if (!Intrinsics.areEqual(this.f61960f, "    ")) {
                throw new IllegalArgumentException("Indent should not be specified when default printing mode is used");
            }
        } else if (!Intrinsics.areEqual(this.f61960f, "    ")) {
            String str = this.f61960f;
            for (int i10 = 0; i10 < str.length(); i10++) {
                char charAt = str.charAt(i10);
                if (charAt != ' ' && charAt != '\t' && charAt != '\r' && charAt != '\n') {
                    throw new IllegalArgumentException(("Only whitespace, tab, newline and carriage return are allowed as pretty print symbols. Had " + this.f61960f).toString());
                }
            }
        }
        return new e(this.f61955a, this.f61957c, this.f61958d, this.f61969o, this.f61959e, this.f61956b, this.f61960f, this.f61961g, this.f61970p, this.f61962h, this.f61968n, this.f61964j, null, this.f61965k, this.f61966l, this.f61967m, this.f61963i);
    }

    @NotNull
    public final xt.a b() {
        return this.f61971q;
    }

    public final void c(boolean z10) {
        this.f61969o = z10;
    }

    public final void d(boolean z10) {
        this.f61955a = z10;
    }

    public final void e(boolean z10) {
        this.f61956b = z10;
    }

    public final void f(boolean z10) {
        this.f61957c = z10;
    }

    public final void g(boolean z10) {
        this.f61958d = z10;
    }
}
