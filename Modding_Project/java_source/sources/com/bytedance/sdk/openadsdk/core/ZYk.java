package com.bytedance.sdk.openadsdk.core;

import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.core.dLZ.oJ.ZYk;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.mbridge.msdk.foundation.download.database.DownloadModel;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.ss.ttvideoengine.model.BarrageMaskInfo;
import com.ss.ttvideoengine.selector.strategy.GearStrategy;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ZYk {

    /* loaded from: classes3.dex */
    private static class oJ {
        public int ZYk;
        public String oJ;

        public oJ(String str, int i10) {
            this.oJ = str;
            this.ZYk = i10;
        }
    }

    private static Map<String, Object> BTZ(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            if (!TextUtils.isEmpty(next)) {
                hashMap.put(next, jSONObject.opt(next));
            }
        }
        return hashMap;
    }

    private static FilterWord Pfn(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            FilterWord filterWord = new FilterWord();
            filterWord.setId(jSONObject.optString("id"));
            filterWord.setName(jSONObject.optString("name"));
            filterWord.setIsSelected(jSONObject.optBoolean("is_selected"));
            JSONArray optJSONArray = jSONObject.optJSONArray("options");
            if (optJSONArray != null && optJSONArray.length() > 0) {
                for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
                    FilterWord Pfn = Pfn(optJSONArray.optJSONObject(i10));
                    if (Pfn != null && Pfn.isValid()) {
                        filterWord.addOption(Pfn);
                    }
                }
            }
            return filterWord;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static AdSlot ZYk(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        String optString = jSONObject.optString("mCodeId", "");
        int optInt = jSONObject.optInt("mImgAcceptedWidth", 0);
        int optInt2 = jSONObject.optInt("mImgAcceptedHeight", 0);
        int optInt3 = jSONObject.optInt("mAdCount", 6);
        boolean optBoolean = jSONObject.optBoolean("mSupportDeepLink", true);
        String optString2 = jSONObject.optString("mRewardName", "");
        int optInt4 = jSONObject.optInt("mRewardAmount", 0);
        String optString3 = jSONObject.optString("mMediaExtra", "");
        String optString4 = jSONObject.optString("mUserID", "");
        jSONObject.optInt("mOrientation", 2);
        int optInt5 = jSONObject.optInt("mNativeAdType", 0);
        boolean optBoolean2 = jSONObject.optBoolean("mIsAutoPlay", false);
        boolean optBoolean3 = jSONObject.optBoolean("mIsExpressAd", false);
        String optString5 = jSONObject.optString("mBidAdm", "");
        return new AdSlot.Builder().setCodeId(optString).setImageAcceptedSize(optInt, optInt2).setExpressViewAcceptedSize((float) jSONObject.optDouble("mExpressViewAcceptedWidth", 0.0d), (float) jSONObject.optDouble("mExpressViewAcceptedHeight", 0.0d)).setAdCount(optInt3).setSupportDeepLink(optBoolean).setRewardName(optString2).setRewardAmount(optInt4).setMediaExtra(optString3).setUserID(optString4).setNativeAdType(optInt5).setIsAutoPlay(optBoolean2).isExpressAd(optBoolean3).withBid(optString5).setDurationSlotType(jSONObject.optInt("mDurationSlotType", 0)).build();
    }

    @Nullable
    private static com.bytedance.sdk.openadsdk.core.model.ba ba(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        com.bytedance.sdk.openadsdk.core.model.ba baVar = new com.bytedance.sdk.openadsdk.core.model.ba();
        baVar.ZYk(jSONObject.optString(TTVideoEngineInterface.PLAY_API_KEY_APPNAME));
        baVar.tB(jSONObject.optString("package_name"));
        baVar.oJ(jSONObject.optString(DownloadModel.DOWNLOAD_URL));
        baVar.oJ(jSONObject.optDouble("score", -1.0d));
        baVar.oJ(jSONObject.optInt("comment_num", -1));
        baVar.ZYk(jSONObject.optInt(CampaignEx.JSON_KEY_APP_SIZE, 0));
        baVar.ex(jSONObject.optString("app_category"));
        return baVar;
    }

    @Nullable
    private static com.bytedance.sdk.openadsdk.core.model.oq cFZ(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.core.model.oq oqVar = new com.bytedance.sdk.openadsdk.core.model.oq();
        if (jSONObject == null) {
            oqVar.oJ(10L);
            oqVar.ZYk(20L);
            oqVar.tB(10L);
            oqVar.ex(20L);
            oqVar.oJ("");
            return oqVar;
        }
        oqVar.oJ(jSONObject.optLong("onlylp_loading_maxtime", 10L));
        oqVar.ZYk(jSONObject.optLong("straight_lp_showtime", 20L));
        oqVar.tB(jSONObject.optLong("onlyagg_loading_maxtime", 10L));
        oqVar.ex(jSONObject.optLong("straight_agg_showtime", 20L));
        oqVar.oJ(jSONObject.optString("loading_text", ""));
        return oqVar;
    }

    @Nullable
    private static com.bytedance.sdk.openadsdk.core.model.PiB dLZ(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        com.bytedance.sdk.openadsdk.core.model.PiB piB = new com.bytedance.sdk.openadsdk.core.model.PiB();
        piB.oJ(jSONObject.optString("deeplink_url"));
        piB.ZYk(jSONObject.optString("fallback_url"));
        piB.oJ(jSONObject.optInt("fallback_type"));
        return piB;
    }

    private static com.bytedance.sdk.openadsdk.core.model.cFZ ex(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        int optInt = jSONObject.optInt("splash_clickarea", 2);
        int optInt2 = jSONObject.optInt("splash_layout_id", 1);
        long optLong = jSONObject.optLong("load_wait_time", 0L);
        long j10 = optLong >= 0 ? optLong : 0L;
        int optInt3 = jSONObject.optInt("skip_time", -1);
        com.bytedance.sdk.openadsdk.core.model.cFZ cfz = new com.bytedance.sdk.openadsdk.core.model.cFZ();
        cfz.ZYk(optInt);
        cfz.tB(optInt2);
        cfz.oJ(j10);
        cfz.oJ(optInt3);
        return cfz;
    }

    private static com.bytedance.sdk.openadsdk.core.model.so jFA(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.core.model.so soVar = new com.bytedance.sdk.openadsdk.core.model.so();
        if (jSONObject == null) {
            soVar.tB(0);
            soVar.ex(0);
            soVar.ZYk(new ArrayList());
            soVar.Pfn(0);
            soVar.oJ(new ArrayList());
            soVar.ZYk(0);
            soVar.oJ(0);
            return soVar;
        }
        soVar.tB(jSONObject.optInt("interceptor_x", 0));
        soVar.ex(jSONObject.optInt("interceptor_y", 0));
        JSONArray optJSONArray = jSONObject.optJSONArray("interceptor_page");
        ArrayList arrayList = new ArrayList();
        if (optJSONArray != null) {
            for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
                arrayList.add(Integer.valueOf(optJSONArray.optInt(i10)));
            }
        }
        soVar.ZYk(arrayList);
        soVar.Pfn(jSONObject.optInt("interceptor_interval_time", 0));
        JSONArray optJSONArray2 = jSONObject.optJSONArray("url_regular");
        ArrayList arrayList2 = new ArrayList();
        if (optJSONArray2 != null) {
            for (int i11 = 0; i11 < optJSONArray2.length(); i11++) {
                arrayList2.add(optJSONArray2.optString(i11));
            }
        }
        soVar.oJ(arrayList2);
        soVar.ZYk(jSONObject.optInt("boc_index", 0));
        soVar.oJ(jSONObject.optInt("is_act", 0));
        return soVar;
    }

    @Nullable
    private static com.bytedance.sdk.openadsdk.core.model.WcQ kkU(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        com.bytedance.sdk.openadsdk.core.model.WcQ wcQ = new com.bytedance.sdk.openadsdk.core.model.WcQ();
        wcQ.oJ(jSONObject.optInt("if_send_click", 0));
        return wcQ;
    }

    private static boolean oJ(int i10) {
        return i10 == 2 || i10 == 3 || i10 == 8;
    }

    private static com.bytedance.sdk.openadsdk.core.model.RZ so(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.core.model.RZ rz = new com.bytedance.sdk.openadsdk.core.model.RZ();
        if (jSONObject == null) {
            rz.ex(5);
            rz.Pfn(30);
            rz.ba(70);
            rz.cFZ(1);
            rz.so(com.bytedance.sdk.openadsdk.core.model.RZ.oJ);
            rz.tB(0);
            rz.ZYk(0);
            rz.oJ(3);
            return rz;
        }
        rz.ex(jSONObject.optInt("ceiling_time", 5));
        rz.Pfn(jSONObject.optInt("ceiling_ratio", 30));
        rz.ba(jSONObject.optInt("expand_ratio", 70));
        rz.cFZ(jSONObject.optInt("back_type", 1));
        rz.so(jSONObject.optInt("boc_return_type", com.bytedance.sdk.openadsdk.core.model.RZ.oJ));
        rz.tB(jSONObject.optInt("pre_render_status", 0));
        rz.ZYk(jSONObject.optInt("pre_render_use_gecko", 0));
        rz.oJ(jSONObject.optInt("pre_render_add_type", 3));
        return rz;
    }

    private static com.bytedance.sdk.openadsdk.core.kkU.so.oJ tB(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.core.kkU.so.oJ oJVar = new com.bytedance.sdk.openadsdk.core.kkU.so.oJ();
        oJVar.oJ(jSONObject.optString("id"));
        oJVar.ZYk(jSONObject.optString("md5"));
        oJVar.tB(jSONObject.optString("url"));
        return oJVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v0, types: [org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r9v5 */
    @Nullable
    public static Pair<com.bytedance.sdk.openadsdk.core.model.oJ, ArrayList<Integer>> oJ(JSONObject jSONObject, AdSlot adSlot, com.bytedance.sdk.openadsdk.core.model.HL hl2) {
        com.bytedance.sdk.openadsdk.core.model.cY cYVar = null;
        if (jSONObject == 0) {
            return null;
        }
        try {
            com.bytedance.sdk.openadsdk.core.model.oJ oJVar = new com.bytedance.sdk.openadsdk.core.model.oJ();
            oJVar.oJ(jSONObject.optString("request_id"));
            oJVar.oJ(jSONObject.optInt("ret"));
            oJVar.ZYk(jSONObject.optInt("multi_ad_style", 0));
            oJVar.ZYk(jSONObject.optString("message"));
            String optString = jSONObject.optString("gdid_encrypted");
            oJVar.oJ(com.bytedance.sdk.openadsdk.core.model.Id.oJ(jSONObject.optJSONObject("loop_config")));
            String optString2 = jSONObject.optString("auction_price");
            if (oJVar.tB() != 0) {
                return null;
            }
            oJVar.oJ(com.bytedance.sdk.openadsdk.core.model.jr.oJ(jSONObject.optString("multi_ad_config")));
            JSONArray optJSONArray = jSONObject.optJSONArray("creatives");
            ArrayList arrayList = new ArrayList();
            if (optJSONArray != null) {
                optJSONArray.length();
                int i10 = 0;
                ArrayList arrayList2 = oJVar.kkU() ? new ArrayList() : null;
                while (i10 < optJSONArray.length()) {
                    com.bytedance.sdk.openadsdk.core.model.cY oJ2 = oJ(optJSONArray.optJSONObject(i10), adSlot, hl2, oJVar, i10);
                    ArrayList arrayList3 = arrayList2;
                    if (!oJVar.kkU()) {
                        arrayList3 = cYVar;
                    }
                    int oJ3 = oJ(oJ2);
                    if (oJ3 != 200) {
                        if (oJ2 != null) {
                            com.bytedance.sdk.openadsdk.ex.tB.ZYk(oJ2, HyG.tB(oJ2.TxP()), oJ3);
                        } else {
                            com.bytedance.sdk.openadsdk.ex.tB.ZYk(cYVar, "", oJ3);
                        }
                        arrayList.add(Integer.valueOf(oJ3));
                        if (arrayList3 != null && oJ2 != null) {
                            arrayList3.add(new oJ(oJ2.cdg(), oJ3));
                        }
                        if (oJ2 != null && (oJ2.LS() == 39 || oJ2.LS() == 41)) {
                            oJVar.ZYk(0);
                        }
                        optJSONArray.remove(i10);
                        i10--;
                    } else {
                        oJ2.WcQ(optString2);
                        if (!TextUtils.isEmpty(optString)) {
                            oJ2.jFA(optString);
                        }
                        oJVar.oJ(oJ2);
                    }
                    i10++;
                    cYVar = null;
                    arrayList2 = arrayList3;
                }
                List<com.bytedance.sdk.openadsdk.core.model.cY> ex = oJVar.ex();
                oJ(ex, oJVar);
                if (ex != null) {
                    if (oJVar.kkU() && ex.size() == 1) {
                        oJVar.ZYk(0);
                        ex.get(0).so(false);
                    }
                    int size = ex.size();
                    jSONObject.put("creatives", optJSONArray);
                    for (int i11 = 0; i11 < size; i11++) {
                        com.bytedance.sdk.openadsdk.core.model.cY cYVar2 = ex.get(i11);
                        if (cYVar2 != null) {
                            cYVar2.UN(jSONObject.toString());
                        }
                    }
                }
                if (arrayList2 != null && !arrayList2.isEmpty()) {
                    oJ((ArrayList<oJ>) arrayList2);
                }
            }
            return new Pair<>(oJVar, arrayList);
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.QSm.tB("TTAD.AdInfoFactory", th2.getMessage());
            return null;
        }
    }

    private static int tB(com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        int i10;
        String tB = HyG.tB(cYVar.TxP());
        if (cYVar.GSK() == 0) {
            i10 = oJ(cYVar.TNk());
            if (i10 != 200) {
                com.bytedance.sdk.openadsdk.ex.tB.tB(cYVar, tB, i10);
                return i10;
            }
        } else {
            i10 = 200;
        }
        int sQ = cYVar.sQ();
        if (sQ != 2 && sQ != 3) {
            if (sQ == 4) {
                int oJ2 = oJ(cYVar.Wd());
                if (oJ2 != 200) {
                    com.bytedance.sdk.openadsdk.ex.tB.tB(cYVar, tB, oJ2);
                    return oJ2;
                }
                return oJ2;
            } else if (sQ != 8) {
                return i10;
            }
        }
        if (ex(cYVar) && TextUtils.isEmpty(cYVar.Oof())) {
            com.bytedance.sdk.openadsdk.ex.tB.tB(cYVar, tB, 406);
            return 406;
        }
        return i10;
    }

    private static boolean ex(com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        return (cYVar.Br() || cYVar.jA()) ? false : true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0032, code lost:
        if (r3 != 8) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int ZYk(com.bytedance.sdk.openadsdk.core.model.cY r8) {
        /*
            int r0 = r8.TxP()
            java.lang.String r0 = com.bytedance.sdk.openadsdk.utils.HyG.tB(r0)
            int r1 = r8.GSK()
            r2 = 200(0xc8, float:2.8E-43)
            if (r1 != 0) goto L1c
            com.bytedance.sdk.openadsdk.core.model.PiB r1 = r8.TNk()
            int r1 = oJ(r1)
            com.bytedance.sdk.openadsdk.ex.tB.tB(r8, r0, r1)
            goto L1d
        L1c:
            r1 = r2
        L1d:
            int r3 = r8.sQ()
            r4 = 2
            r5 = 406(0x196, float:5.69E-43)
            r6 = 417(0x1a1, float:5.84E-43)
            r7 = 407(0x197, float:5.7E-43)
            if (r3 == r4) goto L79
            r4 = 3
            if (r3 == r4) goto L79
            r4 = 4
            if (r3 == r4) goto L35
            r4 = 8
            if (r3 == r4) goto L79
            goto L8d
        L35:
            com.bytedance.sdk.openadsdk.core.model.ba r3 = r8.Wd()
            if (r3 != 0) goto L40
            com.bytedance.sdk.openadsdk.ex.tB.tB(r8, r0, r7)
            r1 = r7
            goto L8d
        L40:
            java.lang.String r4 = r3.tB()
            boolean r4 = android.text.TextUtils.isEmpty(r4)
            if (r4 == 0) goto L59
            java.lang.String r4 = r3.oJ()
            boolean r4 = android.text.TextUtils.isEmpty(r4)
            if (r4 == 0) goto L59
            com.bytedance.sdk.openadsdk.ex.tB.tB(r8, r0, r6)
            r1 = r6
            goto L8d
        L59:
            java.lang.String r4 = r3.tB()
            boolean r4 = android.text.TextUtils.isEmpty(r4)
            if (r4 == 0) goto L69
            r1 = 416(0x1a0, float:5.83E-43)
            com.bytedance.sdk.openadsdk.ex.tB.tB(r8, r0, r1)
            goto L8d
        L69:
            java.lang.String r3 = r3.oJ()
            boolean r3 = android.text.TextUtils.isEmpty(r3)
            if (r3 == 0) goto L8d
            r1 = 408(0x198, float:5.72E-43)
            com.bytedance.sdk.openadsdk.ex.tB.tB(r8, r0, r1)
            goto L8d
        L79:
            boolean r3 = ex(r8)
            if (r3 == 0) goto L8d
            java.lang.String r3 = r8.Oof()
            boolean r3 = android.text.TextUtils.isEmpty(r3)
            if (r3 == 0) goto L8d
            com.bytedance.sdk.openadsdk.ex.tB.tB(r8, r0, r5)
            r1 = r5
        L8d:
            if (r1 == r6) goto L9a
            if (r1 == r7) goto L9a
            if (r1 != r5) goto L94
            goto L9a
        L94:
            if (r1 == r2) goto L99
            com.bytedance.sdk.openadsdk.ex.tB.ZYk(r8, r0, r1)
        L99:
            return r2
        L9a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.ZYk.ZYk(com.bytedance.sdk.openadsdk.core.model.cY):int");
    }

    private static void oJ(List<com.bytedance.sdk.openadsdk.core.model.cY> list, com.bytedance.sdk.openadsdk.core.model.oJ oJVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.model.cY cYVar = list.get(0);
        if (!oJVar.kkU() || cYVar == null || !cYVar.nYE() || HyG.LpP() == 0) {
            return;
        }
        oJVar.ZYk(0);
        cYVar.so(false);
    }

    @Nullable
    public static com.bytedance.sdk.openadsdk.core.model.cY oJ(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        return oJ(jSONObject, null, null, null, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:173:0x0696, code lost:
        if (r16.optBoolean("is_html", false) != false) goto L174;
     */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.bytedance.sdk.openadsdk.core.model.cY oJ(org.json.JSONObject r16, com.bytedance.sdk.openadsdk.AdSlot r17, com.bytedance.sdk.openadsdk.core.model.HL r18, com.bytedance.sdk.openadsdk.core.model.oJ r19, int r20) {
        /*
            Method dump skipped, instructions count: 2059
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.ZYk.oJ(org.json.JSONObject, com.bytedance.sdk.openadsdk.AdSlot, com.bytedance.sdk.openadsdk.core.model.HL, com.bytedance.sdk.openadsdk.core.model.oJ, int):com.bytedance.sdk.openadsdk.core.model.cY");
    }

    private static void oJ(JSONObject jSONObject, com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        if (jSONObject != null) {
            int optInt = jSONObject.optInt("iv_skip_time", -1);
            int optInt2 = jSONObject.optInt("rv_skip_time", -1);
            if (optInt != -1) {
                cYVar.mwH(optInt);
            }
            if (optInt2 != -1) {
                cYVar.oTd(optInt2);
            }
        }
    }

    private static void oJ(com.bytedance.sdk.openadsdk.core.model.cY cYVar, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("reason_code", -1);
            jSONObject.put(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE, -1);
            com.bytedance.sdk.openadsdk.ex.tB.ZYk(cYVar, str, "load_vast_fail", jSONObject);
        } catch (Exception unused) {
        }
    }

    private static Pair<com.bytedance.sdk.openadsdk.core.dLZ.oJ, ZYk.oJ> oJ(String str, int i10, int i11) {
        int i12;
        int i13;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (i11 == 1 || i11 == 5) {
            i12 = 0;
            i13 = 0;
        } else {
            i12 = cdg.tB(si.oJ());
            i13 = cdg.Pfn(si.oJ());
            if (i10 == 2) {
                i13 = i12;
                i12 = i13;
            }
        }
        com.bytedance.sdk.openadsdk.core.dLZ.oJ.oJ.Pfn pfn = new com.bytedance.sdk.openadsdk.core.dLZ.oJ.oJ.Pfn(si.oJ(), i12, i13);
        return new Pair<>(pfn.oJ(str, (File) null, new ArrayList()), pfn.f13137ba);
    }

    private static void oJ(com.bytedance.sdk.openadsdk.core.dLZ.oJ oJVar, com.bytedance.sdk.openadsdk.core.model.cY cYVar) {
        oJVar.oJ(cYVar);
        if (!oJ(cYVar.sQ())) {
            cYVar.tb(2);
        }
        cYVar.dLZ(1);
        cYVar.oJ(oJVar);
        if (!TextUtils.isEmpty(oJVar.ex())) {
            cYVar.QSm(oJVar.ex());
        }
        if (!TextUtils.isEmpty(oJVar.Pfn())) {
            cYVar.oq(oJVar.Pfn());
        }
        cYVar.Ry(oJVar.ba());
        cYVar.oJ((com.bytedance.sdk.openadsdk.core.model.ba) null);
        com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk ib2 = cYVar.ib();
        if (ib2 == null) {
            ib2 = new com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk();
        }
        ib2.tB(oJVar.cFZ());
        ib2.oJ(oJVar.so());
        ib2.ba((String) null);
        ib2.ZYk((String) null);
        ib2.ex((String) null);
        cYVar.oJ(ib2);
        if (oJVar.ZYk() != null && !TextUtils.isEmpty(oJVar.ZYk().Pfn())) {
            com.bytedance.sdk.openadsdk.core.model.Ry ry = new com.bytedance.sdk.openadsdk.core.model.Ry();
            ry.oJ(oJVar.ZYk().Pfn());
            ry.oJ(oJVar.ZYk().ZYk());
            ry.ZYk(oJVar.ZYk().tB());
            cYVar.oJ(ry);
        } else if (cYVar.Zjw() == null) {
            com.bytedance.sdk.openadsdk.core.model.Ry ry2 = new com.bytedance.sdk.openadsdk.core.model.Ry();
            ry2.oJ("https://lf-static.tiktokpangle-cdn-us.com/obj/ad-pattern-tx/static/images/2023620white.jpeg");
            ry2.oJ(98);
            ry2.ZYk(98);
            cYVar.oJ(ry2);
        }
    }

    @Nullable
    private static com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk oJ(JSONObject jSONObject, com.bytedance.sdk.openadsdk.core.model.cY cYVar, boolean z10) {
        int optInt;
        if (jSONObject == null) {
            return null;
        }
        com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk zYk = new com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk();
        zYk.ZYk(jSONObject.optInt("cover_height"));
        zYk.tB(jSONObject.optInt("cover_width"));
        zYk.oJ(jSONObject.optString("resolution"));
        zYk.oJ(jSONObject.optLong("size"));
        double optDouble = jSONObject.optDouble("video_duration", 0.0d);
        zYk.oJ(optDouble);
        int i10 = 1;
        int optInt2 = jSONObject.optInt("replay_time", 1);
        if (optDouble <= 15.0d && cYVar.oIC() != 1 && com.bytedance.sdk.openadsdk.core.model.cY.Pfn(cYVar)) {
            i10 = optInt2;
        }
        zYk.kkU(i10);
        zYk.ZYk(jSONObject.optString("cover_url"));
        zYk.tB(jSONObject.optString(CampaignEx.JSON_KEY_VIDEO_URL));
        zYk.ex(jSONObject.optString(CampaignEx.JSON_NATIVE_VIDEO_ENDCARD));
        zYk.Pfn(jSONObject.optString("playable_download_url"));
        zYk.ba(jSONObject.optString(BarrageMaskInfo.KEY_MASK_FILE_HASH));
        zYk.so(jSONObject.optInt("if_playable_loading_show", 0));
        zYk.jFA(jSONObject.optInt("remove_loading_page_type", 0));
        zYk.oJ(jSONObject.optInt("fallback_endcard_judge", 0));
        zYk.Pfn(jSONObject.optInt("video_preload_size", 307200));
        zYk.ba(jSONObject.optInt("reward_video_cached_type", 0));
        zYk.cFZ(jSONObject.optInt("execute_cached_type", 0));
        if (z10) {
            optInt = jSONObject.optInt("endcard_render", 0);
        } else {
            optInt = jSONObject.optInt("endcard_render", -1);
        }
        zYk.ex(optInt);
        return zYk;
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x0086, code lost:
        if (r0 != 50) goto L50;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int oJ(com.bytedance.sdk.openadsdk.core.model.cY r5) {
        /*
            r0 = 401(0x191, float:5.62E-43)
            r1 = 0
            if (r5 != 0) goto Lb
            java.lang.String r5 = ""
            com.bytedance.sdk.openadsdk.ex.tB.tB(r1, r5, r0)
            return r0
        Lb:
            int r2 = r5.TxP()
            java.lang.String r2 = com.bytedance.sdk.openadsdk.utils.HyG.tB(r2)
            java.lang.String r3 = r5.edj()
            boolean r3 = android.text.TextUtils.isEmpty(r3)
            if (r3 != 0) goto Lbd
            java.lang.String r3 = r5.edj()
            int r3 = r3.length()
            r4 = 1
            if (r3 > r4) goto L2a
            goto Lbd
        L2a:
            boolean r3 = r5.jA()
            if (r3 == 0) goto L64
            int r3 = r5.TxP()
            if (r3 >= 0) goto L47
            com.bytedance.sdk.openadsdk.AdSlot r3 = r5.BHY()
            if (r3 == 0) goto L44
            com.bytedance.sdk.openadsdk.AdSlot r3 = r5.BHY()
            r3.getDurationSlotType()
            goto L47
        L44:
            r5.qnr()
        L47:
            boolean r3 = r5.RQ()
            if (r3 == 0) goto L4f
            java.lang.String r2 = "fullscreen_interstitial_ad"
        L4f:
            java.lang.String r3 = r5.OP()
            boolean r3 = android.text.TextUtils.isEmpty(r3)
            if (r3 == 0) goto L5f
            java.lang.String r3 = "load_html_fail"
            com.bytedance.sdk.openadsdk.ex.tB.ZYk(r5, r2, r3, r1)
            return r0
        L5f:
            java.lang.String r0 = "load_html_success"
            com.bytedance.sdk.openadsdk.ex.tB.ZYk(r5, r2, r0, r1)
        L64:
            int r0 = r5.GSK()
            if (r0 != 0) goto La9
            int r0 = r5.Dc()
            r1 = 2
            r3 = 200(0xc8, float:2.8E-43)
            if (r0 == r1) goto L9b
            r1 = 3
            if (r0 == r1) goto L9b
            r1 = 4
            if (r0 == r1) goto L9b
            r1 = 5
            if (r0 == r1) goto L89
            r1 = 15
            if (r0 == r1) goto L89
            r1 = 16
            if (r0 == r1) goto L9b
            r1 = 50
            if (r0 == r1) goto L89
            goto La9
        L89:
            com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk r0 = r5.ib()
            boolean r1 = r5.Br()
            int r0 = oJ(r0, r1)
            if (r0 == r3) goto La9
            com.bytedance.sdk.openadsdk.ex.tB.tB(r5, r2, r0)
            return r0
        L9b:
            java.util.List r0 = r5.yB()
            int r0 = oJ(r0)
            if (r0 == r3) goto La9
            com.bytedance.sdk.openadsdk.ex.tB.tB(r5, r2, r0)
            return r0
        La9:
            com.bytedance.sdk.openadsdk.core.settings.ba r0 = com.bytedance.sdk.openadsdk.core.settings.PiB.ib()
            boolean r0 = r0.SCr()
            if (r0 == 0) goto Lb8
            int r5 = tB(r5)
            goto Lbc
        Lb8:
            int r5 = ZYk(r5)
        Lbc:
            return r5
        Lbd:
            r0 = 402(0x192, float:5.63E-43)
            com.bytedance.sdk.openadsdk.ex.tB.tB(r5, r2, r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.ZYk.oJ(com.bytedance.sdk.openadsdk.core.model.cY):int");
    }

    private static int oJ(com.bytedance.sdk.openadsdk.core.model.PiB piB) {
        if (piB == null) {
            return 200;
        }
        if (TextUtils.isEmpty(piB.oJ())) {
            return 403;
        }
        if (TextUtils.isEmpty(piB.ZYk())) {
            return 404;
        }
        return (piB.tB() == 1 || piB.tB() == 2) ? 200 : 405;
    }

    private static int oJ(com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk zYk, boolean z10) {
        if (zYk == null) {
            return 413;
        }
        if (TextUtils.isEmpty(zYk.dLZ())) {
            return 414;
        }
        return (z10 || !TextUtils.isEmpty(zYk.kkU())) ? 200 : 415;
    }

    private static int oJ(com.bytedance.sdk.openadsdk.core.model.ba baVar) {
        if (baVar == null) {
            return 407;
        }
        if (TextUtils.isEmpty(baVar.oJ())) {
            return 408;
        }
        return TextUtils.isEmpty(baVar.tB()) ? 416 : 200;
    }

    private static int oJ(List<com.bytedance.sdk.openadsdk.core.model.Ry> list) {
        if (list == null) {
            return 409;
        }
        if (list.size() <= 0) {
            return 410;
        }
        for (com.bytedance.sdk.openadsdk.core.model.Ry ry : list) {
            if (ry == null) {
                return 411;
            }
            if (TextUtils.isEmpty(ry.oJ())) {
                return 412;
            }
        }
        return 200;
    }

    private static void oJ(final ArrayList<oJ> arrayList) {
        com.bytedance.sdk.openadsdk.awB.tB.oJ("multiple_ads_parsing_error", false, new com.bytedance.sdk.openadsdk.awB.ZYk() { // from class: com.bytedance.sdk.openadsdk.core.ZYk.1
            @Override // com.bytedance.sdk.openadsdk.awB.ZYk
            @Nullable
            public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("material_error", arrayList.size());
                JSONArray jSONArray = new JSONArray();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    oJ oJVar = (oJ) it.next();
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(BidResponsedEx.KEY_CID, oJVar.oJ);
                    jSONObject2.put("error_msg", oJVar.ZYk);
                    jSONArray.put(jSONObject2);
                }
                jSONObject.put("error_cid_list", jSONArray);
                return com.bytedance.sdk.openadsdk.awB.oJ.ex.ZYk().oJ("multiple_ads_parsing_error").ZYk(jSONObject.toString());
            }
        });
    }
}
