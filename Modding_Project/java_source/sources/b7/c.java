package b7;

import android.os.Bundle;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.g;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* compiled from: BundleableUtil.java */
/* loaded from: classes4.dex */
public final class c {
    private c() {
    }

    public static void a(@Nullable Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader((ClassLoader) s0.j(c.class.getClassLoader()));
        }
    }

    public static <T extends com.google.android.exoplayer2.g> ImmutableList<T> b(g.a<T> aVar, List<Bundle> list) {
        ImmutableList.a r10 = ImmutableList.r();
        for (int i10 = 0; i10 < list.size(); i10++) {
            r10.a(aVar.fromBundle((Bundle) a.e(list.get(i10))));
        }
        return r10.k();
    }

    public static <T extends com.google.android.exoplayer2.g> SparseArray<T> c(g.a<T> aVar, SparseArray<Bundle> sparseArray) {
        SparseArray<T> sparseArray2 = new SparseArray<>(sparseArray.size());
        for (int i10 = 0; i10 < sparseArray.size(); i10++) {
            sparseArray2.put(sparseArray.keyAt(i10), aVar.fromBundle(sparseArray.valueAt(i10)));
        }
        return sparseArray2;
    }

    public static <T extends com.google.android.exoplayer2.g> ArrayList<Bundle> d(Collection<T> collection) {
        ArrayList<Bundle> arrayList = new ArrayList<>(collection.size());
        for (T t10 : collection) {
            arrayList.add(t10.toBundle());
        }
        return arrayList;
    }

    public static <T extends com.google.android.exoplayer2.g> SparseArray<Bundle> e(SparseArray<T> sparseArray) {
        SparseArray<Bundle> sparseArray2 = new SparseArray<>(sparseArray.size());
        for (int i10 = 0; i10 < sparseArray.size(); i10++) {
            sparseArray2.put(sparseArray.keyAt(i10), sparseArray.valueAt(i10).toBundle());
        }
        return sparseArray2;
    }
}
