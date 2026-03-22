package com.mbridge.msdk.foundation.same.report.metrics;

import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.setting.l;
import com.mbridge.msdk.tracker.m;
import com.mbridge.msdk.tracker.network.toolbox.i;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: SameMetricsReport.java */
/* loaded from: classes5.dex */
public class f {
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0057, code lost:
        if (r25.i().getAdType() == 295) goto L17;
     */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00db A[Catch: Exception -> 0x002e, TryCatch #1 {Exception -> 0x002e, blocks: (B:3:0x001d, B:5:0x0029, B:10:0x0034, B:12:0x0040, B:42:0x00b3, B:44:0x00b9, B:51:0x00d5, B:53:0x00db, B:55:0x00e0, B:58:0x00ff, B:60:0x0105, B:68:0x0133, B:70:0x0137, B:71:0x013a, B:72:0x013e, B:74:0x0144, B:77:0x014d, B:79:0x0194, B:81:0x01f3, B:83:0x01fd, B:85:0x0210, B:86:0x0219, B:88:0x022c, B:90:0x023b, B:91:0x0248, B:94:0x0254, B:97:0x027f, B:99:0x0285, B:101:0x028b, B:102:0x02a9, B:103:0x02b4, B:105:0x02be, B:107:0x02c4, B:110:0x02f4, B:112:0x02fc, B:114:0x0302, B:115:0x0320, B:116:0x032b, B:118:0x0333, B:120:0x0339, B:121:0x0357, B:122:0x0362, B:124:0x036a, B:126:0x0370, B:127:0x038e, B:128:0x0399, B:131:0x03ae, B:133:0x03b8, B:134:0x03be, B:135:0x03c3, B:137:0x03c9, B:139:0x03d7, B:142:0x03e7, B:144:0x03ed, B:151:0x0435, B:153:0x043f, B:156:0x044b, B:158:0x0451, B:159:0x046a, B:160:0x046e, B:162:0x0474, B:163:0x048d, B:164:0x0490, B:166:0x049a, B:168:0x04a9, B:169:0x04c9, B:170:0x04d2, B:173:0x04db, B:175:0x04e1, B:181:0x0520, B:185:0x052c, B:187:0x0542, B:190:0x056a, B:192:0x0570, B:194:0x0595, B:196:0x0599, B:198:0x05a9, B:199:0x05ae, B:201:0x05b8, B:202:0x05c1, B:204:0x05c7, B:205:0x05d4, B:207:0x05f5, B:209:0x05fc, B:210:0x0609, B:212:0x0613, B:213:0x061c, B:215:0x0624, B:217:0x062b, B:218:0x0638, B:220:0x0642, B:221:0x064b, B:222:0x0658, B:224:0x0660, B:228:0x0673, B:231:0x0681, B:233:0x06a7, B:235:0x06ad, B:237:0x06b2, B:236:0x06b0, B:238:0x06b9, B:240:0x06c1, B:242:0x06c7, B:244:0x06cc, B:243:0x06ca, B:245:0x06d3, B:248:0x06dd, B:250:0x06e5, B:251:0x06ed, B:253:0x06fd, B:255:0x0703, B:257:0x0708, B:259:0x0717, B:261:0x071d, B:263:0x0722, B:267:0x0733, B:271:0x0753, B:273:0x075c, B:276:0x077b, B:278:0x0787, B:284:0x0795, B:286:0x07a1, B:288:0x07ab, B:294:0x07c2, B:296:0x07d5, B:298:0x07db, B:300:0x07e0, B:299:0x07de, B:295:0x07cc, B:289:0x07b4, B:291:0x07ba, B:310:0x081b, B:301:0x07e8, B:303:0x07f6, B:305:0x0809, B:307:0x080f, B:309:0x0814, B:308:0x0812, B:304:0x0800, B:274:0x0767, B:270:0x074f, B:262:0x0720, B:256:0x0706, B:193:0x058e, B:189:0x0562, B:176:0x04fa, B:177:0x04fe, B:179:0x0504, B:180:0x051d, B:145:0x0408, B:146:0x040e, B:148:0x0416, B:149:0x042f, B:108:0x02e4, B:95:0x0272, B:87:0x0223, B:80:0x01d5, B:45:0x00c1, B:47:0x00c7, B:50:0x00d2, B:48:0x00cc, B:23:0x006d, B:27:0x0081, B:30:0x008c, B:32:0x0092, B:35:0x009d, B:37:0x00a3, B:33:0x0097, B:39:0x00a9, B:13:0x0045, B:15:0x004b, B:62:0x0111, B:64:0x012c), top: B:317:0x001d, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00e0 A[Catch: Exception -> 0x002e, TRY_LEAVE, TryCatch #1 {Exception -> 0x002e, blocks: (B:3:0x001d, B:5:0x0029, B:10:0x0034, B:12:0x0040, B:42:0x00b3, B:44:0x00b9, B:51:0x00d5, B:53:0x00db, B:55:0x00e0, B:58:0x00ff, B:60:0x0105, B:68:0x0133, B:70:0x0137, B:71:0x013a, B:72:0x013e, B:74:0x0144, B:77:0x014d, B:79:0x0194, B:81:0x01f3, B:83:0x01fd, B:85:0x0210, B:86:0x0219, B:88:0x022c, B:90:0x023b, B:91:0x0248, B:94:0x0254, B:97:0x027f, B:99:0x0285, B:101:0x028b, B:102:0x02a9, B:103:0x02b4, B:105:0x02be, B:107:0x02c4, B:110:0x02f4, B:112:0x02fc, B:114:0x0302, B:115:0x0320, B:116:0x032b, B:118:0x0333, B:120:0x0339, B:121:0x0357, B:122:0x0362, B:124:0x036a, B:126:0x0370, B:127:0x038e, B:128:0x0399, B:131:0x03ae, B:133:0x03b8, B:134:0x03be, B:135:0x03c3, B:137:0x03c9, B:139:0x03d7, B:142:0x03e7, B:144:0x03ed, B:151:0x0435, B:153:0x043f, B:156:0x044b, B:158:0x0451, B:159:0x046a, B:160:0x046e, B:162:0x0474, B:163:0x048d, B:164:0x0490, B:166:0x049a, B:168:0x04a9, B:169:0x04c9, B:170:0x04d2, B:173:0x04db, B:175:0x04e1, B:181:0x0520, B:185:0x052c, B:187:0x0542, B:190:0x056a, B:192:0x0570, B:194:0x0595, B:196:0x0599, B:198:0x05a9, B:199:0x05ae, B:201:0x05b8, B:202:0x05c1, B:204:0x05c7, B:205:0x05d4, B:207:0x05f5, B:209:0x05fc, B:210:0x0609, B:212:0x0613, B:213:0x061c, B:215:0x0624, B:217:0x062b, B:218:0x0638, B:220:0x0642, B:221:0x064b, B:222:0x0658, B:224:0x0660, B:228:0x0673, B:231:0x0681, B:233:0x06a7, B:235:0x06ad, B:237:0x06b2, B:236:0x06b0, B:238:0x06b9, B:240:0x06c1, B:242:0x06c7, B:244:0x06cc, B:243:0x06ca, B:245:0x06d3, B:248:0x06dd, B:250:0x06e5, B:251:0x06ed, B:253:0x06fd, B:255:0x0703, B:257:0x0708, B:259:0x0717, B:261:0x071d, B:263:0x0722, B:267:0x0733, B:271:0x0753, B:273:0x075c, B:276:0x077b, B:278:0x0787, B:284:0x0795, B:286:0x07a1, B:288:0x07ab, B:294:0x07c2, B:296:0x07d5, B:298:0x07db, B:300:0x07e0, B:299:0x07de, B:295:0x07cc, B:289:0x07b4, B:291:0x07ba, B:310:0x081b, B:301:0x07e8, B:303:0x07f6, B:305:0x0809, B:307:0x080f, B:309:0x0814, B:308:0x0812, B:304:0x0800, B:274:0x0767, B:270:0x074f, B:262:0x0720, B:256:0x0706, B:193:0x058e, B:189:0x0562, B:176:0x04fa, B:177:0x04fe, B:179:0x0504, B:180:0x051d, B:145:0x0408, B:146:0x040e, B:148:0x0416, B:149:0x042f, B:108:0x02e4, B:95:0x0272, B:87:0x0223, B:80:0x01d5, B:45:0x00c1, B:47:0x00c7, B:50:0x00d2, B:48:0x00cc, B:23:0x006d, B:27:0x0081, B:30:0x008c, B:32:0x0092, B:35:0x009d, B:37:0x00a3, B:33:0x0097, B:39:0x00a9, B:13:0x0045, B:15:0x004b, B:62:0x0111, B:64:0x012c), top: B:317:0x001d, inners: #3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.Map<java.lang.String, java.lang.String> c(java.lang.String r24, com.mbridge.msdk.foundation.same.report.metrics.c r25) {
        /*
            Method dump skipped, instructions count: 2138
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.same.report.metrics.f.c(java.lang.String, com.mbridge.msdk.foundation.same.report.metrics.c):java.util.Map");
    }

    private Map<String, String> d(String str, c cVar) {
        HashMap hashMap = new HashMap();
        if (cVar != null && !TextUtils.isEmpty(str)) {
            return cVar.c(str);
        }
        return hashMap;
    }

    private Map<String, String> e(String str, c cVar) {
        e eVar = new e();
        try {
            if (str.equals("2000125")) {
                eVar.a("duration", Long.valueOf(cVar.b("2000123")));
            } else if (str.equals("2000126")) {
                eVar.a("duration", Long.valueOf(cVar.b("2000125")));
            } else if (str.equals("2000127")) {
                eVar.a("duration", Long.valueOf(cVar.b("2000123")));
            } else if (str.equals("2000154")) {
                eVar.a("duration", Long.valueOf(cVar.b("2000126")));
            } else if (str.equals("2000047")) {
                eVar.a("duration", Long.valueOf(cVar.b("2000123")));
            } else if (str.equals("2000048")) {
                eVar.a("duration", Long.valueOf(cVar.b("2000123")));
            } else if (str.equals("2000155")) {
                eVar.a("duration", Long.valueOf(cVar.b("2000154")));
            } else if (str.equals("2000146")) {
                eVar.a("duration", Long.valueOf(cVar.b("2000130")));
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
        return eVar.a();
    }

    public void a(String str, m mVar, c cVar, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
        Map<String, String> e10;
        HashMap hashMap = new HashMap();
        if (cVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            cVar.j(str);
            Map<String, String> c10 = c(str, cVar);
            if (c10 != null) {
                hashMap.putAll(c10);
            }
            Map<String, String> a10 = a(str, cVar.w(), mVar);
            if (a10 != null) {
                hashMap.putAll(a10);
            }
            if (Arrays.asList(b.f27274d).contains(str) && (e10 = e(str, cVar)) != null) {
                hashMap.putAll(e10);
            }
            Map<String, String> a11 = a(str, cVar);
            if (a11 != null) {
                hashMap.putAll(a11);
            }
            Map<String, String> b10 = b(str, cVar);
            if (b10 != null) {
                hashMap.putAll(b10);
            }
            if (!hashMap.containsKey("lrid") || TextUtils.isEmpty(hashMap.get("lrid"))) {
                hashMap.put("lrid", cVar.o());
            }
            if (hashMap.containsKey("lrid")) {
                String str2 = hashMap.get("lrid");
                if (!TextUtils.isEmpty(str2) && str2.contains("label_second")) {
                    hashMap.put("lrid", str2.replace("label_second", ""));
                }
            }
            if (hashMap.containsKey("n_lrid")) {
                String str3 = hashMap.get("n_lrid");
                if (!TextUtils.isEmpty(str3) && str3.contains("label_second")) {
                    hashMap.put("n_lrid", str3.replace("n_lrid", ""));
                }
            }
            Map<String, String> d10 = d(str, cVar);
            if (d10 != null) {
                hashMap.putAll(d10);
            }
            String str4 = "1";
            if (cVar.c() == null || !cVar.c().equals("1") || !Arrays.asList(b.f27272b).contains(str) || cVar.a() == 296) {
                if (Arrays.asList(b.f27283m).contains(str)) {
                    hashMap.put("use_local_dns", i.b().e() ? "1" : MBridgeConstans.ENDCARD_URL_TYPE_PL);
                    if (!i.b().d()) {
                        str4 = MBridgeConstans.ENDCARD_URL_TYPE_PL;
                    }
                    hashMap.put("local_dns_available", str4);
                }
                com.mbridge.msdk.tracker.e a12 = a(str, hashMap);
                if (mVar != null && a12 != null) {
                    mVar.d(a12);
                }
                if (aVar != null) {
                    aVar.a();
                }
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
    }

    public void b(String str, m mVar, c cVar, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
        if (cVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            HashMap hashMap = new HashMap();
            cVar.j(str);
            Map<String, String> a10 = a(str, cVar.w(), mVar);
            if (a10 != null) {
                hashMap.putAll(a10);
            }
            Map<String, String> a11 = a(str, cVar);
            if (a11 != null) {
                hashMap.putAll(a11);
            }
            Map<String, String> b10 = b(str, cVar);
            if (b10 != null) {
                hashMap.putAll(b10);
            }
            Map<String, String> d10 = d(str, cVar);
            if (d10 != null) {
                hashMap.putAll(d10);
            }
            com.mbridge.msdk.tracker.e a12 = a(str, hashMap);
            if (mVar != null && a12 != null) {
                mVar.d(a12);
            }
            if (aVar != null) {
                aVar.a();
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    public Map<String, String> b(String str, c cVar) {
        HashMap hashMap = new HashMap();
        if (cVar != null) {
            return cVar.a(cVar.o() + str);
        }
        return hashMap;
    }

    private com.mbridge.msdk.tracker.e a(String str, Map<String, String> map) {
        if (map == null || TextUtils.isEmpty(str)) {
            return null;
        }
        com.mbridge.msdk.tracker.e eVar = new com.mbridge.msdk.tracker.e(str);
        try {
            JSONObject jSONObject = new JSONObject(map);
            Boolean a10 = com.mbridge.msdk.foundation.same.b.b().a();
            if (a10 != null) {
                jSONObject.put("r_v_r", a10.booleanValue() ? 1 : 0);
            }
            eVar.a(jSONObject);
            eVar.b(0);
            eVar.a(0);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
        return eVar;
    }

    private Map<String, String> a(String str, String str2, m mVar) {
        e eVar = new e();
        try {
            g d10 = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
            if (d10 == null) {
                d10 = h.b().a();
            }
            if (!TextUtils.isEmpty(d10.k0())) {
                eVar.a("as_rid", d10.k0());
            }
            String J = d10.J();
            JSONArray I = d10.I();
            if (I != null) {
                int i10 = 0;
                while (true) {
                    if (i10 >= I.length()) {
                        break;
                    } else if (str.equals(I.getString(i10))) {
                        J = "1.0";
                        break;
                    } else {
                        i10++;
                    }
                }
            }
            if (!TextUtils.isEmpty(J)) {
                eVar.a("log_rate", J);
            } else {
                eVar.a("log_rate", -1);
            }
            if (!TextUtils.isEmpty(str2)) {
                l d11 = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b(), str2);
                if (d11 != null && !TextUtils.isEmpty(d11.I())) {
                    eVar.a("us_rid", d11.I());
                }
                if (d11 != null && !TextUtils.isEmpty(d11.a())) {
                    eVar.a("u_stid", d11.a());
                }
                e c10 = d.b().c(str2);
                if (c10 != null) {
                    if (mVar != null && mVar.c() != null) {
                        try {
                            mVar.c().put("r_stid", c10.b("r_stid"));
                            c10.c("r_stid");
                        } catch (JSONException unused) {
                        }
                    }
                    eVar.a(c10);
                }
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
        return eVar.a();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0057 A[Catch: Exception -> 0x003d, TryCatch #0 {Exception -> 0x003d, blocks: (B:4:0x0007, B:6:0x0020, B:8:0x0026, B:10:0x0036, B:25:0x0057, B:27:0x005d, B:30:0x0068, B:32:0x006e, B:28:0x0062, B:33:0x0072, B:35:0x0078, B:36:0x0080, B:38:0x0086, B:41:0x0091, B:43:0x0097, B:39:0x008b, B:15:0x0041, B:17:0x0045, B:19:0x004c, B:21:0x0050), top: B:49:0x0007, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0072 A[Catch: Exception -> 0x003d, TryCatch #0 {Exception -> 0x003d, blocks: (B:4:0x0007, B:6:0x0020, B:8:0x0026, B:10:0x0036, B:25:0x0057, B:27:0x005d, B:30:0x0068, B:32:0x006e, B:28:0x0062, B:33:0x0072, B:35:0x0078, B:36:0x0080, B:38:0x0086, B:41:0x0091, B:43:0x0097, B:39:0x008b, B:15:0x0041, B:17:0x0045, B:19:0x004c, B:21:0x0050), top: B:49:0x0007, inners: #1 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x004e -> B:22:0x0053). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0050 -> B:22:0x0053). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.List<com.mbridge.msdk.foundation.entity.CampaignEx> a(com.mbridge.msdk.foundation.same.report.metrics.c r4, java.lang.String r5) {
        /*
            r3 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            if (r4 == 0) goto La2
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L3d
            r1.<init>()     // Catch: java.lang.Exception -> L3d
            java.lang.String r2 = r4.o()     // Catch: java.lang.Exception -> L3d
            r1.append(r2)     // Catch: java.lang.Exception -> L3d
            r1.append(r5)     // Catch: java.lang.Exception -> L3d
            java.lang.String r5 = r1.toString()     // Catch: java.lang.Exception -> L3d
            java.util.Map r1 = r4.r()     // Catch: java.lang.Exception -> L3d
            if (r1 == 0) goto L53
            boolean r2 = r1.containsKey(r5)     // Catch: java.lang.Exception -> L3d
            if (r2 == 0) goto L53
            java.lang.Object r5 = r1.get(r5)     // Catch: java.lang.Exception -> L3d java.lang.NumberFormatException -> L3f
            java.util.Map r5 = (java.util.Map) r5     // Catch: java.lang.Exception -> L3d java.lang.NumberFormatException -> L3f
            java.lang.String r1 = "resource_type"
            java.lang.Object r5 = r5.get(r1)     // Catch: java.lang.Exception -> L3d java.lang.NumberFormatException -> L3f
            boolean r1 = r5 instanceof java.lang.String     // Catch: java.lang.Exception -> L3d java.lang.NumberFormatException -> L3f
            if (r1 == 0) goto L41
            java.lang.String r5 = (java.lang.String) r5     // Catch: java.lang.Exception -> L3d java.lang.NumberFormatException -> L3f
            int r5 = java.lang.Integer.parseInt(r5)     // Catch: java.lang.Exception -> L3d java.lang.NumberFormatException -> L3f
            goto L54
        L3d:
            r4 = move-exception
            goto L9b
        L3f:
            r5 = move-exception
            goto L4c
        L41:
            boolean r1 = r5 instanceof java.lang.Integer     // Catch: java.lang.Exception -> L3d java.lang.NumberFormatException -> L3f
            if (r1 == 0) goto L53
            java.lang.Integer r5 = (java.lang.Integer) r5     // Catch: java.lang.Exception -> L3d java.lang.NumberFormatException -> L3f
            int r5 = r5.intValue()     // Catch: java.lang.Exception -> L3d java.lang.NumberFormatException -> L3f
            goto L54
        L4c:
            boolean r1 = com.mbridge.msdk.MBridgeConstans.DEBUG     // Catch: java.lang.Exception -> L3d
            if (r1 == 0) goto L53
            r5.printStackTrace()     // Catch: java.lang.Exception -> L3d
        L53:
            r5 = -1
        L54:
            r1 = 1
            if (r5 != r1) goto L72
            java.util.List r5 = r4.j()     // Catch: java.lang.Exception -> L3d
            if (r5 == 0) goto L62
            java.util.List r4 = r4.j()     // Catch: java.lang.Exception -> L3d
            goto L66
        L62:
            java.util.List r4 = r4.g()     // Catch: java.lang.Exception -> L3d
        L66:
            if (r4 == 0) goto La2
            int r5 = r4.size()     // Catch: java.lang.Exception -> L3d
            if (r5 <= 0) goto La2
            r0.addAll(r4)     // Catch: java.lang.Exception -> L3d
            goto La2
        L72:
            com.mbridge.msdk.foundation.entity.CampaignEx r5 = r4.i()     // Catch: java.lang.Exception -> L3d
            if (r5 == 0) goto L80
            com.mbridge.msdk.foundation.entity.CampaignEx r4 = r4.i()     // Catch: java.lang.Exception -> L3d
            r0.add(r4)     // Catch: java.lang.Exception -> L3d
            goto La2
        L80:
            java.util.List r5 = r4.j()     // Catch: java.lang.Exception -> L3d
            if (r5 == 0) goto L8b
            java.util.List r4 = r4.j()     // Catch: java.lang.Exception -> L3d
            goto L8f
        L8b:
            java.util.List r4 = r4.g()     // Catch: java.lang.Exception -> L3d
        L8f:
            if (r4 == 0) goto La2
            int r5 = r4.size()     // Catch: java.lang.Exception -> L3d
            if (r5 <= 0) goto La2
            r0.addAll(r4)     // Catch: java.lang.Exception -> L3d
            goto La2
        L9b:
            boolean r5 = com.mbridge.msdk.MBridgeConstans.DEBUG
            if (r5 == 0) goto La2
            r4.printStackTrace()
        La2:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.same.report.metrics.f.a(com.mbridge.msdk.foundation.same.report.metrics.c, java.lang.String):java.util.List");
    }

    public Map<String, String> a(String str, c cVar) {
        HashMap hashMap = new HashMap();
        try {
            if (Arrays.asList(b.f27275e).contains(str)) {
                String str2 = "";
                if (cVar != null) {
                    str2 = cVar.c();
                }
                hashMap.put("auto_load", str2);
            }
            if (cVar != null) {
                Map<String, Map<String, String>> r10 = cVar.r();
                String str3 = cVar.o() + str;
                if (r10.containsKey(str3) && r10.get(str3) != null) {
                    hashMap.putAll(r10.get(str3));
                }
                try {
                    Map<String, Map<String, String>> q10 = cVar.q();
                    String str4 = cVar.o() + "_" + cVar.l() + "_" + str;
                    if (q10.containsKey(str4) && q10.get(str4) != null) {
                        hashMap.putAll(q10.get(str4));
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
        return hashMap;
    }
}
