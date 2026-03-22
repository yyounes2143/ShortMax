package com.mbridge.msdk.foundation.same.report;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import androidx.autofill.HintConstants;
import com.huawei.hms.framework.common.ContainerUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.db.BatchReportDao;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.r0;
import com.mbridge.msdk.foundation.tools.x0;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import com.mbridge.msdk.tracker.p;
import com.mbridge.msdk.tracker.x;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Stack;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;
/* compiled from: MBRevenueBatchReportManager.java */
/* loaded from: classes5.dex */
public final class e {

    /* renamed from: l  reason: collision with root package name */
    private static final String f27231l = "e";

    /* renamed from: m  reason: collision with root package name */
    private static String f27232m = "roas";

    /* renamed from: n  reason: collision with root package name */
    private static volatile e f27233n;

    /* renamed from: a  reason: collision with root package name */
    private AtomicInteger f27234a;

    /* renamed from: b  reason: collision with root package name */
    private BatchReportDao f27235b;

    /* renamed from: c  reason: collision with root package name */
    private int f27236c = 1;

    /* renamed from: d  reason: collision with root package name */
    private long f27237d = 0;

    /* renamed from: e  reason: collision with root package name */
    private String f27238e = com.mbridge.msdk.foundation.same.net.utils.d.h().O;

    /* renamed from: f  reason: collision with root package name */
    private volatile int f27239f = 0;

    /* renamed from: g  reason: collision with root package name */
    private boolean f27240g = false;

    /* renamed from: h  reason: collision with root package name */
    private Executor f27241h = Executors.newSingleThreadExecutor();

    /* renamed from: i  reason: collision with root package name */
    private Handler f27242i;

    /* renamed from: j  reason: collision with root package name */
    private Stack<Long> f27243j;

