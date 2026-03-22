package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final /* synthetic */ class zzfdr {
    public static /* synthetic */ boolean zza(AtomicReference atomicReference, Object obj, Object obj2) {
        while (!androidx.compose.animation.core.a.a(atomicReference, null, obj2)) {
            if (atomicReference.get() != null) {
                return false;
            }
        }
        return true;
    }
}
