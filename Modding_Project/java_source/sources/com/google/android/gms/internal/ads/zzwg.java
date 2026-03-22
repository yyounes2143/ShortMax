package com.google.android.gms.internal.ads;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.util.Map;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzwg implements zzzv, zzuw {
    final /* synthetic */ zzwl zza;
    private final long zzb;
    private final Uri zzc;
    private final zzhi zzd;
    private final zzwa zze;
    private final zzady zzf;
    private final zzdm zzg;
    private final zzaer zzh;
    private volatile boolean zzi;
    private boolean zzj;
    private long zzk;
    private zzgo zzl;
    @Nullable
    private zzafb zzm;
    private boolean zzn;

    public zzwg(zzwl zzwlVar, Uri uri, zzgj zzgjVar, zzwa zzwaVar, zzady zzadyVar, zzdm zzdmVar) {
        Objects.requireNonNull(zzwlVar);
        this.zza = zzwlVar;
        this.zzc = uri;
        this.zzd = new zzhi(zzgjVar);
        this.zze = zzwaVar;
        this.zzf = zzadyVar;
        this.zzg = zzdmVar;
        this.zzh = new zzaer();
        this.zzj = true;
        this.zzb = zzuy.zza();
        this.zzl = zzi(0L);
    }

    public static /* bridge */ /* synthetic */ void zzf(zzwg zzwgVar, long j10, long j11) {
        zzwgVar.zzh.zza = j10;
        zzwgVar.zzk = j11;
        zzwgVar.zzj = true;
        zzwgVar.zzn = false;
    }

    private final zzgo zzi(long j10) {
        Map map;
        zzgm zzgmVar = new zzgm();
        zzgmVar.zzd(this.zzc);
        zzgmVar.zzc(j10);
        zzgmVar.zza(6);
        map = zzwl.zzb;
        zzgmVar.zzb(map);
        return zzgmVar.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzuw
    public final void zza(zzen zzenVar) {
        long zzS;
        long max;
        if (this.zzn) {
            zzS = this.zza.zzS(true);
            max = Math.max(zzS, this.zzk);
        } else {
            max = this.zzk;
        }
        long j10 = max;
        int zza = zzenVar.zza();
        zzafb zzafbVar = this.zzm;
        zzafbVar.getClass();
        zzafbVar.zzr(zzenVar, zza);
        zzafbVar.zzt(j10, 1, zza, 0, null);
        this.zzn = true;
    }

    @Override // com.google.android.gms.internal.ads.zzzv
    public final void zzg() {
        this.zzi = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:177:0x00a0 A[Catch: all -> 0x0043, TryCatch #1 {all -> 0x0043, blocks: (B:149:0x000b, B:159:0x003c, B:163:0x0047, B:166:0x005a, B:167:0x0060, B:175:0x0095, B:177:0x00a0, B:179:0x00ac, B:181:0x00b6, B:183:0x00c2, B:185:0x00cc, B:187:0x00d8, B:189:0x00e2, B:191:0x00f4, B:193:0x00fe, B:194:0x0104, B:202:0x0133, B:203:0x013a, B:205:0x0147, B:207:0x014f, B:209:0x016a, B:197:0x010e, B:200:0x0124, B:171:0x006c, B:174:0x0085), top: B:260:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:178:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x00b6 A[Catch: all -> 0x0043, TryCatch #1 {all -> 0x0043, blocks: (B:149:0x000b, B:159:0x003c, B:163:0x0047, B:166:0x005a, B:167:0x0060, B:175:0x0095, B:177:0x00a0, B:179:0x00ac, B:181:0x00b6, B:183:0x00c2, B:185:0x00cc, B:187:0x00d8, B:189:0x00e2, B:191:0x00f4, B:193:0x00fe, B:194:0x0104, B:202:0x0133, B:203:0x013a, B:205:0x0147, B:207:0x014f, B:209:0x016a, B:197:0x010e, B:200:0x0124, B:171:0x006c, B:174:0x0085), top: B:260:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:182:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x00cc A[Catch: all -> 0x0043, TryCatch #1 {all -> 0x0043, blocks: (B:149:0x000b, B:159:0x003c, B:163:0x0047, B:166:0x005a, B:167:0x0060, B:175:0x0095, B:177:0x00a0, B:179:0x00ac, B:181:0x00b6, B:183:0x00c2, B:185:0x00cc, B:187:0x00d8, B:189:0x00e2, B:191:0x00f4, B:193:0x00fe, B:194:0x0104, B:202:0x0133, B:203:0x013a, B:205:0x0147, B:207:0x014f, B:209:0x016a, B:197:0x010e, B:200:0x0124, B:171:0x006c, B:174:0x0085), top: B:260:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:186:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x00e2 A[Catch: all -> 0x0043, TryCatch #1 {all -> 0x0043, blocks: (B:149:0x000b, B:159:0x003c, B:163:0x0047, B:166:0x005a, B:167:0x0060, B:175:0x0095, B:177:0x00a0, B:179:0x00ac, B:181:0x00b6, B:183:0x00c2, B:185:0x00cc, B:187:0x00d8, B:189:0x00e2, B:191:0x00f4, B:193:0x00fe, B:194:0x0104, B:202:0x0133, B:203:0x013a, B:205:0x0147, B:207:0x014f, B:209:0x016a, B:197:0x010e, B:200:0x0124, B:171:0x006c, B:174:0x0085), top: B:260:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:190:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x00fe A[Catch: all -> 0x0043, TRY_LEAVE, TryCatch #1 {all -> 0x0043, blocks: (B:149:0x000b, B:159:0x003c, B:163:0x0047, B:166:0x005a, B:167:0x0060, B:175:0x0095, B:177:0x00a0, B:179:0x00ac, B:181:0x00b6, B:183:0x00c2, B:185:0x00cc, B:187:0x00d8, B:189:0x00e2, B:191:0x00f4, B:193:0x00fe, B:194:0x0104, B:202:0x0133, B:203:0x013a, B:205:0x0147, B:207:0x014f, B:209:0x016a, B:197:0x010e, B:200:0x0124, B:171:0x006c, B:174:0x0085), top: B:260:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0133 A[Catch: all -> 0x0043, TryCatch #1 {all -> 0x0043, blocks: (B:149:0x000b, B:159:0x003c, B:163:0x0047, B:166:0x005a, B:167:0x0060, B:175:0x0095, B:177:0x00a0, B:179:0x00ac, B:181:0x00b6, B:183:0x00c2, B:185:0x00cc, B:187:0x00d8, B:189:0x00e2, B:191:0x00f4, B:193:0x00fe, B:194:0x0104, B:202:0x0133, B:203:0x013a, B:205:0x0147, B:207:0x014f, B:209:0x016a, B:197:0x010e, B:200:0x0124, B:171:0x006c, B:174:0x0085), top: B:260:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0147 A[Catch: all -> 0x0043, TryCatch #1 {all -> 0x0043, blocks: (B:149:0x000b, B:159:0x003c, B:163:0x0047, B:166:0x005a, B:167:0x0060, B:175:0x0095, B:177:0x00a0, B:179:0x00ac, B:181:0x00b6, B:183:0x00c2, B:185:0x00cc, B:187:0x00d8, B:189:0x00e2, B:191:0x00f4, B:193:0x00fe, B:194:0x0104, B:202:0x0133, B:203:0x013a, B:205:0x0147, B:207:0x014f, B:209:0x016a, B:197:0x010e, B:200:0x0124, B:171:0x006c, B:174:0x0085), top: B:260:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:213:0x0185 A[Catch: all -> 0x0189, TryCatch #6 {all -> 0x0189, blocks: (B:211:0x017c, B:213:0x0185, B:216:0x018d, B:218:0x0191), top: B:270:0x017c }] */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0191 A[Catch: all -> 0x0189, TRY_LEAVE, TryCatch #6 {all -> 0x0189, blocks: (B:211:0x017c, B:213:0x0185, B:216:0x018d, B:218:0x0191), top: B:270:0x017c }] */
    /* JADX WARN: Removed duplicated region for block: B:224:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x01fb  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x01a2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:278:0x0215 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:279:0x01d9 A[EDGE_INSN: B:279:0x01d9->B:238:0x01d9 ?: BREAK  , SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzzv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzh() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 534
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzwg.zzh():void");
    }
}
