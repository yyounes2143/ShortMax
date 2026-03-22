package com.bytedance.sdk.openadsdk.eZI;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.QSm;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ implements Comparable<oJ> {
    private int Pfn;
    private long WcQ;
    private final String ZYk;
    private int cFZ;
    private int tB;
    private final ArrayList<Long> oJ = new ArrayList<>();
    private final ArrayList<Long> ex = new ArrayList<>();

    /* renamed from: ba  reason: collision with root package name */
    private final ArrayList<Long> f13326ba = new ArrayList<>();

    /* renamed from: so  reason: collision with root package name */
    private final ArrayList<Long> f13327so = new ArrayList<>();
    private final HashMap<String, ZYk> jFA = new HashMap<>();
    private int kkU = 0;
    private int dLZ = 0;
    private final HashMap<String, ZYk> BTZ = new HashMap<>();
    private int PiB = 0;
    private final ArrayList<String> awB = new ArrayList<>();

    public oJ(String str) {
        this.ZYk = str;
    }

    private void ZYk(@NonNull JSONObject jSONObject, JSONObject jSONObject2) throws JSONException {
        int i10;
        int i11;
        int i12;
        long j10;
        HashSet hashSet;
        HashSet hashSet2;
        HashSet hashSet3;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        HashSet hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        int[] BTZ = com.bytedance.sdk.openadsdk.ba.oJ.oJ().BTZ();
        long j11 = ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS;
        if (BTZ != null) {
            int i13 = 0;
            while (i13 < BTZ.length) {
                int i14 = BTZ[i13];
                long j12 = elapsedRealtime - (i14 * j11);
                Iterator<String> it = this.BTZ.keySet().iterator();
                long j13 = 0;
                while (it.hasNext()) {
                    String next = it.next();
                    Iterator<String> it2 = it;
                    ZYk zYk = this.BTZ.get(next);
                    if (zYk != null) {
                        long oJ = zYk.oJ(j12, elapsedRealtime);
                        j13 += oJ;
                        if (oJ <= 0 && i13 == BTZ.length - 1) {
                            hashSet4.add(next);
                        }
                    }
                    it = it2;
                }
                if (j13 != 0) {
                    jSONObject.put("lp_stay_t_".concat(String.valueOf(i14)), j13);
                    hashSet2 = hashSet4;
                    hashSet3 = hashSet5;
                    long optInt = jSONObject2.optInt("lp_stay_t_".concat(String.valueOf(i14))) + j13;
                    if (optInt != 0) {
                        jSONObject2.put("lp_stay_t_".concat(String.valueOf(i14)), optInt);
                    }
                } else {
                    hashSet2 = hashSet4;
                    hashSet3 = hashSet5;
                }
                i13++;
                hashSet4 = hashSet2;
                hashSet5 = hashSet3;
                j11 = ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS;
            }
        }
        HashSet hashSet6 = hashSet4;
        HashSet hashSet7 = hashSet5;
        int[] PiB = com.bytedance.sdk.openadsdk.ba.oJ.oJ().PiB();
        if (PiB != null) {
            int i15 = 0;
            while (i15 < PiB.length) {
                int i16 = PiB[i15];
                long j14 = elapsedRealtime - (i16 * ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS);
                Iterator<String> it3 = this.jFA.keySet().iterator();
                int i17 = 0;
                long j15 = 0;
                while (it3.hasNext()) {
                    String next2 = it3.next();
                    Iterator<String> it4 = it3;
                    ZYk zYk2 = this.jFA.get(next2);
                    if (zYk2 != null) {
                        long oJ2 = zYk2.oJ(j14, elapsedRealtime);
                        j15 += oJ2;
                        if (oJ2 > 20000) {
                            i17++;
                        }
                        if (oJ2 <= 0 && i15 == PiB.length - 1) {
                            hashSet = hashSet7;
                            hashSet.add(next2);
                            hashSet7 = hashSet;
                            it3 = it4;
                        }
                    }
                    hashSet = hashSet7;
                    hashSet7 = hashSet;
                    it3 = it4;
                }
                HashSet hashSet8 = hashSet7;
                if (j15 != 0) {
                    jSONObject.put("v_stay_t_".concat(String.valueOf(i16)), j15);
                    j10 = elapsedRealtime;
                    long optInt2 = jSONObject2.optInt("v_stay_t_".concat(String.valueOf(i16))) + j15;
                    if (optInt2 != 0) {
                        jSONObject2.put("v_stay_t_".concat(String.valueOf(i16)), optInt2);
                    }
                } else {
                    j10 = elapsedRealtime;
                }
                if (i17 != 0) {
                    jSONObject.put("v_20s_play_c_".concat(String.valueOf(i16)), i17);
                    int optInt3 = jSONObject2.optInt("v_20s_play_c_".concat(String.valueOf(i16))) + i17;
                    if (optInt3 != 0) {
                        jSONObject2.put("v_20s_play_c_".concat(String.valueOf(i16)), optInt3);
                    }
                }
                i15++;
                hashSet7 = hashSet8;
                elapsedRealtime = j10;
            }
        }
        HashSet hashSet9 = hashSet7;
        if (!hashSet6.isEmpty()) {
            Iterator it5 = hashSet6.iterator();
            while (it5.hasNext()) {
                this.BTZ.remove((String) it5.next());
            }
        }
        if (!hashSet9.isEmpty()) {
            Iterator it6 = hashSet9.iterator();
            while (it6.hasNext()) {
                this.jFA.remove((String) it6.next());
            }
        }
        if (com.bytedance.sdk.openadsdk.ba.oJ.oJ().awB() && (i12 = this.kkU) != 0) {
            jSONObject.put("v_stay_t_s", i12);
            int optInt4 = jSONObject2.optInt("v_stay_t_s") + this.kkU;
            if (optInt4 != 0) {
                jSONObject2.put("v_stay_t_s", optInt4);
            }
        }
        if (com.bytedance.sdk.openadsdk.ba.oJ.oJ().WcQ() && (i11 = this.PiB) != 0) {
            jSONObject.put("lp_stay_t_s", i11);
            int optInt5 = jSONObject2.optInt("lp_stay_t_s") + this.PiB;
            if (optInt5 != 0) {
                jSONObject2.put("lp_stay_t_s", optInt5);
            }
        }
        if (!com.bytedance.sdk.openadsdk.ba.oJ.oJ().si() || (i10 = this.dLZ) == 0) {
            return;
        }
        jSONObject.put("v_30p_play_c_s", i10);
        int optInt6 = jSONObject2.optInt("v_30p_play_c_s") + this.dLZ;
        if (optInt6 != 0) {
            jSONObject2.put("v_30p_play_c_s", optInt6);
        }
    }

    public void oJ(@NonNull String str, @Nullable String str2) {
        ZYk zYk;
        ZYk zYk2;
        ZYk zYk3;
        ZYk zYk4;
        ZYk zYk5;
        ZYk zYk6;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1908685858:
                if (str.equals("landingContinue")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1769688545:
                if (str.equals("landingPause")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1766371189:
                if (str.equals("landingStart")) {
                    c10 = 2;
                    break;
                }
                break;
            case -1643912491:
                if (str.equals("feed_over")) {
                    c10 = 3;
                    break;
                }
                break;
            case -1643892427:
                if (str.equals("feed_play")) {
                    c10 = 4;
                    break;
                }
                break;
            case 3529469:
                if (str.equals("show")) {
                    c10 = 5;
                    break;
                }
                break;
            case 94750088:
                if (str.equals("click")) {
                    c10 = 6;
                    break;
                }
                break;
            case 533457448:
                if (str.equals("feed_continue")) {
                    c10 = 7;
                    break;
                }
                break;
            case 566194974:
                if (str.equals("feed_break")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 578633749:
                if (str.equals("feed_pause")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 695109002:
                if (str.equals("landingFinish")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 702698279:
                if (str.equals("videoPercent30")) {
                    c10 = 11;
                    break;
                }
                break;
            case 1338624943:
                if (str.equals("videoForceBreak")) {
                    c10 = '\f';
                    break;
                }
                break;
            case 1671642405:
                if (str.equals("dislike")) {
                    c10 = '\r';
                    break;
                }
                break;
            case 1912965437:
                if (str.equals("play_error")) {
                    c10 = 14;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                if (TextUtils.isEmpty(str2) || (zYk = this.BTZ.get(str2)) == null) {
                    return;
                }
                zYk.ex(SystemClock.elapsedRealtime());
                return;
            case 1:
                if (TextUtils.isEmpty(str2) || (zYk2 = this.BTZ.get(str2)) == null) {
                    return;
                }
                zYk2.tB(SystemClock.elapsedRealtime());
                return;
            case 2:
                if (TextUtils.isEmpty(str2) || this.BTZ.get(str2) != null) {
                    return;
                }
                ZYk zYk7 = new ZYk();
                this.BTZ.put(str2, zYk7);
                zYk7.oJ(SystemClock.elapsedRealtime());
                return;
            case 3:
            case '\b':
            case '\f':
            case 14:
                if (TextUtils.isEmpty(str2) || (zYk3 = this.jFA.get(str2)) == null || zYk3.oJ() == ZYk.Pfn) {
                    return;
                }
                zYk3.ZYk(SystemClock.elapsedRealtime());
                if (com.bytedance.sdk.openadsdk.ba.oJ.oJ().awB()) {
                    this.kkU = (int) (this.kkU + zYk3.oJ(this.WcQ, SystemClock.elapsedRealtime()));
                    return;
                }
                return;
            case 4:
                this.f13326ba.add(Long.valueOf(SystemClock.elapsedRealtime()));
                if (com.bytedance.sdk.openadsdk.ba.oJ.oJ().so()) {
                    this.cFZ++;
                }
                if (TextUtils.isEmpty(str2) || this.jFA.get(str2) != null) {
                    return;
                }
                ZYk zYk8 = new ZYk();
                this.jFA.put(str2, zYk8);
                zYk8.oJ(SystemClock.elapsedRealtime());
                return;
            case 5:
                this.oJ.add(Long.valueOf(SystemClock.elapsedRealtime()));
                if (com.bytedance.sdk.openadsdk.ba.oJ.oJ().ba()) {
                    this.tB++;
                    return;
                }
                return;
            case 6:
                if (this.awB.contains(str2)) {
                    return;
                }
                if (this.awB.size() > 50) {
                    this.awB.subList(0, 25).clear();
                }
                this.awB.add(str2);
                this.ex.add(Long.valueOf(SystemClock.elapsedRealtime()));
                if (com.bytedance.sdk.openadsdk.ba.oJ.oJ().cFZ()) {
                    this.Pfn++;
                    return;
                }
                return;
            case 7:
                if (TextUtils.isEmpty(str2) || (zYk4 = this.jFA.get(str2)) == null) {
                    return;
                }
                zYk4.ex(SystemClock.elapsedRealtime());
                return;
            case '\t':
                if (TextUtils.isEmpty(str2) || (zYk5 = this.jFA.get(str2)) == null) {
                    return;
                }
                zYk5.tB(SystemClock.elapsedRealtime());
                return;
            case '\n':
                if (TextUtils.isEmpty(str2) || (zYk6 = this.BTZ.get(str2)) == null || zYk6.oJ() == ZYk.Pfn) {
                    return;
                }
                zYk6.ZYk(SystemClock.elapsedRealtime());
                if (com.bytedance.sdk.openadsdk.ba.oJ.oJ().WcQ()) {
                    this.PiB = (int) (this.PiB + zYk6.oJ(this.WcQ, SystemClock.elapsedRealtime()));
                    return;
                }
                return;
            case 11:
                if (com.bytedance.sdk.openadsdk.ba.oJ.oJ().si()) {
                    this.dLZ++;
                    return;
                }
                return;
            case '\r':
                this.f13327so.add(Long.valueOf(SystemClock.elapsedRealtime()));
                return;
            default:
                return;
        }
    }

    public String ZYk() {
        return this.ZYk;
    }

    public JSONObject oJ(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            oJ(jSONObject2, jSONObject);
            ZYk(jSONObject2, jSONObject);
        } catch (Throwable th2) {
            QSm.tB(th2.getMessage(), new Object[0]);
        }
        return jSONObject2;
    }

    private void oJ(String str, JSONObject jSONObject, ArrayList<Long> arrayList, int[] iArr, long j10, JSONObject jSONObject2) throws JSONException {
        int size = arrayList.size() - 1;
        int i10 = 0;
        for (int i11 : iArr) {
            long j11 = j10 - (i11 * ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS);
            while (size >= 0 && arrayList.get(size).longValue() >= j11) {
                i10++;
                size--;
            }
            if (i10 != 0) {
                jSONObject.put(str + i11, i10);
                int optInt = jSONObject2.optInt(str + i11) + i10;
                if (optInt != 0) {
                    jSONObject2.put(str + i11, optInt);
                }
            }
        }
        while (size >= 0) {
            arrayList.remove(0);
            size--;
        }
    }

    private void oJ(@NonNull JSONObject jSONObject, JSONObject jSONObject2) throws JSONException {
        int i10;
        int i11;
        int i12;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        oJ("show_c_", jSONObject, this.oJ, com.bytedance.sdk.openadsdk.ba.oJ.oJ().jFA(), elapsedRealtime, jSONObject2);
        oJ("click_c_", jSONObject, this.ex, com.bytedance.sdk.openadsdk.ba.oJ.oJ().kkU(), elapsedRealtime, jSONObject2);
        oJ("v_play_c_", jSONObject, this.f13326ba, com.bytedance.sdk.openadsdk.ba.oJ.oJ().dLZ(), elapsedRealtime, jSONObject2);
        oJ("dislike_c_", jSONObject, this.f13327so, com.bytedance.sdk.openadsdk.ba.oJ.oJ().eZI(), elapsedRealtime, jSONObject2);
        if (com.bytedance.sdk.openadsdk.ba.oJ.oJ().ba() && (i12 = this.tB) != 0) {
            jSONObject.put("show_c_s", i12);
            int optInt = jSONObject2.optInt("show_c_s") + this.tB;
            if (optInt != 0) {
                jSONObject2.put("show_c_s", optInt);
            }
        }
        if (com.bytedance.sdk.openadsdk.ba.oJ.oJ().cFZ() && (i11 = this.Pfn) != 0) {
            jSONObject.put("click_c_s", i11);
            int optInt2 = jSONObject2.optInt("click_c_s") + this.Pfn;
            if (optInt2 != 0) {
                jSONObject2.put("click_c_s", optInt2);
            }
        }
        if (!com.bytedance.sdk.openadsdk.ba.oJ.oJ().so() || (i10 = this.cFZ) == 0) {
            return;
        }
        jSONObject.put("v_play_c_s", i10);
        int optInt3 = jSONObject2.optInt("v_play_c_s") + this.cFZ;
        if (optInt3 != 0) {
            jSONObject2.put("v_play_c_s", optInt3);
        }
    }

    public void oJ() {
        this.WcQ = SystemClock.elapsedRealtime();
        this.dLZ = 0;
        this.Pfn = 0;
        this.tB = 0;
        this.PiB = 0;
        this.kkU = 0;
        this.cFZ = 0;
    }

    @Override // java.lang.Comparable
    /* renamed from: oJ */
    public int compareTo(oJ oJVar) {
        return oJVar.tB - this.tB;
    }
}
