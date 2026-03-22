package com.mbridge.msdk.click;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.bytedance.vodsetting.Module;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.click.entity.JumpLoaderResult;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.b1;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.LoadingActivity;
import com.mbridge.msdk.out.NativeListener;
import com.mbridge.msdk.scheme.applet.AppletSchemeCallBack;
import com.mbridge.msdk.scheme.applet.AppletsModel;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;
/* compiled from: CommonClickControl.java */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: n  reason: collision with root package name */
    public static boolean f25954n = false;

    /* renamed from: o  reason: collision with root package name */
    public static Map<String, Long> f25955o = new HashMap();

    /* renamed from: p  reason: collision with root package name */
    public static Set<String> f25956p = new HashSet();

    /* renamed from: a  reason: collision with root package name */
    private String f25957a;

    /* renamed from: b  reason: collision with root package name */
    private long f25958b;

    /* renamed from: c  reason: collision with root package name */
    private com.mbridge.msdk.foundation.db.g f25959c;

    /* renamed from: d  reason: collision with root package name */
    private Context f25960d;

    /* renamed from: e  reason: collision with root package name */
    private com.mbridge.msdk.click.e f25961e;

    /* renamed from: g  reason: collision with root package name */
    private final com.mbridge.msdk.foundation.same.report.h f25963g;

    /* renamed from: h  reason: collision with root package name */
    private com.mbridge.msdk.setting.g f25964h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f25965i;

    /* renamed from: l  reason: collision with root package name */
    private boolean f25968l;

    /* renamed from: m  reason: collision with root package name */
    private j f25969m;

    /* renamed from: f  reason: collision with root package name */
    private NativeListener.NativeTrackingListener f25962f = null;

    /* renamed from: j  reason: collision with root package name */
    private boolean f25966j = false;

    /* renamed from: k  reason: collision with root package name */
    private boolean f25967k = true;

    /* compiled from: CommonClickControl.java */
    /* loaded from: classes4.dex */
    class b implements g {
        b() {
        }

        @Override // com.mbridge.msdk.click.g
        public void a(Object obj) {
        }

        @Override // com.mbridge.msdk.click.g
        public void a(Object obj, String str) {
        }

        @Override // com.mbridge.msdk.click.g
        public void b(Object obj) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CommonClickControl.java */
    /* loaded from: classes4.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f25974a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f25975b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ CampaignEx f25976c;

        c(boolean z10, boolean z11, CampaignEx campaignEx) {
            this.f25974a = z10;
            this.f25975b = z11;
            this.f25976c = campaignEx;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f25974a && !a.f25954n && !a.this.f25968l && MBridgeConstans.NATIVE_SHOW_LOADINGPAGER && !this.f25975b) {
                a.this.d(this.f25976c);
            }
            if (!this.f25974a && a.this.f25962f != null && !a.f25954n && !a.this.f25968l && MBridgeConstans.NATIVE_SHOW_LOADINGPAGER) {
                a.this.f25962f.onShowLoading(this.f25976c);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CommonClickControl.java */
    /* loaded from: classes4.dex */
    public class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f25984a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Campaign f25985b;

        e(boolean z10, Campaign campaign) {
            this.f25984a = z10;
            this.f25985b = campaign;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f25984a && !a.f25954n && MBridgeConstans.NATIVE_SHOW_LOADINGPAGER) {
                a.this.a();
            }
            if (a.this.f25962f != null && !a.f25954n && MBridgeConstans.NATIVE_SHOW_LOADINGPAGER) {
                a.this.f25962f.onDismissLoading(this.f25985b);
            }
        }
    }

    public a(Context context, String str) {
        this.f25959c = null;
        this.f25960d = null;
        com.mbridge.msdk.setting.g d10 = com.mbridge.msdk.setting.h.b().d(str);
        this.f25964h = d10;
        if (d10 == null) {
            this.f25964h = com.mbridge.msdk.setting.h.b().a();
        }
        this.f25965i = this.f25964h.J0();
        Context applicationContext = context.getApplicationContext();
        this.f25960d = applicationContext;
        this.f25957a = str;
        if (this.f25959c == null) {
            this.f25959c = com.mbridge.msdk.foundation.db.g.a(applicationContext);
        }
        this.f25963g = new com.mbridge.msdk.foundation.same.report.h(this.f25960d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(int i10) {
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        return "";
                    }
                    return "2000138";
                }
                return "2000139";
            }
            return "2000137";
        }
        return "2000136";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(CampaignEx campaignEx) {
        try {
            Intent intent = new Intent(this.f25960d, LoadingActivity.class);
            intent.setFlags(268435456);
            intent.putExtra(CampaignEx.JSON_KEY_ICON_URL, campaignEx.getIconUrl());
            this.f25960d.startActivity(intent);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                p0.b("CommonClickControl", "Exception", e10);
            }
        }
    }

    public void c() {
        try {
            this.f25962f = null;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void c(CampaignEx campaignEx) {
        if (campaignEx == null) {
            return;
        }
        try {
            String currentLocalRid = campaignEx.getCurrentLocalRid();
            if (campaignEx.getLocalAllowTrackClick() == 0) {
                try {
                    com.mbridge.msdk.foundation.same.report.metrics.c b10 = com.mbridge.msdk.foundation.same.report.metrics.d.b().b(currentLocalRid);
                    if (b10 != null) {
                        b10.a(b10.o() + "m_check_local_c");
                    }
                } catch (Exception unused) {
                    p0.b("CommonClickControl", "sendClickStateToAnl error");
                }
            }
            com.mbridge.msdk.foundation.same.report.metrics.c b11 = com.mbridge.msdk.foundation.same.report.metrics.d.b().b(currentLocalRid);
            b11.a(campaignEx);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_check_local_c", b11);
        } catch (Throwable th2) {
            if (MBridgeConstans.DEBUG) {
                p0.b("CommonClickControl", th2.getMessage(), th2);
            }
        }
    }

    public static void a(Context context, CampaignEx campaignEx, String str, String str2, boolean z10, boolean z11) {
        if (context == null) {
            return;
        }
        new com.mbridge.msdk.click.e(context.getApplicationContext()).a(str, campaignEx, null, str2, z10, z11, com.mbridge.msdk.click.retry.a.f26105l);
    }

    public boolean b(CampaignEx campaignEx) {
        Long l10;
        if (campaignEx != null) {
            try {
                if (2 != campaignEx.getLinkType() && 3 != campaignEx.getLinkType()) {
                    return true;
                }
                String id2 = campaignEx.getId();
                Map<String, Long> map = f25955o;
                if (map != null) {
                    if (map.containsKey(id2) && (l10 = f25955o.get(id2)) != null) {
                        if (l10.longValue() > System.currentTimeMillis() || f25956p.contains(campaignEx.getId())) {
                            return false;
                        }
                    }
                    f25955o.put(campaignEx.getId(), Long.valueOf(System.currentTimeMillis() + (campaignEx.getClickTimeOutInterval() * 1000)));
                    return true;
                }
                return true;
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    e10.printStackTrace();
                    return true;
                }
                return true;
            }
        }
        return true;
    }

    public static void a(Context context, CampaignEx campaignEx, String str, String str2, boolean z10, boolean z11, int i10) {
        if (context == null) {
            return;
        }
        int i11 = TextUtils.isEmpty(str2) ? -1 : str2.startsWith("tcp") ? 1 : 0;
        a(i10, campaignEx, i11);
        new com.mbridge.msdk.click.e(context.getApplicationContext()).a(str, campaignEx, new C0356a(i11, str2, i10, campaignEx), str2, z10, z11, i10);
    }

    private static void a(int i10, CampaignEx campaignEx, int i11) {
        if (campaignEx != null) {
            try {
                String b10 = b(i10);
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("net_ty", Integer.valueOf(i11));
                eVar.a("result", 3);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(b10, campaignEx, eVar);
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    e10.printStackTrace();
                }
            }
        }
    }

    private int b() {
        try {
            com.mbridge.msdk.setting.g gVar = this.f25964h;
            if (gVar != null) {
                return gVar.V();
            }
            return 1;
        } catch (Exception e10) {
            e10.printStackTrace();
            return 1;
        }
    }

    /* compiled from: CommonClickControl.java */
    /* renamed from: com.mbridge.msdk.click.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class C0356a implements g {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f25970a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f25971b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f25972c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ CampaignEx f25973d;

        C0356a(int i10, String str, int i11, CampaignEx campaignEx) {
            this.f25970a = i10;
            this.f25971b = str;
            this.f25972c = i11;
            this.f25973d = campaignEx;
        }

        @Override // com.mbridge.msdk.click.g
        public void a(Object obj) {
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("result", 2);
                eVar.a("net_ty", String.valueOf(this.f25970a));
                if (obj != null && (obj instanceof JumpLoaderResult)) {
                    JumpLoaderResult jumpLoaderResult = (JumpLoaderResult) obj;
                    String str = jumpLoaderResult.getStatusCode() + "";
                    eVar.a("status_code", str);
                    if (str.startsWith("2")) {
                        eVar.a("result", 1);
                    } else {
                        String exceptionMsg = jumpLoaderResult.getExceptionMsg();
                        if (TextUtils.isEmpty(exceptionMsg)) {
                            exceptionMsg = "UNKNOWN EXCEPTION and Status Code is : " + str;
                        }
                        eVar.a("failingURL", b1.d(this.f25971b));
                        eVar.a("reason", exceptionMsg);
                    }
                }
                String b10 = a.b(this.f25972c);
                if (this.f25973d != null) {
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a(b10, this.f25973d, eVar);
                }
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    p0.b("CommonClickControl", e10.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.click.g
        public void a(Object obj, String str) {
            try {
                String b10 = a.b(this.f25972c);
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("result", 2);
                if (obj instanceof JumpLoaderResult) {
                    JumpLoaderResult jumpLoaderResult = (JumpLoaderResult) obj;
                    String exceptionMsg = jumpLoaderResult.getExceptionMsg();
                    if (!TextUtils.isEmpty(exceptionMsg)) {
                        str = exceptionMsg;
                    }
                    eVar.a("reason", str);
                    eVar.a("status_code", Integer.valueOf(jumpLoaderResult.getStatusCode()));
                }
                eVar.a(Module.ResponseKey.Code, "");
                eVar.a("failingURL", b1.d(this.f25971b));
                eVar.a("net_ty", String.valueOf(this.f25970a));
                if (this.f25973d != null) {
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a(b10, this.f25973d, eVar);
                }
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    p0.b("CommonClickControl", e10.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.click.g
        public void b(Object obj) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CommonClickControl.java */
    /* loaded from: classes4.dex */
    public class d implements g {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f25978a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f25979b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Boolean f25980c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ List f25981d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ boolean f25982e;

        d(CampaignEx campaignEx, boolean z10, Boolean bool, List list, boolean z11) {
            this.f25978a = campaignEx;
            this.f25979b = z10;
            this.f25980c = bool;
            this.f25981d = list;
            this.f25982e = z11;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0072 A[Catch: all -> 0x0080, TryCatch #0 {all -> 0x0080, blocks: (B:20:0x0064, B:22:0x0072, B:25:0x0082, B:27:0x0086, B:29:0x0090, B:31:0x0098), top: B:37:0x0064 }] */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0086 A[Catch: all -> 0x0080, TryCatch #0 {all -> 0x0080, blocks: (B:20:0x0064, B:22:0x0072, B:25:0x0082, B:27:0x0086, B:29:0x0090, B:31:0x0098), top: B:37:0x0064 }] */
        /* JADX WARN: Type inference failed for: r1v15 */
        /* JADX WARN: Type inference failed for: r1v16, types: [int] */
        /* JADX WARN: Type inference failed for: r1v25 */
        @Override // com.mbridge.msdk.click.g
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void a(java.lang.Object r12) {
            /*
                r11 = this;
                java.util.Set<java.lang.String> r0 = com.mbridge.msdk.click.a.f25956p
                if (r0 == 0) goto Ld
                com.mbridge.msdk.foundation.entity.CampaignEx r1 = r11.f25978a
                java.lang.String r1 = r1.getId()
                r0.remove(r1)
            Ld:
                java.lang.String r0 = "CommonClickControl"
                r1 = 0
                if (r12 == 0) goto L64
                boolean r2 = r12 instanceof com.mbridge.msdk.click.entity.JumpLoaderResult     // Catch: java.lang.Throwable -> L58
                if (r2 == 0) goto L64
                com.mbridge.msdk.click.entity.JumpLoaderResult r12 = (com.mbridge.msdk.click.entity.JumpLoaderResult) r12     // Catch: java.lang.Throwable -> L58
                com.mbridge.msdk.foundation.entity.CampaignEx r1 = r11.f25978a     // Catch: java.lang.Throwable -> L4b
                r1.setJumpResult(r12)     // Catch: java.lang.Throwable -> L4b
                com.mbridge.msdk.click.a r3 = com.mbridge.msdk.click.a.this     // Catch: java.lang.Throwable -> L4b
                com.mbridge.msdk.foundation.entity.CampaignEx r4 = r11.f25978a     // Catch: java.lang.Throwable -> L4b
                boolean r6 = r11.f25979b     // Catch: java.lang.Throwable -> L4b
                boolean r7 = com.mbridge.msdk.click.a.d(r3)     // Catch: java.lang.Throwable -> L4b
                java.lang.Boolean r8 = r11.f25980c     // Catch: java.lang.Throwable -> L4b
                java.util.List r9 = r11.f25981d     // Catch: java.lang.Throwable -> L4b
                r5 = r12
                com.mbridge.msdk.click.a.a(r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L4b
                boolean r1 = r12.isjumpDone()     // Catch: java.lang.Throwable -> L4b
                if (r1 == 0) goto L4d
                com.mbridge.msdk.click.a r1 = com.mbridge.msdk.click.a.this     // Catch: java.lang.Throwable -> L4b
                com.mbridge.msdk.foundation.db.g r1 = com.mbridge.msdk.click.a.e(r1)     // Catch: java.lang.Throwable -> L4b
                com.mbridge.msdk.foundation.db.d r1 = com.mbridge.msdk.foundation.db.d.a(r1)     // Catch: java.lang.Throwable -> L4b
                com.mbridge.msdk.foundation.entity.CampaignEx r2 = r11.f25978a     // Catch: java.lang.Throwable -> L4b
                com.mbridge.msdk.click.a r3 = com.mbridge.msdk.click.a.this     // Catch: java.lang.Throwable -> L4b
                java.lang.String r3 = com.mbridge.msdk.click.a.f(r3)     // Catch: java.lang.Throwable -> L4b
                com.mbridge.msdk.click.b.a(r1, r2, r3)     // Catch: java.lang.Throwable -> L4b
                goto L4d
            L4b:
                r1 = move-exception
                goto L5c
            L4d:
                com.mbridge.msdk.click.a r1 = com.mbridge.msdk.click.a.this     // Catch: java.lang.Throwable -> L4b
                boolean r2 = r11.f25982e     // Catch: java.lang.Throwable -> L4b
                com.mbridge.msdk.foundation.entity.CampaignEx r3 = r11.f25978a     // Catch: java.lang.Throwable -> L4b
                com.mbridge.msdk.click.a.a(r1, r2, r3)     // Catch: java.lang.Throwable -> L4b
            L56:
                r1 = r12
                goto L64
            L58:
                r12 = move-exception
                r10 = r1
                r1 = r12
                r12 = r10
            L5c:
                java.lang.String r1 = r1.getMessage()
                com.mbridge.msdk.foundation.tools.p0.b(r0, r1)
                goto L56
            L64:
                com.mbridge.msdk.foundation.same.report.metrics.e r12 = new com.mbridge.msdk.foundation.same.report.metrics.e     // Catch: java.lang.Throwable -> L80
                r12.<init>()     // Catch: java.lang.Throwable -> L80
                java.lang.String r2 = "result"
                java.lang.String r3 = "1"
                r12.a(r2, r3)     // Catch: java.lang.Throwable -> L80
                if (r1 == 0) goto L82
                java.lang.String r2 = "status_code"
                int r1 = r1.getStatusCode()     // Catch: java.lang.Throwable -> L80
                java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch: java.lang.Throwable -> L80
                r12.a(r2, r1)     // Catch: java.lang.Throwable -> L80
                goto L82
            L80:
                r12 = move-exception
                goto Lad
            L82:
                com.mbridge.msdk.foundation.entity.CampaignEx r1 = r11.f25978a     // Catch: java.lang.Throwable -> L80
                if (r1 == 0) goto L97
                java.lang.String r1 = r1.getClickURL()     // Catch: java.lang.Throwable -> L80
                boolean r2 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Throwable -> L80
                if (r2 != 0) goto L97
                java.lang.String r2 = "tcp"
                boolean r1 = r1.startsWith(r2)     // Catch: java.lang.Throwable -> L80
                goto L98
            L97:
                r1 = -1
            L98:
                java.lang.String r2 = "net_ty"
                java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch: java.lang.Throwable -> L80
                r12.a(r2, r1)     // Catch: java.lang.Throwable -> L80
                com.mbridge.msdk.foundation.same.report.metrics.d r1 = com.mbridge.msdk.foundation.same.report.metrics.d.b()     // Catch: java.lang.Throwable -> L80
                java.lang.String r2 = "2000138"
                com.mbridge.msdk.foundation.entity.CampaignEx r3 = r11.f25978a     // Catch: java.lang.Throwable -> L80
                r1.a(r2, r3, r12)     // Catch: java.lang.Throwable -> L80
                goto Lb8
            Lad:
                boolean r1 = com.mbridge.msdk.MBridgeConstans.DEBUG
                if (r1 == 0) goto Lb8
                java.lang.String r12 = r12.getMessage()
                com.mbridge.msdk.foundation.tools.p0.b(r0, r12)
            Lb8:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.click.a.d.a(java.lang.Object):void");
        }

        @Override // com.mbridge.msdk.click.g
        public void b(Object obj) {
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0052 A[Catch: all -> 0x0063, TryCatch #0 {all -> 0x0063, blocks: (B:22:0x004e, B:24:0x0052, B:26:0x005c, B:30:0x0066, B:32:0x007d, B:33:0x008a), top: B:39:0x004e }] */
        /* JADX WARN: Removed duplicated region for block: B:32:0x007d A[Catch: all -> 0x0063, TryCatch #0 {all -> 0x0063, blocks: (B:22:0x004e, B:24:0x0052, B:26:0x005c, B:30:0x0066, B:32:0x007d, B:33:0x008a), top: B:39:0x004e }] */
        /* JADX WARN: Type inference failed for: r6v10, types: [int] */
        /* JADX WARN: Type inference failed for: r6v21 */
        /* JADX WARN: Type inference failed for: r6v9 */
        @Override // com.mbridge.msdk.click.g
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void a(java.lang.Object r6, java.lang.String r7) {
            /*
                r5 = this;
                java.util.Set<java.lang.String> r0 = com.mbridge.msdk.click.a.f25956p
                if (r0 == 0) goto Ld
                com.mbridge.msdk.foundation.entity.CampaignEx r1 = r5.f25978a
                java.lang.String r1 = r1.getId()
                r0.remove(r1)
            Ld:
                java.lang.String r0 = "CommonClickControl"
                r1 = 0
                if (r6 == 0) goto L2a
                boolean r2 = r6 instanceof com.mbridge.msdk.click.entity.JumpLoaderResult     // Catch: java.lang.Throwable -> L28
                if (r2 == 0) goto L2a
                r2 = r6
                com.mbridge.msdk.click.entity.JumpLoaderResult r2 = (com.mbridge.msdk.click.entity.JumpLoaderResult) r2     // Catch: java.lang.Throwable -> L28
                com.mbridge.msdk.click.a r1 = com.mbridge.msdk.click.a.this     // Catch: java.lang.Throwable -> L25
                com.mbridge.msdk.click.entity.JumpLoaderResult r6 = (com.mbridge.msdk.click.entity.JumpLoaderResult) r6     // Catch: java.lang.Throwable -> L25
                com.mbridge.msdk.foundation.entity.CampaignEx r3 = r5.f25978a     // Catch: java.lang.Throwable -> L25
                r4 = 1
                com.mbridge.msdk.click.a.a(r1, r6, r3, r4)     // Catch: java.lang.Throwable -> L25
                r1 = r2
                goto L2a
            L25:
                r6 = move-exception
                r1 = r2
                goto L47
            L28:
                r6 = move-exception
                goto L47
            L2a:
                com.mbridge.msdk.click.a r6 = com.mbridge.msdk.click.a.this     // Catch: java.lang.Throwable -> L28
                com.mbridge.msdk.out.NativeListener$NativeTrackingListener r6 = com.mbridge.msdk.click.a.c(r6)     // Catch: java.lang.Throwable -> L28
                if (r6 == 0) goto L3d
                com.mbridge.msdk.click.a r6 = com.mbridge.msdk.click.a.this     // Catch: java.lang.Throwable -> L28
                com.mbridge.msdk.out.NativeListener$NativeTrackingListener r6 = com.mbridge.msdk.click.a.c(r6)     // Catch: java.lang.Throwable -> L28
                com.mbridge.msdk.foundation.entity.CampaignEx r2 = r5.f25978a     // Catch: java.lang.Throwable -> L28
                r6.onRedirectionFailed(r2, r7)     // Catch: java.lang.Throwable -> L28
            L3d:
                com.mbridge.msdk.click.a r6 = com.mbridge.msdk.click.a.this     // Catch: java.lang.Throwable -> L28
                boolean r7 = r5.f25982e     // Catch: java.lang.Throwable -> L28
                com.mbridge.msdk.foundation.entity.CampaignEx r2 = r5.f25978a     // Catch: java.lang.Throwable -> L28
                com.mbridge.msdk.click.a.a(r6, r7, r2)     // Catch: java.lang.Throwable -> L28
                goto L4e
            L47:
                java.lang.String r6 = r6.getMessage()
                com.mbridge.msdk.foundation.tools.p0.b(r0, r6)
            L4e:
                com.mbridge.msdk.foundation.entity.CampaignEx r6 = r5.f25978a     // Catch: java.lang.Throwable -> L63
                if (r6 == 0) goto L65
                java.lang.String r6 = r6.getClickURL()     // Catch: java.lang.Throwable -> L63
                boolean r7 = android.text.TextUtils.isEmpty(r6)     // Catch: java.lang.Throwable -> L63
                if (r7 != 0) goto L65
                java.lang.String r7 = "tcp"
                boolean r6 = r6.startsWith(r7)     // Catch: java.lang.Throwable -> L63
                goto L66
            L63:
                r6 = move-exception
                goto L96
            L65:
                r6 = -1
            L66:
                com.mbridge.msdk.foundation.same.report.metrics.e r7 = new com.mbridge.msdk.foundation.same.report.metrics.e     // Catch: java.lang.Throwable -> L63
                r7.<init>()     // Catch: java.lang.Throwable -> L63
                java.lang.String r2 = "result"
                java.lang.String r3 = "2"
                r7.a(r2, r3)     // Catch: java.lang.Throwable -> L63
                java.lang.String r2 = "net_ty"
                java.lang.Integer r6 = java.lang.Integer.valueOf(r6)     // Catch: java.lang.Throwable -> L63
                r7.a(r2, r6)     // Catch: java.lang.Throwable -> L63
                if (r1 == 0) goto L8a
                java.lang.String r6 = "status_code"
                int r1 = r1.getStatusCode()     // Catch: java.lang.Throwable -> L63
                java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch: java.lang.Throwable -> L63
                r7.a(r6, r1)     // Catch: java.lang.Throwable -> L63
            L8a:
                com.mbridge.msdk.foundation.same.report.metrics.d r6 = com.mbridge.msdk.foundation.same.report.metrics.d.b()     // Catch: java.lang.Throwable -> L63
                java.lang.String r1 = "2000138"
                com.mbridge.msdk.foundation.entity.CampaignEx r2 = r5.f25978a     // Catch: java.lang.Throwable -> L63
                r6.a(r1, r2, r7)     // Catch: java.lang.Throwable -> L63
                goto La1
            L96:
                boolean r7 = com.mbridge.msdk.MBridgeConstans.DEBUG
                if (r7 == 0) goto La1
                java.lang.String r6 = r6.getMessage()
                com.mbridge.msdk.foundation.tools.p0.b(r0, r6)
            La1:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.click.a.d.a(java.lang.Object, java.lang.String):void");
        }
    }

    public static void a(Context context, CampaignEx campaignEx, String str, String[] strArr, boolean z10, boolean z11) {
        if (context == null || campaignEx == null || TextUtils.isEmpty(str) || strArr == null) {
            return;
        }
        com.mbridge.msdk.click.e eVar = new com.mbridge.msdk.click.e(context.getApplicationContext());
        for (String str2 : strArr) {
            eVar.a(str, campaignEx, new b(), str2, z10, z11, com.mbridge.msdk.click.retry.a.f26105l);
        }
    }

    public void a(String str) {
        this.f25957a = str;
    }

    public void a(NativeListener.NativeTrackingListener nativeTrackingListener) {
        this.f25962f = nativeTrackingListener;
    }

    public void a(j jVar) {
        this.f25969m = jVar;
    }

    public void a(boolean z10) {
        this.f25967k = z10;
    }

    public void a(CampaignEx campaignEx, NativeListener.NativeAdListener nativeAdListener) {
        if (nativeAdListener != null && campaignEx != null) {
            nativeAdListener.onAdClick(campaignEx);
        }
        a(campaignEx);
    }

    /* JADX WARN: Removed duplicated region for block: B:136:0x02ad A[Catch: all -> 0x0040, TryCatch #0 {all -> 0x0040, blocks: (B:5:0x0009, B:8:0x0010, B:10:0x0036, B:12:0x003c, B:15:0x0043, B:16:0x004b, B:19:0x0065, B:21:0x007d, B:23:0x0081, B:24:0x0088, B:26:0x00a5, B:27:0x00ac, B:29:0x00b0, B:30:0x00c6, B:32:0x00cf, B:34:0x00d3, B:35:0x00da, B:37:0x00ea, B:40:0x00f4, B:42:0x00fa, B:44:0x0100, B:46:0x010c, B:48:0x0110, B:49:0x0117, B:51:0x011b, B:52:0x0125, B:55:0x012c, B:57:0x0130, B:58:0x0137, B:60:0x0154, B:62:0x015c, B:63:0x016c, B:65:0x0172, B:67:0x0176, B:68:0x017d, B:70:0x0187, B:72:0x018d, B:74:0x0193, B:76:0x019d, B:77:0x01a5, B:79:0x01a9, B:80:0x01b0, B:82:0x01ba, B:84:0x01c0, B:85:0x01c7, B:87:0x01cd, B:89:0x01d9, B:91:0x01e8, B:92:0x01f1, B:94:0x01f5, B:95:0x01fc, B:97:0x0202, B:99:0x020b, B:101:0x020f, B:98:0x0208, B:103:0x021c, B:106:0x022c, B:114:0x0243, B:116:0x024d, B:118:0x0255, B:120:0x025d, B:122:0x0266, B:123:0x026d, B:125:0x027b, B:127:0x0282, B:128:0x0289, B:130:0x028d, B:132:0x02a2, B:136:0x02ad, B:138:0x02b5, B:139:0x02b8, B:141:0x02be, B:143:0x02c2, B:144:0x02c5, B:147:0x02cb, B:149:0x02d1, B:151:0x02db, B:153:0x02df, B:155:0x02e3, B:156:0x02e6, B:160:0x02ff, B:157:0x02f1, B:159:0x02fc, B:163:0x0305, B:165:0x0313, B:169:0x031b, B:170:0x0323, B:171:0x032a, B:173:0x032e, B:174:0x0331, B:176:0x0338, B:178:0x033e, B:179:0x0344, B:182:0x034b, B:184:0x0356, B:185:0x035f, B:186:0x0363, B:188:0x036b, B:189:0x036e, B:191:0x0374, B:193:0x0378, B:194:0x037b, B:196:0x037f, B:198:0x0383, B:199:0x0386, B:201:0x0393, B:202:0x0397), top: B:208:0x0009, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0336  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(com.mbridge.msdk.foundation.entity.CampaignEx r18) {
        /*
            Method dump skipped, instructions count: 935
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.entity.CampaignEx):void");
    }

    private AppletSchemeCallBack a(NativeListener.NativeTrackingListener nativeTrackingListener, CampaignEx campaignEx, AppletsModel appletsModel, a aVar) {
        return new h(nativeTrackingListener, campaignEx, appletsModel, aVar);
    }

    private void a(Context context, CampaignEx campaignEx, List<String> list) {
        if (context == null) {
            com.mbridge.msdk.foundation.same.report.j.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx, 2, "context is null", this.f25957a);
            return;
        }
        boolean z10 = l0.D() == 1;
        boolean z11 = l0.D(context) == 1;
        if (z10 && z11) {
            String ghId = campaignEx.getGhId();
            String ghPath = campaignEx.getGhPath();
            String bindId = campaignEx.getBindId();
            String i10 = com.mbridge.msdk.foundation.controller.c.m().i();
            if (!TextUtils.isEmpty(ghId)) {
                try {
                    if (!TextUtils.isEmpty(i10)) {
                        bindId = i10;
                    }
                    Object d10 = l0.d(bindId);
                    Class<?> cls = Class.forName("com.tencent.mm.opensdk.modelbiz.WXLaunchMiniProgram$Req");
                    Object newInstance = cls.newInstance();
                    cls.getField("userName").set(newInstance, ghId);
                    cls.getField(MBridgeConstans.DYNAMIC_VIEW_WX_PATH).set(newInstance, ghPath);
                    cls.getField("miniprogramType").set(newInstance, cls.getField("MINIPTOGRAM_TYPE_RELEASE").get(null));
                    Class.forName("com.tencent.mm.opensdk.openapi.IWXAPI").getMethod("sendReq", Class.forName("com.tencent.mm.opensdk.modelbase.BaseReq")).invoke(d10, newInstance);
                    com.mbridge.msdk.foundation.same.report.j.a(context, campaignEx, 1, "", this.f25957a);
                    return;
                } catch (Throwable th2) {
                    com.mbridge.msdk.foundation.same.report.j.a(context, campaignEx, 2, th2.getMessage(), this.f25957a);
                    a(campaignEx, list);
                    return;
                }
            }
            a(campaignEx, list);
            com.mbridge.msdk.foundation.same.report.j.a(context, campaignEx, 2, "ghid is empty", this.f25957a);
            return;
        }
        com.mbridge.msdk.foundation.same.report.j.a(context, campaignEx, 2, "integrated:" + z10 + "-hasWx:" + z11, this.f25957a);
        a(campaignEx, list);
    }

    private void a(CampaignEx campaignEx, List<String> list) {
        if (b() == 2) {
            t0.a(this.f25960d, campaignEx.getClickURL(), campaignEx, this.f25962f, list);
        } else {
            t0.a(this.f25960d, campaignEx.getClickURL(), this.f25962f, campaignEx, list);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x0102 A[Catch: Exception -> 0x0023, TryCatch #0 {Exception -> 0x0023, blocks: (B:3:0x0006, B:6:0x0013, B:10:0x0027, B:13:0x0033, B:14:0x0042, B:15:0x0047, B:17:0x0059, B:19:0x005f, B:22:0x0076, B:24:0x007b, B:45:0x00ed, B:47:0x0102, B:48:0x0105, B:50:0x0109, B:52:0x0113, B:54:0x0117, B:56:0x0124, B:58:0x0128, B:59:0x012f, B:26:0x008c, B:28:0x0098, B:30:0x00a2, B:33:0x00ab, B:35:0x00ca, B:37:0x00d1, B:38:0x00d4, B:41:0x00da, B:42:0x00e3, B:44:0x00e8), top: B:63:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0128 A[Catch: Exception -> 0x0023, TryCatch #0 {Exception -> 0x0023, blocks: (B:3:0x0006, B:6:0x0013, B:10:0x0027, B:13:0x0033, B:14:0x0042, B:15:0x0047, B:17:0x0059, B:19:0x005f, B:22:0x0076, B:24:0x007b, B:45:0x00ed, B:47:0x0102, B:48:0x0105, B:50:0x0109, B:52:0x0113, B:54:0x0117, B:56:0x0124, B:58:0x0128, B:59:0x012f, B:26:0x008c, B:28:0x0098, B:30:0x00a2, B:33:0x00ab, B:35:0x00ca, B:37:0x00d1, B:38:0x00d4, B:41:0x00da, B:42:0x00e3, B:44:0x00e8), top: B:63:0x0006 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(com.mbridge.msdk.foundation.entity.CampaignEx r15, boolean r16, java.lang.Boolean r17, java.util.List<java.lang.String> r18) {
        /*
            Method dump skipped, instructions count: 335
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.entity.CampaignEx, boolean, java.lang.Boolean, java.util.List):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z10, Campaign campaign) {
        new Handler(Looper.getMainLooper()).post(new e(z10, campaign));
    }

    public void a(JumpLoaderResult jumpLoaderResult, CampaignEx campaignEx, int i10, boolean z10) {
        if (campaignEx == null || jumpLoaderResult == null) {
            return;
        }
        try {
            long currentTimeMillis = System.currentTimeMillis() - this.f25958b;
            com.mbridge.msdk.foundation.entity.e eVar = new com.mbridge.msdk.foundation.entity.e();
            int s10 = l0.s(this.f25960d);
            eVar.e(s10);
            eVar.h(l0.a(this.f25960d, s10));
            eVar.i(campaignEx.getRequestId());
            eVar.j(campaignEx.getRequestIdNotice());
            eVar.a(i10);
            eVar.c(currentTimeMillis + "");
            eVar.a(campaignEx.getId());
            eVar.f(jumpLoaderResult.getType());
            if (!TextUtils.isEmpty(jumpLoaderResult.getUrl())) {
                eVar.g(URLEncoder.encode(jumpLoaderResult.getUrl(), "utf-8"));
            }
            eVar.b((this.f25958b / 1000) + "");
            eVar.c(Integer.parseInt(campaignEx.getLandingType()));
            eVar.d(campaignEx.getLinkType());
            eVar.k(this.f25957a);
            eVar.f(jumpLoaderResult.getType());
            if (!TextUtils.isEmpty(jumpLoaderResult.getUrl())) {
                eVar.g(URLEncoder.encode(jumpLoaderResult.getUrl(), "utf-8"));
            }
            if (this.f25965i) {
                eVar.b(jumpLoaderResult.getStatusCode());
                if (!TextUtils.isEmpty(jumpLoaderResult.getHeader())) {
                    eVar.f(URLEncoder.encode(jumpLoaderResult.getHeader(), "utf-8"));
                }
                if (!TextUtils.isEmpty(jumpLoaderResult.getContent())) {
                    eVar.d(URLEncoder.encode(jumpLoaderResult.getContent(), "UTF-8"));
                }
                if (!TextUtils.isEmpty(jumpLoaderResult.getExceptionMsg())) {
                    eVar.e(URLEncoder.encode(jumpLoaderResult.getExceptionMsg(), "utf-8"));
                }
            }
            if (z10) {
                this.f25963g.a("click_jump_error", eVar, this.f25957a);
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(eVar);
            ArrayList<JSONObject> a10 = com.mbridge.msdk.foundation.entity.e.a(arrayList);
            if (a10 == null || a10.isEmpty()) {
                return;
            }
            Iterator<JSONObject> it = a10.iterator();
            while (it.hasNext()) {
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(it.next());
            }
        } catch (Throwable th2) {
            p0.b("CommonClickControl", th2.getMessage());
        }
    }

    public void a(Campaign campaign, String str) {
        try {
            if (!TextUtils.isEmpty(str) && campaign != null) {
                CampaignEx campaignEx = campaign instanceof CampaignEx ? (CampaignEx) campaign : null;
                if (!str.startsWith("market://") && !str.startsWith("https://play.google.com/")) {
                    com.mbridge.msdk.click.b.a(str, this.f25960d, this.f25957a, campaignEx, this.f25962f);
                    return;
                }
                if (t0.a.a(this.f25960d, str, this.f25962f) || campaignEx == null) {
                    return;
                }
                if (!TextUtils.isEmpty(campaignEx.getPackageName())) {
                    Context context = this.f25960d;
                    t0.a.a(context, "market://details?id=" + campaignEx.getPackageName(), this.f25962f);
                } else if (b() == 2) {
                    t0.a(this.f25960d, campaignEx.getClickURL(), campaignEx, this.f25962f, new ArrayList());
                } else {
                    t0.a(this.f25960d, campaignEx.getClickURL(), this.f25962f, campaignEx, new ArrayList());
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(JumpLoaderResult jumpLoaderResult, CampaignEx campaignEx, boolean z10) {
        a(jumpLoaderResult, campaignEx, 1, z10);
    }

    private void a(int i10, String str, CampaignEx campaignEx, NativeListener.NativeTrackingListener nativeTrackingListener, List<String> list) {
        try {
            if (!TextUtils.isEmpty(str)) {
                if (i10 == 2) {
                    t0.a(this.f25960d, str, campaignEx, nativeTrackingListener, list);
                } else {
                    t0.a(this.f25960d, str, nativeTrackingListener, campaignEx, list);
                }
            }
        } catch (Throwable th2) {
            if (MBridgeConstans.DEBUG) {
                p0.b("CommonClickControl", th2.getMessage(), th2);
            }
        }
    }

    private boolean a(CampaignEx campaignEx, JumpLoaderResult jumpLoaderResult, boolean z10, int i10, List<String> list) {
        boolean z11 = true;
        boolean z12 = false;
        if (z10) {
            try {
                int parseInt = Integer.parseInt(campaignEx.getLandingType());
                if (parseInt == 1) {
                    t0.a(this.f25960d, jumpLoaderResult.getUrl(), this.f25962f, campaignEx, list);
                } else if (parseInt == 2) {
                    t0.a(this.f25960d, jumpLoaderResult.getUrl(), campaignEx, this.f25962f, list);
                } else if (campaignEx.getPackageName() != null) {
                    if (t0.a.a(this.f25960d, "market://details?id=" + campaignEx.getPackageName(), this.f25962f)) {
                        if (list != null) {
                            try {
                                list.add("google_play");
                            } catch (Throwable th2) {
                                th = th2;
                                if (MBridgeConstans.DEBUG) {
                                    p0.b("CommonClickControl", th.getMessage(), th);
                                }
                                return z11;
                            }
                        }
                        a(campaignEx, 1, 1, list);
                    } else {
                        a(i10, jumpLoaderResult.getUrl(), campaignEx, this.f25962f, list);
                    }
                } else {
                    a(i10, jumpLoaderResult.getUrl(), campaignEx, this.f25962f, list);
                }
                z12 = true;
            } catch (Throwable th3) {
                th = th3;
                z11 = false;
            }
        }
        if (z12) {
            a(jumpLoaderResult, campaignEx, true);
            NativeListener.NativeTrackingListener nativeTrackingListener = this.f25962f;
            if (nativeTrackingListener != null) {
                nativeTrackingListener.onFinishRedirection(campaignEx, jumpLoaderResult.getUrl());
                return z12;
            }
            return z12;
        }
        a(jumpLoaderResult, campaignEx, true);
        NativeListener.NativeTrackingListener nativeTrackingListener2 = this.f25962f;
        if (nativeTrackingListener2 == null || !z10) {
            return z12;
        }
        nativeTrackingListener2.onRedirectionFailed(campaignEx, jumpLoaderResult.getUrl());
        return z12;
    }

    private boolean a(CampaignEx campaignEx, JumpLoaderResult jumpLoaderResult, boolean z10, List<String> list) {
        boolean z11 = false;
        if (z10) {
            try {
                if (com.mbridge.msdk.util.b.a()) {
                    com.mbridge.msdk.click.b.a(this.f25960d, this.f25957a, campaignEx, campaignEx.getNoticeUrl(), com.mbridge.msdk.foundation.same.a.M);
                }
                t0.a(this.f25960d, campaignEx.getClickURL(), this.f25962f, campaignEx, list);
                z11 = true;
            } catch (Throwable th2) {
                if (MBridgeConstans.DEBUG) {
                    p0.b("CommonClickControl", th2.getMessage(), th2);
                }
            }
        }
        a(jumpLoaderResult, campaignEx, true);
        if (z11) {
            NativeListener.NativeTrackingListener nativeTrackingListener = this.f25962f;
            if (nativeTrackingListener != null) {
                nativeTrackingListener.onFinishRedirection(campaignEx, jumpLoaderResult.getUrl());
            }
        } else {
            if (com.mbridge.msdk.util.b.a()) {
                a(jumpLoaderResult, campaignEx, true);
            }
            NativeListener.NativeTrackingListener nativeTrackingListener2 = this.f25962f;
            if (nativeTrackingListener2 != null) {
                nativeTrackingListener2.onRedirectionFailed(campaignEx, jumpLoaderResult.getUrl());
            }
        }
        return z11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00f2, code lost:
        if (com.mbridge.msdk.foundation.tools.t0.a.a(r16.f25960d, "market://details?id=" + r17.getPackageName(), r16.f25962f) == false) goto L65;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(com.mbridge.msdk.foundation.entity.CampaignEx r17, com.mbridge.msdk.click.entity.JumpLoaderResult r18, boolean r19, boolean r20, java.lang.Boolean r21, java.util.List<java.lang.String> r22) {
        /*
            Method dump skipped, instructions count: 432
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.entity.CampaignEx, com.mbridge.msdk.click.entity.JumpLoaderResult, boolean, boolean, java.lang.Boolean, java.util.List):void");
    }

    private boolean a(int i10, String str) {
        try {
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (i10 == 2) {
            if (t0.a.b(str)) {
            }
            return false;
        } else if (TextUtils.isEmpty(str)) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        try {
            Intent intent = new Intent();
            intent.setAction("ExitApp");
            this.f25960d.sendBroadcast(intent);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                p0.b("CommonClickControl", "Exception", e10);
            }
        }
    }

    private void a(CampaignEx campaignEx, int i10, int i11, List<String> list) {
        try {
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("type", Integer.valueOf(i10));
            eVar.a("result", Integer.valueOf(i11));
            if (list != null) {
                eVar.a("click_path", list.toString());
            }
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000150", campaignEx, eVar);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                p0.b("CommonClickControl", e10.getMessage());
            }
        }
    }
}
