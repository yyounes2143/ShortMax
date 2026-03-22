package com.google.android.gms.internal.p003firebaseauthapi;

import java.util.Iterator;
import java.util.Set;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzav  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzav {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(Set<?> set) {
        Iterator<?> it = set.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i10 = ~(~(i10 + (next != null ? next.hashCode() : 0)));
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zza(Set<?> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }
}
