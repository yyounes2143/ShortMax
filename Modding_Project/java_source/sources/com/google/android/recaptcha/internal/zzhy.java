package com.google.android.recaptcha.internal;

import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.n;
import org.jetbrains.annotations.NotNull;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzhy {
    @NotNull
    private List zza = CollectionsKt.n();

    public final long zza(@NotNull long[] jArr) {
        Iterator it = CollectionsKt.K0(this.zza, n.w1(jArr)).iterator();
        if (it.hasNext()) {
            Object next = it.next();
            while (it.hasNext()) {
                next = Long.valueOf(((Number) next).longValue() ^ ((Number) it.next()).longValue());
            }
            return ((Number) next).longValue();
        }
        throw new UnsupportedOperationException("Empty collection can't be reduced.");
    }

    public final void zzb(@NotNull long[] jArr) {
        this.zza = n.w1(jArr);
    }
}
