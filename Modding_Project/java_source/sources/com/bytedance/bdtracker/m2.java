package com.bytedance.bdtracker;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.bytedance.applog.monitor.MonitorSampling;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public final class m2 implements h2, Handler.Callback {

    /* renamed from: a  reason: collision with root package name */
    public Handler f12211a;

    /* renamed from: b  reason: collision with root package name */
    public final i2 f12212b;

    /* renamed from: c  reason: collision with root package name */
    public final e0 f12213c;

    public m2(@NotNull e0 mEngine) {
        Intrinsics.checkParameterIsNotNull(mEngine, "mEngine");
        this.f12213c = mEngine;
        StringBuilder a10 = a.a("bd_tracker_monitor@");
        d dVar = mEngine.f11955d;
        Intrinsics.checkExpressionValueIsNotNull(dVar, "mEngine.appLog");
        a10.append(dVar.f11913m);
        HandlerThread handlerThread = new HandlerThread(a10.toString());
        handlerThread.start();
        this.f12211a = new Handler(handlerThread.getLooper(), this);
        Looper looper = this.f12211a.getLooper();
        Intrinsics.checkExpressionValueIsNotNull(looper, "mHandler.looper");
        d dVar2 = mEngine.f11955d;
        Intrinsics.checkExpressionValueIsNotNull(dVar2, "mEngine.appLog");
        String str = dVar2.f11913m;
        Intrinsics.checkExpressionValueIsNotNull(str, "mEngine.appLog.appId");
        Context b10 = mEngine.b();
        Intrinsics.checkExpressionValueIsNotNull(b10, "mEngine.context");
        this.f12212b = new i2(looper, str, b10);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(@NotNull Message msg) {
        Intrinsics.checkParameterIsNotNull(msg, "msg");
        int i10 = msg.what;
        if (i10 != 1) {
            if (i10 == 2) {
                r1 r1Var = this.f12213c.f11960i;
                if (r1Var != null && r1Var.h() == 0) {
                    this.f12211a.sendEmptyMessageDelayed(2, 500L);
                } else {
                    d dVar = this.f12213c.f11955d;
                    Intrinsics.checkExpressionValueIsNotNull(dVar, "mEngine.appLog");
                    dVar.D.debug(8, "Monitor report...", new Object[0]);
                    a4 c10 = this.f12213c.c();
                    d dVar2 = this.f12213c.f11955d;
                    Intrinsics.checkExpressionValueIsNotNull(dVar2, "mEngine.appLog");
                    String str = dVar2.f11913m;
                    r1 r1Var2 = this.f12213c.f11960i;
                    Intrinsics.checkExpressionValueIsNotNull(r1Var2, "mEngine.dm");
                    c10.b(str, r1Var2.e());
                    e0 e0Var = this.f12213c;
                    e0Var.a(e0Var.f11963l);
                }
            }
        } else {
            d dVar3 = this.f12213c.f11955d;
            Intrinsics.checkExpressionValueIsNotNull(dVar3, "mEngine.appLog");
            dVar3.D.debug(8, "Monitor trace save:{}", msg.obj);
            a4 c11 = this.f12213c.c();
            Object obj = msg.obj;
            if (!TypeIntrinsics.isMutableList(obj)) {
                obj = null;
            }
            c11.f11871c.b((List) obj);
        }
        return true;
    }

    public void a(@NotNull p2 data) {
        Intrinsics.checkParameterIsNotNull(data, "data");
        p1 p1Var = this.f12213c.f11956e;
        Intrinsics.checkExpressionValueIsNotNull(p1Var, "mEngine.config");
        if (p1Var.i()) {
            if (MonitorSampling.INSTANCE.isSampling$agent_liteGlobalRelease()) {
                d dVar = this.f12213c.f11955d;
                Intrinsics.checkExpressionValueIsNotNull(dVar, "mEngine.appLog");
                dVar.D.debug(8, "Monitor EventTrace hint trace:{}", data);
                this.f12212b.a(data).track(data.g(), data.d());
                return;
            }
            d dVar2 = this.f12213c.f11955d;
            Intrinsics.checkExpressionValueIsNotNull(dVar2, "mEngine.appLog");
            dVar2.D.debug(8, "Monitor EventTrace not hint trace:{}", data);
        }
    }
}
