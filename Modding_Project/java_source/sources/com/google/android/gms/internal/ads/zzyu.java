package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.text.TextUtils;
import android.util.Pair;
import android.view.accessibility.CaptioningManager;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.RandomAccess;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzyu extends zzza implements zzmc {
    public static final /* synthetic */ int zzb = 0;
    private static final zzgab zzc = zzgab.zzb(new Comparator() { // from class: com.google.android.gms.internal.ads.zzxu
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            Integer num = (Integer) obj;
            Integer num2 = (Integer) obj2;
            int i10 = zzyu.zzb;
            if (num.intValue() == -1) {
                if (num2.intValue() != -1) {
                    return -1;
                }
                return 0;
            } else if (num2.intValue() == -1) {
                return 1;
            } else {
                return num.intValue() - num2.intValue();
            }
        }
    });
    @Nullable
    public final Context zza;
    private final Object zzd;
    @GuardedBy("lock")
    private zzyi zze;
    @Nullable
    @GuardedBy("lock")
    private Thread zzf;
    @Nullable
    private zzym zzg;
    private zze zzh;
    private final zzxq zzi;

    public zzyu(Context context) {
        Context context2;
        zzxq zzxqVar = new zzxq();
        zzyi zzyiVar = zzyi.zzF;
        this.zzd = new Object();
        if (context != null) {
            context2 = context.getApplicationContext();
        } else {
            context2 = null;
        }
        this.zza = context2;
        this.zzi = zzxqVar;
        if (zzyiVar != null) {
            this.zze = zzyiVar;
        } else {
            zzyh zzyhVar = new zzyh(zzyiVar, null);
            zzyhVar.zzw(zzyiVar);
            this.zze = new zzyi(zzyhVar);
        }
        this.zzh = zze.zza;
        if (this.zze.zzQ && context == null) {
            zzea.zzf("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
        }
    }

    public static /* bridge */ /* synthetic */ int zzb(int i10, int i11) {
        if (i10 != 0 && i10 == i11) {
            return Integer.MAX_VALUE;
        }
        return Integer.bitCount(i10 & i11);
    }

    public static int zzc(zzz zzzVar, @Nullable String str, boolean z10) {
        if (!TextUtils.isEmpty(str) && str.equals(zzzVar.zzd)) {
            return 4;
        }
        String zzh = zzh(str);
        String zzh2 = zzh(zzzVar.zzd);
        if (zzh2 != null && zzh != null) {
            if (!zzh2.startsWith(zzh) && !zzh.startsWith(zzh2)) {
                String str2 = zzex.zza;
                if (!zzh2.split("-", 2)[0].equals(zzh.split("-", 2)[0])) {
                    return 0;
                }
                return 2;
            }
            return 3;
        } else if (!z10 || zzh2 != null) {
            return 0;
        } else {
            return 1;
        }
    }

    @Nullable
    public static String zzh(@Nullable String str) {
        if (!TextUtils.isEmpty(str) && !TextUtils.equals(str, C.LANGUAGE_UNDETERMINED)) {
            return str;
        }
        return null;
    }

    public static /* bridge */ /* synthetic */ void zzi(zzyu zzyuVar) {
        zzyuVar.zzu();
    }

    public static /* synthetic */ boolean zzm(zzyu zzyuVar, zzyi zzyiVar, zzz zzzVar) {
        zzym zzymVar;
        zzym zzymVar2;
        if (!zzyiVar.zzQ) {
            return true;
        }
        int i10 = zzzVar.zzG;
        char c10 = 65535;
        if (i10 == -1 || i10 <= 2) {
            return true;
        }
        String str = zzzVar.zzo;
        if (str != null) {
            switch (str.hashCode()) {
                case -2123537834:
                    if (str.equals(MimeTypes.AUDIO_E_AC3_JOC)) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 187078296:
                    if (str.equals(MimeTypes.AUDIO_AC3)) {
                        c10 = 0;
                        break;
                    }
                    break;
                case 187078297:
                    if (str.equals("audio/ac4")) {
                        c10 = 3;
                        break;
                    }
                    break;
                case 1504578661:
                    if (str.equals(MimeTypes.AUDIO_E_AC3)) {
                        c10 = 1;
                        break;
                    }
                    break;
            }
            if ((c10 == 0 || c10 == 1 || c10 == 2 || c10 == 3) && (Build.VERSION.SDK_INT < 32 || (zzymVar2 = zzyuVar.zzg) == null || !zzymVar2.zze())) {
                return true;
            }
        }
        if (Build.VERSION.SDK_INT < 32 || (zzymVar = zzyuVar.zzg) == null || !zzymVar.zze() || !zzymVar.zzc() || !zzyuVar.zzg.zzd()) {
            return false;
        }
        if (zzyuVar.zzg.zzb(zzyuVar.zzh, zzzVar)) {
            return true;
        }
        return false;
    }

    private static void zzt(zzxk zzxkVar, zzbr zzbrVar, Map map) {
        for (int i10 = 0; i10 < zzxkVar.zzb; i10++) {
            if (((zzbn) zzbrVar.zzD.get(zzxkVar.zzb(i10))) != null) {
                throw null;
            }
        }
    }

    public final void zzu() {
        boolean z10;
        zzym zzymVar;
        synchronized (this.zzd) {
            try {
                z10 = false;
                if (this.zze.zzQ && Build.VERSION.SDK_INT >= 32 && (zzymVar = this.zzg) != null && zzymVar.zze()) {
                    z10 = true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z10) {
            zzs();
        }
    }

    @Nullable
    private static final Pair zzv(int i10, zzyz zzyzVar, int[][][] iArr, zzyo zzyoVar, Comparator comparator) {
        RandomAccess randomAccess;
        boolean z10;
        zzyz zzyzVar2 = zzyzVar;
        ArrayList arrayList = new ArrayList();
        int i11 = 0;
        while (i11 < 2) {
            if (i10 == zzyzVar2.zzc(i11)) {
                zzxk zzd = zzyzVar2.zzd(i11);
                for (int i12 = 0; i12 < zzd.zzb; i12++) {
                    zzbm zzb2 = zzd.zzb(i12);
                    List zza = zzyoVar.zza(i11, zzb2, iArr[i11][i12]);
                    int i13 = zzb2.zza;
                    boolean[] zArr = new boolean[i13];
                    int i14 = 0;
                    while (i14 < i13) {
                        int i15 = i14 + 1;
                        zzyp zzypVar = (zzyp) zza.get(i14);
                        int zzb3 = zzypVar.zzb();
                        if (!zArr[i14] && zzb3 != 0) {
                            if (zzb3 == 1) {
                                randomAccess = zzfyq.zzo(zzypVar);
                            } else {
                                ArrayList arrayList2 = new ArrayList();
                                arrayList2.add(zzypVar);
                                for (int i16 = i15; i16 < i13; i16++) {
                                    zzyp zzypVar2 = (zzyp) zza.get(i16);
                                    if (zzypVar2.zzb() == 2 && zzypVar.zzc(zzypVar2)) {
                                        arrayList2.add(zzypVar2);
                                        z10 = true;
                                        zArr[i16] = true;
                                    } else {
                                        z10 = true;
                                    }
                                }
                                randomAccess = arrayList2;
                            }
                            arrayList.add(randomAccess);
                        }
                        i14 = i15;
                    }
                }
            }
            i11++;
            zzyzVar2 = zzyzVar;
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        List list = (List) Collections.max(arrayList, comparator);
        int[] iArr2 = new int[list.size()];
        for (int i17 = 0; i17 < list.size(); i17++) {
            iArr2[i17] = ((zzyp) list.get(i17)).zzc;
        }
        zzyp zzypVar3 = (zzyp) list.get(0);
        return Pair.create(new zzyv(zzypVar3.zzb, iArr2, 0), Integer.valueOf(zzypVar3.zza));
    }

    @Override // com.google.android.gms.internal.ads.zzmc
    public final void zza(zzma zzmaVar) {
        synchronized (this.zzd) {
            boolean z10 = this.zze.zzU;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzza
    protected final Pair zzd(zzyz zzyzVar, int[][][] iArr, final int[] iArr2, zzvh zzvhVar, zzbl zzblVar) throws zzin {
        final zzyi zzyiVar;
        final boolean z10;
        final String str;
        final Point point;
        Pair pair;
        final String str2;
        zzme zzmeVar;
        int i10;
        zzyw zza;
        int i11;
        zzyv zzyvVar;
        Context context;
        CaptioningManager captioningManager;
        Locale locale;
        Context context2;
        int i12 = 1;
        synchronized (this.zzd) {
            this.zzf = Thread.currentThread();
            zzyiVar = this.zze;
        }
        if (zzyiVar.zzQ && Build.VERSION.SDK_INT >= 32 && this.zzg == null) {
            this.zzg = new zzym(this.zza, this);
        }
        int i13 = 2;
        zzyv[] zzyvVarArr = new zzyv[2];
        int i14 = 0;
        int i15 = 0;
        while (true) {
            if (i15 < 2) {
                if (zzyzVar.zzc(i15) == 2 && zzyzVar.zzd(i15).zzb > 0) {
                    z10 = true;
                    break;
                }
                i15++;
            } else {
                z10 = false;
                break;
            }
        }
        Pair zzv = zzv(1, zzyzVar, iArr, new zzyo() { // from class: com.google.android.gms.internal.ads.zzxz
            @Override // com.google.android.gms.internal.ads.zzyo
            public final List zza(int i16, zzbm zzbmVar, int[] iArr3) {
                zzxz zzxzVar = this;
                final zzyu zzyuVar = zzyu.this;
                final zzyi zzyiVar2 = zzyiVar;
                zzfvq zzfvqVar = new zzfvq() { // from class: com.google.android.gms.internal.ads.zzyb
                    @Override // com.google.android.gms.internal.ads.zzfvq
                    public final boolean zza(Object obj) {
                        return zzyu.zzm(zzyu.this, zzyiVar2, (zzz) obj);
                    }
                };
                int i17 = iArr2[i16];
                int i18 = zzfyq.zzd;
                zzfyn zzfynVar = new zzfyn();
                int i19 = 0;
                while (i19 < zzbmVar.zza) {
                    zzfynVar.zzf(new zzye(i16, zzbmVar, i19, zzyiVar2, iArr3[i19], z10, zzfvqVar, i17));
                    i19++;
                    zzxzVar = this;
                }
                return zzfynVar.zzi();
            }
        }, new Comparator() { // from class: com.google.android.gms.internal.ads.zzya
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ((zzye) Collections.max((List) obj)).zza((zzye) Collections.max((List) obj2));
            }
        });
        if (zzv != null) {
            zzyvVarArr[((Integer) zzv.second).intValue()] = (zzyv) zzv.first;
        }
        if (zzv == null) {
            str = null;
        } else {
            Object obj = zzv.first;
            str = ((zzyv) obj).zza.zzb(((zzyv) obj).zzb[0]).zzd;
        }
        int i16 = zzyiVar.zzu.zzb;
        if (zzyiVar.zzk && (context2 = this.zza) != null) {
            point = zzex.zzw(context2);
        } else {
            point = null;
        }
        Pair zzv2 = zzv(2, zzyzVar, iArr, new zzyo() { // from class: com.google.android.gms.internal.ads.zzxx
            /* JADX WARN: Removed duplicated region for block: B:32:0x0054  */
            /* JADX WARN: Removed duplicated region for block: B:33:0x005f  */
            @Override // com.google.android.gms.internal.ads.zzyo
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.util.List zza(int r20, com.google.android.gms.internal.ads.zzbm r21, int[] r22) {
                /*
                    Method dump skipped, instructions count: 212
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzxx.zza(int, com.google.android.gms.internal.ads.zzbm, int[]):java.util.List");
            }
        }, new Comparator() { // from class: com.google.android.gms.internal.ads.zzxy
            @Override // java.util.Comparator
            public final int compare(Object obj2, Object obj3) {
                List list = (List) obj2;
                List list2 = (List) obj3;
                return zzfyf.zzj().zzc((zzys) Collections.max(list, new Comparator() { // from class: com.google.android.gms.internal.ads.zzyq
                    @Override // java.util.Comparator
                    public final int compare(Object obj4, Object obj5) {
                        return zzys.zzd((zzys) obj4, (zzys) obj5);
                    }
                }), (zzys) Collections.max(list2, new Comparator() { // from class: com.google.android.gms.internal.ads.zzyq
                    @Override // java.util.Comparator
                    public final int compare(Object obj4, Object obj5) {
                        return zzys.zzd((zzys) obj4, (zzys) obj5);
                    }
                }), new Comparator() { // from class: com.google.android.gms.internal.ads.zzyq
                    @Override // java.util.Comparator
                    public final int compare(Object obj4, Object obj5) {
                        return zzys.zzd((zzys) obj4, (zzys) obj5);
                    }
                }).zzb(list.size(), list2.size()).zzc((zzys) Collections.max(list, new Comparator() { // from class: com.google.android.gms.internal.ads.zzyr
                    @Override // java.util.Comparator
                    public final int compare(Object obj4, Object obj5) {
                        return zzys.zza((zzys) obj4, (zzys) obj5);
                    }
                }), (zzys) Collections.max(list2, new Comparator() { // from class: com.google.android.gms.internal.ads.zzyr
                    @Override // java.util.Comparator
                    public final int compare(Object obj4, Object obj5) {
                        return zzys.zza((zzys) obj4, (zzys) obj5);
                    }
                }), new Comparator() { // from class: com.google.android.gms.internal.ads.zzyr
                    @Override // java.util.Comparator
                    public final int compare(Object obj4, Object obj5) {
                        return zzys.zza((zzys) obj4, (zzys) obj5);
                    }
                }).zza();
            }
        });
        int i17 = 4;
        if (zzv2 == null) {
            pair = zzv(4, zzyzVar, iArr, new zzyo() { // from class: com.google.android.gms.internal.ads.zzxv
                @Override // com.google.android.gms.internal.ads.zzyo
                public final List zza(int i18, zzbm zzbmVar, int[] iArr3) {
                    int i19 = zzyu.zzb;
                    int i20 = zzfyq.zzd;
                    zzfyn zzfynVar = new zzfyn();
                    for (int i21 = 0; i21 < zzbmVar.zza; i21++) {
                        zzfynVar.zzf(new zzyf(i18, zzbmVar, i21, zzyi.this, iArr3[i21]));
                    }
                    return zzfynVar.zzi();
                }
            }, new Comparator() { // from class: com.google.android.gms.internal.ads.zzxw
                @Override // java.util.Comparator
                public final int compare(Object obj2, Object obj3) {
                    return ((zzyf) ((List) obj2).get(0)).compareTo((zzyf) ((List) obj3).get(0));
                }
            });
        } else {
            pair = null;
        }
        if (pair != null) {
            zzyvVarArr[((Integer) pair.second).intValue()] = (zzyv) pair.first;
        } else if (zzv2 != null) {
            zzyvVarArr[((Integer) zzv2.second).intValue()] = (zzyv) zzv2.first;
        }
        if (!zzyiVar.zzx || (context = this.zza) == null || (captioningManager = (CaptioningManager) context.getSystemService("captioning")) == null || !captioningManager.isEnabled() || (locale = captioningManager.getLocale()) == null) {
            str2 = null;
        } else {
            String str3 = zzex.zza;
            str2 = locale.toLanguageTag();
        }
        int i18 = 3;
        Pair zzv3 = zzv(3, zzyzVar, iArr, new zzyo() { // from class: com.google.android.gms.internal.ads.zzyc
            @Override // com.google.android.gms.internal.ads.zzyo
            public final List zza(int i19, zzbm zzbmVar, int[] iArr3) {
                int i20 = zzyu.zzb;
                int i21 = zzfyq.zzd;
                zzfyn zzfynVar = new zzfyn();
                for (int i22 = 0; i22 < zzbmVar.zza; i22++) {
                    String str4 = str2;
                    int i23 = i22;
                    zzfynVar.zzf(new zzyn(i19, zzbmVar, i23, zzyi.this, iArr3[i22], str, str4));
                }
                return zzfynVar.zzi();
            }
        }, new Comparator() { // from class: com.google.android.gms.internal.ads.zzyd
            @Override // java.util.Comparator
            public final int compare(Object obj2, Object obj3) {
                return ((zzyn) ((List) obj2).get(0)).zza((zzyn) ((List) obj3).get(0));
            }
        });
        if (zzv3 != null) {
            zzyvVarArr[((Integer) zzv3.second).intValue()] = (zzyv) zzv3.first;
        }
        int i19 = 0;
        while (i19 < i13) {
            int zzc2 = zzyzVar.zzc(i19);
            if (zzc2 != i13 && zzc2 != i12 && zzc2 != i18 && zzc2 != i17) {
                zzxk zzd = zzyzVar.zzd(i19);
                int[][] iArr3 = iArr[i19];
                int i20 = i14;
                int i21 = i20;
                zzbm zzbmVar = null;
                zzyg zzygVar = null;
                while (i20 < zzd.zzb) {
                    zzbm zzb2 = zzd.zzb(i20);
                    int[] iArr4 = iArr3[i20];
                    zzyg zzygVar2 = zzygVar;
                    for (int i22 = i14; i22 < zzb2.zza; i22++) {
                        if (zzmb.zza(iArr4[i22], zzyiVar.zzR)) {
                            zzyg zzygVar3 = new zzyg(zzb2.zzb(i22), iArr4[i22]);
                            if (zzygVar2 == null || zzygVar3.compareTo(zzygVar2) > 0) {
                                zzygVar2 = zzygVar3;
                                zzbmVar = zzb2;
                                i21 = i22;
                            }
                        }
                        i12 = 1;
                    }
                    i20 += i12;
                    zzygVar = zzygVar2;
                    i14 = 0;
                }
                if (zzbmVar == null) {
                    zzyvVar = null;
                } else {
                    zzyvVar = new zzyv(zzbmVar, new int[]{i21}, 0);
                }
                zzyvVarArr[i19] = zzyvVar;
                i12 = 1;
            }
            i19 += i12;
            i13 = 2;
            i14 = 0;
            i18 = 3;
            i17 = 4;
        }
        HashMap hashMap = new HashMap();
        int i23 = 2;
        for (int i24 = 0; i24 < 2; i24 += i12) {
            zzt(zzyzVar.zzd(i24), zzyiVar, hashMap);
        }
        zzt(zzyzVar.zze(), zzyiVar, hashMap);
        for (int i25 = 0; i25 < 2; i25 += i12) {
            if (((zzbn) hashMap.get(Integer.valueOf(zzyzVar.zzc(i25)))) != null) {
                throw null;
            }
        }
        int i26 = 0;
        while (i26 < i23) {
            zzxk zzd2 = zzyzVar.zzd(i26);
            if (zzyiVar.zzf(i26, zzd2)) {
                if (zzyiVar.zzd(i26, zzd2) == null) {
                    zzyvVarArr[i26] = null;
                } else {
                    throw null;
                }
            }
            i26++;
            i23 = 2;
        }
        int i27 = 0;
        for (int i28 = i23; i27 < i28; i28 = 2) {
            int zzc3 = zzyzVar.zzc(i27);
            if (!zzyiVar.zze(i27) && !zzyiVar.zzE.contains(Integer.valueOf(zzc3))) {
                i11 = 1;
            } else {
                zzyvVarArr[i27] = null;
                i11 = 1;
            }
            i27 += i11;
        }
        zzxq zzxqVar = this.zzi;
        zzzl zzq = zzq();
        zzfyq zzd3 = zzxr.zzd(zzyvVarArr);
        int i29 = 2;
        zzyw[] zzywVarArr = new zzyw[2];
        int i30 = 0;
        while (i30 < i29) {
            zzyv zzyvVar2 = zzyvVarArr[i30];
            if (zzyvVar2 != null) {
                int[] iArr5 = zzyvVar2.zzb;
                int length = iArr5.length;
                if (length == 0) {
                    i10 = i30;
                    i30 = i10 + 1;
                    i29 = 2;
                } else {
                    if (length == 1) {
                        zza = new zzyx(zzyvVar2.zza, iArr5[0], 0, 0, null);
                        i10 = i30;
                    } else {
                        i10 = i30;
                        zza = zzxqVar.zza(zzyvVar2.zza, iArr5, 0, zzq, (zzfyq) zzd3.get(i30));
                    }
                    zzywVarArr[i10] = zza;
                }
            } else {
                i10 = i30;
            }
            i30 = i10 + 1;
            i29 = 2;
        }
        zzme[] zzmeVarArr = new zzme[i29];
        for (int i31 = 0; i31 < i29; i31++) {
            int zzc4 = zzyzVar.zzc(i31);
            if (zzyiVar.zze(i31) || zzyiVar.zzE.contains(Integer.valueOf(zzc4)) || (zzyzVar.zzc(i31) != -2 && zzywVarArr[i31] == null)) {
                zzmeVar = null;
            } else {
                zzmeVar = zzme.zza;
            }
            zzmeVarArr[i31] = zzmeVar;
        }
        return Pair.create(zzmeVarArr, zzywVarArr);
    }

    public final zzyi zzf() {
        zzyi zzyiVar;
        synchronized (this.zzd) {
            zzyiVar = this.zze;
        }
        return zzyiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzzd
    public final void zzj() {
        zzym zzymVar;
        boolean z10;
        synchronized (this.zzd) {
            try {
                Thread thread = this.zzf;
                if (thread != null) {
                    if (thread == Thread.currentThread()) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    zzdd.zzg(z10, "DefaultTrackSelector is accessed on the wrong thread.");
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (Build.VERSION.SDK_INT >= 32 && (zzymVar = this.zzg) != null) {
            zzymVar.zza();
            this.zzg = null;
        }
        super.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzzd
    public final void zzk(zze zzeVar) {
        if (this.zzh.equals(zzeVar)) {
            return;
        }
        this.zzh = zzeVar;
        zzu();
    }

    public final void zzl(zzyh zzyhVar) {
        boolean equals;
        zzyi zzyiVar = new zzyi(zzyhVar);
        synchronized (this.zzd) {
            equals = this.zze.equals(zzyiVar);
            this.zze = zzyiVar;
        }
        if (!equals) {
            if (zzyiVar.zzQ && this.zza == null) {
                zzea.zzf("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
            }
            zzs();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzzd
    public final boolean zzn() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzzd
    @Nullable
    public final zzmc zze() {
        return this;
    }
}
