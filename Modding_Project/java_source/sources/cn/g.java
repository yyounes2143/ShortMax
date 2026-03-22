package cn;

import android.os.Bundle;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* compiled from: BundleCollectionUtil.java */
/* loaded from: classes8.dex */
public final class g {
    public static <T> ImmutableList<T> a(h7.e<Bundle, T> eVar, List<Bundle> list) {
        ImmutableList.a r10 = ImmutableList.r();
        for (int i10 = 0; i10 < list.size(); i10++) {
            r10.a(eVar.apply((Bundle) a.e(list.get(i10))));
        }
        return r10.k();
    }

    public static <T> ArrayList<Bundle> b(Collection<T> collection, h7.e<T, Bundle> eVar) {
        ArrayList<Bundle> arrayList = new ArrayList<>(collection.size());
        for (T t10 : collection) {
            arrayList.add(eVar.apply(t10));
        }
        return arrayList;
    }
}
