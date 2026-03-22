package com.google.android.gms.internal.ads;

import java.util.Collection;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfxp {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zza(Collection collection, Object obj) {
        collection.getClass();
        try {
            return collection.contains(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }
}
