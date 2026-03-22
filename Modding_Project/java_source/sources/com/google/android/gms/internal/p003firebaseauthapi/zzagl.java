package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.NonNull;
import androidx.collection.ArrayMap;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.google.firebase.f;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzagl  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzagl {
    private static final Map<String, zzagk> zza = new ArrayMap();
    private static final Map<String, List<WeakReference<zzagn>>> zzb = new ArrayMap();

    private static String zza(String str, int i10, boolean z10) {
        if (z10) {
            return "http://[" + str + "]:" + i10 + DomExceptionUtils.SEPARATOR;
        }
        return "http://" + str + ":" + i10 + DomExceptionUtils.SEPARATOR;
    }

    @NonNull
    public static String zzb(String str) {
        zzagk zzagkVar;
        String str2;
        Map<String, zzagk> map = zza;
        synchronized (map) {
            zzagkVar = map.get(str);
        }
        if (zzagkVar != null) {
            str2 = "" + zza(zzagkVar.zzb(), zzagkVar.zza(), zzagkVar.zzb().contains(":"));
        } else {
            str2 = "https://";
        }
        return str2 + "www.googleapis.com/identitytoolkit/v3/relyingparty";
    }

    @NonNull
    public static String zzc(String str) {
        zzagk zzagkVar;
        String str2;
        Map<String, zzagk> map = zza;
        synchronized (map) {
            zzagkVar = map.get(str);
        }
        if (zzagkVar != null) {
            str2 = "" + zza(zzagkVar.zzb(), zzagkVar.zza(), zzagkVar.zzb().contains(":"));
        } else {
            str2 = "https://";
        }
        return str2 + "identitytoolkit.googleapis.com/v2";
    }

    @NonNull
    public static String zzd(String str) {
        zzagk zzagkVar;
        String str2;
        Map<String, zzagk> map = zza;
        synchronized (map) {
            zzagkVar = map.get(str);
        }
        if (zzagkVar != null) {
            str2 = "" + zza(zzagkVar.zzb(), zzagkVar.zza(), zzagkVar.zzb().contains(":"));
        } else {
            str2 = "https://";
        }
        return str2 + "securetoken.googleapis.com/v1";
    }

    @NonNull
    public static String zza(String str) {
        zzagk zzagkVar;
        Map<String, zzagk> map = zza;
        synchronized (map) {
            zzagkVar = map.get(str);
        }
        if (zzagkVar != null) {
            String zza2 = zza(zzagkVar.zzb(), zzagkVar.zza(), zzagkVar.zzb().contains(":"));
            return zza2 + "emulator/auth/handler";
        }
        throw new IllegalStateException("Tried to get the emulator widget endpoint, but no emulator endpoint overrides found.");
    }

    public static void zza(String str, zzagn zzagnVar) {
        Map<String, List<WeakReference<zzagn>>> map = zzb;
        synchronized (map) {
            try {
                if (map.containsKey(str)) {
                    map.get(str).add(new WeakReference<>(zzagnVar));
                } else {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(new WeakReference<>(zzagnVar));
                    map.put(str, arrayList);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void zza(@NonNull f fVar, @NonNull String str, int i10) {
        String b10 = fVar.p().b();
        Map<String, zzagk> map = zza;
        synchronized (map) {
            map.put(b10, new zzagk(str, i10));
        }
        Map<String, List<WeakReference<zzagn>>> map2 = zzb;
        synchronized (map2) {
            try {
                if (map2.containsKey(b10)) {
                    boolean z10 = false;
                    for (WeakReference<zzagn> weakReference : map2.get(b10)) {
                        zzagn zzagnVar = weakReference.get();
                        if (zzagnVar != null) {
                            zzagnVar.zza();
                            z10 = true;
                        }
                    }
                    if (!z10) {
                        zza.remove(b10);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static boolean zza(@NonNull f fVar) {
        return zza.containsKey(fVar.p().b());
    }
}