    /* renamed from: k  reason: collision with root package name */
    private com.mbridge.msdk.tracker.m f27244k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MBRevenueBatchReportManager.java */
    /* loaded from: classes5.dex */
    public class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i10 = message.what;
            int i11 = 0;
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 == 4) {
                            Bundle data = message.getData();
                            if (e.this.f27242i != null && e.this.f27235b != null && data != null && e.this.f27240g) {
                                e.this.f27242i.removeMessages(4);
                                ArrayList<BatchReportMessage> batchReportMessages = e.this.f27235b.getBatchReportMessages(System.currentTimeMillis(), 2);
                                if (batchReportMessages != null && batchReportMessages.size() > 0) {
                                    for (int i12 = 0; i12 < batchReportMessages.size(); i12++) {
                                        BatchReportMessage batchReportMessage = batchReportMessages.get(i12);
                                        e.this.a(batchReportMessage.getReportMessage(), batchReportMessage.getTimestamp());
                                    }
                                }
                                String str = e.f27231l;
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append("切换上报lib，需要上报的数据： ");
                                if (batchReportMessages != null) {
                                    i11 = batchReportMessages.size();
                                }
                                sb2.append(i11);
                                p0.a(str, sb2.toString());
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    Bundle data2 = message.getData();
                    if (data2 != null) {
                        e.this.a(data2.getParcelableArrayList("report_message"), data2.getLong("last_report_time"));
                        return;
                    }
                    return;
                }
                Bundle data3 = message.getData();
                if (e.this.f27242i != null && e.this.f27235b != null && data3 != null) {
                    e.this.f27242i.removeMessages(1);
                    long j10 = data3.getLong("last_report_time");
                    ArrayList<BatchReportMessage> batchReportMessages2 = e.this.f27235b.getBatchReportMessages(j10, 2);
                    e.this.b(batchReportMessages2, j10);
                    String str2 = e.f27231l;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("队列上报触发了，需要上报的数据： ");
                    if (batchReportMessages2 != null) {
                        i11 = batchReportMessages2.size();
                    }
                    sb3.append(i11);
                    p0.a(str2, sb3.toString());
                    return;
                }
                return;
            }
            Bundle data4 = message.getData();
            if (e.this.f27242i != null && e.this.f27235b != null && data4 != null) {
                e.this.f27242i.removeMessages(2);
                long currentTimeMillis = System.currentTimeMillis();
                ArrayList<BatchReportMessage> batchReportMessages3 = e.this.f27235b.getBatchReportMessages(currentTimeMillis, 2);
                e.this.b(batchReportMessages3, currentTimeMillis);
                e.this.f27234a.set(0);
                String str3 = e.f27231l;
                StringBuilder sb4 = new StringBuilder();
                sb4.append("超时上报触发了，需要上报的数据： ");
                if (batchReportMessages3 != null) {
                    i11 = batchReportMessages3.size();
                }
                sb4.append(i11);
                p0.a(str3, sb4.toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MBRevenueBatchReportManager.java */
    /* loaded from: classes5.dex */
    public class b extends com.mbridge.msdk.foundation.same.report.net.b {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ long f27246b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ArrayList f27247c;

        b(long j10, ArrayList arrayList) {
            this.f27246b = j10;
            this.f27247c = arrayList;
        }

        @Override // com.mbridge.msdk.foundation.same.report.net.b
        public void a(String str) {
            Stack stack;
            String str2 = e.f27231l;
            p0.a(str2, "批量上报失败： " + str);
            e.this.a(2, str);
            synchronized (e.this.f27243j) {
                try {
                    e.this.f27243j.add(Long.valueOf(this.f27246b));
                    if (e.this.f27235b != null) {
                        e.this.f27235b.updateMessagesReportState(this.f27247c);
                    }
                    if (e.this.f27243j.size() >= 5) {
                        p0.a(e.f27231l, "批量上报失败，上报失败的数据超过阈值");
                        try {
                            e.this.f27243j.pop();
                            long longValue = ((Long) e.this.f27243j.pop()).longValue();
                            e.this.f27243j.clear();
                            if (e.this.f27235b != null) {
                                e.this.f27235b.deleteBatchReportMessagesByTimestamp(longValue);
                            }
                            stack = e.this.f27243j;
                        } catch (Exception e10) {
                            p0.b(e.f27231l, e10.getMessage());
                            stack = e.this.f27243j;
                        }
                        stack.clear();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override // com.mbridge.msdk.foundation.same.report.net.b
        public void b(String str) {
            p0.a(e.f27231l, "批量上报成功");
            e.this.a(1, "");
            try {
                if (e.this.f27235b != null) {
                    e.this.f27235b.deleteBatchReportMessagesByTimestamp(this.f27246b);
                }
            } catch (Exception e10) {
                p0.b(e.f27231l, e10.getMessage());
            }
            synchronized (e.this.f27243j) {
                e.this.f27243j.clear();
            }
        }
    }

    /* compiled from: MBRevenueBatchReportManager.java */
    /* loaded from: classes5.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f27249a;

        c(String str) {
            this.f27249a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e.this.f27235b != null) {
                String str = e.f27231l;
                p0.a(str, "接收到上报数据： " + this.f27249a);
                if (e.this.f27240g) {
                    e.this.a(this.f27249a, 0L);
                    if (((Integer) x0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "roas_use_event", 0)).intValue() == 0) {
                        x0.b(com.mbridge.msdk.foundation.controller.c.m().d(), "roas_use_event", 1);
                        e.this.f27242i.sendEmptyMessage(4);
                    }
                } else if (e.this.f27239f != 1) {
                    e.this.c(this.f27249a);
                }
            }
        }
    }

    private e() {
        d();
    }

    public static synchronized e c() {
        e eVar;
        synchronized (e.class) {
            try {
                if (f27233n == null) {
                    f27233n = new e();
                }
                eVar = f27233n;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return eVar;
    }

    private void d() {
        com.mbridge.msdk.setting.a j10;
        com.mbridge.msdk.setting.g d10 = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        if (d10 != null && (j10 = d10.j()) != null) {
            this.f27236c = j10.a();
            this.f27237d = j10.c() * 1000;
            this.f27238e = com.mbridge.msdk.foundation.same.net.utils.d.h().O;
            this.f27239f = j10.b();
            boolean z10 = j10.d() == 1;
            this.f27240g = z10;
            if (z10 && this.f27239f != 1) {
                int b10 = r0.a().b("bcp", "type", r0.a().b("t_r_t", 1));
                if (b10 != 0 && b10 != 1) {
                    b10 = 0;
                }
                this.f27244k = com.mbridge.msdk.tracker.m.a(f27232m, com.mbridge.msdk.foundation.controller.c.m().d(), new x.b().a(new d()).a(new n()).a(b10, a(b10)).a(r0.a().b("t_m_e_t", 604800000)).b(r0.a().b("t_m_e_s", 50)).d(r0.a().b("t_m_r_c", 50)).c(r0.a().b("t_m_t", 15000)).e(r0.a().b("t_m_r_t_s", 1)).a());
                JSONObject b11 = com.mbridge.msdk.foundation.same.report.c.b();
                try {
                    b11.put(TTVideoEngineInterface.PLAY_API_KEY_DEVICETYPE, l0.E(com.mbridge.msdk.foundation.controller.c.m().d()) ? "pad" : HintConstants.AUTOFILL_HINT_PHONE);
                    if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_OTHER)) {
                        b11.put(com.mbridge.msdk.foundation.same.net.wrapper.e.f27193j, l0.u());
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                this.f27244k.a(b11);
                this.f27244k.h();
            }
        }
        p0.a(f27231l, "初始化批量上报： " + this.f27238e + " " + this.f27236c + " " + this.f27237d + " " + this.f27239f);
        this.f27234a = new AtomicInteger(0);
        this.f27243j = new Stack<>();
        this.f27235b = BatchReportDao.getInstance(com.mbridge.msdk.foundation.controller.c.m().d());
        HandlerThread handlerThread = new HandlerThread("mb_revenue_batch_report_thread");
        handlerThread.start();
        this.f27242i = new a(handlerThread.getLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(ArrayList<BatchReportMessage> arrayList, long j10) {
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        Message obtain = Message.obtain();
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("report_message", arrayList);
        bundle.putLong("last_report_time", j10);
        obtain.setData(bundle);
        obtain.what = 3;
        this.f27242i.sendMessage(obtain);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        this.f27235b.addReportMessage(str, 2);
        Handler handler = this.f27242i;
        if (handler != null && !handler.hasMessages(1)) {
            Message obtain = Message.obtain();
            obtain.what = 1;
            this.f27242i.sendMessageDelayed(obtain, this.f27237d);
        }
        if (this.f27234a.incrementAndGet() < this.f27236c || this.f27242i == null) {
            return;
        }
        Message obtain2 = Message.obtain();
        Bundle bundle = new Bundle();
        bundle.putLong("last_report_time", System.currentTimeMillis());
        obtain2.setData(bundle);
        obtain2.what = 2;
        this.f27242i.sendMessage(obtain2);
        this.f27234a.set(0);
    }

    private p a(int i10) {
        if (i10 == 1) {
            return new p(new m((byte) 2), com.mbridge.msdk.foundation.same.net.utils.d.h().f27169l, com.mbridge.msdk.foundation.same.net.utils.d.h().f27173p);
        }
        return new p(new com.mbridge.msdk.tracker.network.toolbox.h(), com.mbridge.msdk.foundation.same.net.utils.d.h().O, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ArrayList<BatchReportMessage> arrayList, long j10) {
        BatchReportMessage batchReportMessage;
        if (arrayList != null && arrayList.size() > 0) {
            p0.a(f27231l, "需要上报的数据条数： " + arrayList.size());
            Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
            if (d10 == null) {
                return;
            }
            com.mbridge.msdk.foundation.same.net.wrapper.e a10 = j.a(d10);
            a10.a("app_id", com.mbridge.msdk.foundation.controller.c.m().b());
            a10.a("m_sdk", "msdk");
            a10.a("lqswt", String.valueOf(1));
            a10.a(TTVideoEngineInterface.PLAY_API_KEY_DEVICETYPE, l0.E(d10) ? "pad" : HintConstants.AUTOFILL_HINT_PHONE);
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_OTHER)) {
                a10.a(com.mbridge.msdk.foundation.same.net.wrapper.e.f27193j, l0.u());
            }
            StringBuilder sb2 = new StringBuilder();
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                try {
                    if (arrayList.get(i10) != null) {
                        sb2.append(batchReportMessage.getReportMessage() + "&ts=" + batchReportMessage.getTimestamp());
                        if (i10 >= 0 && i10 < size - 1) {
                            sb2.append("\n");
                        }
                    }
                } catch (Throwable th2) {
                    p0.b(f27231l, th2.getMessage());
                }
            }
            try {
                String encode = URLEncoder.encode(sb2.toString(), "utf-8");
                a10.a("data", encode);
                p0.a(f27231l, "需要批量上报的数据： " + encode);
                com.mbridge.msdk.foundation.same.report.net.a aVar = new com.mbridge.msdk.foundation.same.report.net.a(com.mbridge.msdk.foundation.controller.c.m().d());
                a(0, "");
                aVar.post(0, this.f27238e, a10, new b(j10, arrayList), "roas", ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS);
                return;
            } catch (Exception e10) {
                p0.b(f27231l, e10.getMessage());
                return;
            }
        }
        p0.a(f27231l, "需要上报的数据条数： 0");
    }

    public void b() {
        Handler handler = this.f27242i;
        if (handler == null || handler.hasMessages(1) || this.f27239f == 1 || this.f27240g) {
            return;
        }
        Message obtain = Message.obtain();
        obtain.what = 1;
        this.f27242i.sendMessageDelayed(obtain, 5000L);
    }

    public synchronized void b(String str) {
        try {
            if (this.f27239f == 1) {
                return;
            }
            c cVar = new c(str);
            if (com.mbridge.msdk.foundation.controller.d.a().e()) {
                Executor executor = this.f27241h;
                if (executor != null) {
                    executor.execute(cVar);
                } else {
                    cVar.run();
                }
            } else {
                cVar.run();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, long j10) {
        if (this.f27244k != null) {
            com.mbridge.msdk.tracker.e eVar = new com.mbridge.msdk.tracker.e("roas");
            eVar.a(true);
            if (j10 != 0) {
                eVar.c(j10);
            }
            eVar.a(1);
            try {
                eVar.a(a(str));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.f27244k.d(eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i10, String str) {
        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
        eVar.a("state", Integer.valueOf(i10));
        if (i10 == 2) {
            eVar.a("reason", str);
        }
        com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
        cVar.a("m_ad_rev_s_s", eVar);
        com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_ad_rev_s_s", cVar);
    }

    private JSONObject a(String str) {
        JSONObject jSONObject = new JSONObject();
        if (TextUtils.isEmpty(str)) {
            return jSONObject;
        }
        try {
            for (String str2 : str.split(ContainerUtils.FIELD_DELIMITER)) {
                String[] split = str2.split(ContainerUtils.KEY_VALUE_DELIMITER);
                if (split.length == 2) {
                    jSONObject.put(split[0], split[1]);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return jSONObject;
    }
}
