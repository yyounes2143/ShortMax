package kotlinx.serialization.json;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.WriteMode;
import org.jetbrains.annotations.NotNull;
import wt.h0;
import wt.i0;
import wt.r0;
import wt.u0;
import wt.v0;
import wt.y0;
/* compiled from: Json.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class a implements st.w {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final C0857a f61939d = new C0857a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final e f61940a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final xt.a f61941b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final wt.y f61942c;

    /* compiled from: Json.kt */
    @Metadata
    /* renamed from: kotlinx.serialization.json.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0857a extends a {
        public /* synthetic */ C0857a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0857a() {
            super(new e(false, false, false, false, false, false, null, false, false, null, false, false, null, false, false, false, null, 131071, null), xt.b.a(), null);
        }
    }

    public /* synthetic */ a(e eVar, xt.a aVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(eVar, aVar);
    }

    @Override // st.w
    @NotNull
    public final <T> String a(@NotNull st.l<? super T> serializer, T t10) {
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        i0 i0Var = new i0();
        try {
            h0.a(this, i0Var, serializer, t10);
            return i0Var.toString();
        } finally {
            i0Var.g();
        }
    }

    @Override // st.w
    public final <T> T b(@NotNull st.c<? extends T> deserializer, @NotNull String string) {
        Intrinsics.checkNotNullParameter(deserializer, "deserializer");
        Intrinsics.checkNotNullParameter(string, "string");
        u0 a10 = v0.a(this, string);
        T t10 = (T) new r0(this, WriteMode.OBJ, a10, deserializer.getDescriptor(), null).decodeSerializableValue(deserializer);
        a10.v();
        return t10;
    }

    public final <T> T c(@NotNull st.c<? extends T> deserializer, @NotNull JsonElement element) {
        Intrinsics.checkNotNullParameter(deserializer, "deserializer");
        Intrinsics.checkNotNullParameter(element, "element");
        return (T) y0.a(this, element, deserializer);
    }

    @NotNull
    public final e d() {
        return this.f61940a;
    }

    @NotNull
    public final wt.y e() {
        return this.f61942c;
    }

    @Override // st.j
    @NotNull
    public xt.a getSerializersModule() {
        return this.f61941b;
    }

    private a(e eVar, xt.a aVar) {
        this.f61940a = eVar;
        this.f61941b = aVar;
        this.f61942c = new wt.y();
    }
}
