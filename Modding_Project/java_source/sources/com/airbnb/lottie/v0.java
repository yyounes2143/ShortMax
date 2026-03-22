package com.airbnb.lottie;

import androidx.collection.ArraySet;
import androidx.core.util.Pair;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* compiled from: PerformanceTracker.java */
/* loaded from: classes2.dex */
public class v0 {

    /* renamed from: a  reason: collision with root package name */
    private boolean f4782a = false;

    /* renamed from: b  reason: collision with root package name */
    private final Set<b> f4783b = new ArraySet();

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, d1.j> f4784c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    private final Comparator<Pair<String, Float>> f4785d = new a();

    /* compiled from: PerformanceTracker.java */
    /* loaded from: classes2.dex */
    class a implements Comparator<Pair<String, Float>> {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(Pair<String, Float> pair, Pair<String, Float> pair2) {
            float floatValue = pair.second.floatValue();
            float floatValue2 = pair2.second.floatValue();
            if (floatValue2 > floatValue) {
                return 1;
            }
            if (floatValue > floatValue2) {
                return -1;
            }
            return 0;
        }
    }

    /* compiled from: PerformanceTracker.java */
    /* loaded from: classes2.dex */
    public interface b {
        void a(float f10);
    }

    public void a(String str, float f10) {
        if (!this.f4782a) {
            return;
        }
        d1.j jVar = this.f4784c.get(str);
        if (jVar == null) {
            jVar = new d1.j();
            this.f4784c.put(str, jVar);
        }
        jVar.a(f10);
        if (str.equals("__container")) {
            for (b bVar : this.f4783b) {
                bVar.a(f10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(boolean z10) {
        this.f4782a = z10;
    }
}
