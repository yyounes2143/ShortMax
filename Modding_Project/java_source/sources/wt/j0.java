package wt;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ut.l;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TreeJsonDecoder.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTreeJsonDecoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TreeJsonDecoder.kt\nkotlinx/serialization/json/internal/JsonTreeDecoder\n+ 2 JsonNamesMap.kt\nkotlinx/serialization/json/internal/JsonNamesMapKt\n+ 3 JsonNamesMap.kt\nkotlinx/serialization/json/internal/JsonNamesMapKt$tryCoerceValue$1\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 TreeJsonDecoder.kt\nkotlinx/serialization/json/internal/AbstractJsonTreeDecoder\n+ 6 TreeJsonEncoder.kt\nkotlinx/serialization/json/internal/TreeJsonEncoderKt\n*L\n1#1,334:1\n125#2,22:335\n147#2,4:358\n131#3:357\n1#4:362\n74#5:363\n271#6,8:364\n*S KotlinDebug\n*F\n+ 1 TreeJsonDecoder.kt\nkotlinx/serialization/json/internal/JsonTreeDecoder\n*L\n200#1:335,22\n200#1:358,4\n200#1:357\n262#1:363\n262#1:364,8\n*E\n"})
/* loaded from: classes8.dex */
public class j0 extends c {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final JsonObject f70308g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final SerialDescriptor f70309h;

    /* renamed from: i  reason: collision with root package name */
    private int f70310i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f70311j;

    public /* synthetic */ j0(kotlinx.serialization.json.a aVar, JsonObject jsonObject, String str, SerialDescriptor serialDescriptor, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar, jsonObject, (i10 & 4) != 0 ? null : str, (i10 & 8) != 0 ? null : serialDescriptor);
    }

    private final boolean W(SerialDescriptor serialDescriptor, int i10) {
        boolean z10;
        if (!a().d().j() && !serialDescriptor.i(i10) && serialDescriptor.d(i10).b()) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f70311j = z10;
        return z10;
    }

    private final boolean X(SerialDescriptor serialDescriptor, int i10, String str) {
        JsonPrimitive jsonPrimitive;
        boolean z10;
        kotlinx.serialization.json.a a10 = a();
        boolean i11 = serialDescriptor.i(i10);
        SerialDescriptor d10 = serialDescriptor.d(i10);
        if (i11 && !d10.b() && (F(str) instanceof JsonNull)) {
            return true;
        }
        if (Intrinsics.areEqual(d10.getKind(), l.b.f68627a) && (!d10.b() || !(F(str) instanceof JsonNull))) {
            JsonElement F = F(str);
            String str2 = null;
            if (F instanceof JsonPrimitive) {
                jsonPrimitive = (JsonPrimitive) F;
            } else {
                jsonPrimitive = null;
            }
            if (jsonPrimitive != null) {
                str2 = kotlinx.serialization.json.h.f(jsonPrimitive);
            }
            if (str2 != null) {
                int i12 = d0.i(d10, a10, str2);
                if (!a10.d().j() && d10.b()) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (i12 == -3 && (i11 || z10)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // wt.c
    @NotNull
    public JsonElement F(@NotNull String tag) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        return (JsonElement) kotlin.collections.p0.j(T(), tag);
    }

    @Override // wt.c
    @NotNull
    /* renamed from: Y */
    public JsonObject T() {
        return this.f70308g;
    }

    @Override // wt.c, kotlinx.serialization.encoding.Decoder
    @NotNull
    public kotlinx.serialization.encoding.c beginStructure(@NotNull SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        if (descriptor == this.f70309h) {
            kotlinx.serialization.json.a a10 = a();
            JsonElement G = G();
            String h10 = this.f70309h.h();
            if (G instanceof JsonObject) {
                return new j0(a10, (JsonObject) G, S(), this.f70309h);
            }
            throw b0.f(-1, "Expected " + Reflection.getOrCreateKotlinClass(JsonObject.class).getSimpleName() + ", but had " + Reflection.getOrCreateKotlinClass(G.getClass()).getSimpleName() + " as the serialized body of " + h10 + " at element: " + C(), G.toString());
        }
        return super.beginStructure(descriptor);
    }

    @Override // kotlinx.serialization.encoding.c
    public int decodeElementIndex(@NotNull SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        while (this.f70310i < descriptor.e()) {
            int i10 = this.f70310i;
            this.f70310i = i10 + 1;
            String t10 = t(descriptor, i10);
            int i11 = this.f70310i - 1;
            this.f70311j = false;
            if (T().containsKey(t10) || W(descriptor, i11)) {
                if (!this.f70281f.g() || !X(descriptor, i11, t10)) {
                    return i11;
                }
            }
        }
        return -1;
    }

    @Override // wt.c, kotlinx.serialization.encoding.Decoder
    public boolean decodeNotNullMark() {
        if (!this.f70311j && super.decodeNotNullMark()) {
            return true;
        }
        return false;
    }

    @Override // wt.c, kotlinx.serialization.encoding.c
    public void endStructure(@NotNull SerialDescriptor descriptor) {
        Set set;
        Set<String> m10;
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        if (!this.f70281f.k() && !(descriptor.getKind() instanceof ut.d)) {
            d0.m(descriptor, a());
            if (!this.f70281f.o()) {
                m10 = vt.w0.a(descriptor);
            } else {
                Set<String> a10 = vt.w0.a(descriptor);
                Map map = (Map) kotlinx.serialization.json.c0.a(a()).a(descriptor, d0.g());
                if (map != null) {
                    set = map.keySet();
                } else {
                    set = null;
                }
                if (set == null) {
                    set = kotlin.collections.y0.f();
                }
                m10 = kotlin.collections.y0.m(a10, set);
            }
            for (String str : T().keySet()) {
                if (!m10.contains(str) && !Intrinsics.areEqual(str, S())) {
                    throw b0.g(str, T().toString());
                }
            }
        }
    }

    @Override // vt.n1
    @NotNull
    protected String z(@NotNull SerialDescriptor descriptor, int i10) {
        Object obj;
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        d0.m(descriptor, a());
        String f10 = descriptor.f(i10);
        if (!this.f70281f.o()) {
            return f10;
        }
        if (T().keySet().contains(f10)) {
            return f10;
        }
        Map<String, Integer> e10 = d0.e(a(), descriptor);
        Iterator<T> it = T().keySet().iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                Integer num = e10.get((String) obj);
                if (num != null && num.intValue() == i10) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        String str = (String) obj;
        if (str != null) {
            return str;
        }
        return f10;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j0(@NotNull kotlinx.serialization.json.a json, @NotNull JsonObject value, @Nullable String str, @Nullable SerialDescriptor serialDescriptor) {
        super(json, value, str, null);
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(value, "value");
        this.f70308g = value;
        this.f70309h = serialDescriptor;
    }
}
