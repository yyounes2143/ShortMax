package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.Nullable;
import com.google.android.gms.common.util.Strings;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaiw  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzaiw {
    private List<String> zza;

    public zzaiw() {
        this(null);
    }

    public static zzaiw zza() {
        return new zzaiw(null);
    }

    public final List<String> zzb() {
        return this.zza;
    }

    private zzaiw(@Nullable List<String> list) {
        this.zza = new ArrayList();
    }

    public zzaiw(int i10, List<String> list) {
        if (list != null && !list.isEmpty()) {
            for (int i11 = 0; i11 < list.size(); i11++) {
                list.set(i11, Strings.emptyToNull(list.get(i11)));
            }
            this.zza = Collections.unmodifiableList(list);
            return;
        }
        this.zza = Collections.emptyList();
    }
}
