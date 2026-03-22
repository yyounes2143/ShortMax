package gr;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* compiled from: MapDataRetriever.java */
/* loaded from: classes8.dex */
public class d<K> implements c<K> {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final Map<K, Object> f52522a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final b f52523b;

    public d() {
        this(new ConcurrentHashMap(), new e());
    }

    @Override // gr.c
    @Nullable
    public Float a(@NonNull K k10, @Nullable Float f10) {
        return this.f52523b.l(j(k10, f10), f10);
    }

    @Override // gr.c
    public float b(@NonNull K k10, float f10) {
        return this.f52523b.c(j(k10, Float.valueOf(f10)), f10);
    }

    @Override // gr.c
    public int f(@NonNull K k10, int i10) {
        return this.f52523b.j(j(k10, Integer.valueOf(i10)), i10);
    }

    @Override // gr.c
    @Nullable
    public String i(@NonNull K k10, @Nullable String str) {
        return this.f52523b.f(j(k10, str), str);
    }

    @Override // gr.c
    @Nullable
    public Object j(@NonNull K k10, @Nullable Object obj) {
        if (r(k10)) {
            return s().get(k10);
        }
        return obj;
    }

    @Override // gr.c
    public boolean l(@NonNull K k10, boolean z10) {
        return this.f52523b.g(j(k10, Boolean.valueOf(z10)), z10);
    }

    @Override // gr.c
    @Nullable
    public Boolean m(@NonNull K k10, @Nullable Boolean bool) {
        return this.f52523b.h(j(k10, bool), bool);
    }

    public void q() {
        s().clear();
    }

    public boolean r(@NonNull K k10) {
        return s().containsKey(k10);
    }

    @NonNull
    public Map<K, Object> s() {
        return this.f52522a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void t(@Nullable Map<K, Object> map) {
        q();
        if (map != 0) {
            s().putAll(map);
        }
    }

    public d(@NonNull Map<K, Object> map, @NonNull b bVar) {
        this.f52522a = map;
        this.f52523b = bVar;
    }
}
