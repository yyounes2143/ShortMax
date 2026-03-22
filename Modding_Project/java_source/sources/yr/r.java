package yr;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: StringValues.kt */
@Metadata
@SourceDebugExtension({"SMAP\nStringValues.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StringValues.kt\nio/ktor/util/StringValuesImpl\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,422:1\n215#2:423\n216#2:425\n1#3:424\n*S KotlinDebug\n*F\n+ 1 StringValues.kt\nio/ktor/util/StringValuesImpl\n*L\n163#1:423\n163#1:425\n*E\n"})
/* loaded from: classes8.dex */
public class r implements p {

    /* renamed from: c  reason: collision with root package name */
    private final boolean f71162c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, List<String>> f71163d;

    public r(boolean z10, @NotNull Map<String, ? extends List<String>> values) {
        Map linkedHashMap;
        Intrinsics.checkNotNullParameter(values, "values");
        this.f71162c = z10;
        if (z10) {
            linkedHashMap = i.a();
        } else {
            linkedHashMap = new LinkedHashMap();
        }
        for (Map.Entry<String, ? extends List<String>> entry : values.entrySet()) {
            String key = entry.getKey();
            List<String> value = entry.getValue();
            int size = value.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i10 = 0; i10 < size; i10++) {
                arrayList.add(value.get(i10));
            }
            linkedHashMap.put(key, arrayList);
        }
        this.f71163d = linkedHashMap;
    }

    private final List<String> e(String str) {
        return this.f71163d.get(str);
    }

    @Override // yr.p
    @Nullable
    public List<String> a(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return e(name);
    }

    @Override // yr.p
    @NotNull
    public Set<Map.Entry<String, List<String>>> b() {
        return h.a(this.f71163d.entrySet());
    }

    @Override // yr.p
    public final boolean c() {
        return this.f71162c;
    }

    @Override // yr.p
    public void d(@NotNull Function2<? super String, ? super List<String>, Unit> body) {
        Intrinsics.checkNotNullParameter(body, "body");
        for (Map.Entry<String, List<String>> entry : this.f71163d.entrySet()) {
            body.invoke(entry.getKey(), entry.getValue());
        }
    }

    public boolean equals(@Nullable Object obj) {
        boolean d10;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        if (this.f71162c == pVar.c()) {
            d10 = s.d(b(), pVar.b());
            return d10;
        }
        return false;
    }

    @Override // yr.p
    @Nullable
    public String get(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        List<String> e10 = e(name);
        if (e10 != null) {
            return (String) CollectionsKt.firstOrNull(e10);
        }
        return null;
    }

    public int hashCode() {
        int e10;
        e10 = s.e(b(), Boolean.hashCode(this.f71162c) * 31);
        return e10;
    }

    @Override // yr.p
    public boolean isEmpty() {
        return this.f71163d.isEmpty();
    }

    @Override // yr.p
    @NotNull
    public Set<String> names() {
        return h.a(this.f71163d.keySet());
    }
}
