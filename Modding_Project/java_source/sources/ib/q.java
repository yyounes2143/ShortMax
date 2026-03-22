package ib;

import java.util.Collection;
/* compiled from: CollectionUtil.java */
/* loaded from: classes5.dex */
public class q {
    public static Boolean a(Collection collection) {
        if (collection != null && collection.size() != 0) {
            return Boolean.FALSE;
        }
        return Boolean.TRUE;
    }

    public static Boolean b(Collection collection) {
        return Boolean.valueOf(!a(collection).booleanValue());
    }
}
