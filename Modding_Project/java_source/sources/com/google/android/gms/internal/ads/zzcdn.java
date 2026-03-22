package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Releasable;
import java.lang.ref.WeakReference;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzcdn implements Releasable {
    protected final Context zza;
    protected final String zzb;
    protected final WeakReference zzc;

    public zzcdn(zzccb zzccbVar) {
        Context context = zzccbVar.getContext();
        this.zza = context;
        this.zzb = com.google.android.gms.ads.internal.zzv.zzr().zzc(context, zzccbVar.zzm().afmaVersion);
        this.zzc = new WeakReference(zzccbVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void zze(zzcdn zzcdnVar, String str, Map map) {
        zzccb zzccbVar = (zzccb) zzcdnVar.zzc.get();
        if (zzccbVar != null) {
            zzccbVar.zzd("onPrecacheEvent", map);
        }
    }

    public abstract void zzf();

    public final void zzg(String str, @Nullable String str2, String str3, @Nullable String str4) {
        com.google.android.gms.ads.internal.util.client.zzf.zza.post(new zzcdm(this, str, str2, str3, str4));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzh(String str, String str2, int i10) {
        com.google.android.gms.ads.internal.util.client.zzf.zza.post(new zzcdk(this, str, str2, i10));
    }

    public final void zzj(String str, String str2, long j10) {
        com.google.android.gms.ads.internal.util.client.zzf.zza.post(new zzcdl(this, str, str2, j10));
    }

    public final void zzn(String str, String str2, int i10, int i11, long j10, long j11, boolean z10, int i12, int i13) {
        com.google.android.gms.ads.internal.util.client.zzf.zza.post(new zzcdj(this, str, str2, i10, i11, j10, j11, z10, i12, i13));
    }

    public final void zzo(String str, String str2, long j10, long j11, boolean z10, long j12, long j13, long j14, int i10, int i11) {
        com.google.android.gms.ads.internal.util.client.zzf.zza.post(new zzcdi(this, str, str2, j10, j11, j12, j13, j14, z10, i10, i11));
    }

    public abstract boolean zzt(String str);

    public boolean zzu(String str, String[] strArr) {
        return zzt(str);
    }

    public boolean zzw(String str, String[] strArr, zzcdf zzcdfVar) {
        return zzt(str);
    }

    @Override // com.google.android.gms.common.api.Releasable
    public void release() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzp(int i10) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzq(int i10) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzr(int i10) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzs(int i10) {
    }
}
