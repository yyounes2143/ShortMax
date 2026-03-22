package ib;

import java.util.HashSet;
import java.util.Set;
/* compiled from: HiAnalyticsUtil.java */
/* loaded from: classes5.dex */
public class s {

    /* renamed from: a  reason: collision with root package name */
    private static final Set<Integer> f53386a;

    static {
        HashSet hashSet = new HashSet();
        f53386a = hashSet;
        hashSet.add(0);
    }

    public static int a(int i10) {
        if (f53386a.contains(Integer.valueOf(i10))) {
            return 0;
        }
        return 1;
    }
}
