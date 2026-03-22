package com.bytedance.bdtracker;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.bytedance.applog.log.EventBus;
import com.bytedance.applog.log.LogUtils;
import com.bytedance.bdtracker.l0;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class k3 implements Handler.Callback {

    /* renamed from: a  reason: collision with root package name */
    public final e0 f12143a;

    /* renamed from: b  reason: collision with root package name */
    public final Handler f12144b;

    /* renamed from: c  reason: collision with root package name */
    public final Map<String, b> f12145c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    public final Set<String> f12146d = new HashSet();

    /* renamed from: e  reason: collision with root package name */
    public String f12147e = "";

    /* loaded from: classes3.dex */
    public class a implements EventBus.DataFetcher {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Set f12148a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ String f12149b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ boolean f12150c;

        public a(k3 k3Var, Set set, String str, boolean z10) {
            this.f12148a = set;
            this.f12149b = str;
            this.f12150c = z10;
        }

        @Override // com.bytedance.applog.log.EventBus.DataFetcher
        public Object fetch() {
            String str;
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            try {
                for (String str2 : this.f12148a) {
                    jSONArray.put(str2);
                }
                jSONObject.put("$$APP_ID", this.f12149b);
                jSONObject.put("$$EVENT_LOCAL_ID_ARRAY", jSONArray);
                if (this.f12150c) {
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

    /* loaded from: classes3.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public long f12151a;

        /* renamed from: b  reason: collision with root package name */
        public String f12152b;

        /* renamed from: c  reason: collision with root package name */
        public JSONObject f12153c;

        public b(long j10, String str, JSONObject jSONObject) {
            this.f12151a = j10;
            this.f12152b = str;
            this.f12153c = jSONObject;
        }

        public String toString() {
            StringBuilder a10 = com.bytedance.bdtracker.a.a("ProfileDataWrapper{timeStamp=");
            a10.append(this.f12151a);
            a10.append(", apiName='");
            a10.append(this.f12152b);
            a10.append('\'');
            a10.append(", jsonObject=");
            a10.append(this.f12153c);
            a10.append('}');
            return a10.toString();
        }
    }

    public k3(e0 e0Var) {
        this.f12143a = e0Var;
        StringBuilder a10 = com.bytedance.bdtracker.a.a("bd_tracker_profile:");
        a10.append(e0Var.f11955d.f11913m);
        HandlerThread handlerThread = new HandlerThread(a10.toString());
        handlerThread.start();
        this.f12144b = new Handler(handlerThread.getLooper(), this);
    }

    public void a(JSONObject jSONObject) {
        a(105, new b(System.currentTimeMillis(), "append", jSONObject));
    }

    public void b(JSONObject jSONObject) {
        a(103, new b(System.currentTimeMillis(), "increment", jSONObject));
    }

    public void c(JSONObject jSONObject) {
        a(100, new b(System.currentTimeMillis(), "set", jSONObject));
    }

    public void d(JSONObject jSONObject) {
        a(102, new b(System.currentTimeMillis(), "set_once", jSONObject));
    }

    public void e(JSONObject jSONObject) {
        a(104, new b(System.currentTimeMillis(), "unset", jSONObject));
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        boolean z10;
        boolean z11;
        switch (message.what) {
            case 100:
                b bVar = (b) message.obj;
                this.f12143a.f11955d.D.debug(9, "Handle set:{}", bVar);
                String str = this.f12147e;
                if (str != null) {
                    z10 = str.equals(this.f12143a.f11955d.getSsid());
                } else {
                    z10 = false;
                }
                this.f12147e = this.f12143a.f11955d.getSsid();
                Iterator<String> keys = bVar.f12153c.keys();
                boolean z12 = true;
                boolean z13 = false;
                while (keys.hasNext()) {
                    String next = keys.next();
                    if (this.f12145c.containsKey(next) && this.f12145c.get(next) != null) {
                        b bVar2 = this.f12145c.get(next);
                        if (bVar2 != null) {
                            if (System.currentTimeMillis() - bVar2.f12151a >= ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS) {
                                z13 = true;
                            }
                            try {
                                if (l0.b.a(bVar.f12153c, bVar2.f12153c, (String) null)) {
                                }
                            } catch (Throwable th2) {
                                this.f12143a.f11955d.D.error(9, "JSON handle failed", th2, new Object[0]);
                            }
                        }
                        this.f12145c.put(next, bVar);
                    } else {
                        z13 = true;
                    }
                    z12 = false;
                    this.f12145c.put(next, bVar);
                }
                if (!z10 || z13 || !z12) {
                    this.f12143a.f11955d.D.debug(9, "invoke profile set.", new Object[0]);
                    a(bVar);
                    break;
                }
                break;
            case 102:
                b bVar3 = (b) message.obj;
                this.f12143a.f11955d.D.debug(9, "Handle setOnce:{}", bVar3);
                String str2 = this.f12147e;
                if (str2 != null) {
                    z11 = str2.equals(this.f12143a.f11955d.getSsid());
                } else {
                    z11 = false;
                }
                this.f12147e = this.f12143a.f11955d.getSsid();
                Iterator<String> keys2 = bVar3.f12153c.keys();
                boolean z14 = true;
                while (keys2.hasNext()) {
                    String next2 = keys2.next();
                    if (!this.f12146d.contains(next2)) {
                        z14 = false;
                    }
                    this.f12146d.add(next2);
                }
                if (!z11 || !z14) {
                    this.f12143a.f11955d.D.debug(9, "invoke profile set once.", new Object[0]);
                    a(bVar3);
                    break;
                }
            case 103:
                b bVar4 = (b) message.obj;
                this.f12143a.f11955d.D.debug(9, "Handle increment:{}", bVar4);
                a(bVar4);
                break;
            case 104:
                b bVar5 = (b) message.obj;
                this.f12143a.f11955d.D.debug(9, "Handle unset:{}", bVar5);
                a(bVar5);
                break;
            case 105:
                b bVar6 = (b) message.obj;
                this.f12143a.f11955d.D.debug(9, "Handle append:{}", bVar6);
                a(bVar6);
                break;
            case 106:
                e0 e0Var = this.f12143a;
                if (e0Var != null) {
                    e0Var.f11955d.D.debug(9, "Handle flush with dr state:{}", Integer.valueOf(e0Var.f11960i.h()));
                    if (this.f12143a.f11960i.h() != 0) {
                        Map<String, List<f4>> a10 = this.f12143a.c().a(this.f12143a.f11955d.f11913m);
                        if (!a10.isEmpty()) {
                            HashSet hashSet = new HashSet();
                            for (Map.Entry<String, List<f4>> entry : a10.entrySet()) {
                                String key = entry.getKey();
                                JSONArray jSONArray = new JSONArray();
                                try {
                                    JSONObject jSONObject = new JSONObject();
                                    l0.b.a(jSONObject, this.f12143a.f11955d.getHeader());
                                    boolean c10 = l0.b.c(key);
                                    Object obj = key;
                                    if (c10) {
                                        obj = JSONObject.NULL;
                                    }
                                    jSONObject.put("user_unique_id", obj);
                                    jSONObject.remove("ssid");
                                    JSONObject jSONObject2 = new JSONObject();
                                    for (f4 f4Var : entry.getValue()) {
                                        jSONArray.put(f4Var.h());
                                        if (l0.b.d(f4Var.f12452i) && !jSONObject.has("ssid")) {
                                            jSONObject.put("ssid", f4Var.f12452i);
                                        }
                                        hashSet.add(f4Var.f12459p);
                                    }
                                    if (!this.f12143a.a(jSONObject)) {
                                        this.f12143a.f11955d.D.warn(9, "Register to get ssid by temp header failed.", new Object[0]);
                                    } else {
                                        jSONObject2.put("event_v3", jSONArray);
                                        jSONObject2.put("magic_tag", "ss_app_log");
                                        jSONObject2.put("header", jSONObject);
                                        jSONObject2.put("time_sync", p3.f12322d);
                                        jSONObject2.put("local_time", System.currentTimeMillis() / 1000);
                                        this.f12143a.c().a(entry.getValue());
                                        e0 e0Var2 = this.f12143a;
                                        if (e0Var2.f11955d.f11911k.a(new String[]{this.f12143a.e().getProfileUri()}, jSONObject2, e0Var2.f11956e) != 200) {
                                            this.f12143a.c().c(entry.getValue());
                                            a((Set<String>) hashSet, false);
                                        } else {
                                            a((Set<String>) hashSet, true);
                                        }
                                    }
                                } catch (Throwable th3) {
                                    this.f12143a.f11955d.D.error(9, "Flush failed", th3, new Object[0]);
                                    a((Set<String>) hashSet, false);
                                }
                            }
                            break;
                        }
                    }
                }
                break;
        }
        return true;
    }

    public final void a(b bVar) {
        if (this.f12143a == null) {
            return;
        }
        StringBuilder a10 = com.bytedance.bdtracker.a.a("__profile_");
        a10.append(bVar.f12152b);
        f4 f4Var = new f4(a10.toString(), bVar.f12153c.toString());
        ArrayList arrayList = new ArrayList();
        e0 e0Var = this.f12143a;
        e0Var.f11965n.a(e0Var.f11955d, f4Var);
        this.f12143a.b(f4Var);
        arrayList.add(f4Var);
        this.f12143a.c().f11871c.b(arrayList);
        this.f12144b.sendMessageDelayed(this.f12144b.obtainMessage(106), 500L);
    }

    public final void a(int i10, b bVar) {
        if (this.f12143a.f11955d.f11924x) {
            return;
        }
        Handler handler = this.f12144b;
        handler.sendMessage(handler.obtainMessage(i10, bVar));
    }

    public final void a(Set<String> set, boolean z10) {
        if (set == null || set.isEmpty()) {
            return;
        }
        LogUtils.sendJsonFetcher("event_upload_eid", new a(this, set, this.f12143a.f11955d.f11913m, z10));
    }
}
