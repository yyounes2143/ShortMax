package com.apm.insight.j;

import android.content.Context;
import android.os.Handler;
import java.util.ArrayList;
import java.util.List;
/* compiled from: ScheduleTaskManager.java */
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private List<a> f6965a = new ArrayList(3);

    private d(Handler handler, Context context) {
        if (com.apm.insight.l.a.b(context)) {
            this.f6965a.add(new c(handler));
        }
    }

    public static d a(Handler handler, Context context) {
        return new d(handler, context);
    }

    public final void a() {
        com.apm.insight.a.a((Object) ("[ScheduleTaskManager] execute, task size=" + this.f6965a.size()));
        for (a aVar : this.f6965a) {
            try {
                aVar.a();
            } catch (Throwable unused) {
            }
        }
    }
}
