package com.bytedance.bdtracker;

import com.bytedance.applog.log.LoggerImpl;
/* loaded from: classes3.dex */
public class l4 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ m4 f12205a;

    public l4(m4 m4Var) {
        this.f12205a = m4Var;
    }

    @Override // java.lang.Runnable
    public void run() {
        for (int i10 = 0; i10 < this.f12205a.f12216a.size(); i10++) {
            try {
                String[] strArr = {"openudid", "clientudid", "serial_number", "sim_serial_number", "udid", "device_id"};
                for (int i11 = 0; i11 < 6; i11++) {
                    String str = strArr[i11];
                    try {
                        m4 m4Var = this.f12205a;
                        m4Var.a(m4Var.f12216a.get(i10), str);
                    } catch (Exception e10) {
                        LoggerImpl.global().error("DeprecatedFileCleaner execute failed", e10, new Object[0]);
                    }
                }
            } catch (Exception unused) {
                return;
            }
        }
    }
}
