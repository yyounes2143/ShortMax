package com.bytedance.bdtracker;

import android.text.TextUtils;
import com.bytedance.applog.event.EventPolicy;
import com.bytedance.applog.event.IEventHandler;
import com.bytedance.bdtracker.l0;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class z3 {

    /* renamed from: a  reason: collision with root package name */
    public final e0 f12543a;

    /* renamed from: b  reason: collision with root package name */
    public final y3 f12544b;

    public z3(e0 e0Var, y3 y3Var) {
        this.f12543a = e0Var;
        this.f12544b = y3Var;
    }

    public final EventPolicy a(IEventHandler iEventHandler, int i10, String str, u3 u3Var, JSONObject jSONObject) {
        u3Var.h();
        String e10 = u3Var.e();
        JSONObject jSONObject2 = new JSONObject();
        if (!TextUtils.isEmpty(e10)) {
            try {
                jSONObject2 = new JSONObject(e10);
            } catch (Throwable unused) {
                this.f12543a.f11955d.D.error(5, "Param:[{}] is not a json string", e10);
            }
        }
        if (jSONObject != null) {
            l0.b.b(jSONObject, jSONObject2);
        }
        EventPolicy onReceive = iEventHandler.onReceive(i10, str, jSONObject2);
        u3Var.f12458o = jSONObject2;
        return onReceive;
    }

    /* JADX WARN: Removed duplicated region for block: B:69:0x0136 A[Catch: all -> 0x0150, TryCatch #0 {all -> 0x0150, blocks: (B:66:0x012c, B:67:0x0130, B:69:0x0136, B:71:0x0144, B:74:0x0152), top: B:93:0x012c }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0177 A[Catch: all -> 0x018b, LOOP:2: B:78:0x0171->B:80:0x0177, LOOP_END, TryCatch #3 {all -> 0x018b, blocks: (B:77:0x016d, B:78:0x0171, B:80:0x0177, B:83:0x018d, B:84:0x0191, B:86:0x0197), top: B:98:0x016d }] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0197 A[Catch: all -> 0x018b, LOOP:3: B:84:0x0191->B:86:0x0197, LOOP_END, TRY_LEAVE, TryCatch #3 {all -> 0x018b, blocks: (B:77:0x016d, B:78:0x0171, B:80:0x0177, B:83:0x018d, B:84:0x0191, B:86:0x0197), top: B:98:0x016d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(java.util.List<com.bytedance.bdtracker.u3> r15) {
        /*
            Method dump skipped, instructions count: 446
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.z3.b(java.util.List):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0069 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(com.bytedance.applog.event.IEventHandler r9, com.bytedance.bdtracker.u3 r10) {
        /*
            r8 = this;
            r0 = 1
            if (r9 == 0) goto L6b
            if (r10 == 0) goto L6b
            int r1 = r9.acceptType()
            boolean r2 = r10 instanceof com.bytedance.bdtracker.w3
            if (r2 == 0) goto L23
            r2 = 8
            boolean r1 = com.bytedance.applog.event.EventType.a(r1, r2)
            if (r1 == 0) goto L64
            org.json.JSONObject r7 = r10.f12458o
            r4 = 8
            java.lang.String r5 = "bav2b_click"
            r2 = r8
            r3 = r9
            r6 = r10
            com.bytedance.applog.event.EventPolicy r9 = r2.a(r3, r4, r5, r6, r7)
            goto L65
        L23:
            boolean r2 = r10 instanceof com.bytedance.bdtracker.b4
            if (r2 == 0) goto L34
            boolean r1 = com.bytedance.applog.event.EventType.a(r1, r0)
            if (r1 == 0) goto L64
            r1 = r10
            com.bytedance.bdtracker.b4 r1 = (com.bytedance.bdtracker.b4) r1
            java.lang.String r1 = r1.f11880u
            r4 = r0
            goto L5d
        L34:
            boolean r2 = r10 instanceof com.bytedance.bdtracker.e4
            if (r2 == 0) goto L4c
            r2 = 4
            boolean r1 = com.bytedance.applog.event.EventType.a(r1, r2)
            if (r1 == 0) goto L64
            org.json.JSONObject r7 = r10.f12458o
            r4 = 4
            java.lang.String r5 = "bav2b_page"
        L44:
            r2 = r8
            r3 = r9
            r6 = r10
            com.bytedance.applog.event.EventPolicy r9 = r2.a(r3, r4, r5, r6, r7)
            goto L65
        L4c:
            boolean r2 = r10 instanceof com.bytedance.bdtracker.f4
            if (r2 == 0) goto L64
            r2 = 2
            boolean r1 = com.bytedance.applog.event.EventType.a(r1, r2)
            if (r1 == 0) goto L64
            r1 = r10
            com.bytedance.bdtracker.f4 r1 = (com.bytedance.bdtracker.f4) r1
            java.lang.String r1 = r1.f12014t
            r4 = r2
        L5d:
            java.lang.String r5 = com.bytedance.bdtracker.l0.b.a(r1)
            org.json.JSONObject r7 = r10.f12458o
            goto L44
        L64:
            r9 = 0
        L65:
            com.bytedance.applog.event.EventPolicy r10 = com.bytedance.applog.event.EventPolicy.DENY
            if (r9 != r10) goto L6b
            r9 = 0
            return r9
        L6b:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.z3.a(com.bytedance.applog.event.IEventHandler, com.bytedance.bdtracker.u3):boolean");
    }

    public void a(List<u3> list) {
        try {
            for (u3 u3Var : list) {
                if ("eventv3".equals(u3Var.f())) {
                    b4 b4Var = (b4) u3Var;
                    e1 e1Var = this.f12543a.f11955d.f11903c;
                    String str = b4Var.f11880u;
                    String str2 = b4Var.f11878s;
                    e1Var.onEventV3(str, str2 != null ? new JSONObject(str2) : null);
                }
            }
        } catch (Throwable th2) {
            this.f12543a.f11955d.D.debug(5, "Notify event observer failed", th2);
        }
    }
}
