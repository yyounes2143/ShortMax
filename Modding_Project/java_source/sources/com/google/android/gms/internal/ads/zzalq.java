package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.SpannableStringBuilder;
import android.util.Base64;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzalq {
    @Nullable
    public final String zza;
    @Nullable
    public final String zzb;
    public final boolean zzc;
    public final long zzd;
    public final long zze;
    @Nullable
    public final zzalw zzf;
    public final String zzg;
    @Nullable
    public final String zzh;
    @Nullable
    public final zzalq zzi;
    @Nullable
    private final String[] zzj;
    private final HashMap zzk;
    private final HashMap zzl;
    private List zzm;

    private zzalq(@Nullable String str, @Nullable String str2, long j10, long j11, @Nullable zzalw zzalwVar, @Nullable String[] strArr, String str3, @Nullable String str4, @Nullable zzalq zzalqVar) {
        boolean z10;
        this.zza = str;
        this.zzb = str2;
        this.zzh = str4;
        this.zzf = zzalwVar;
        this.zzj = strArr;
        if (str2 != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.zzc = z10;
        this.zzd = j10;
        this.zze = j11;
        str3.getClass();
        this.zzg = str3;
        this.zzi = zzalqVar;
        this.zzk = new HashMap();
        this.zzl = new HashMap();
    }

    public static zzalq zzb(@Nullable String str, long j10, long j11, @Nullable zzalw zzalwVar, @Nullable String[] strArr, String str2, @Nullable String str3, @Nullable zzalq zzalqVar) {
        return new zzalq(str, null, j10, j11, zzalwVar, strArr, str2, str3, zzalqVar);
    }

    public static zzalq zzc(String str) {
        return new zzalq(null, str.replaceAll("\r\n", "\n").replaceAll(" *\n *", "\n").replaceAll("\n", " ").replaceAll("[ \t\\x0B\f\r]+", " "), -9223372036854775807L, -9223372036854775807L, null, null, "", null, null);
    }

    private static SpannableStringBuilder zzi(String str, Map map) {
        if (!map.containsKey(str)) {
            zzcs zzcsVar = new zzcs();
            zzcsVar.zzl(new SpannableStringBuilder());
            map.put(str, zzcsVar);
        }
        CharSequence zzr = ((zzcs) map.get(str)).zzr();
        zzr.getClass();
        return (SpannableStringBuilder) zzr;
    }

    private final void zzj(TreeSet treeSet, boolean z10) {
        String str = this.zza;
        boolean equals = TtmlNode.TAG_P.equals(str);
        boolean equals2 = TtmlNode.TAG_DIV.equals(str);
        if (z10 || equals || (equals2 && this.zzh != null)) {
            long j10 = this.zzd;
            if (j10 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j10));
            }
            long j11 = this.zze;
            if (j11 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j11));
            }
        }
        if (this.zzm != null) {
            for (int i10 = 0; i10 < this.zzm.size(); i10++) {
                zzalq zzalqVar = (zzalq) this.zzm.get(i10);
                boolean z11 = true;
                if (!z10 && !equals) {
                    z11 = false;
                }
                zzalqVar.zzj(treeSet, z11);
            }
        }
    }

    private final void zzk(long j10, String str, List list) {
        String str2;
        String str3 = this.zzg;
        if (true != "".equals(str3)) {
            str = str3;
        }
        if (zzg(j10) && TtmlNode.TAG_DIV.equals(this.zza) && (str2 = this.zzh) != null) {
            list.add(new Pair(str, str2));
            return;
        }
        for (int i10 = 0; i10 < zza(); i10++) {
            zzd(i10).zzk(j10, str, list);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0237  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzl(long r18, java.util.Map r20, java.util.Map r21, java.lang.String r22, java.util.Map r23) {
        /*
            Method dump skipped, instructions count: 659
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzalq.zzl(long, java.util.Map, java.util.Map, java.lang.String, java.util.Map):void");
    }

    private final void zzm(long j10, boolean z10, String str, Map map) {
        String str2;
        boolean z11;
        HashMap hashMap = this.zzk;
        hashMap.clear();
        HashMap hashMap2 = this.zzl;
        hashMap2.clear();
        String str3 = this.zza;
        if (!TtmlNode.TAG_METADATA.equals(str3)) {
            String str4 = this.zzg;
            if (true != "".equals(str4)) {
                str2 = str4;
            } else {
                str2 = str;
            }
            if (this.zzc && z10) {
                SpannableStringBuilder zzi = zzi(str2, map);
                String str5 = this.zzb;
                str5.getClass();
                zzi.append((CharSequence) str5);
            } else if ("br".equals(str3) && z10) {
                zzi(str2, map).append('\n');
            } else if (zzg(j10)) {
                for (Map.Entry entry : map.entrySet()) {
                    CharSequence zzr = ((zzcs) entry.getValue()).zzr();
                    zzr.getClass();
                    hashMap.put((String) entry.getKey(), Integer.valueOf(zzr.length()));
                }
                boolean equals = TtmlNode.TAG_P.equals(str3);
                for (int i10 = 0; i10 < zza(); i10++) {
                    zzalq zzd = zzd(i10);
                    if (z10 || equals) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    zzd.zzm(j10, z11, str2, map);
                }
                if (equals) {
                    SpannableStringBuilder zzi2 = zzi(str2, map);
                    int length = zzi2.length();
                    do {
                        length--;
                        if (length < 0) {
                            break;
                        }
                    } while (zzi2.charAt(length) == ' ');
                    if (length >= 0 && zzi2.charAt(length) != '\n') {
                        zzi2.append('\n');
                    }
                }
                for (Map.Entry entry2 : map.entrySet()) {
                    CharSequence zzr2 = ((zzcs) entry2.getValue()).zzr();
                    zzr2.getClass();
                    hashMap2.put((String) entry2.getKey(), Integer.valueOf(zzr2.length()));
                }
            }
        }
    }

    public final int zza() {
        List list = this.zzm;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public final zzalq zzd(int i10) {
        List list = this.zzm;
        if (list != null) {
            return (zzalq) list.get(i10);
        }
        throw new IndexOutOfBoundsException();
    }

    public final List zze(long j10, Map map, Map map2, Map map3) {
        zzalo[] zzaloVarArr;
        List arrayList = new ArrayList();
        String str = this.zzg;
        zzk(j10, str, arrayList);
        TreeMap treeMap = new TreeMap();
        zzm(j10, false, str, treeMap);
        zzl(j10, map, map2, str, treeMap);
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            Pair pair = (Pair) arrayList.get(i10);
            String str2 = (String) map3.get(pair.second);
            if (str2 != null) {
                byte[] decode = Base64.decode(str2, 0);
                Bitmap decodeByteArray = BitmapFactory.decodeByteArray(decode, 0, decode.length);
                zzalu zzaluVar = (zzalu) map2.get(pair.first);
                zzaluVar.getClass();
                zzcs zzcsVar = new zzcs();
                zzcsVar.zzc(decodeByteArray);
                zzcsVar.zzh(zzaluVar.zzb);
                zzcsVar.zzi(0);
                zzcsVar.zze(zzaluVar.zzc, 0);
                zzcsVar.zzf(zzaluVar.zze);
                zzcsVar.zzk(zzaluVar.zzf);
                zzcsVar.zzd(zzaluVar.zzg);
                zzcsVar.zzo(zzaluVar.zzj);
                arrayList2.add(zzcsVar.zzq());
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            zzalu zzaluVar2 = (zzalu) map2.get(entry.getKey());
            zzaluVar2.getClass();
            zzcs zzcsVar2 = (zzcs) entry.getValue();
            CharSequence zzr = zzcsVar2.zzr();
            zzr.getClass();
            SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) zzr;
            for (zzalo zzaloVar : (zzalo[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), zzalo.class)) {
                spannableStringBuilder.replace(spannableStringBuilder.getSpanStart(zzaloVar), spannableStringBuilder.getSpanEnd(zzaloVar), (CharSequence) "");
            }
            int i11 = 0;
            while (i11 < spannableStringBuilder.length()) {
                int i12 = i11 + 1;
                if (spannableStringBuilder.charAt(i11) == ' ') {
                    int i13 = i12;
                    while (i13 < spannableStringBuilder.length() && spannableStringBuilder.charAt(i13) == ' ') {
                        i13++;
                    }
                    int i14 = i13 - i12;
                    if (i14 > 0) {
                        spannableStringBuilder.delete(i11, i14 + i11);
                    }
                }
                i11 = i12;
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(0) == ' ') {
                spannableStringBuilder.delete(0, 1);
            }
            int i15 = 0;
            while (i15 < spannableStringBuilder.length() - 1) {
                int i16 = i15 + 1;
                if (spannableStringBuilder.charAt(i15) == '\n' && spannableStringBuilder.charAt(i16) == ' ') {
                    spannableStringBuilder.delete(i16, i15 + 2);
                }
                i15 = i16;
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == ' ') {
                spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
            }
            int i17 = 0;
            while (i17 < spannableStringBuilder.length() - 1) {
                int i18 = i17 + 1;
                if (spannableStringBuilder.charAt(i17) == ' ' && spannableStringBuilder.charAt(i18) == '\n') {
                    spannableStringBuilder.delete(i17, i18);
                }
                i17 = i18;
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == '\n') {
                spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
            }
            zzcsVar2.zze(zzaluVar2.zzc, zzaluVar2.zzd);
            zzcsVar2.zzf(zzaluVar2.zze);
            zzcsVar2.zzh(zzaluVar2.zzb);
            zzcsVar2.zzk(zzaluVar2.zzf);
            zzcsVar2.zzn(zzaluVar2.zzi, zzaluVar2.zzh);
            zzcsVar2.zzo(zzaluVar2.zzj);
            arrayList2.add(zzcsVar2.zzq());
        }
        return arrayList2;
    }

    public final void zzf(zzalq zzalqVar) {
        if (this.zzm == null) {
            this.zzm = new ArrayList();
        }
        this.zzm.add(zzalqVar);
    }

    public final boolean zzg(long j10) {
        long j11 = this.zzd;
        if (j11 == -9223372036854775807L) {
            if (this.zze == -9223372036854775807L) {
                return true;
            }
            j11 = -9223372036854775807L;
        }
        int i10 = (j11 > j10 ? 1 : (j11 == j10 ? 0 : -1));
        if (i10 <= 0 && this.zze == -9223372036854775807L) {
            return true;
        }
        if (j11 == -9223372036854775807L && j10 < this.zze) {
            return true;
        }
        if (i10 <= 0 && j10 < this.zze) {
            return true;
        }
        return false;
    }

    public final long[] zzh() {
        TreeSet treeSet = new TreeSet();
        int i10 = 0;
        zzj(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            jArr[i10] = ((Long) it.next()).longValue();
            i10++;
        }
        return jArr;
    }
}
