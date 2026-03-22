package com.mbridge.msdk.foundation.tools;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.bytedance.vodsetting.Module;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class MIMManager {

    /* renamed from: i  reason: collision with root package name */
    private static volatile String f27344i;

    /* renamed from: a  reason: collision with root package name */
    private final AtomicBoolean f27345a;

    /* renamed from: b  reason: collision with root package name */
    private int f27346b;

    /* renamed from: c  reason: collision with root package name */
    private CopyOnWriteArrayList<CampaignEx> f27347c;

    /* renamed from: d  reason: collision with root package name */
    private Context f27348d;

    /* renamed from: e  reason: collision with root package name */
    private volatile Boolean f27349e;

    /* renamed from: f  reason: collision with root package name */
    private CampaignEx f27350f;

    /* renamed from: g  reason: collision with root package name */
    private volatile g f27351g;

    /* renamed from: h  reason: collision with root package name */
    private volatile MiOverseaMiniCardBroadcasterReceiver f27352h;

    /* loaded from: classes5.dex */
    public static class MiOverseaMiniCardBroadcasterReceiver extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int i10;
            if (j0.a("DFKwWgtuDkKwLZPwD+z8H+N/xjK+n3eyNVx6ZVPn5jcincKZx5f5ncN=").equals(intent.getAction())) {
                String stringExtra = intent.getStringExtra("packageName");
                int intExtra = intent.getIntExtra("errorCode", 0);
                if (intExtra < 0) {
                    i10 = intent.getIntExtra("reason", 0);
                } else {
                    i10 = -1;
                }
                p0.b("MIMManager", stringExtra + " " + intExtra + " " + i10);
                if (intExtra == 1 || intExtra == 2 || intExtra == 3 || intExtra == 4 || intExtra == 7) {
                    try {
                        com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
                        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                        eVar.a("key", URLEncoder.encode("m_mini_card", "utf-8"));
                        CampaignEx a10 = MIMManager.b().a(stringExtra);
                        if (a10 != null) {
                            eVar.a("rid", a10.getRequestId());
                            eVar.a("rid_n", a10.getRequestIdNotice());
                            eVar.a(MBridgeConstans.PROPERTIES_UNIT_ID, a10.getCampaignUnitId());
                            eVar.a("u_stid", com.mbridge.msdk.foundation.controller.a.f26683r.get(a10.getCampaignUnitId()));
                            cVar.a(a10);
                        }
                        eVar.a(NotificationCompat.CATEGORY_EVENT, String.valueOf(intExtra));
                        eVar.a("pkg_name", stringExtra);
                        if (i10 != -1) {
                            eVar.a("reasonCode", String.valueOf(i10));
                        }
                        cVar.a("m_mini_card", eVar);
                        com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_mini_card", cVar);
                    } catch (Exception e10) {
                        p0.b("MIMManager", e10.getMessage());
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f27353a;

        a(Context context) {
            this.f27353a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MIMManager.this.f27345a.compareAndSet(false, true)) {
                try {
                    MIMManager mIMManager = MIMManager.this;
                    mIMManager.f27349e = mIMManager.a();
                } catch (Exception e10) {
                    p0.a("MIMManager", e10.getMessage());
                }
                if (MIMManager.this.f27349e != null && MIMManager.this.f27349e.booleanValue() && this.f27353a != null) {
                    try {
                        MIMManager.this.f27351g = new g(null);
                        IntentFilter intentFilter = new IntentFilter();
                        intentFilter.addAction(j0.a("DFKwWgtuDkKwLZPwD+z8H+N/xj26Vjcdx5KyVj5GxVN="));
                        intentFilter.addAction(j0.a("DFKwWgtuDkKwLZPwD+z8H+N/xj26Vjcdx5KanjKnxVN="));
                        intentFilter.addAction(j0.a("DFKwWgtuDkKwLZPwD+z8H+N/xjQZxVfV+T2SZVe6V2xS5c5n"));
                        this.f27353a.registerReceiver(MIMManager.this.f27351g, intentFilter);
                    } catch (Exception e11) {
                        p0.a("MIMManager", e11.getMessage());
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f27355a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CampaignEx f27356b;

        b(Context context, CampaignEx campaignEx) {
            this.f27355a = context;
            this.f27356b = campaignEx;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                MIMManager.this.e(this.f27355a, this.f27356b);
            } catch (Exception e10) {
                p0.b("MIMManager", e10.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f27358a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CampaignEx f27359b;

        c(Context context, CampaignEx campaignEx) {
            this.f27358a = context;
            this.f27359b = campaignEx;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                MIMManager.this.d(this.f27358a, this.f27359b);
            } catch (Exception e10) {
                p0.b("MIMManager", e10.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f27361a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CampaignEx f27362b;

        d(Context context, CampaignEx campaignEx) {
            this.f27361a = context;
            this.f27362b = campaignEx;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                try {
                    MIMManager.this.f(this.f27361a, this.f27362b);
                    if (MIMManager.this.f27347c == null || !MIMManager.this.f27347c.contains(this.f27362b)) {
                        return;
                    }
                } catch (Exception e10) {
                    p0.b("MIMManager", e10.getMessage());
                    if (MIMManager.this.f27347c == null || !MIMManager.this.f27347c.contains(this.f27362b)) {
                        return;
                    }
                }
                MIMManager.this.f27347c.remove(this.f27362b);
            } catch (Throwable th2) {
                if (MIMManager.this.f27347c != null && MIMManager.this.f27347c.contains(this.f27362b)) {
                    MIMManager.this.f27347c.remove(this.f27362b);
                }
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f27364a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f27365b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ CampaignEx f27366c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f27367d;

        e(Context context, String str, CampaignEx campaignEx, int i10) {
            this.f27364a = context;
            this.f27365b = str;
            this.f27366c = campaignEx;
            this.f27367d = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (this.f27364a != null && !TextUtils.isEmpty(this.f27365b) && this.f27366c != null) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("key", "2000100");
                    jSONObject.put("network_type", l0.s(this.f27364a));
                    jSONObject.put("rid", this.f27366c.getRequestId());
                    jSONObject.put("rid_n", this.f27366c.getRequestIdNotice());
                    if (!TextUtils.isEmpty(this.f27366c.getCampaignUnitId())) {
                        jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, this.f27366c.getCampaignUnitId());
                        String str = com.mbridge.msdk.foundation.controller.a.f26683r.get(this.f27366c.getCampaignUnitId());
                        if (str == null) {
                            str = "";
                        }
                        jSONObject.put("u_stid", str);
                    }
                    jSONObject.put(BidResponsedEx.KEY_CID, this.f27366c.getId());
                    jSONObject.put("status", this.f27365b);
                    jSONObject.put(Module.ResponseKey.Code, this.f27367d);
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
                }
            } catch (Throwable th2) {
                p0.b("MIMManager", th2.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class f {

        /* renamed from: a  reason: collision with root package name */
        private static final MIMManager f27369a = new MIMManager(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class g extends BroadcastReceiver {
        private g() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            CampaignEx a10;
            String action = intent.getAction();
            if (!TextUtils.isEmpty(action) && !action.equals(j0.a("DFKwWgtuDkKwLZPwD+z8H+N/xj26Vjcdx5KyVj5GxVN=")) && !action.equals(j0.a("DFKwWgtuDkKwLZPwD+z8H+N/xj26Vjcdx5KanjKnxVN=")) && action.equals(j0.a("DFKwWgtuDkKwLZPwD+z8H+N/xjQZxVfV+T2SZVe6V2xS5c5n"))) {
                try {
                    Bundle extras = intent.getExtras();
                    if (extras == null) {
                        return;
                    }
                    int i10 = extras.getInt(HiAnalyticsConstant.HaKey.BI_KEY_RESULT, -1);
                    String string = extras.getString("packageName", "");
                    if (i10 == -1 || TextUtils.isEmpty(string) || (a10 = MIMManager.b().a(string)) == null) {
                        return;
                    }
                    MIMManager.b().a(context, a10, i10);
                    MIMManager.b().a(context, "dm_page_status", i10, MIMManager.b().c());
                } catch (Exception e10) {
                    p0.b("MIMManager", e10.getMessage());
                }
            }
        }

        /* synthetic */ g(a aVar) {
            this();
        }
    }

    /* synthetic */ MIMManager(a aVar) {
        this();
    }

    public void f() {
        this.f27346b++;
    }

    public void g() {
        int i10 = this.f27346b - 1;
        this.f27346b = i10;
        if (i10 <= 0) {
            a(this.f27348d);
        }
    }

    public void h() {
        try {
            if (this.f27352h == null) {
                this.f27352h = new MiOverseaMiniCardBroadcasterReceiver();
            }
            IntentFilter intentFilter = new IntentFilter(j0.a("DFKwWgtuDkKwLZPwD+z8H+N/xjK+n3eyNVx6ZVPn5jcincKZx5f5ncN="));
            Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
            if (d10 != null) {
                d10.registerReceiver(this.f27352h, intentFilter);
            }
        } catch (Exception e10) {
            p0.a("MIMManager", e10.getMessage());
        }
    }

    public void i() {
        try {
            if (this.f27352h != null) {
                Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
                if (d10 != null) {
                    d10.unregisterReceiver(this.f27352h);
                }
                this.f27350f = null;
                CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = this.f27347c;
                if (copyOnWriteArrayList != null) {
                    copyOnWriteArrayList.clear();
                }
                this.f27347c = null;
                this.f27352h = null;
            }
        } catch (Exception e10) {
            p0.a("MIMManager", e10.getMessage());
        }
    }

    private MIMManager() {
        this.f27346b = 0;
        this.f27347c = new CopyOnWriteArrayList<>();
        this.f27345a = new AtomicBoolean(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(Context context, CampaignEx campaignEx) {
        String[] w10;
        if (campaignEx != null) {
            try {
                com.mbridge.msdk.foundation.entity.j nativeVideoTracking = campaignEx.getNativeVideoTracking();
                if (nativeVideoTracking == null || (w10 = nativeVideoTracking.w()) == null) {
                    return;
                }
                for (String str : w10) {
                    com.mbridge.msdk.click.a.a(context, campaignEx, campaignEx.getCampaignUnitId(), str, false, false);
                }
            } catch (Exception e10) {
                p0.b("MIMManager", e10.getMessage());
            }
        }
    }

    public String d() {
        try {
            return f27344i == null ? "" : String.format("[%s]", f27344i);
        } catch (Exception unused) {
            return "";
        }
    }

    public Boolean e() {
        return this.f27349e;
    }

    public static MIMManager b() {
        return f.f27369a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(Context context, CampaignEx campaignEx) {
        String[] u10;
        if (campaignEx != null) {
            try {
                com.mbridge.msdk.foundation.entity.j nativeVideoTracking = campaignEx.getNativeVideoTracking();
                if (nativeVideoTracking == null || (u10 = nativeVideoTracking.u()) == null) {
                    return;
                }
                for (String str : u10) {
                    com.mbridge.msdk.click.a.a(context, campaignEx, campaignEx.getCampaignUnitId(), str, false, false);
                }
            } catch (Exception e10) {
                p0.b("MIMManager", e10.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(Context context, CampaignEx campaignEx) {
        String[] v10;
        if (campaignEx != null) {
            try {
                com.mbridge.msdk.foundation.entity.j nativeVideoTracking = campaignEx.getNativeVideoTracking();
                if (nativeVideoTracking == null || (v10 = nativeVideoTracking.v()) == null) {
                    return;
                }
                for (String str : v10) {
                    com.mbridge.msdk.click.a.a(context, campaignEx, campaignEx.getCampaignUnitId(), str, false, false);
                }
            } catch (Exception e10) {
                p0.b("MIMManager", e10.getMessage());
            }
        }
    }

    CampaignEx c() {
        return this.f27350f;
    }

    private Runnable c(Context context, CampaignEx campaignEx) {
        return new d(context, campaignEx);
    }

    public void b(Context context) {
        this.f27348d = context;
        com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new a(context));
    }

    public void a(CampaignEx campaignEx) {
        try {
            if (this.f27349e != null && campaignEx != null && this.f27349e.booleanValue()) {
                this.f27350f = campaignEx;
                this.f27347c.add(campaignEx);
            }
            if (com.mbridge.msdk.util.b.b() && campaignEx != null && campaignEx.getDeepLinkURL().startsWith("mimarket")) {
                if (this.f27352h == null) {
                    h();
                }
                this.f27350f = campaignEx;
                this.f27347c.add(campaignEx);
            }
        } catch (Exception e10) {
            p0.b("MIMManager", e10.getMessage());
        }
    }

    public void b(CampaignEx campaignEx) {
        try {
            if (this.f27349e == null || campaignEx == null || !this.f27349e.booleanValue()) {
                return;
            }
            this.f27350f = null;
            try {
                this.f27347c.remove(campaignEx);
            } catch (Exception e10) {
                p0.a("MIMManager", e10.getMessage());
            }
        } catch (Exception e11) {
            p0.b("MIMManager", e11.getMessage());
        }
    }

    private Runnable b(Context context, CampaignEx campaignEx) {
        return new b(context, campaignEx);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CampaignEx a(String str) {
        try {
            CampaignEx campaignEx = this.f27350f;
            if (campaignEx != null && TextUtils.equals(campaignEx.getPackageName(), str)) {
                return this.f27350f;
            }
            CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = this.f27347c;
            if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) {
                return null;
            }
            Iterator<CampaignEx> it = this.f27347c.iterator();
            while (it.hasNext()) {
                CampaignEx next = it.next();
                if (next != null && TextUtils.equals(next.getPackageName(), str)) {
                    return next;
                }
            }
            return null;
        } catch (Exception e10) {
            p0.b("MIMManager", e10.getMessage());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Boolean a() {
        Cursor cursor;
        Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
        Boolean bool = null;
        if (d10 != null) {
            try {
                if (d10.getContentResolver() != null) {
                    try {
                        cursor = d10.getContentResolver().query(Uri.parse(j0.a("DFK/J75/JaEXWFfXYZP9LkcXYk3/YkcBLF5TWgSBYbHuH75BW3xuhr5UJj2tLkeNhrKFLkxQhl==")), null, null, null, null);
                    } catch (Exception unused) {
                        cursor = null;
                    }
                    if (cursor != null) {
                        while (cursor.moveToNext()) {
                            try {
                                String string = cursor.getString(cursor.getColumnIndex("support"));
                                if (!TextUtils.isEmpty(string)) {
                                    if (!string.equalsIgnoreCase("null")) {
                                        if (!string.equalsIgnoreCase("false")) {
                                            if (string.equalsIgnoreCase("true")) {
                                            }
                                        }
                                        bool = Boolean.valueOf(Boolean.parseBoolean(string));
                                    }
                                }
                            } catch (Exception e10) {
                                p0.a("MIMManager", e10.getMessage());
                            }
                            try {
                                f27344i = cursor.getString(cursor.getColumnIndex("detailStyle"));
                            } catch (Exception e11) {
                                p0.a("MIMManager", e11.getMessage());
                            }
                        }
                        try {
                            cursor.close();
                        } catch (Exception e12) {
                            p0.a("MIMManager", e12.getMessage());
                        }
                    }
                }
            } catch (Exception e13) {
                p0.b("MIMManager", e13.getMessage());
            }
        }
        return bool;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0020, code lost:
        if (r4 != null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x002e, code lost:
        if (r4 == null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0030, code lost:
        r4.clear();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0033, code lost:
        r3.f27347c = null;
        r3.f27351g = null;
        r3.f27348d = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(android.content.Context r4) {
        /*
            r3 = this;
            java.lang.String r0 = "MIMManager"
            if (r4 == 0) goto L4a
            r1 = 0
            com.mbridge.msdk.foundation.tools.MIMManager$g r2 = r3.f27351g     // Catch: java.lang.Throwable -> Lf java.lang.Exception -> L11
            if (r2 == 0) goto L13
            com.mbridge.msdk.foundation.tools.MIMManager$g r2 = r3.f27351g     // Catch: java.lang.Throwable -> Lf java.lang.Exception -> L11
            r4.unregisterReceiver(r2)     // Catch: java.lang.Throwable -> Lf java.lang.Exception -> L11
            goto L13
        Lf:
            r4 = move-exception
            goto L3a
        L11:
            r4 = move-exception
            goto L23
        L13:
            com.mbridge.msdk.foundation.tools.MIMManager$MiOverseaMiniCardBroadcasterReceiver r2 = r3.f27352h     // Catch: java.lang.Throwable -> Lf java.lang.Exception -> L11
            if (r2 == 0) goto L1c
            com.mbridge.msdk.foundation.tools.MIMManager$MiOverseaMiniCardBroadcasterReceiver r2 = r3.f27352h     // Catch: java.lang.Throwable -> Lf java.lang.Exception -> L11
            r4.unregisterReceiver(r2)     // Catch: java.lang.Throwable -> Lf java.lang.Exception -> L11
        L1c:
            r3.f27350f = r1
            java.util.concurrent.CopyOnWriteArrayList<com.mbridge.msdk.foundation.entity.CampaignEx> r4 = r3.f27347c
            if (r4 == 0) goto L33
            goto L30
        L23:
            java.lang.String r4 = r4.getMessage()     // Catch: java.lang.Throwable -> Lf
            com.mbridge.msdk.foundation.tools.p0.a(r0, r4)     // Catch: java.lang.Throwable -> Lf
            r3.f27350f = r1
            java.util.concurrent.CopyOnWriteArrayList<com.mbridge.msdk.foundation.entity.CampaignEx> r4 = r3.f27347c
            if (r4 == 0) goto L33
        L30:
            r4.clear()
        L33:
            r3.f27347c = r1
            r3.f27351g = r1
            r3.f27348d = r1
            goto L4a
        L3a:
            r3.f27350f = r1
            java.util.concurrent.CopyOnWriteArrayList<com.mbridge.msdk.foundation.entity.CampaignEx> r0 = r3.f27347c
            if (r0 == 0) goto L43
            r0.clear()
        L43:
            r3.f27347c = r1
            r3.f27351g = r1
            r3.f27348d = r1
            throw r4
        L4a:
            r3.i()     // Catch: java.lang.Throwable -> L4e
            goto L56
        L4e:
            r4 = move-exception
            java.lang.String r4 = r4.getMessage()
            com.mbridge.msdk.foundation.tools.p0.b(r0, r4)
        L56:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.tools.MIMManager.a(android.content.Context):void");
    }

    void a(Context context, CampaignEx campaignEx, int i10) {
        Runnable b10;
        if (i10 == 3001) {
            b10 = b(context, campaignEx);
        } else if (i10 != 3002) {
            b10 = i10 != 3008 ? null : c(context, campaignEx);
        } else {
            b10 = a(context, campaignEx);
        }
        if (b10 != null) {
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(b10);
        }
    }

    private Runnable a(Context context, CampaignEx campaignEx) {
        return new c(context, campaignEx);
    }

    void a(Context context, String str, int i10, CampaignEx campaignEx) {
        com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new e(context, str, campaignEx, i10));
    }
}
