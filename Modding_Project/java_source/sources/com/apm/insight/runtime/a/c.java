package com.apm.insight.runtime.a;

import android.content.Context;
import android.os.Process;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.apm.insight.AttachUserData;
import com.apm.insight.CrashType;
import com.apm.insight.ICommonParams;
import com.apm.insight.l.m;
import com.apm.insight.l.n;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: BaseAssembly.java */
/* loaded from: classes2.dex */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    protected CrashType f7161a;

    /* renamed from: b  reason: collision with root package name */
    protected Context f7162b;

    /* renamed from: c  reason: collision with root package name */
    private ICommonParams f7163c = com.apm.insight.e.a().c();

    /* renamed from: d  reason: collision with root package name */
    private b f7164d;

    /* renamed from: e  reason: collision with root package name */
    private d f7165e;

    /* compiled from: BaseAssembly.java */
    /* loaded from: classes2.dex */
    public interface a {
        com.apm.insight.entity.a a(int i10, com.apm.insight.entity.a aVar);

        com.apm.insight.entity.a b(int i10, com.apm.insight.entity.a aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(CrashType crashType, Context context, b bVar, d dVar) {
        this.f7161a = crashType;
        this.f7162b = context;
        this.f7164d = bVar;
        this.f7165e = dVar;
    }

    public int a() {
        return 6;
    }

    protected boolean b() {
        return true;
    }

    protected boolean c() {
        return true;
    }

    private com.apm.insight.entity.a b(com.apm.insight.entity.a aVar) {
        aVar.a(com.apm.insight.e.q(), com.apm.insight.e.r());
        if (com.apm.insight.e.n()) {
            aVar.a("is_mp", (Object) 1);
        }
        try {
            aVar.a(this.f7163c.getPluginInfo());
        } catch (Throwable th2) {
            try {
                HashMap hashMap = new HashMap();
                hashMap.put("Data fetch failed since source misstake:\n" + m.a(th2), 0);
                aVar.a(hashMap);
            } catch (Throwable unused) {
            }
        }
        aVar.b(com.apm.insight.e.p());
        com.apm.insight.e.g();
        aVar.a("process_name", com.apm.insight.l.a.b());
        return aVar;
    }

    private com.apm.insight.entity.a c(com.apm.insight.entity.a aVar) {
        b bVar;
        if (!com.apm.insight.l.a.b(com.apm.insight.e.g())) {
            aVar.a("remote_process", (Object) 1);
        }
        aVar.a("pid", Integer.valueOf(Process.myPid()));
        aVar.a(com.apm.insight.e.j());
        if (b() && (bVar = this.f7164d) != null) {
            aVar.a(bVar);
        }
        try {
            aVar.a(this.f7163c.getPatchInfo());
        } catch (Throwable th2) {
            try {
                aVar.a(Arrays.asList("Data fetch failed since source misstake:\n" + m.a(th2)));
            } catch (Throwable unused) {
            }
        }
        String k10 = com.apm.insight.e.k();
        if (k10 != null) {
            aVar.a("business", (Object) k10);
        }
        aVar.a("is_background", Boolean.valueOf(!com.apm.insight.l.a.a()));
        return aVar;
    }

    public com.apm.insight.entity.a a(com.apm.insight.entity.a aVar) {
        return aVar;
    }

    public final com.apm.insight.entity.a a(@Nullable com.apm.insight.entity.a aVar, @Nullable a aVar2, boolean z10) {
        if (aVar == null) {
            aVar = new com.apm.insight.entity.a();
        }
        com.apm.insight.entity.a aVar3 = aVar;
        for (int i10 = 0; i10 < a(); i10++) {
            long uptimeMillis = SystemClock.uptimeMillis();
            if (aVar2 != null) {
                try {
                    aVar3 = aVar2.a(i10, aVar3);
                } catch (Throwable unused) {
                }
            }
            try {
                aVar3 = a(i10, aVar3);
            } catch (Throwable unused2) {
            }
            if (aVar2 != null) {
                try {
                    a();
                    aVar3 = aVar2.b(i10, aVar3);
                } catch (Throwable unused3) {
                }
                if (z10) {
                    if (i10 != 0) {
                        aVar.c(aVar3.c());
                    } else {
                        aVar = aVar3;
                    }
                    aVar3 = new com.apm.insight.entity.a();
                }
            }
            aVar.b("step_cost_".concat(String.valueOf(i10)), String.valueOf(SystemClock.uptimeMillis() - uptimeMillis));
        }
        return a(aVar);
    }

    public com.apm.insight.entity.a a(int i10, com.apm.insight.entity.a aVar) {
        if (aVar == null) {
            aVar = new com.apm.insight.entity.a();
        }
        if (i10 != 0) {
            if (i10 == 1) {
                c(aVar);
                List<AttachUserData> a10 = com.apm.insight.e.b().a(this.f7161a);
                HashMap hashMap = new HashMap();
                JSONObject optJSONObject = aVar.c().optJSONObject("custom");
                if (optJSONObject == null) {
                    optJSONObject = new JSONObject();
                    aVar.a("custom", optJSONObject);
                }
                if (a10 != null) {
                    for (int i11 = 0; i11 < a10.size(); i11++) {
                        try {
                            AttachUserData attachUserData = a10.get(i11);
                            long uptimeMillis = SystemClock.uptimeMillis();
                            com.apm.insight.entity.a.a(optJSONObject, attachUserData.getUserData(this.f7161a));
                            hashMap.put("custom_cost_" + attachUserData.getClass().getName() + "_" + hashMap.size(), Long.valueOf(SystemClock.uptimeMillis() - uptimeMillis));
                        } catch (Throwable th2) {
                            com.apm.insight.entity.a.a(optJSONObject, th2);
                        }
                    }
                }
                try {
                    optJSONObject.put("fd_count", com.apm.insight.a.f());
                } catch (Throwable unused) {
                }
                List<AttachUserData> b10 = com.apm.insight.e.b().b(this.f7161a);
                if (b10 != null) {
                    JSONObject optJSONObject2 = aVar.c().optJSONObject("custom_long");
                    if (optJSONObject2 == null) {
                        optJSONObject2 = new JSONObject();
                        aVar.a("custom_long", optJSONObject2);
                    }
                    while (r0 < b10.size()) {
                        try {
                            AttachUserData attachUserData2 = b10.get(r0);
                            long uptimeMillis2 = SystemClock.uptimeMillis();
                            com.apm.insight.entity.a.a(optJSONObject2, attachUserData2.getUserData(this.f7161a));
                            hashMap.put("custom_cost_" + attachUserData2.getClass().getName() + "_" + hashMap.size(), Long.valueOf(SystemClock.uptimeMillis() - uptimeMillis2));
                        } catch (Throwable th3) {
                            com.apm.insight.entity.a.a(optJSONObject2, th3);
                        }
                        r0++;
                    }
                }
                for (Map.Entry entry : hashMap.entrySet()) {
                    try {
                        optJSONObject.put((String) entry.getKey(), entry.getValue());
                    } catch (Throwable unused2) {
                    }
                }
            } else if (i10 != 2) {
                if (i10 == 5 && c()) {
                    aVar.b(n.a());
                }
            } else {
                d dVar = this.f7165e;
                aVar.a("battery", Integer.valueOf(dVar != null ? dVar.a() : 0));
                aVar.c(com.apm.insight.e.b().a());
            }
        } else {
            b(aVar);
        }
        return aVar;
    }
}
