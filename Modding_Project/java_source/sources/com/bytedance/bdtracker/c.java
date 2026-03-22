package com.bytedance.bdtracker;

import com.bytedance.bdtracker.b;
/* loaded from: classes3.dex */
public final class c implements b.d {

    /* loaded from: classes3.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ d f11883a;

        public a(c cVar, d dVar) {
            this.f11883a = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            p1 p1Var;
            d dVar = this.f11883a;
            if (dVar.b("getConfig")) {
                p1Var = null;
            } else {
                p1Var = dVar.f11917q.f11956e;
            }
            if (p1Var != null && !p1Var.f12319r && !p1Var.f12307f.getBoolean("enter_background_not_send", false)) {
                this.f11883a.flush();
            }
        }
    }

    @Override // com.bytedance.bdtracker.b.d
    public void a(d dVar) {
        x.f12504a.execute(new a(this, dVar));
    }
}
