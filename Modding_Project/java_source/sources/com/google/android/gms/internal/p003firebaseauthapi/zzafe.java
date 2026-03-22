package com.google.android.gms.internal.p003firebaseauthapi;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.f;
import java.net.URLConnection;
import java.util.concurrent.ExecutionException;
import p7.d;
import s7.b;
import u8.h;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzafe  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzafe {
    private Context zza;
    private zzafx zzb;
    private String zzc;
    private final f zzd;
    private boolean zze;
    private String zzf;

    public zzafe(f fVar, String str) {
        this(fVar.l(), fVar, str);
    }

    @Nullable
    private static String zza(f fVar) {
        b bVar = FirebaseAuth.getInstance(fVar).J().get();
        if (bVar == null) {
            return null;
        }
        try {
            d dVar = (d) Tasks.await(bVar.a(false));
            if (dVar.a() != null) {
                String valueOf = String.valueOf(dVar.a());
                Log.w("LocalRequestInterceptor", "Error getting App Check token; using placeholder token instead. Error: " + valueOf);
            }
            return dVar.b();
        } catch (InterruptedException e10) {
            e = e10;
            String message = e.getMessage();
            Log.e("LocalRequestInterceptor", "Unexpected error getting App Check token: " + message);
            return null;
        } catch (ExecutionException e11) {
            e = e11;
            String message2 = e.getMessage();
            Log.e("LocalRequestInterceptor", "Unexpected error getting App Check token: " + message2);
            return null;
        }
    }

    @Nullable
    private static String zzb(f fVar) {
        h hVar = FirebaseAuth.getInstance(fVar).L().get();
        if (hVar != null) {
            try {
                return (String) Tasks.await(hVar.b());
            } catch (InterruptedException | ExecutionException e10) {
                String message = e10.getMessage();
                Log.w("LocalRequestInterceptor", "Unable to get heartbeats: " + message);
            }
        }
        return null;
    }

    public zzafe(Context context, f fVar, String str) {
        this.zze = false;
        this.zza = (Context) Preconditions.checkNotNull(context);
        this.zzd = (f) Preconditions.checkNotNull(fVar);
        this.zzc = String.format("Android/%s/%s", "Fallback", str);
    }

    public final void zzb(String str) {
        this.zzf = str;
    }

    public final void zza(URLConnection uRLConnection) {
        String str;
        if (this.zze) {
            str = this.zzc + "/FirebaseUI-Android";
        } else {
            str = this.zzc + "/FirebaseCore-Android";
        }
        if (this.zzb == null) {
            this.zzb = new zzafx(this.zza);
        }
        uRLConnection.setRequestProperty("X-Android-Package", this.zzb.zzb());
        uRLConnection.setRequestProperty("X-Android-Cert", this.zzb.zza());
        uRLConnection.setRequestProperty("Accept-Language", zzafd.zza());
        uRLConnection.setRequestProperty("X-Client-Version", str);
        uRLConnection.setRequestProperty("X-Firebase-Locale", this.zzf);
        uRLConnection.setRequestProperty("X-Firebase-GMPID", this.zzd.p().c());
        uRLConnection.setRequestProperty("X-Firebase-Client", zzb(this.zzd));
        String zza = zza(this.zzd);
        if (!TextUtils.isEmpty(zza)) {
            uRLConnection.setRequestProperty("X-Firebase-AppCheck", zza);
        }
        this.zzf = null;
    }

    public final void zza(String str) {
        this.zze = !TextUtils.isEmpty(str);
    }
}
