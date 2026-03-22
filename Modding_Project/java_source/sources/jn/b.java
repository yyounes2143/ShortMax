package jn;

import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import cn.m0;
import com.google.common.collect.l;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Random;
/* compiled from: BaseUrlExclusionList.java */
/* loaded from: classes8.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, Long> f60455a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<Integer, Long> f60456b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<List<Pair<String, Integer>>, kn.b> f60457c;

    /* renamed from: d  reason: collision with root package name */
    private final Random f60458d;

    public b() {
        this(new Random());
    }

    private static <T> void b(T t10, long j10, Map<T, Long> map) {
        if (map.containsKey(t10)) {
            j10 = Math.max(j10, ((Long) m0.i(map.get(t10))).longValue());
        }
        map.put(t10, Long.valueOf(j10));
    }

    private List<kn.b> c(List<kn.b> list) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        h(elapsedRealtime, this.f60455a);
        h(elapsedRealtime, this.f60456b);
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            kn.b bVar = list.get(i10);
            if (!this.f60455a.containsKey(bVar.f60802b) && !this.f60456b.containsKey(Integer.valueOf(bVar.f60803c))) {
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int d(kn.b bVar, kn.b bVar2) {
        int compare = Integer.compare(bVar.f60803c, bVar2.f60803c);
        if (compare == 0) {
            return bVar.f60802b.compareTo(bVar2.f60802b);
        }
        return compare;
    }

    public static int f(List<kn.b> list) {
        HashSet hashSet = new HashSet();
        for (int i10 = 0; i10 < list.size(); i10++) {
            hashSet.add(Integer.valueOf(list.get(i10).f60803c));
        }
        return hashSet.size();
    }

    private static <T> void h(long j10, Map<T, Long> map) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<T, Long> entry : map.entrySet()) {
            if (entry.getValue().longValue() <= j10) {
                arrayList.add(entry.getKey());
            }
        }
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            map.remove(arrayList.get(i10));
        }
    }

    private kn.b k(List<kn.b> list) {
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            i10 += list.get(i11).f60804d;
        }
        int nextInt = this.f60458d.nextInt(i10);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            kn.b bVar = list.get(i13);
            i12 += bVar.f60804d;
            if (nextInt < i12) {
                return bVar;
            }
        }
        return (kn.b) l.d(list);
    }

    public void e(kn.b bVar, long j10) {
        long elapsedRealtime = SystemClock.elapsedRealtime() + j10;
        b(bVar.f60802b, elapsedRealtime, this.f60455a);
        int i10 = bVar.f60803c;
        if (i10 != Integer.MIN_VALUE) {
            b(Integer.valueOf(i10), elapsedRealtime, this.f60456b);
        }
    }

    public int g(List<kn.b> list) {
        HashSet hashSet = new HashSet();
        List<kn.b> c10 = c(list);
        for (int i10 = 0; i10 < c10.size(); i10++) {
            hashSet.add(Integer.valueOf(c10.get(i10).f60803c));
        }
        return hashSet.size();
    }

    public void i() {
        this.f60455a.clear();
        this.f60456b.clear();
        this.f60457c.clear();
    }

    @Nullable
    public kn.b j(List<kn.b> list) {
        List<kn.b> c10 = c(list);
        if (c10.size() < 2) {
            return (kn.b) l.c(c10, null);
        }
        Collections.sort(c10, new Comparator() { // from class: jn.a
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int d10;
                d10 = b.d((kn.b) obj, (kn.b) obj2);
                return d10;
            }
        });
        ArrayList arrayList = new ArrayList();
        int i10 = c10.get(0).f60803c;
        int i11 = 0;
        while (true) {
            if (i11 >= c10.size()) {
                break;
            }
            kn.b bVar = c10.get(i11);
            if (i10 != bVar.f60803c) {
                if (arrayList.size() == 1) {
                    return c10.get(0);
                }
            } else {
                arrayList.add(new Pair(bVar.f60802b, Integer.valueOf(bVar.f60804d)));
                i11++;
            }
        }
        kn.b bVar2 = this.f60457c.get(arrayList);
        if (bVar2 == null) {
            kn.b k10 = k(c10.subList(0, arrayList.size()));
            this.f60457c.put(arrayList, k10);
            return k10;
        }
        return bVar2;
    }

    @VisibleForTesting
    b(Random random) {
        this.f60457c = new HashMap();
        this.f60458d = random;
        this.f60455a = new HashMap();
        this.f60456b = new HashMap();
    }
}
