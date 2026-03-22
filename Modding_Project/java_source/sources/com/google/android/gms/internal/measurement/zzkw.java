package com.google.android.gms.internal.measurement;
/* compiled from: com.google.android.gms:play-services-measurement-base@@23.0.0 */
/* loaded from: classes5.dex */
final class zzkw {
    public int zza;
    public long zzb;
    public Object zzc;
    public final zzlr zzd;
    public int zze;

    zzkw() {
        int i10 = zzlr.zzb;
        int i11 = zznu.zza;
        this.zzd = zzlr.zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String zza(int i10, int i11, byte b10, String str, String str2) {
        StringBuilder sb2 = new StringBuilder(String.valueOf(i11).length() + b10 + String.valueOf(i10).length());
        sb2.append(str);
        sb2.append(i11);
        sb2.append(str2);
        sb2.append(i10);
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzkw(zzlr zzlrVar) {
        zzlrVar.getClass();
        this.zzd = zzlrVar;
    }
}
