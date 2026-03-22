package com.bytedance.bdtracker;

import android.database.Cursor;
import android.os.Bundle;
import com.bytedance.applog.IHeaderCustomTimelyCallback;
import com.bytedance.applog.log.EventBus;
import com.bytedance.applog.log.LogUtils;
import com.bytedance.bdtracker.l0;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import com.unity3d.services.core.di.ServiceProvider;
import java.util.ArrayList;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class i0 extends c0 {

    /* renamed from: h  reason: collision with root package name */
    public static final long[] f12047h = {10000};

    /* renamed from: g  reason: collision with root package name */
    public final a3 f12048g;

    /* loaded from: classes3.dex */
    public class a implements EventBus.DataFetcher {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Set f12049a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ boolean f12050b;

        public a(Set set, boolean z10) {
            this.f12049a = set;
            this.f12050b = z10;
        }

        @Override // com.bytedance.applog.log.EventBus.DataFetcher
        public Object fetch() {
            String str;
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("$$APP_ID", i0.this.f11889f.f11913m);
                JSONArray jSONArray = new JSONArray();
                for (String str2 : this.f12049a) {
                    jSONArray.put(str2);
                }
                jSONObject.put("$$EVENT_LOCAL_ID_ARRAY", jSONArray);
                if (this.f12050b) {
                    str = "success";
                } else {
                    str = "failed";
                }
                jSONObject.put("$$UPLOAD_STATUS", str);
            } catch (JSONException unused) {
            }
            return jSONObject;
        }
    }

    public i0(e0 e0Var) {
        super(e0Var);
        this.f12048g = new a3("sender_", e0Var.f11956e);
    }

    public final void a(Set<String> set, boolean z10) {
        if (set == null || set.isEmpty()) {
            return;
        }
        LogUtils.sendJsonFetcher("event_upload_eid", new a(set, z10));
    }

    @Override // com.bytedance.bdtracker.c0
    public boolean c() {
        Bundle a10;
        long currentTimeMillis = System.currentTimeMillis();
        j0 j0Var = this.f11888e.f11965n;
        if (j0Var != null && (a10 = j0Var.a(currentTimeMillis, ServiceProvider.SCAR_SIGNALS_FETCH_TIMEOUT)) != null) {
            this.f11888e.f11955d.D.debug(4, "New play session event", new Object[0]);
            this.f11889f.onEventV3("play_session", a10, 1);
            this.f11889f.flush();
        }
        r1 r1Var = this.f11888e.f11960i;
        if (r1Var.h() != 0) {
            r1Var.a("access", (Object) t4.a(r1Var.f12359b, this.f11888e.f11965n.c()));
            JSONObject a11 = l0.b.a(r1Var.e());
            if (a11 != null) {
                IHeaderCustomTimelyCallback headerCustomCallback = this.f11889f.getHeaderCustomCallback();
                if (headerCustomCallback != null) {
                    headerCustomCallback.updateHeader(a11);
                }
                this.f11888e.f11955d.D.debug(4, "Send events with header:{}", a11);
                a4 c10 = this.f11888e.c();
                String str = this.f11889f.f11913m;
                a3 a3Var = this.f12048g;
                if (a3Var.a()) {
                    long currentTimeMillis2 = System.currentTimeMillis();
                    long[] jArr = a3.f11861h[a3Var.f11864c];
                    if (currentTimeMillis2 - a3Var.f11867f >= jArr[0]) {
                        a3Var.f11865d = 1;
                        a3Var.f11867f = currentTimeMillis2;
                    } else {
                        int i10 = a3Var.f11865d;
                        if (i10 >= jArr[2]) {
                            return true;
                        }
                        a3Var.f11865d = i10 + 1;
                    }
                }
                int b10 = c10.b(str);
                if (b10 < 8) {
                    int i11 = 8 - b10;
                    for (int i12 = 0; i12 < i11 && c10.a(str, a11); i12++) {
                    }
                }
                ArrayList arrayList = new ArrayList();
                Cursor cursor = null;
                try {
                    cursor = c10.f11869a.getReadableDatabase().rawQuery("SELECT * FROM packV2 WHERE _app_id= ? ORDER BY _id DESC LIMIT 8", new String[]{str});
                    if (cursor != null) {
                        while (cursor.moveToNext()) {
                            d4 d4Var = new d4();
                            d4Var.a(cursor);
                            arrayList.add(d4Var);
                        }
                    }
                } catch (Throwable th2) {
                    try {
                        c10.f11870b.f11955d.D.error(5, "Query event packs failed", th2, new Object[0]);
                        k2.a(c10.f11870b.f11968q, th2);
                    } finally {
                        l0.b.a(cursor);
                    }
                }
                this.f11888e.f11955d.D.debug(4, "{} packs to be sent", Integer.valueOf(arrayList.size()));
                if (arrayList.size() <= 0) {
                    return true;
                }
                int i13 = 0;
                for (d4 d4Var2 : arrayList) {
                    byte[] bArr = d4Var2.f11946z;
                    if (bArr != null && bArr.length > 0) {
                        if (a(d4Var2)) {
                        }
                    } else {
                        d4Var2.A = 0;
                    }
                    i13++;
                }
                c10.b(arrayList);
                this.f11888e.f11955d.D.debug(4, "sender successfully send " + i13 + " packs (total: " + arrayList.size() + ")", new Object[0]);
                return true;
            }
            this.f11888e.f11955d.D.error(4, "Header is empty", new Object[0]);
        }
        return false;
    }

    @Override // com.bytedance.bdtracker.c0
    public String d() {
        return "sender";
    }

    @Override // com.bytedance.bdtracker.c0
    public long[] e() {
        return f12047h;
    }

    @Override // com.bytedance.bdtracker.c0
    public boolean f() {
        return true;
    }

    @Override // com.bytedance.bdtracker.c0
    public long g() {
        p1 p1Var = this.f11888e.f11956e;
        if (p1Var.a(p1Var.f12318q)) {
            return p1Var.f12318q;
        }
        return p1Var.f12307f.getLong("batch_event_interval", ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS);
    }

    public boolean a(d4 d4Var) {
        boolean z10;
        JSONObject jSONObject;
        int a10;
        r3 r3Var = this.f11889f.f11910j;
        e0 e0Var = this.f11888e;
        String[] a11 = r3Var.a(e0Var, e0Var.f11960i.e(), d4Var.f12455l);
        try {
            jSONObject = new JSONObject(new String(d4Var.f11946z));
            jSONObject.put("local_time", System.currentTimeMillis() / 1000);
            a10 = this.f11889f.f11911k.a(a11, jSONObject, this.f11888e.f11956e);
            z10 = true;
        } catch (Throwable th2) {
            th = th2;
            z10 = false;
        }
        if (a10 != 200) {
            if (a10 >= 500 && a10 < 600) {
                this.f12048g.b();
            }
            e0 e0Var2 = this.f11888e;
            k2.a(e0Var2.f11968q, 13L, e0Var2.d(), a10);
            this.f11888e.f11955d.D.error(4, "Send pack failed:{}", Integer.valueOf(a10));
            d4Var.A++;
            a(d4Var.l(), false);
            return false;
        }
        this.f12048g.c();
        d4Var.A = 0;
        try {
            a(d4Var.l(), true);
            this.f11888e.c().a(jSONObject);
        } catch (Throwable th3) {
            th = th3;
            this.f11888e.f11955d.D.error(4, "Send pack failed", th, new Object[0]);
            a(d4Var.l(), false);
            return z10;
        }
        return z10;
    }
}
