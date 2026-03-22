package com.mbridge.msdk.foundation.db;

import android.content.ContentValues;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.o;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.z0;
import java.net.URLEncoder;
/* compiled from: VideoReportDataDao.java */
/* loaded from: classes5.dex */
public class n extends a<com.mbridge.msdk.foundation.entity.n> {

    /* renamed from: a  reason: collision with root package name */
    private static final String f26803a = "com.mbridge.msdk.foundation.db.n";

    /* renamed from: b  reason: collision with root package name */
    private static n f26804b;

    private n(f fVar) {
        super(fVar);
    }

    public static n a(f fVar) {
        if (f26804b == null) {
            synchronized (n.class) {
                try {
                    if (f26804b == null) {
                        f26804b = new n(fVar);
                    }
                } finally {
                }
            }
        }
        return f26804b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x001e, code lost:
        if (r1 != null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0024, code lost:
        if (r1 == null) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0026, code lost:
        r1.close();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized int a() {
        /*
            r4 = this;
            monitor-enter(r4)
            r0 = 0
            r1 = 0
            java.lang.String r2 = "select count(*) from reward_report"
            android.database.sqlite.SQLiteDatabase r3 = r4.getReadableDatabase()     // Catch: java.lang.Throwable -> L1a java.lang.Exception -> L1c
            android.database.Cursor r1 = r3.rawQuery(r2, r1)     // Catch: java.lang.Throwable -> L1a java.lang.Exception -> L1c
            if (r1 == 0) goto L1e
            boolean r2 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L1a java.lang.Exception -> L1c
            if (r2 == 0) goto L1e
            int r0 = r1.getInt(r0)     // Catch: java.lang.Throwable -> L1a java.lang.Exception -> L1c
            goto L1e
        L1a:
            r0 = move-exception
            goto L2e
        L1c:
            r2 = move-exception
            goto L21
        L1e:
            if (r1 == 0) goto L2c
            goto L26
        L21:
            r2.printStackTrace()     // Catch: java.lang.Throwable -> L1a
            if (r1 == 0) goto L2c
        L26:
            r1.close()     // Catch: java.lang.Throwable -> L2a java.lang.Exception -> L2c
            goto L2c
        L2a:
            r0 = move-exception
            goto L34
        L2c:
            monitor-exit(r4)
            return r0
        L2e:
            if (r1 == 0) goto L33
            r1.close()     // Catch: java.lang.Throwable -> L2a java.lang.Exception -> L33
        L33:
            throw r0     // Catch: java.lang.Throwable -> L2a
        L34:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L2a
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.db.n.a():int");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:55:0x01c9
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    public synchronized java.util.List<com.mbridge.msdk.foundation.entity.n> a(java.lang.String r25) {
        /*
            Method dump skipped, instructions count: 876
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.db.n.a(java.lang.String):java.util.List");
    }

    public synchronized long a(com.mbridge.msdk.foundation.entity.n nVar) {
        try {
            if (nVar != null) {
                try {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("key", nVar.n());
                    contentValues.put("networkType", Integer.valueOf(nVar.q()));
                    contentValues.put("network_str", nVar.r());
                    contentValues.put("isCompleteView", Integer.valueOf(nVar.m()));
                    contentValues.put("watchedMillis", Integer.valueOf(nVar.F()));
                    contentValues.put("videoLength", Integer.valueOf(nVar.C()));
                    if (!TextUtils.isEmpty(nVar.s())) {
                        contentValues.put("offerUrl", nVar.s());
                    }
                    if (!TextUtils.isEmpty(nVar.t())) {
                        contentValues.put("reason", URLEncoder.encode(nVar.t(), "utf-8"));
                    }
                    contentValues.put("result", Integer.valueOf(nVar.x()));
                    contentValues.put("duration", nVar.g());
                    contentValues.put("videoSize", Long.valueOf(nVar.D()));
                    contentValues.put("type", nVar.h());
                    String i10 = nVar.i();
                    if (!TextUtils.isEmpty(i10)) {
                        contentValues.put(CampaignEx.ENDCARD_URL, i10);
                    }
                    String E = nVar.E();
                    if (!TextUtils.isEmpty(E)) {
                        contentValues.put(CampaignEx.JSON_KEY_VIDEO_URL, E);
                    }
                    String u10 = nVar.u();
                    if (!TextUtils.isEmpty(u10)) {
                        contentValues.put("rid", u10);
                    }
                    String v10 = nVar.v();
                    if (!TextUtils.isEmpty(v10)) {
                        contentValues.put("rid_n", v10);
                    }
                    String z10 = nVar.z();
                    if (!TextUtils.isEmpty(z10)) {
                        contentValues.put("template_url", z10);
                    }
                    String l10 = nVar.l();
                    if (!TextUtils.isEmpty(l10)) {
                        contentValues.put(CampaignEx.JSON_KEY_IMAGE_URL, l10);
                    }
                    String a10 = nVar.a();
                    if (!TextUtils.isEmpty(a10)) {
                        contentValues.put("ad_type", URLEncoder.encode(a10, "utf-8"));
                    }
                    contentValues.put("unitId", nVar.B());
                    contentValues.put("campaignId", nVar.d());
                    if ("2000039".equals(nVar.n())) {
                        String b10 = o.b(nVar);
                        if (z0.b(b10)) {
                            contentValues.put("h5_click_data", b10);
                        }
                    }
                    String w10 = nVar.w();
                    if (!TextUtils.isEmpty(w10)) {
                        contentValues.put("resource_type", URLEncoder.encode(w10, "utf-8"));
                    }
                    String f10 = nVar.f();
                    if (!TextUtils.isEmpty(f10)) {
                        contentValues.put("device_id", URLEncoder.encode(f10, "utf-8"));
                    }
                    String e10 = nVar.e();
                    if (!TextUtils.isEmpty(e10)) {
                        contentValues.put("creative", URLEncoder.encode(e10, "utf-8"));
                    }
                    contentValues.put(CampaignEx.JSON_KEY_NEW_INTERSTITIAL_AD_SPACE_T, Integer.valueOf(nVar.b()));
                    return getWritableDatabase().insert("reward_report", null, contentValues);
                } catch (Exception e11) {
                    p0.b(f26803a, e11.getMessage());
                }
            }
            return -1L;
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
