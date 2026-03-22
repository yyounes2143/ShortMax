package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.autofill.HintConstants;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzzp implements zzzl, zzhj {
    public static final zzfyq zza = zzfyq.zzr(4300000L, 3200000L, 2400000L, 1700000L, 860000L);
    public static final zzfyq zzb = zzfyq.zzr(1500000L, 980000L, 750000L, 520000L, 290000L);
    public static final zzfyq zzc = zzfyq.zzr(2000000L, 1300000L, 1000000L, 860000L, 610000L);
    public static final zzfyq zzd = zzfyq.zzr(2500000L, 1700000L, 1200000L, 970000L, 680000L);
    public static final zzfyq zze = zzfyq.zzr(4700000L, 2800000L, 2100000L, 1700000L, 980000L);
    public static final zzfyq zzf = zzfyq.zzr(2700000L, 2000000L, 1600000L, 1300000L, 1000000L);
    @Nullable
    @SuppressLint({"NonFinalStaticField", "StaticFieldLeak"})
    private static zzzp zzg;
    @Nullable
    private final Context zzh;
    private final zzfyt zzi;
    private final zzzj zzj;
    @GuardedBy("this")
    private final zzaaf zzk;
    @GuardedBy("this")
    private int zzl;
    @GuardedBy("this")
    private long zzm;
    @GuardedBy("this")
    private long zzn;
    @GuardedBy("this")
    private long zzo;
    @GuardedBy("this")
    private long zzp;
    @GuardedBy("this")
    private long zzq;
    @GuardedBy("this")
    private long zzr;
    private int zzs;
    private String zzt;

    /* synthetic */ zzzp(Context context, Map map, int i10, zzdj zzdjVar, boolean z10, zzzo zzzoVar) {
        Context applicationContext;
        if (context == null) {
            applicationContext = null;
        } else {
            applicationContext = context.getApplicationContext();
        }
        this.zzh = applicationContext;
        this.zzi = zzfyt.zzc(map);
        this.zzj = new zzzj();
        this.zzk = new zzaaf(2000);
        if (context != null) {
            zzel zzb2 = zzel.zzb(context);
            int zza2 = zzb2.zza();
            this.zzs = zza2;
            this.zzq = zzj(zza2);
            zzb2.zzf(new zzzn(this), zzde.zza());
            return;
        }
        this.zzs = 0;
        this.zzq = 1000000L;
    }

    public static synchronized zzzp zzh(Context context) {
        zzzp zzzpVar;
        Context applicationContext;
        synchronized (zzzp.class) {
            try {
                if (zzg == null) {
                    if (context == null) {
                        applicationContext = null;
                    } else {
                        applicationContext = context.getApplicationContext();
                    }
                    Context context2 = applicationContext;
                    zzdj zzdjVar = zzdj.zza;
                    HashMap hashMap = new HashMap(8);
                    hashMap.put(0, 1000000L);
                    hashMap.put(2, -9223372036854775807L);
                    hashMap.put(3, -9223372036854775807L);
                    hashMap.put(4, -9223372036854775807L);
                    hashMap.put(5, -9223372036854775807L);
                    hashMap.put(10, -9223372036854775807L);
                    hashMap.put(9, -9223372036854775807L);
                    hashMap.put(7, -9223372036854775807L);
                    zzg = new zzzp(context2, hashMap, 2000, zzdjVar, true, null);
                }
                zzzpVar = zzg;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return zzzpVar;
    }

    public static /* synthetic */ void zzi(zzzp zzzpVar, int i10) {
        zzzpVar.zzl(i10);
    }

    private final long zzj(int i10) {
        long longValue;
        zzfyt zzfytVar = this.zzi;
        Long l10 = (Long) zzfytVar.get(Integer.valueOf(i10));
        if (l10 == null) {
            l10 = (Long) zzfytVar.get(0);
        } else if (l10.longValue() == -9223372036854775807L) {
            int[] zzn = zzn(zzfwg.zzc(this.zzt));
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        if (i10 != 5) {
                            if (i10 != 7) {
                                if (i10 != 9) {
                                    if (i10 != 10) {
                                        longValue = 1000000;
                                    } else {
                                        longValue = ((Long) zze.get(zzn[4])).longValue();
                                    }
                                } else {
                                    longValue = ((Long) zzf.get(zzn[5])).longValue();
                                }
                            }
                        } else {
                            longValue = ((Long) zzd.get(zzn[3])).longValue();
                        }
                    } else {
                        longValue = ((Long) zzc.get(zzn[2])).longValue();
                    }
                } else {
                    longValue = ((Long) zzb.get(zzn[1])).longValue();
                }
                l10 = Long.valueOf(longValue);
            }
            longValue = ((Long) zza.get(zzn[0])).longValue();
            l10 = Long.valueOf(longValue);
        }
        if (l10 == null) {
            l10 = 1000000L;
        }
        return l10.longValue();
    }

    @GuardedBy("this")
    private final void zzk(int i10, long j10, long j11) {
        int i11;
        long j12;
        if (i10 == 0) {
            if (j10 == 0) {
                if (j11 != this.zzr) {
                    j12 = 0;
                } else {
                    return;
                }
            } else {
                j12 = j10;
            }
            i11 = 0;
        } else {
            i11 = i10;
            j12 = j10;
        }
        this.zzr = j11;
        this.zzj.zzb(i11, j12, j11);
    }

    public final synchronized void zzl(int i10) {
        int i11;
        String zzb2;
        TelephonyManager telephonyManager;
        try {
            if (this.zzs == i10) {
                if (this.zzt == null) {
                }
            }
            this.zzs = i10;
            if (i10 != 1 && i10 != 0 && i10 != 8) {
                if (this.zzt == null) {
                    Context context = this.zzh;
                    String str = zzex.zza;
                    if (context != null && (telephonyManager = (TelephonyManager) context.getSystemService(HintConstants.AUTOFILL_HINT_PHONE)) != null) {
                        String networkCountryIso = telephonyManager.getNetworkCountryIso();
                        if (!TextUtils.isEmpty(networkCountryIso)) {
                            zzb2 = zzfuv.zzb(networkCountryIso);
                            this.zzt = zzb2;
                        }
                    }
                    zzb2 = zzfuv.zzb(Locale.getDefault().getCountry());
                    this.zzt = zzb2;
                }
                this.zzq = zzj(i10);
                long elapsedRealtime = SystemClock.elapsedRealtime();
                if (this.zzl > 0) {
                    i11 = (int) (elapsedRealtime - this.zzm);
                } else {
                    i11 = 0;
                }
                zzk(i11, this.zzn, this.zzq);
                this.zzm = elapsedRealtime;
                this.zzn = 0L;
                this.zzp = 0L;
                this.zzo = 0L;
                this.zzk.zzc();
            }
        } finally {
        }
    }

    private static boolean zzm(zzgo zzgoVar, boolean z10) {
        if (z10 && !zzgoVar.zzb(8)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:1008:0x013b, code lost:
        if (r3.equals("YT") != false) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1011:0x0145, code lost:
        if (r3.equals("YE") != false) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1018:0x015d, code lost:
        if (r3.equals("WS") != false) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1021:0x0167, code lost:
        if (r3.equals("WF") != false) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1024:0x0171, code lost:
        if (r3.equals("VU") != false) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1039:0x01a5, code lost:
        if (r3.equals("VE") != false) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1042:0x01af, code lost:
        if (r3.equals("VC") != false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1045:0x01b9, code lost:
        if (r3.equals("VA") != false) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1064:0x01fb, code lost:
        if (r3.equals("UA") != false) goto L168;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1075:0x0221, code lost:
        if (r3.equals("TV") != false) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1082:0x0239, code lost:
        if (r3.equals("TR") != false) goto L186;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1093:0x025f, code lost:
        if (r3.equals("TM") != false) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1096:0x0269, code lost:
        if (r3.equals("TL") != false) goto L200;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1099:0x0273, code lost:
        if (r3.equals("TJ") != false) goto L204;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1102:0x027d, code lost:
        if (r3.equals("TH") != false) goto L208;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1109:0x0295, code lost:
        if (r3.equals("TD") != false) goto L216;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1116:0x02ad, code lost:
        if (r3.equals("SZ") != false) goto L224;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1119:0x02b7, code lost:
        if (r3.equals("SY") != false) goto L216;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1122:0x02c1, code lost:
        if (r3.equals("SX") != false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1133:0x02e7, code lost:
        if (r3.equals("SS") != false) goto L240;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1148:0x031b, code lost:
        if (r3.equals("SM") != false) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1151:0x0325, code lost:
        if (r3.equals("SL") != false) goto L258;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1158:0x033d, code lost:
        if (r3.equals("SJ") != false) goto L266;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1161:0x0347, code lost:
        if (r3.equals("SI") != false) goto L270;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1164:0x0351, code lost:
        if (r3.equals("SH") != false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1171:0x0369, code lost:
        if (r3.equals("SE") != false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1174:0x0373, code lost:
        if (r3.equals("SD") != false) goto L216;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1177:0x037d, code lost:
        if (r3.equals("SC") != false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1180:0x0387, code lost:
        if (r3.equals("SB") != false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1182:0x038e, code lost:
        return new int[]{4, 2, 4, 3, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1212:0x03f7, code lost:
        if (r3.equals("PY") != false) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1219:0x040f, code lost:
        if (r3.equals("PT") != false) goto L270;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1230:0x0435, code lost:
        if (r3.equals("PM") != false) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1245:0x0469, code lost:
        if (r3.equals(com.google.android.gms.ads.RequestConfiguration.MAX_AD_CONTENT_RATING_PG) != false) goto L346;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1256:0x048f, code lost:
        if (r3.equals("PA") != false) goto L358;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1267:0x04b5, code lost:
        if (r3.equals("NU") != false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1270:0x04bf, code lost:
        if (r3.equals("NR") != false) goto L200;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1285:0x04f3, code lost:
        if (r3.equals("NI") != false) goto L386;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1292:0x050b, code lost:
        if (r3.equals("NF") != false) goto L266;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1295:0x0515, code lost:
        if (r3.equals("NE") != false) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1298:0x051f, code lost:
        if (r3.equals("NC") != false) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1300:0x0526, code lost:
        return new int[]{2, 3, 3, 4, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1306:0x053b, code lost:
        if (r3.equals("MZ") != false) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1308:0x0542, code lost:
        return new int[]{3, 1, 2, 2, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1330:0x058f, code lost:
        if (r3.equals("MT") != false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1333:0x0599, code lost:
        if (r3.equals("MS") != false) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1336:0x05a3, code lost:
        if (r3.equals("MR") != false) goto L430;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1343:0x05bb, code lost:
        if (r3.equals("MP") != false) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1345:0x05c2, code lost:
        return new int[]{1, 2, 2, 2, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1355:0x05e5, code lost:
        if (r3.equals("MM") != false) goto L448;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1358:0x05ef, code lost:
        if (r3.equals("ML") != false) goto L452;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1365:0x0607, code lost:
        if (r3.equals("MH") != false) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1367:0x060e, code lost:
        return new int[]{4, 2, 2, 4, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1369:0x0615, code lost:
        if (r3.equals("MG") != false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1384:0x0649, code lost:
        if (r3.equals("MC") != false) goto L476;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1391:0x0661, code lost:
        if (r3.equals("LY") != false) goto L258;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1394:0x066b, code lost:
        if (r3.equals("LV") != false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1405:0x0691, code lost:
        if (r3.equals("LS") != false) goto L346;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1407:0x0698, code lost:
        return new int[]{4, 3, 3, 3, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1409:0x069f, code lost:
        if (r3.equals("LR") != false) goto L498;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1412:0x06a9, code lost:
        if (r3.equals("LK") != false) goto L448;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1414:0x06b0, code lost:
        return new int[]{3, 2, 3, 3, 4, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1416:0x06b7, code lost:
        if (r3.equals("LI") != false) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1435:0x06f9, code lost:
        if (r3.equals("KY") != false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1438:0x0703, code lost:
        if (r3.equals("KW") != false) goto L524;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1445:0x071b, code lost:
        if (r3.equals("KN") != false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1448:0x0725, code lost:
        if (r3.equals("KM") != false) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1450:0x072c, code lost:
        return new int[]{4, 3, 3, 2, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1452:0x0733, code lost:
        if (r3.equals("KI") != false) goto L200;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1471:0x0775, code lost:
        if (r3.equals("JO") != false) goto L186;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1478:0x078d, code lost:
        if (r3.equals("JE") != false) goto L560;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1485:0x07a5, code lost:
        if (r3.equals("IS") != false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1504:0x07e7, code lost:
        if (r3.equals("IM") != false) goto L560;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1519:0x081b, code lost:
        if (r3.equals("HU") != false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1522:0x0825, code lost:
        if (r3.equals("HT") != false) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1525:0x082f, code lost:
        if (r3.equals("HR") != false) goto L524;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1527:0x0836, code lost:
        return new int[]{1, 0, 0, 0, 0, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1553:0x0891, code lost:
        if (r3.equals("GQ") != false) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1564:0x08b7, code lost:
        if (r3.equals("GM") != false) goto L240;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1566:0x08be, code lost:
        return new int[]{4, 3, 2, 4, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1568:0x08c5, code lost:
        if (r3.equals("GL") != false) goto L476;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1570:0x08cc, code lost:
        return new int[]{1, 2, 2, 0, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1572:0x08d3, code lost:
        if (r3.equals("GI") != false) goto L560;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1574:0x08da, code lost:
        return new int[]{0, 2, 0, 1, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1616:0x096d, code lost:
        if (r3.equals("FK") != false) goto L266;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1618:0x0974, code lost:
        return new int[]{3, 2, 2, 2, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1636:0x09b3, code lost:
        if (r3.equals("ER") != false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1638:0x09ba, code lost:
        return new int[]{4, 2, 2, 2, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1640:0x09c1, code lost:
        if (r3.equals("EG") != false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1642:0x09c8, code lost:
        return new int[]{3, 4, 3, 3, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1644:0x09cf, code lost:
        if (r3.equals("EE") != false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1646:0x09d6, code lost:
        return new int[]{0, 0, 0, 0, 0, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1652:0x09eb, code lost:
        if (r3.equals("DZ") != false) goto L204;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1654:0x09f2, code lost:
        return new int[]{3, 3, 4, 4, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1656:0x09f9, code lost:
        if (r3.equals("DO") != false) goto L498;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1658:0x0a00, code lost:
        return new int[]{3, 4, 4, 4, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1660:0x0a07, code lost:
        if (r3.equals("DM") != false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1667:0x0a1f, code lost:
        if (r3.equals("DJ") != false) goto L258;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1682:0x0a53, code lost:
        if (r3.equals("CX") != false) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1685:0x0a5d, code lost:
        if (r3.equals("CW") != false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1692:0x0a75, code lost:
        if (r3.equals("CU") != false) goto L200;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1694:0x0a7c, code lost:
        return new int[]{4, 2, 4, 4, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1696:0x0a83, code lost:
        if (r3.equals("CR") != false) goto L386;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1698:0x0a8a, code lost:
        return new int[]{2, 4, 4, 4, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1708:0x0aad, code lost:
        if (r3.equals("CM") != false) goto L430;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1710:0x0ab4, code lost:
        return new int[]{4, 3, 3, 4, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1712:0x0abb, code lost:
        if (r3.equals("CL") != false) goto L208;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1714:0x0ac2, code lost:
        return new int[]{0, 1, 2, 2, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1716:0x0ac9, code lost:
        if (r3.equals("CK") != false) goto L762;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1719:0x0ad3, code lost:
        if (r3.equals("CD") != false) goto L452;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1721:0x0ada, code lost:
        return new int[]{3, 3, 2, 2, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1723:0x0ae1, code lost:
        if (r3.equals("CA") != false) goto L168;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1725:0x0ae8, code lost:
        return new int[]{0, 2, 1, 2, 3, 3};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1735:0x0b0b, code lost:
        if (r3.equals("BI") != false) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1737:0x0b12, code lost:
        return new int[]{4, 4, 4, 4, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1743:0x0b27, code lost:
        if (r3.equals("BG") != false) goto L270;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1745:0x0b2e, code lost:
        return new int[]{0, 0, 0, 0, 1, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1747:0x0b35, code lost:
        if (r3.equals("BF") != false) goto L216;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1749:0x0b3c, code lost:
        return new int[]{4, 3, 4, 4, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1759:0x0b5f, code lost:
        if (r3.equals("AZ") != false) goto L258;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1761:0x0b66, code lost:
        return new int[]{4, 2, 3, 3, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1767:0x0b7b, code lost:
        if (r3.equals("AI") != false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1770:0x0b84, code lost:
        if (r3.equals("AG") != false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1772:0x0b8b, code lost:
        return new int[]{2, 4, 3, 4, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1774:0x0b92, code lost:
        if (r3.equals("AF") != false) goto L224;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1776:0x0b99, code lost:
        return new int[]{4, 4, 3, 4, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1782:0x0bae, code lost:
        if (r3.equals("AD") != false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1785:0x0bb7, code lost:
        if (r3.equals("BZ") != false) goto L762;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1787:0x0bbe, code lost:
        return new int[]{2, 2, 2, 1, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1793:0x0bd3, code lost:
        if (r3.equals("BB") != false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1795:0x0bda, code lost:
        return new int[]{1, 2, 0, 0, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1797:0x0be1, code lost:
        if (r3.equals("BA") != false) goto L186;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1799:0x0be8, code lost:
        return new int[]{1, 1, 1, 1, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1801:0x0bef, code lost:
        if (r3.equals("AX") != false) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1803:0x0bf6, code lost:
        return new int[]{0, 2, 2, 2, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:1809:0x0c0b, code lost:
        if (r3.equals("AM") != false) goto L358;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1811:0x0c12, code lost:
        return new int[]{2, 3, 2, 3, 2, 2};
     */
    /* JADX WARN: Code restructure failed: missing block: B:935:0x003f, code lost:
        if (r3.equals("CI") != false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:942:0x0057, code lost:
        if (r3.equals("CG") != false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:961:0x0099, code lost:
        if (r3.equals("BQ") != false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:976:0x00cd, code lost:
        if (r3.equals("BL") != false) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:983:0x00e5, code lost:
        if (r3.equals("AT") != false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:994:0x010b, code lost:
        if (r3.equals("AQ") != false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:997:0x0115, code lost:
        if (r3.equals("ZW") != false) goto L96;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int[] zzn(java.lang.String r3) {
        /*
            Method dump skipped, instructions count: 6672
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzzp.zzn(java.lang.String):int[]");
    }

    @Override // com.google.android.gms.internal.ads.zzhj
    public final synchronized void zza(zzgj zzgjVar, zzgo zzgoVar, boolean z10, int i10) {
        if (!zzm(zzgoVar, z10)) {
            return;
        }
        this.zzn += i10;
    }

    @Override // com.google.android.gms.internal.ads.zzhj
    public final synchronized void zzb(zzgj zzgjVar, zzgo zzgoVar, boolean z10) {
        boolean z11;
        zzaaf zzaafVar;
        try {
            if (!zzm(zzgoVar, z10)) {
                return;
            }
            if (this.zzl > 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            zzdd.zzf(z11);
            long elapsedRealtime = SystemClock.elapsedRealtime();
            int i10 = (int) (elapsedRealtime - this.zzm);
            this.zzo += i10;
            long j10 = this.zzp;
            long j11 = this.zzn;
            this.zzp = j10 + j11;
            if (i10 > 0) {
                this.zzk.zzb((int) Math.sqrt(j11), (((float) j11) * 8000.0f) / i10);
                if (this.zzo < 2000) {
                    if (this.zzp >= 524288) {
                    }
                    zzk(i10, this.zzn, this.zzq);
                    this.zzm = elapsedRealtime;
                    this.zzn = 0L;
                }
                this.zzq = zzaafVar.zza(0.5f);
                zzk(i10, this.zzn, this.zzq);
                this.zzm = elapsedRealtime;
                this.zzn = 0L;
            }
            this.zzl--;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhj
    public final synchronized void zzd(zzgj zzgjVar, zzgo zzgoVar, boolean z10) {
        try {
            if (!zzm(zzgoVar, z10)) {
                return;
            }
            if (this.zzl == 0) {
                this.zzm = SystemClock.elapsedRealtime();
            }
            this.zzl++;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzzl
    public final void zzf(Handler handler, zzzk zzzkVar) {
        zzzkVar.getClass();
        this.zzj.zza(handler, zzzkVar);
    }

    @Override // com.google.android.gms.internal.ads.zzzl
    public final void zzg(zzzk zzzkVar) {
        this.zzj.zzc(zzzkVar);
    }

    @Override // com.google.android.gms.internal.ads.zzzl
    public final zzhj zze() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzhj
    public final void zzc(zzgj zzgjVar, zzgo zzgoVar, boolean z10) {
    }
}
