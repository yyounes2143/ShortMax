package com.google.android.gms.internal.p003firebaseauthapi;

import android.app.Activity;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.util.DefaultClock;
import com.google.firebase.auth.PhoneAuthProvider;
import com.unity3d.services.UnityAdsConstants;
import java.util.Map;
import java.util.concurrent.Executor;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzagb  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzagb {
    private static final Map<String, zzagd> zza = new ArrayMap();

    public static PhoneAuthProvider.a zza(String str, PhoneAuthProvider.a aVar, @Nullable zzaff zzaffVar) {
        zza(str, zzaffVar);
        return new zzaga(aVar, str);
    }

    public static void zza() {
        zza.clear();
    }

    private static void zza(String str, @Nullable zzaff zzaffVar) {
        zza.put(str, new zzagd(zzaffVar, DefaultClock.getInstance().currentTimeMillis()));
    }

    public static boolean zza(String str, PhoneAuthProvider.a aVar, @Nullable Activity activity, Executor executor) {
        Map<String, zzagd> map = zza;
        if (map.containsKey(str)) {
            zzagd zzagdVar = map.get(str);
            if (DefaultClock.getInstance().currentTimeMillis() - zzagdVar.zzb < UnityAdsConstants.Timeout.INIT_TIMEOUT_MS) {
                zzaff zzaffVar = zzagdVar.zza;
                if (zzaffVar != null) {
                    zzaffVar.zza(aVar, activity, executor, str);
                    return true;
                }
                return true;
            }
            zza(str, null);
            return false;
        }
        zza(str, null);
        return false;
    }
}
