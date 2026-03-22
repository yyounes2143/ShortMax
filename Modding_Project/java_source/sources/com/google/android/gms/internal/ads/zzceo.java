package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.ss.texturerender.TextureRenderKeys;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzceo extends zzcbs implements zzhj, zzmr {
    public static final /* synthetic */ int zza = 0;
    private final Context zzb;
    private final zzcdz zzc;
    private final zzyu zzd;
    private final zzcca zze;
    private final WeakReference zzf;
    private final zzwo zzg;
    @Nullable
    private zziy zzh;
    private ByteBuffer zzi;
    private boolean zzj;
    private zzcbr zzk;
    private int zzl;
    private int zzm;
    private long zzn;
    private final String zzo;
    private final int zzp;
    @Nullable
    private Integer zzr;
    private final ArrayList zzs;
    @Nullable
    private volatile zzceb zzt;
    private final Object zzq = new Object();
    private final Set zzu = new HashSet();

    /* JADX WARN: Code restructure failed: missing block: B:68:0x00e3, code lost:
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(com.google.android.gms.internal.ads.zzbde.zzcc)).booleanValue() == false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00e6, code lost:
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00ea, code lost:
        if (r5.zzi == false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x00ef, code lost:
        if (r5.zzl == false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00f1, code lost:
        r6 = new com.google.android.gms.internal.ads.zzcef();
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00f9, code lost:
        if (r5.zzh <= 0) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x00fb, code lost:
        r6 = new com.google.android.gms.internal.ads.zzceg();
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0101, code lost:
        r6 = new com.google.android.gms.internal.ads.zzceh();
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0108, code lost:
        if (r5.zzi == false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x010a, code lost:
        r5 = new com.google.android.gms.internal.ads.zzcei();
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0111, code lost:
        r5 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0112, code lost:
        r4 = r3.zzi;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0114, code lost:
        if (r4 == null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x011a, code lost:
        if (r4.limit() <= 0) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x011c, code lost:
        r4 = new byte[r3.zzi.limit()];
        r3.zzi.get(r4);
        r5 = new com.google.android.gms.internal.ads.zzcej();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzceo(android.content.Context r4, com.google.android.gms.internal.ads.zzcca r5, com.google.android.gms.internal.ads.zzccb r6, @androidx.annotation.Nullable java.lang.Integer r7) {
        /*
            Method dump skipped, instructions count: 343
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzceo.<init>(android.content.Context, com.google.android.gms.internal.ads.zzcca, com.google.android.gms.internal.ads.zzccb, java.lang.Integer):void");
    }

    public static /* synthetic */ zzgj zzW(zzceo zzceoVar, String str, boolean z10) {
        zzceo zzceoVar2;
        if (true != z10) {
            zzceoVar2 = null;
        } else {
            zzceoVar2 = zzceoVar;
        }
        zzcca zzccaVar = zzceoVar.zze;
        return new zzcer(str, zzceoVar2, zzccaVar.zzd, zzccaVar.zze, zzccaVar.zzm, zzccaVar.zzn);
    }

    public static /* synthetic */ zzgj zzX(zzceo zzceoVar, String str, boolean z10) {
        zzceo zzceoVar2;
        if (true != z10) {
            zzceoVar2 = null;
        } else {
            zzceoVar2 = zzceoVar;
        }
        zzcca zzccaVar = zzceoVar.zze;
        zzcdy zzcdyVar = new zzcdy(str, zzceoVar2, zzccaVar.zzd, zzccaVar.zze, zzccaVar.zzh);
        zzceoVar.zzu.add(new WeakReference(zzcdyVar));
        return zzcdyVar;
    }

    public static /* synthetic */ zzgj zzY(zzceo zzceoVar, String str, boolean z10) {
        zzceo zzceoVar2;
        zzgr zzgrVar = new zzgr();
        zzgrVar.zzf(str);
        if (true != z10) {
            zzceoVar2 = null;
        } else {
            zzceoVar2 = zzceoVar;
        }
        zzgrVar.zze(zzceoVar2);
        zzcca zzccaVar = zzceoVar.zze;
        zzgrVar.zzc(zzccaVar.zzd);
        zzgrVar.zzd(zzccaVar.zze);
        zzgrVar.zzb(true);
        return zzgrVar.zza();
    }

    public static /* synthetic */ zzgj zzZ(zzceo zzceoVar, zzgi zzgiVar) {
        zzgj zza2 = zzgiVar.zza();
        zzcel zzcelVar = new zzcel(zzceoVar);
        return new zzceb(zzceoVar.zzb, zza2, zzceoVar.zzo, zzceoVar.zzp, zzceoVar, zzcelVar);
    }

    public static /* synthetic */ void zzab(zzceo zzceoVar, boolean z10, long j10) {
        zzcbr zzcbrVar = zzceoVar.zzk;
        if (zzcbrVar != null) {
            zzcbrVar.zzi(z10, j10);
        }
    }

    public static /* synthetic */ zzma[] zzac(zzceo zzceoVar, Handler handler, zzacj zzacjVar, zzqh zzqhVar, zzxn zzxnVar, zzuf zzufVar) {
        zztr zztrVar = zztr.zza;
        Context context = zzceoVar.zzb;
        zzru zzruVar = new zzru(context, new zzsx(context, null, null), zztrVar, false, handler, zzqhVar, new zzrc(context).zzc());
        zzaay zzaayVar = new zzaay(context);
        zzaayVar.zzg(zztrVar);
        zzaayVar.zze(handler);
        zzaayVar.zzf(zzacjVar);
        return new zzma[]{zzruVar, zzaayVar.zzh()};
    }

    private final boolean zzad() {
        if (this.zzt != null && this.zzt.zzq()) {
            return true;
        }
        return false;
    }

    public final void finalize() {
        zzcbs.zzD().decrementAndGet();
        if (com.google.android.gms.ads.internal.util.zze.zzc()) {
            com.google.android.gms.ads.internal.util.zze.zza("SimpleExoPlayerAdapter finalize ".concat(toString()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final long zzA() {
        if (!zzad()) {
            return this.zzl;
        }
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final long zzB() {
        if (!zzad()) {
            synchronized (this.zzq) {
                while (true) {
                    ArrayList arrayList = this.zzs;
                    if (!arrayList.isEmpty()) {
                        long j10 = this.zzn;
                        Map zze = ((zzhe) arrayList.remove(0)).zze();
                        long j11 = 0;
                        if (zze != null) {
                            Iterator it = zze.entrySet().iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    break;
                                }
                                Map.Entry entry = (Map.Entry) it.next();
                                if (entry != null) {
                                    try {
                                        if (entry.getKey() != null && zzfuv.zzc("content-length", (CharSequence) entry.getKey()) && entry.getValue() != null && ((List) entry.getValue()).get(0) != null) {
                                            j11 = Long.parseLong((String) ((List) entry.getValue()).get(0));
                                            break;
                                        }
                                    } catch (NumberFormatException unused) {
                                        continue;
                                    }
                                }
                            }
                        }
                        this.zzn = j10 + j11;
                    }
                }
            }
            return this.zzn;
        }
        return this.zzt.zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    @Nullable
    public final Integer zzC() {
        return this.zzr;
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzF(Uri[] uriArr, String str) {
        zzG(uriArr, str, ByteBuffer.allocate(0), false);
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzG(Uri[] uriArr, String str, ByteBuffer byteBuffer, boolean z10) {
        zzvj zzvzVar;
        if (this.zzh != null) {
            this.zzi = byteBuffer;
            this.zzj = z10;
            int length = uriArr.length;
            if (length == 1) {
                zzvzVar = zzaa(uriArr[0]);
            } else {
                zzvj[] zzvjVarArr = new zzvj[length];
                for (int i10 = 0; i10 < uriArr.length; i10++) {
                    zzvjVarArr[i10] = zzaa(uriArr[i10]);
                }
                zzvzVar = new zzvz(false, false, new zzus(), zzvjVarArr);
            }
            this.zzh.zzC(zzvzVar);
            this.zzh.zzq();
            zzcbs.zzE().incrementAndGet();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzH() {
        zziy zziyVar = this.zzh;
        if (zziyVar != null) {
            zziyVar.zzB(this);
            this.zzh.zzA();
            this.zzh = null;
            zzcbs.zzE().decrementAndGet();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzI(long j10) {
        this.zzh.zza(j10);
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzJ(int i10) {
        this.zzc.zzl(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzK(int i10) {
        this.zzc.zzm(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzL(zzcbr zzcbrVar) {
        this.zzk = zzcbrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzM(int i10) {
        this.zzc.zzn(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzN(int i10) {
        this.zzc.zzo(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzO(boolean z10) {
        this.zzh.zzr(z10);
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzP(@Nullable Integer num) {
        this.zzr = num;
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzQ(boolean z10) {
        if (this.zzh != null) {
            int i10 = 0;
            while (true) {
                this.zzh.zzy();
                if (i10 < 2) {
                    zzyu zzyuVar = this.zzd;
                    zzyh zzc = zzyuVar.zzf().zzc();
                    zzc.zzx(i10, !z10);
                    zzyuVar.zzl(zzc);
                    i10++;
                } else {
                    return;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzR(int i10) {
        for (WeakReference weakReference : this.zzu) {
            zzcdy zzcdyVar = (zzcdy) weakReference.get();
            if (zzcdyVar != null) {
                zzcdyVar.zzm(i10);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzS(Surface surface, boolean z10) {
        zziy zziyVar = this.zzh;
        if (zziyVar != null) {
            zziyVar.zzs(surface);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzT(float f10, boolean z10) {
        zziy zziyVar = this.zzh;
        if (zziyVar != null) {
            zziyVar.zzt(f10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzU() {
        this.zzh.zzu();
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final boolean zzV() {
        if (this.zzh != null) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzhj
    public final void zza(zzgj zzgjVar, zzgo zzgoVar, boolean z10, int i10) {
        this.zzl += i10;
    }

    @VisibleForTesting
    final zzvj zzaa(Uri uri) {
        zzad zzadVar = new zzad();
        zzadVar.zzb(uri);
        zzap zzc = zzadVar.zzc();
        zzwo zzwoVar = this.zzg;
        zzwoVar.zza(this.zze.zzf);
        return zzwoVar.zzb(zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzhj
    public final void zzd(zzgj zzgjVar, zzgo zzgoVar, boolean z10) {
        if (zzgjVar instanceof zzhe) {
            synchronized (this.zzq) {
                this.zzs.add((zzhe) zzgjVar);
            }
        } else if (zzgjVar instanceof zzceb) {
            this.zzt = (zzceb) zzgjVar;
            final zzccb zzccbVar = (zzccb) this.zzf.get();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcc)).booleanValue() && zzccbVar != null && this.zzt.zzn()) {
                final HashMap hashMap = new HashMap();
                hashMap.put("gcacheHit", String.valueOf(this.zzt.zzp()));
                hashMap.put("gcacheDownloaded", String.valueOf(this.zzt.zzo()));
                com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcek
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i10 = zzceo.zza;
                        zzccb.this.zzd("onGcacheInfoEvent", hashMap);
                    }
                });
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmr
    public final void zze(zzmp zzmpVar, zzz zzzVar, @Nullable zzie zzieVar) {
        zzccb zzccbVar = (zzccb) this.zzf.get();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcc)).booleanValue() && zzccbVar != null) {
            HashMap hashMap = new HashMap();
            String str = zzzVar.zzn;
            if (str != null) {
                hashMap.put("audioMime", str);
            }
            String str2 = zzzVar.zzo;
            if (str2 != null) {
                hashMap.put("audioSampleMime", str2);
            }
            String str3 = zzzVar.zzk;
            if (str3 != null) {
                hashMap.put("audioCodec", str3);
            }
            zzccbVar.zzd("onMetadataEvent", hashMap);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmr
    public final void zzh(zzmp zzmpVar, int i10, long j10) {
        this.zzm += i10;
    }

    @Override // com.google.android.gms.internal.ads.zzmr
    public final void zzj(zzmp zzmpVar, zzuy zzuyVar, zzvd zzvdVar, IOException iOException, boolean z10) {
        zzcbr zzcbrVar = this.zzk;
        if (zzcbrVar != null) {
            if (this.zze.zzj) {
                zzcbrVar.zzl("onLoadException", iOException);
            } else {
                zzcbrVar.zzk("onLoadError", iOException);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmr
    public final void zzk(zzmp zzmpVar, int i10) {
        zzcbr zzcbrVar = this.zzk;
        if (zzcbrVar != null) {
            zzcbrVar.zzm(i10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmr
    public final void zzl(zzmp zzmpVar, zzba zzbaVar) {
        zzcbr zzcbrVar = this.zzk;
        if (zzcbrVar != null) {
            zzcbrVar.zzk("onPlayerError", zzbaVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmr
    public final void zzn(zzmp zzmpVar, Object obj, long j10) {
        zzcbr zzcbrVar = this.zzk;
        if (zzcbrVar != null) {
            zzcbrVar.zzv();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmr
    public final void zzp(zzmp zzmpVar, zzz zzzVar, @Nullable zzie zzieVar) {
        zzccb zzccbVar = (zzccb) this.zzf.get();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcc)).booleanValue() && zzccbVar != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("frameRate", String.valueOf(zzzVar.zzz));
            hashMap.put("bitRate", String.valueOf(zzzVar.zzj));
            int i10 = zzzVar.zzv;
            int i11 = zzzVar.zzw;
            hashMap.put("resolution", i10 + TextureRenderKeys.KEY_IS_X + i11);
            String str = zzzVar.zzn;
            if (str != null) {
                hashMap.put("videoMime", str);
            }
            String str2 = zzzVar.zzo;
            if (str2 != null) {
                hashMap.put("videoSampleMime", str2);
            }
            String str3 = zzzVar.zzk;
            if (str3 != null) {
                hashMap.put("videoCodec", str3);
            }
            zzccbVar.zzd("onMetadataEvent", hashMap);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmr
    public final void zzq(zzmp zzmpVar, zzcd zzcdVar) {
        zzcbr zzcbrVar = this.zzk;
        if (zzcbrVar != null) {
            zzcbrVar.zzD(zzcdVar.zzb, zzcdVar.zzc);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final int zzr() {
        return this.zzm;
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final int zzt() {
        return this.zzh.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final long zzv() {
        return this.zzh.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final long zzw() {
        return this.zzl;
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final long zzx() {
        if (zzad() && this.zzt.zzp()) {
            return Math.min(this.zzl, this.zzt.zzk());
        }
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final long zzy() {
        return this.zzh.zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final long zzz() {
        return this.zzh.zzm();
    }

    @Override // com.google.android.gms.internal.ads.zzmr
    public final /* synthetic */ void zzg(zzmp zzmpVar, zzvd zzvdVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzmr
    public final /* synthetic */ void zzi(zzbh zzbhVar, zzmq zzmqVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzmr
    public final /* synthetic */ void zzo(zzmp zzmpVar, zzid zzidVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzhj
    public final void zzb(zzgj zzgjVar, zzgo zzgoVar, boolean z10) {
    }

    @Override // com.google.android.gms.internal.ads.zzhj
    public final void zzc(zzgj zzgjVar, zzgo zzgoVar, boolean z10) {
    }

    @Override // com.google.android.gms.internal.ads.zzmr
    public final /* synthetic */ void zzf(zzmp zzmpVar, int i10, long j10, long j11) {
    }

    @Override // com.google.android.gms.internal.ads.zzmr
    public final /* synthetic */ void zzm(zzmp zzmpVar, zzbf zzbfVar, zzbf zzbfVar2, int i10) {
    }
}
