package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.WorkerThread;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import com.bytedance.vodsetting.Module;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.measurement.zzqp;
import com.google.android.gms.internal.measurement.zzrb;
import com.mbridge.msdk.MBridgeConstans;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.zip.GZIPOutputStream;
/* compiled from: com.google.android.gms:play-services-measurement@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzpk extends zzos {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzpk(zzpg zzpgVar) {
        super(zzpgVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final void zzC(com.google.android.gms.internal.measurement.zzhr zzhrVar, String str, Object obj) {
        List zza = zzhrVar.zza();
        int i10 = 0;
        while (true) {
            if (i10 < zza.size()) {
                if (str.equals(((com.google.android.gms.internal.measurement.zzhw) zza.get(i10)).zzb())) {
                    break;
                }
                i10++;
            } else {
                i10 = -1;
                break;
            }
        }
        com.google.android.gms.internal.measurement.zzhv zzn = com.google.android.gms.internal.measurement.zzhw.zzn();
        zzn.zzb(str);
        zzn.zzf(((Long) obj).longValue());
        if (i10 >= 0) {
            zzhrVar.zze(i10, zzn);
        } else {
            zzhrVar.zzg(zzn);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public static final boolean zzD(zzbg zzbgVar, zzr zzrVar) {
        Preconditions.checkNotNull(zzbgVar);
        Preconditions.checkNotNull(zzrVar);
        if (TextUtils.isEmpty(zzrVar.zzb)) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final Bundle zzE(List list) {
        Bundle bundle = new Bundle();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            com.google.android.gms.internal.measurement.zzhw zzhwVar = (com.google.android.gms.internal.measurement.zzhw) it.next();
            String zzb = zzhwVar.zzb();
            if (zzhwVar.zzi()) {
                bundle.putDouble(zzb, zzhwVar.zzj());
            } else if (zzhwVar.zzg()) {
                bundle.putFloat(zzb, zzhwVar.zzh());
            } else if (zzhwVar.zzc()) {
                bundle.putString(zzb, zzhwVar.zzd());
            } else if (zzhwVar.zze()) {
                bundle.putLong(zzb, zzhwVar.zzf());
            }
        }
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final com.google.android.gms.internal.measurement.zzhw zzF(com.google.android.gms.internal.measurement.zzhs zzhsVar, String str) {
        for (com.google.android.gms.internal.measurement.zzhw zzhwVar : zzhsVar.zza()) {
            if (zzhwVar.zzb().equals(str)) {
                return zzhwVar;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final Map zzG(com.google.android.gms.internal.measurement.zzhs zzhsVar, String... strArr) {
        Object zzP;
        HashMap hashMap = new HashMap();
        for (com.google.android.gms.internal.measurement.zzhw zzhwVar : zzhsVar.zza()) {
            if (Arrays.asList(strArr).contains(zzhwVar.zzb()) && (zzP = zzP(zzhwVar)) != null) {
                hashMap.put(zzhwVar.zzb(), zzP);
            }
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final Map zzH(com.google.android.gms.internal.measurement.zzhs zzhsVar, String str) {
        Object zzP;
        HashMap hashMap = new HashMap();
        for (com.google.android.gms.internal.measurement.zzhw zzhwVar : zzhsVar.zza()) {
            if (zzhwVar.zzb().startsWith("gad_") && (zzP = zzP(zzhwVar)) != null) {
                hashMap.put(zzhwVar.zzb(), zzP);
            }
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final Object zzI(com.google.android.gms.internal.measurement.zzhs zzhsVar, String str) {
        com.google.android.gms.internal.measurement.zzhw zzF = zzF(zzhsVar, str);
        if (zzF == null) {
            return null;
        }
        return zzP(zzF);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final Object zzJ(com.google.android.gms.internal.measurement.zzhs zzhsVar, String str, Object obj) {
        Object zzI = zzI(zzhsVar, str);
        if (zzI == null) {
            return obj;
        }
        return zzI;
    }

    private final void zzK(StringBuilder sb2, int i10, List list) {
        String str;
        String str2;
        Long l10;
        if (list != null) {
            int i11 = i10 + 1;
            Iterator it = list.iterator();
            while (it.hasNext()) {
                com.google.android.gms.internal.measurement.zzhw zzhwVar = (com.google.android.gms.internal.measurement.zzhw) it.next();
                if (zzhwVar != null) {
                    zzM(sb2, i11);
                    sb2.append("param {\n");
                    Double d10 = null;
                    if (zzhwVar.zza()) {
                        str = this.zzu.zzl().zzb(zzhwVar.zzb());
                    } else {
                        str = null;
                    }
                    zzS(sb2, i11, "name", str);
                    if (zzhwVar.zzc()) {
                        str2 = zzhwVar.zzd();
                    } else {
                        str2 = null;
                    }
                    zzS(sb2, i11, "string_value", str2);
                    if (zzhwVar.zze()) {
                        l10 = Long.valueOf(zzhwVar.zzf());
                    } else {
                        l10 = null;
                    }
                    zzS(sb2, i11, TextureRenderKeys.KEY_IS_INT_VALUE, l10);
                    if (zzhwVar.zzi()) {
                        d10 = Double.valueOf(zzhwVar.zzj());
                    }
                    zzS(sb2, i11, "double_value", d10);
                    if (zzhwVar.zzm() > 0) {
                        zzK(sb2, i11, zzhwVar.zzk());
                    }
                    zzM(sb2, i11);
                    sb2.append("}\n");
                }
            }
        }
    }

    private final void zzL(StringBuilder sb2, int i10, com.google.android.gms.internal.measurement.zzfh zzfhVar) {
        String str;
        if (zzfhVar == null) {
            return;
        }
        zzM(sb2, i10);
        sb2.append("filter {\n");
        if (zzfhVar.zze()) {
            zzS(sb2, i10, "complement", Boolean.valueOf(zzfhVar.zzf()));
        }
        if (zzfhVar.zzg()) {
            zzS(sb2, i10, "param_name", this.zzu.zzl().zzb(zzfhVar.zzh()));
        }
        if (zzfhVar.zza()) {
            int i11 = i10 + 1;
            com.google.android.gms.internal.measurement.zzfr zzb = zzfhVar.zzb();
            if (zzb != null) {
                zzM(sb2, i11);
                sb2.append("string_filter {\n");
                if (zzb.zza()) {
                    switch (zzb.zzj()) {
                        case 1:
                            str = "UNKNOWN_MATCH_TYPE";
                            break;
                        case 2:
                            str = "REGEXP";
                            break;
                        case 3:
                            str = "BEGINS_WITH";
                            break;
                        case 4:
                            str = "ENDS_WITH";
                            break;
                        case 5:
                            str = "PARTIAL";
                            break;
                        case 6:
                            str = "EXACT";
                            break;
                        default:
                            str = "IN_LIST";
                            break;
                    }
                    zzS(sb2, i11, "match_type", str);
                }
                if (zzb.zzb()) {
                    zzS(sb2, i11, "expression", zzb.zzc());
                }
                if (zzb.zzd()) {
                    zzS(sb2, i11, "case_sensitive", Boolean.valueOf(zzb.zze()));
                }
                if (zzb.zzg() > 0) {
                    zzM(sb2, i10 + 2);
                    sb2.append("expression_list {\n");
                    for (String str2 : zzb.zzf()) {
                        zzM(sb2, i10 + 3);
                        sb2.append(str2);
                        sb2.append("\n");
                    }
                    sb2.append("}\n");
                }
                zzM(sb2, i11);
                sb2.append("}\n");
            }
        }
        if (zzfhVar.zzc()) {
            zzT(sb2, i10 + 1, "number_filter", zzfhVar.zzd());
        }
        zzM(sb2, i10);
        sb2.append("}\n");
    }

    private static final void zzM(StringBuilder sb2, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            sb2.append("  ");
        }
    }

    private static final void zzN(Uri.Builder builder, String str, String str2, Set set) {
        if (!set.contains(str) && !TextUtils.isEmpty(str2)) {
            builder.appendQueryParameter(str, str2);
        }
    }

    private static final String zzO(boolean z10, boolean z11, boolean z12) {
        StringBuilder sb2 = new StringBuilder();
        if (z10) {
            sb2.append("Dynamic ");
        }
        if (z11) {
            sb2.append("Sequence ");
        }
        if (z12) {
            sb2.append("Session-Scoped ");
        }
        return sb2.toString();
    }

    private static final Object zzP(com.google.android.gms.internal.measurement.zzhw zzhwVar) {
        if (zzhwVar.zzc()) {
            return zzhwVar.zzd();
        }
        if (zzhwVar.zze()) {
            return Long.valueOf(zzhwVar.zzf());
        }
        if (zzhwVar.zzi()) {
            return Double.valueOf(zzhwVar.zzj());
        }
        if (zzhwVar.zzm() > 0) {
            return zzy(zzhwVar.zzk());
        }
        return null;
    }

    private static final void zzQ(Uri.Builder builder, String[] strArr, Bundle bundle, Set set) {
        for (String str : strArr) {
            String[] split = str.split(",");
            String str2 = split[0];
            String str3 = split[split.length - 1];
            String string = bundle.getString(str2);
            if (string != null) {
                zzN(builder, str3, string, set);
            }
        }
    }

    private static final void zzR(StringBuilder sb2, int i10, String str, com.google.android.gms.internal.measurement.zzii zziiVar) {
        Integer num;
        Integer num2;
        Long l10;
        if (zziiVar == null) {
            return;
        }
        zzM(sb2, 3);
        sb2.append(str);
        sb2.append(" {\n");
        if (zziiVar.zzd() != 0) {
            zzM(sb2, 4);
            sb2.append("results: ");
            int i11 = 0;
            for (Long l11 : zziiVar.zzc()) {
                int i12 = i11 + 1;
                if (i11 != 0) {
                    sb2.append(", ");
                }
                sb2.append(l11);
                i11 = i12;
            }
            sb2.append('\n');
        }
        if (zziiVar.zzb() != 0) {
            zzM(sb2, 4);
            sb2.append("status: ");
            int i13 = 0;
            for (Long l12 : zziiVar.zza()) {
                int i14 = i13 + 1;
                if (i13 != 0) {
                    sb2.append(", ");
                }
                sb2.append(l12);
                i13 = i14;
            }
            sb2.append('\n');
        }
        if (zziiVar.zzf() != 0) {
            zzM(sb2, 4);
            sb2.append("dynamic_filter_timestamps: {");
            int i15 = 0;
            for (com.google.android.gms.internal.measurement.zzhq zzhqVar : zziiVar.zze()) {
                int i16 = i15 + 1;
                if (i15 != 0) {
                    sb2.append(", ");
                }
                if (zzhqVar.zza()) {
                    num2 = Integer.valueOf(zzhqVar.zzb());
                } else {
                    num2 = null;
                }
                sb2.append(num2);
                sb2.append(":");
                if (zzhqVar.zzc()) {
                    l10 = Long.valueOf(zzhqVar.zzd());
                } else {
                    l10 = null;
                }
                sb2.append(l10);
                i15 = i16;
            }
            sb2.append("}\n");
        }
        if (zziiVar.zzh() != 0) {
            zzM(sb2, 4);
            sb2.append("sequence_filter_timestamps: {");
            int i17 = 0;
            for (com.google.android.gms.internal.measurement.zzik zzikVar : zziiVar.zzg()) {
                int i18 = i17 + 1;
                if (i17 != 0) {
                    sb2.append(", ");
                }
                if (zzikVar.zza()) {
                    num = Integer.valueOf(zzikVar.zzb());
                } else {
                    num = null;
                }
                sb2.append(num);
                sb2.append(": [");
                int i19 = 0;
                for (Long l13 : zzikVar.zzc()) {
                    long longValue = l13.longValue();
                    int i20 = i19 + 1;
                    if (i19 != 0) {
                        sb2.append(", ");
                    }
                    sb2.append(longValue);
                    i19 = i20;
                }
                sb2.append("]");
                i17 = i18;
            }
            sb2.append("}\n");
        }
        zzM(sb2, 3);
        sb2.append("}\n");
    }

    private static final void zzS(StringBuilder sb2, int i10, String str, Object obj) {
        if (obj == null) {
            return;
        }
        zzM(sb2, i10 + 1);
        sb2.append(str);
        sb2.append(": ");
        sb2.append(obj);
        sb2.append('\n');
    }

    private static final void zzT(StringBuilder sb2, int i10, String str, com.google.android.gms.internal.measurement.zzfl zzflVar) {
        String str2;
        if (zzflVar == null) {
            return;
        }
        zzM(sb2, i10);
        sb2.append(str);
        sb2.append(" {\n");
        if (zzflVar.zza()) {
            int zzm = zzflVar.zzm();
            if (zzm != 1) {
                if (zzm != 2) {
                    if (zzm != 3) {
                        if (zzm != 4) {
                            str2 = "BETWEEN";
                        } else {
                            str2 = "EQUAL";
                        }
                    } else {
                        str2 = "GREATER_THAN";
                    }
                } else {
                    str2 = "LESS_THAN";
                }
            } else {
                str2 = "UNKNOWN_COMPARISON_TYPE";
            }
            zzS(sb2, i10, "comparison_type", str2);
        }
        if (zzflVar.zzb()) {
            zzS(sb2, i10, "match_as_float", Boolean.valueOf(zzflVar.zzc()));
        }
        if (zzflVar.zzd()) {
            zzS(sb2, i10, "comparison_value", zzflVar.zze());
        }
        if (zzflVar.zzf()) {
            zzS(sb2, i10, "min_comparison_value", zzflVar.zzg());
        }
        if (zzflVar.zzh()) {
            zzS(sb2, i10, "max_comparison_value", zzflVar.zzi());
        }
        zzM(sb2, i10);
        sb2.append("}\n");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzm(String str) {
        if (str != null && str.matches("([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzn(List list, int i10) {
        if (i10 < list.size() * 64) {
            if (((1 << (i10 % 64)) & ((Long) list.get(i10 / 64)).longValue()) != 0) {
                return true;
            }
            return false;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List zzp(BitSet bitSet) {
        int length = (bitSet.length() + 63) / 64;
        ArrayList arrayList = new ArrayList(length);
        for (int i10 = 0; i10 < length; i10++) {
            long j10 = 0;
            for (int i11 = 0; i11 < 64; i11++) {
                int i12 = (i10 * 64) + i11;
                if (i12 >= bitSet.length()) {
                    break;
                }
                if (bitSet.get(i12)) {
                    j10 |= 1 << i11;
                }
            }
            arrayList.add(Long.valueOf(j10));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.google.android.gms.internal.measurement.zznl zzw(com.google.android.gms.internal.measurement.zznl zznlVar, byte[] bArr) throws com.google.android.gms.internal.measurement.zzmr {
        com.google.android.gms.internal.measurement.zzlr zza = com.google.android.gms.internal.measurement.zzlr.zza();
        if (zza != null) {
            return zznlVar.zzaV(bArr, zza);
        }
        return zznlVar.zzaW(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzx(com.google.android.gms.internal.measurement.zzic zzicVar, String str) {
        for (int i10 = 0; i10 < zzicVar.zzl(); i10++) {
            if (str.equals(zzicVar.zzm(i10).zzc())) {
                return i10;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Bundle[] zzy(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            com.google.android.gms.internal.measurement.zzhw zzhwVar = (com.google.android.gms.internal.measurement.zzhw) it.next();
            if (zzhwVar != null) {
                Bundle bundle = new Bundle();
                for (com.google.android.gms.internal.measurement.zzhw zzhwVar2 : zzhwVar.zzk()) {
                    if (zzhwVar2.zzc()) {
                        bundle.putString(zzhwVar2.zzb(), zzhwVar2.zzd());
                    } else if (zzhwVar2.zze()) {
                        bundle.putLong(zzhwVar2.zzb(), zzhwVar2.zzf());
                    } else if (zzhwVar2.zzi()) {
                        bundle.putDouble(zzhwVar2.zzb(), zzhwVar2.zzj());
                    }
                }
                if (!bundle.isEmpty()) {
                    arrayList.add(bundle);
                }
            }
        }
        return (Bundle[]) arrayList.toArray(new Bundle[arrayList.size()]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzbg zzA(com.google.android.gms.internal.measurement.zzaa zzaaVar) {
        String str;
        Object obj;
        Bundle zzB = zzB(zzaaVar.zzf(), true);
        if (zzB.containsKey("_o") && (obj = zzB.get("_o")) != null) {
            str = obj.toString();
        } else {
            str = MBridgeConstans.DYNAMIC_VIEW_WX_APP;
        }
        String str2 = str;
        String zzb = zzjm.zzb(zzaaVar.zzb());
        if (zzb == null) {
            zzb = zzaaVar.zzb();
        }
        return new zzbg(zzb, new zzbe(zzB), str2, zzaaVar.zza());
    }

    final Bundle zzB(Map map, boolean z10) {
        Bundle bundle = new Bundle();
        for (String str : map.keySet()) {
            Object obj = map.get(str);
            if (obj == null) {
                bundle.putString(str, null);
            } else if (obj instanceof Long) {
                bundle.putLong(str, ((Long) obj).longValue());
            } else if (obj instanceof Double) {
                bundle.putDouble(str, ((Double) obj).doubleValue());
            } else if (obj instanceof ArrayList) {
                if (z10) {
                    ArrayList arrayList = (ArrayList) obj;
                    ArrayList arrayList2 = new ArrayList();
                    int size = arrayList.size();
                    for (int i10 = 0; i10 < size; i10++) {
                        arrayList2.add(zzB((Map) arrayList.get(i10), false));
                    }
                    bundle.putParcelableArray(str, (Parcelable[]) arrayList2.toArray(new Parcelable[0]));
                }
            } else {
                bundle.putString(str, obj.toString());
            }
        }
        return bundle;
    }

    @Override // com.google.android.gms.measurement.internal.zzos
    protected final boolean zzbb() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzc(com.google.android.gms.internal.measurement.zzit zzitVar, Object obj) {
        Preconditions.checkNotNull(obj);
        zzitVar.zzd();
        zzitVar.zzf();
        zzitVar.zzh();
        if (obj instanceof String) {
            zzitVar.zzc((String) obj);
        } else if (obj instanceof Long) {
            zzitVar.zze(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            zzitVar.zzg(((Double) obj).doubleValue());
        } else {
            this.zzu.zzaV().zzb().zzb("Ignoring invalid (type) user attribute value", obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzd(com.google.android.gms.internal.measurement.zzhv zzhvVar, Object obj) {
        Bundle[] bundleArr;
        Preconditions.checkNotNull(obj);
        zzhvVar.zze();
        zzhvVar.zzg();
        zzhvVar.zzi();
        zzhvVar.zzm();
        if (obj instanceof String) {
            zzhvVar.zzd((String) obj);
        } else if (obj instanceof Long) {
            zzhvVar.zzf(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            zzhvVar.zzh(((Double) obj).doubleValue());
        } else if (obj instanceof Bundle[]) {
            ArrayList arrayList = new ArrayList();
            for (Bundle bundle : (Bundle[]) obj) {
                if (bundle != null) {
                    com.google.android.gms.internal.measurement.zzhv zzn = com.google.android.gms.internal.measurement.zzhw.zzn();
                    for (String str : bundle.keySet()) {
                        com.google.android.gms.internal.measurement.zzhv zzn2 = com.google.android.gms.internal.measurement.zzhw.zzn();
                        zzn2.zzb(str);
                        Object obj2 = bundle.get(str);
                        if (obj2 instanceof Long) {
                            zzn2.zzf(((Long) obj2).longValue());
                        } else if (obj2 instanceof String) {
                            zzn2.zzd((String) obj2);
                        } else if (obj2 instanceof Double) {
                            zzn2.zzh(((Double) obj2).doubleValue());
                        }
                        zzn.zzk(zzn2);
                    }
                    if (zzn.zzj() > 0) {
                        arrayList.add((com.google.android.gms.internal.measurement.zzhw) zzn.zzbc());
                    }
                }
            }
            zzhvVar.zzl(arrayList);
        } else {
            this.zzu.zzaV().zzb().zzb("Ignoring invalid (type) event param value", obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(30)
    public final zzoh zzf(String str, com.google.android.gms.internal.measurement.zzic zzicVar, com.google.android.gms.internal.measurement.zzhr zzhrVar, String str2) {
        int indexOf;
        zzqp.zza();
        zzic zzicVar2 = this.zzu;
        if (zzicVar2.zzc().zzp(str, zzfy.zzaP)) {
            long currentTimeMillis = zzicVar2.zzaZ().currentTimeMillis();
            Set a10 = g.a(zzicVar2.zzc().zzk(str, zzfy.zzau).split(","));
            zzpg zzpgVar = this.zzg;
            zzou zzf = zzpgVar.zzf();
            String zzc = zzf.zzg.zzh().zzc(str);
            Uri.Builder builder = new Uri.Builder();
            zzic zzicVar3 = zzf.zzu;
            builder.scheme(zzicVar3.zzc().zzk(str, zzfy.zzan));
            if (!TextUtils.isEmpty(zzc)) {
                String zzk = zzicVar3.zzc().zzk(str, zzfy.zzao);
                StringBuilder sb2 = new StringBuilder(String.valueOf(zzc).length() + 1 + String.valueOf(zzk).length());
                sb2.append(zzc);
                sb2.append(".");
                sb2.append(zzk);
                builder.authority(sb2.toString());
            } else {
                builder.authority(zzicVar3.zzc().zzk(str, zzfy.zzao));
            }
            builder.path(zzicVar3.zzc().zzk(str, zzfy.zzap));
            zzN(builder, "gmp_app_id", zzicVar.zzac(), a10);
            zzicVar2.zzc().zzi();
            zzN(builder, "gmp_version", String.valueOf(133005L), a10);
            String zzV = zzicVar.zzV();
            zzal zzc2 = zzicVar2.zzc();
            zzfx zzfxVar = zzfy.zzaS;
            if (zzc2.zzp(str, zzfxVar) && zzpgVar.zzh().zzt(str)) {
                zzV = "";
            }
            zzN(builder, "app_instance_id", zzV, a10);
            zzN(builder, "rdid", zzicVar.zzP(), a10);
            zzN(builder, "bundle_id", zzicVar.zzK(), a10);
            String zzk2 = zzhrVar.zzk();
            String zza = zzjm.zza(zzk2);
            if (true != TextUtils.isEmpty(zza)) {
                zzk2 = zza;
            }
            zzN(builder, "app_event_name", zzk2, a10);
            zzN(builder, "app_version", String.valueOf(zzicVar.zzai()), a10);
            String zzD = zzicVar.zzD();
            if (zzicVar2.zzc().zzp(str, zzfxVar) && zzpgVar.zzh().zzq(str) && !TextUtils.isEmpty(zzD) && (indexOf = zzD.indexOf(".")) != -1) {
                zzD = zzD.substring(0, indexOf);
            }
            zzN(builder, TTVideoEngineInterface.PLAY_API_KEY_OSVERSION, zzD, a10);
            zzN(builder, "timestamp", String.valueOf(zzhrVar.zzn()), a10);
            String str3 = "1";
            if (zzicVar.zzS()) {
                zzN(builder, "lat", "1", a10);
            }
            zzN(builder, "privacy_sandbox_version", String.valueOf(zzicVar.zzaG()), a10);
            zzN(builder, "trigger_uri_source", "1", a10);
            zzN(builder, "trigger_uri_timestamp", String.valueOf(currentTimeMillis), a10);
            zzN(builder, "request_uuid", str2, a10);
            List<com.google.android.gms.internal.measurement.zzhw> zza2 = zzhrVar.zza();
            Bundle bundle = new Bundle();
            for (com.google.android.gms.internal.measurement.zzhw zzhwVar : zza2) {
                String zzb = zzhwVar.zzb();
                if (zzhwVar.zzi()) {
                    bundle.putString(zzb, String.valueOf(zzhwVar.zzj()));
                } else if (zzhwVar.zzg()) {
                    bundle.putString(zzb, String.valueOf(zzhwVar.zzh()));
                } else if (zzhwVar.zzc()) {
                    bundle.putString(zzb, zzhwVar.zzd());
                } else if (zzhwVar.zze()) {
                    bundle.putString(zzb, String.valueOf(zzhwVar.zzf()));
                }
            }
            zzQ(builder, zzicVar2.zzc().zzk(str, zzfy.zzat).split("\\|"), bundle, a10);
            List<com.google.android.gms.internal.measurement.zziu> zzk3 = zzicVar.zzk();
            Bundle bundle2 = new Bundle();
            for (com.google.android.gms.internal.measurement.zziu zziuVar : zzk3) {
                String zzc3 = zziuVar.zzc();
                if (zziuVar.zzj()) {
                    bundle2.putString(zzc3, String.valueOf(zziuVar.zzk()));
                } else if (zziuVar.zzh()) {
                    bundle2.putString(zzc3, String.valueOf(zziuVar.zzi()));
                } else if (zziuVar.zzd()) {
                    bundle2.putString(zzc3, zziuVar.zze());
                } else if (zziuVar.zzf()) {
                    bundle2.putString(zzc3, String.valueOf(zziuVar.zzg()));
                }
            }
            zzQ(builder, zzicVar2.zzc().zzk(str, zzfy.zzas).split("\\|"), bundle2, a10);
            if (true != zzicVar.zzaC()) {
                str3 = MBridgeConstans.ENDCARD_URL_TYPE_PL;
            }
            zzN(builder, "dma", str3, a10);
            if (!zzicVar.zzaE().isEmpty()) {
                zzN(builder, "dma_cps", zzicVar.zzaE(), a10);
            }
            if (zzicVar.zzaK()) {
                com.google.android.gms.internal.measurement.zzha zzaL = zzicVar.zzaL();
                if (!zzaL.zzb().isEmpty()) {
                    zzN(builder, "dl_gclid", zzaL.zzb(), a10);
                }
                if (!zzaL.zzd().isEmpty()) {
                    zzN(builder, "dl_gbraid", zzaL.zzd(), a10);
                }
                if (!zzaL.zzf().isEmpty()) {
                    zzN(builder, "dl_gs", zzaL.zzf(), a10);
                }
                if (zzaL.zzh() > 0) {
                    zzN(builder, "dl_ss_ts", String.valueOf(zzaL.zzh()), a10);
                }
                if (!zzaL.zzj().isEmpty()) {
                    zzN(builder, "mr_gclid", zzaL.zzj(), a10);
                }
                if (!zzaL.zzm().isEmpty()) {
                    zzN(builder, "mr_gbraid", zzaL.zzm(), a10);
                }
                if (!zzaL.zzo().isEmpty()) {
                    zzN(builder, "mr_gs", zzaL.zzo(), a10);
                }
                if (zzaL.zzq() > 0) {
                    zzN(builder, "mr_click_ts", String.valueOf(zzaL.zzq()), a10);
                }
            }
            return new zzoh(builder.build().toString(), currentTimeMillis, 1);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final com.google.android.gms.internal.measurement.zzhs zzh(zzbb zzbbVar) {
        com.google.android.gms.internal.measurement.zzhr zzk = com.google.android.gms.internal.measurement.zzhs.zzk();
        zzk.zzq(zzbbVar.zze);
        zzbe zzbeVar = zzbbVar.zzf;
        zzbd zzbdVar = new zzbd(zzbeVar);
        while (zzbdVar.hasNext()) {
            String next = zzbdVar.next();
            com.google.android.gms.internal.measurement.zzhv zzn = com.google.android.gms.internal.measurement.zzhw.zzn();
            zzn.zzb(next);
            Object zza = zzbeVar.zza(next);
            Preconditions.checkNotNull(zza);
            zzd(zzn, zza);
            zzk.zzg(zzn);
        }
        String str = zzbbVar.zzc;
        if (!TextUtils.isEmpty(str) && zzbeVar.zza("_o") == null) {
            com.google.android.gms.internal.measurement.zzhv zzn2 = com.google.android.gms.internal.measurement.zzhw.zzn();
            zzn2.zzb("_o");
            zzn2.zzd(str);
            zzk.zzf((com.google.android.gms.internal.measurement.zzhw) zzn2.zzbc());
        }
        return (com.google.android.gms.internal.measurement.zzhs) zzk.zzbc();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zzi(com.google.android.gms.internal.measurement.zzib zzibVar) {
        Long l10;
        Long l11;
        String str;
        String str2;
        String str3;
        String str4;
        com.google.android.gms.internal.measurement.zzhe zzat;
        if (zzibVar == null) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\nbatch {\n");
        if (zzibVar.zzf()) {
            zzS(sb2, 0, "upload_subdomain", zzibVar.zzg());
        }
        if (zzibVar.zzd()) {
            zzS(sb2, 0, "sgtm_join_id", zzibVar.zze());
        }
        for (com.google.android.gms.internal.measurement.zzid zzidVar : zzibVar.zza()) {
            if (zzidVar != null) {
                zzM(sb2, 1);
                sb2.append("bundle {\n");
                if (zzidVar.zza()) {
                    zzS(sb2, 1, "protocol_version", Integer.valueOf(zzidVar.zzb()));
                }
                zzrb.zza();
                zzic zzicVar = this.zzu;
                if (zzicVar.zzc().zzp(zzidVar.zzA(), zzfy.zzaM) && zzidVar.zzag()) {
                    zzS(sb2, 1, "session_stitching_token", zzidVar.zzah());
                }
                zzS(sb2, 1, "platform", zzidVar.zzt());
                if (zzidVar.zzC()) {
                    zzS(sb2, 1, "gmp_version", Long.valueOf(zzidVar.zzD()));
                }
                if (zzidVar.zzE()) {
                    zzS(sb2, 1, "uploading_gmp_version", Long.valueOf(zzidVar.zzF()));
                }
                if (zzidVar.zzac()) {
                    zzS(sb2, 1, "dynamite_version", Long.valueOf(zzidVar.zzad()));
                }
                if (zzidVar.zzW()) {
                    zzS(sb2, 1, Module.CommonKey.ConfigVersion, Long.valueOf(zzidVar.zzX()));
                }
                zzS(sb2, 1, "gmp_app_id", zzidVar.zzP());
                zzS(sb2, 1, "app_id", zzidVar.zzA());
                zzS(sb2, 1, "app_version", zzidVar.zzB());
                if (zzidVar.zzU()) {
                    zzS(sb2, 1, "app_version_major", Integer.valueOf(zzidVar.zzV()));
                }
                zzS(sb2, 1, "firebase_instance_id", zzidVar.zzT());
                if (zzidVar.zzK()) {
                    zzS(sb2, 1, "dev_cert_hash", Long.valueOf(zzidVar.zzL()));
                }
                zzS(sb2, 1, "app_store", zzidVar.zzz());
                if (zzidVar.zzi()) {
                    zzS(sb2, 1, "upload_timestamp_millis", Long.valueOf(zzidVar.zzj()));
                }
                if (zzidVar.zzk()) {
                    zzS(sb2, 1, "start_timestamp_millis", Long.valueOf(zzidVar.zzm()));
                }
                if (zzidVar.zzn()) {
                    zzS(sb2, 1, "end_timestamp_millis", Long.valueOf(zzidVar.zzo()));
                }
                if (zzidVar.zzp()) {
                    zzS(sb2, 1, "previous_bundle_start_timestamp_millis", Long.valueOf(zzidVar.zzq()));
                }
                if (zzidVar.zzr()) {
                    zzS(sb2, 1, "previous_bundle_end_timestamp_millis", Long.valueOf(zzidVar.zzs()));
                }
                zzS(sb2, 1, "app_instance_id", zzidVar.zzJ());
                zzS(sb2, 1, "resettable_device_id", zzidVar.zzG());
                zzS(sb2, 1, "ds_id", zzidVar.zzZ());
                if (zzidVar.zzH()) {
                    zzS(sb2, 1, "limited_ad_tracking", Boolean.valueOf(zzidVar.zzI()));
                }
                zzS(sb2, 1, TTVideoEngineInterface.PLAY_API_KEY_OSVERSION, zzidVar.zzu());
                zzS(sb2, 1, "device_model", zzidVar.zzv());
                zzS(sb2, 1, "user_default_language", zzidVar.zzw());
                if (zzidVar.zzx()) {
                    zzS(sb2, 1, "time_zone_offset_minutes", Integer.valueOf(zzidVar.zzy()));
                }
                if (zzidVar.zzM()) {
                    zzS(sb2, 1, "bundle_sequential_index", Integer.valueOf(zzidVar.zzN()));
                }
                if (zzidVar.zzau()) {
                    zzS(sb2, 1, "delivery_index", Integer.valueOf(zzidVar.zzav()));
                }
                if (zzidVar.zzQ()) {
                    zzS(sb2, 1, "service_upload", Boolean.valueOf(zzidVar.zzR()));
                }
                zzS(sb2, 1, "health_monitor", zzidVar.zzO());
                if (zzidVar.zzaa()) {
                    zzS(sb2, 1, "retry_counter", Integer.valueOf(zzidVar.zzab()));
                }
                if (zzidVar.zzae()) {
                    zzS(sb2, 1, "consent_signals", zzidVar.zzaf());
                }
                if (zzidVar.zzan()) {
                    zzS(sb2, 1, "is_dma_region", Boolean.valueOf(zzidVar.zzao()));
                }
                if (zzidVar.zzap()) {
                    zzS(sb2, 1, "core_platform_services", zzidVar.zzaq());
                }
                if (zzidVar.zzal()) {
                    zzS(sb2, 1, "consent_diagnostics", zzidVar.zzam());
                }
                if (zzidVar.zzai()) {
                    zzS(sb2, 1, "target_os_version", Long.valueOf(zzidVar.zzaj()));
                }
                zzqp.zza();
                if (zzicVar.zzc().zzp(zzidVar.zzA(), zzfy.zzaP)) {
                    zzS(sb2, 1, "ad_services_version", Integer.valueOf(zzidVar.zzar()));
                    if (zzidVar.zzas() && (zzat = zzidVar.zzat()) != null) {
                        zzM(sb2, 2);
                        sb2.append("attribution_eligibility_status {\n");
                        zzS(sb2, 2, "eligible", Boolean.valueOf(zzat.zza()));
                        zzS(sb2, 2, "no_access_adservices_attribution_permission", Boolean.valueOf(zzat.zzb()));
                        zzS(sb2, 2, "pre_r", Boolean.valueOf(zzat.zzc()));
                        zzS(sb2, 2, "r_extensions_too_old", Boolean.valueOf(zzat.zzd()));
                        zzS(sb2, 2, "adservices_extension_too_old", Boolean.valueOf(zzat.zze()));
                        zzS(sb2, 2, "ad_storage_not_allowed", Boolean.valueOf(zzat.zzf()));
                        zzS(sb2, 2, "measurement_manager_disabled", Boolean.valueOf(zzat.zzg()));
                        zzM(sb2, 2);
                        sb2.append("}\n");
                    }
                }
                if (zzidVar.zzaw()) {
                    com.google.android.gms.internal.measurement.zzha zzax = zzidVar.zzax();
                    zzM(sb2, 2);
                    sb2.append("ad_campaign_info {\n");
                    if (zzax.zza()) {
                        zzS(sb2, 2, "deep_link_gclid", zzax.zzb());
                    }
                    if (zzax.zzc()) {
                        zzS(sb2, 2, "deep_link_gbraid", zzax.zzd());
                    }
                    if (zzax.zze()) {
                        zzS(sb2, 2, "deep_link_gad_source", zzax.zzf());
                    }
                    if (zzax.zzg()) {
                        zzS(sb2, 2, "deep_link_session_millis", Long.valueOf(zzax.zzh()));
                    }
                    if (zzax.zzi()) {
                        zzS(sb2, 2, "market_referrer_gclid", zzax.zzj());
                    }
                    if (zzax.zzk()) {
                        zzS(sb2, 2, "market_referrer_gbraid", zzax.zzm());
                    }
                    if (zzax.zzn()) {
                        zzS(sb2, 2, "market_referrer_gad_source", zzax.zzo());
                    }
                    if (zzax.zzp()) {
                        zzS(sb2, 2, "market_referrer_click_millis", Long.valueOf(zzax.zzq()));
                    }
                    zzM(sb2, 2);
                    sb2.append("}\n");
                }
                if (zzidVar.zzaA()) {
                    zzS(sb2, 1, "batching_timestamp_millis", Long.valueOf(zzidVar.zzaB()));
                }
                if (zzidVar.zzay()) {
                    com.google.android.gms.internal.measurement.zzis zzaz = zzidVar.zzaz();
                    zzM(sb2, 2);
                    sb2.append("sgtm_diagnostics {\n");
                    int zzf = zzaz.zzf();
                    if (zzf != 1) {
                        if (zzf != 2) {
                            if (zzf != 3) {
                                if (zzf != 4) {
                                    str3 = "SDK_SERVICE_UPLOAD";
                                } else {
                                    str3 = "PACKAGE_SERVICE_UPLOAD";
                                }
                            } else {
                                str3 = "SDK_CLIENT_UPLOAD";
                            }
                        } else {
                            str3 = "GA_UPLOAD";
                        }
                    } else {
                        str3 = "UPLOAD_TYPE_UNKNOWN";
                    }
                    zzS(sb2, 2, "upload_type", str3);
                    zzS(sb2, 2, "client_upload_eligibility", zzaz.zza().name());
                    int zzg = zzaz.zzg();
                    if (zzg != 1) {
                        if (zzg != 2) {
                            if (zzg != 3) {
                                if (zzg != 4) {
                                    if (zzg != 5) {
                                        str4 = "NON_PLAY_MISSING_SGTM_SERVER_URL";
                                    } else {
                                        str4 = "MISSING_SGTM_PROXY_INFO";
                                    }
                                } else {
                                    str4 = "MISSING_SGTM_SETTINGS";
                                }
                            } else {
                                str4 = "NOT_IN_ROLLOUT";
                            }
                        } else {
                            str4 = "SERVICE_UPLOAD_ELIGIBLE";
                        }
                    } else {
                        str4 = "SERVICE_UPLOAD_ELIGIBILITY_UNKNOWN";
                    }
                    zzS(sb2, 2, "service_upload_eligibility", str4);
                    zzM(sb2, 2);
                    sb2.append("}\n");
                }
                if (zzidVar.zzaC()) {
                    com.google.android.gms.internal.measurement.zzho zzaD = zzidVar.zzaD();
                    zzM(sb2, 2);
                    sb2.append("consent_info_extra {\n");
                    for (com.google.android.gms.internal.measurement.zzhl zzhlVar : zzaD.zza()) {
                        zzM(sb2, 3);
                        sb2.append("limited_data_modes {\n");
                        int zzc = zzhlVar.zzc();
                        if (zzc != 1) {
                            if (zzc != 2) {
                                if (zzc != 3) {
                                    if (zzc != 4) {
                                        str = "AD_PERSONALIZATION";
                                    } else {
                                        str = "AD_USER_DATA";
                                    }
                                } else {
                                    str = "ANALYTICS_STORAGE";
                                }
                            } else {
                                str = "AD_STORAGE";
                            }
                        } else {
                            str = "CONSENT_TYPE_UNSPECIFIED";
                        }
                        zzS(sb2, 3, "type", str);
                        int zzd = zzhlVar.zzd();
                        if (zzd != 1) {
                            if (zzd != 2) {
                                str2 = "NO_DATA_MODE";
                            } else {
                                str2 = "LIMITED_MODE";
                            }
                        } else {
                            str2 = "NOT_LIMITED";
                        }
                        zzS(sb2, 3, "mode", str2);
                        zzM(sb2, 3);
                        sb2.append("}\n");
                    }
                    zzM(sb2, 2);
                    sb2.append("}\n");
                }
                List<com.google.android.gms.internal.measurement.zziu> zzf2 = zzidVar.zzf();
                if (zzf2 != null) {
                    for (com.google.android.gms.internal.measurement.zziu zziuVar : zzf2) {
                        if (zziuVar != null) {
                            zzM(sb2, 2);
                            sb2.append("user_property {\n");
                            Double d10 = null;
                            if (zziuVar.zza()) {
                                l10 = Long.valueOf(zziuVar.zzb());
                            } else {
                                l10 = null;
                            }
                            zzS(sb2, 2, "set_timestamp_millis", l10);
                            zzS(sb2, 2, "name", zzicVar.zzl().zzc(zziuVar.zzc()));
                            zzS(sb2, 2, "string_value", zziuVar.zze());
                            if (zziuVar.zzf()) {
                                l11 = Long.valueOf(zziuVar.zzg());
                            } else {
                                l11 = null;
                            }
                            zzS(sb2, 2, TextureRenderKeys.KEY_IS_INT_VALUE, l11);
                            if (zziuVar.zzj()) {
                                d10 = Double.valueOf(zziuVar.zzk());
                            }
                            zzS(sb2, 2, "double_value", d10);
                            zzM(sb2, 2);
                            sb2.append("}\n");
                        }
                    }
                }
                List<com.google.android.gms.internal.measurement.zzhg> zzS = zzidVar.zzS();
                if (zzS != null) {
                    for (com.google.android.gms.internal.measurement.zzhg zzhgVar : zzS) {
                        if (zzhgVar != null) {
                            zzM(sb2, 2);
                            sb2.append("audience_membership {\n");
                            if (zzhgVar.zza()) {
                                zzS(sb2, 2, "audience_id", Integer.valueOf(zzhgVar.zzb()));
                            }
                            if (zzhgVar.zzf()) {
                                zzS(sb2, 2, "new_audience", Boolean.valueOf(zzhgVar.zzg()));
                            }
                            zzR(sb2, 2, "current_data", zzhgVar.zzc());
                            if (zzhgVar.zzd()) {
                                zzR(sb2, 2, "previous_data", zzhgVar.zze());
                            }
                            zzM(sb2, 2);
                            sb2.append("}\n");
                        }
                    }
                }
                List<com.google.android.gms.internal.measurement.zzhs> zzc2 = zzidVar.zzc();
                if (zzc2 != null) {
                    for (com.google.android.gms.internal.measurement.zzhs zzhsVar : zzc2) {
                        if (zzhsVar != null) {
                            zzM(sb2, 2);
                            sb2.append("event {\n");
                            zzS(sb2, 2, "name", zzicVar.zzl().zza(zzhsVar.zzd()));
                            if (zzhsVar.zze()) {
                                zzS(sb2, 2, "timestamp_millis", Long.valueOf(zzhsVar.zzf()));
                            }
                            if (zzhsVar.zzg()) {
                                zzS(sb2, 2, "previous_timestamp_millis", Long.valueOf(zzhsVar.zzh()));
                            }
                            if (zzhsVar.zzi()) {
                                zzS(sb2, 2, MetricsSQLiteCacheKt.METRICS_COUNT, Integer.valueOf(zzhsVar.zzj()));
                            }
                            if (zzhsVar.zzb() != 0) {
                                zzK(sb2, 2, zzhsVar.zza());
                            }
                            zzM(sb2, 2);
                            sb2.append("}\n");
                        }
                    }
                }
                zzM(sb2, 1);
                sb2.append("}\n");
            }
        }
        sb2.append("} // End-of-batch\n");
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zzj(com.google.android.gms.internal.measurement.zzff zzffVar) {
        if (zzffVar == null) {
            return "null";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\nevent_filter {\n");
        if (zzffVar.zza()) {
            zzS(sb2, 0, "filter_id", Integer.valueOf(zzffVar.zzb()));
        }
        zzS(sb2, 0, "event_name", this.zzu.zzl().zza(zzffVar.zzc()));
        String zzO = zzO(zzffVar.zzi(), zzffVar.zzj(), zzffVar.zzm());
        if (!zzO.isEmpty()) {
            zzS(sb2, 0, "filter_type", zzO);
        }
        if (zzffVar.zzg()) {
            zzT(sb2, 1, "event_count_filter", zzffVar.zzh());
        }
        if (zzffVar.zze() > 0) {
            sb2.append("  filters {\n");
            for (com.google.android.gms.internal.measurement.zzfh zzfhVar : zzffVar.zzd()) {
                zzL(sb2, 2, zzfhVar);
            }
        }
        zzM(sb2, 1);
        sb2.append("}\n}\n");
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zzk(com.google.android.gms.internal.measurement.zzfn zzfnVar) {
        if (zzfnVar == null) {
            return "null";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\nproperty_filter {\n");
        if (zzfnVar.zza()) {
            zzS(sb2, 0, "filter_id", Integer.valueOf(zzfnVar.zzb()));
        }
        zzS(sb2, 0, "property_name", this.zzu.zzl().zzc(zzfnVar.zzc()));
        String zzO = zzO(zzfnVar.zze(), zzfnVar.zzf(), zzfnVar.zzh());
        if (!zzO.isEmpty()) {
            zzS(sb2, 0, "filter_type", zzO);
        }
        zzL(sb2, 1, zzfnVar.zzd());
        sb2.append("}\n");
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Parcelable zzl(byte[] bArr, Parcelable.Creator creator) {
        Parcelable parcelable = null;
        if (bArr == null) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        try {
            try {
                obtain.unmarshall(bArr, 0, bArr.length);
                obtain.setDataPosition(0);
                parcelable = (Parcelable) creator.createFromParcel(obtain);
            } catch (SafeParcelReader.ParseException unused) {
                this.zzu.zzaV().zzb().zza("Failed to load parcelable from buffer");
            }
            return parcelable;
        } finally {
            obtain.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List zzq(List list, List list2) {
        int i10;
        ArrayList arrayList = new ArrayList(list);
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            if (num.intValue() < 0) {
                this.zzu.zzaV().zze().zzb("Ignoring negative bit index to be cleared", num);
            } else {
                int intValue = num.intValue() / 64;
                if (intValue >= arrayList.size()) {
                    this.zzu.zzaV().zze().zzc("Ignoring bit index greater than bitSet size", num, Integer.valueOf(arrayList.size()));
                } else {
                    arrayList.set(intValue, Long.valueOf(((Long) arrayList.get(intValue)).longValue() & (~(1 << (num.intValue() % 64)))));
                }
            }
        }
        int size = arrayList.size();
        int size2 = arrayList.size() - 1;
        while (true) {
            int i11 = size2;
            i10 = size;
            size = i11;
            if (size < 0 || ((Long) arrayList.get(size)).longValue() != 0) {
                break;
            }
            size2 = size - 1;
        }
        return arrayList.subList(0, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzs(long j10, long j11) {
        if (j10 != 0 && j11 > 0 && Math.abs(this.zzu.zzaZ().currentTimeMillis() - j10) <= j11) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final long zzt(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        zzic zzicVar = this.zzu;
        zzicVar.zzk().zzg();
        MessageDigest zzO = zzpp.zzO();
        if (zzO == null) {
            zzicVar.zzaV().zzb().zza("Failed to get MD5");
            return 0L;
        }
        return zzpp.zzP(zzO.digest(bArr));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long zzu(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0L;
        }
        return zzt(str.getBytes(Charset.forName("UTF-8")));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final byte[] zzv(byte[] bArr) throws IOException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e10) {
            this.zzu.zzaV().zzb().zzb("Failed to gzip content", e10);
            throw e10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0032, code lost:
        r5 = new java.util.ArrayList();
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0038, code lost:
        if (r4 == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003a, code lost:
        r3 = (android.os.Parcelable[]) r3;
        r4 = r3.length;
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x003e, code lost:
        if (r7 >= r4) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0040, code lost:
        r8 = r3[r7];
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0044, code lost:
        if ((r8 instanceof android.os.Bundle) == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0046, code lost:
        r5.add(zzz((android.os.Bundle) r8, false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004f, code lost:
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0054, code lost:
        if ((r3 instanceof java.util.ArrayList) == false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0056, code lost:
        r3 = (java.util.ArrayList) r3;
        r4 = r3.size();
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005d, code lost:
        if (r7 >= r4) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x005f, code lost:
        r8 = r3.get(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0065, code lost:
        if ((r8 instanceof android.os.Bundle) == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0067, code lost:
        r5.add(zzz((android.os.Bundle) r8, false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0070, code lost:
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0075, code lost:
        if ((r3 instanceof android.os.Bundle) == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0077, code lost:
        r5.add(zzz((android.os.Bundle) r3, false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0080, code lost:
        r0.put(r2, r5);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map zzz(android.os.Bundle r11, boolean r12) {
        /*
            r10 = this;
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            java.util.Set r1 = r11.keySet()
            java.util.Iterator r1 = r1.iterator()
        Ld:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L84
            java.lang.Object r2 = r1.next()
            java.lang.String r2 = (java.lang.String) r2
            java.lang.Object r3 = r11.get(r2)
            boolean r4 = r3 instanceof android.os.Parcelable[]
            if (r4 != 0) goto L30
            boolean r5 = r3 instanceof java.util.ArrayList
            if (r5 != 0) goto L30
            boolean r5 = r3 instanceof android.os.Bundle
            if (r5 == 0) goto L2a
            goto L30
        L2a:
            if (r3 == 0) goto Ld
            r0.put(r2, r3)
            goto Ld
        L30:
            if (r12 == 0) goto Ld
            java.util.ArrayList r5 = new java.util.ArrayList
            r5.<init>()
            r6 = 0
            if (r4 == 0) goto L52
            android.os.Parcelable[] r3 = (android.os.Parcelable[]) r3
            int r4 = r3.length
            r7 = r6
        L3e:
            if (r7 >= r4) goto L80
            r8 = r3[r7]
            boolean r9 = r8 instanceof android.os.Bundle
            if (r9 == 0) goto L4f
            android.os.Bundle r8 = (android.os.Bundle) r8
            java.util.Map r8 = r10.zzz(r8, r6)
            r5.add(r8)
        L4f:
            int r7 = r7 + 1
            goto L3e
        L52:
            boolean r4 = r3 instanceof java.util.ArrayList
            if (r4 == 0) goto L73
            java.util.ArrayList r3 = (java.util.ArrayList) r3
            int r4 = r3.size()
            r7 = r6
        L5d:
            if (r7 >= r4) goto L80
            java.lang.Object r8 = r3.get(r7)
            boolean r9 = r8 instanceof android.os.Bundle
            if (r9 == 0) goto L70
            android.os.Bundle r8 = (android.os.Bundle) r8
            java.util.Map r8 = r10.zzz(r8, r6)
            r5.add(r8)
        L70:
            int r7 = r7 + 1
            goto L5d
        L73:
            boolean r4 = r3 instanceof android.os.Bundle
            if (r4 == 0) goto L80
            android.os.Bundle r3 = (android.os.Bundle) r3
            java.util.Map r3 = r10.zzz(r3, r6)
            r5.add(r3)
        L80:
            r0.put(r2, r5)
            goto Ld
        L84:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzpk.zzz(android.os.Bundle, boolean):java.util.Map");
    }
}
