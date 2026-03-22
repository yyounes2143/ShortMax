package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfza {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object zza(Iterator it) {
        if (it.hasNext()) {
            Object next = it.next();
            it.remove();
            return next;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzb(Iterator it) {
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }
}
