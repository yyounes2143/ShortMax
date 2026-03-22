package com.apm.insight.i;

import android.content.Context;
import android.os.Process;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import com.adjust.sdk.Constants;
import com.apm.insight.CrashType;
import com.apm.insight.Npth;
import com.apm.insight.e;
import com.apm.insight.g.c;
import com.apm.insight.l.f;
import com.apm.insight.l.j;
import com.apm.insight.l.m;
import com.apm.insight.nativecrash.NativeImpl;
import com.apm.insight.runtime.a.c;
import com.apm.insight.runtime.h;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.ss.texturerender.effect.ICEffect.ICEffectKeys;
import com.unity3d.services.ads.gmascar.utils.ScarConstants;
import java.io.File;
import java.io.IOException;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: LaunchCrash.java */
/* loaded from: classes2.dex */
public final class b implements c {

    /* renamed from: a  reason: collision with root package name */
    private Context f6949a;

    public b(@NonNull Context context) {
        this.f6949a = context;
    }

    private synchronized void b(final long j10, final Thread thread, final Throwable th2, final String str, final String str2, final boolean z10) {
        final File file = new File(j.a(this.f6949a), str);
        com.apm.insight.g.a.a().a(file.getName());
        file.mkdirs();
        f.d(file);
        final boolean c10 = m.c(th2);
        com.apm.insight.entity.a a10 = com.apm.insight.runtime.a.f.a().a(CrashType.LAUNCH, new c.a() { // from class: com.apm.insight.i.b.1

            /* renamed from: a  reason: collision with root package name */
            private long f6950a = 0;

            @Override // com.apm.insight.runtime.a.c.a
            public final com.apm.insight.entity.a a(int i10, com.apm.insight.entity.a aVar) {
                String str3;
                String str4;
                this.f6950a = SystemClock.uptimeMillis();
                if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            if (i10 != 3) {
                                if (i10 != 4) {
                                    if (i10 == 5) {
                                        aVar.a("crash_uuid", (Object) str);
                                    }
                                } else if (!c10) {
                                    com.apm.insight.l.a.a(b.this.f6949a, aVar.c());
                                }
                            } else {
                                JSONObject b10 = m.b(Thread.currentThread().getName());
                                if (b10 != null) {
                                    aVar.a("all_thread_stacks", b10);
                                }
                                aVar.a("logcat", (Object) h.a(e.f()));
                            }
                        } else {
                            if (c10) {
                                com.apm.insight.l.a.a(b.this.f6949a, aVar.c());
                            }
                            aVar.a("launch_did", (Object) a.a(b.this.f6949a));
                            if (e.x()) {
                                JSONArray b11 = com.apm.insight.b.f.b().b();
                                long uptimeMillis = SystemClock.uptimeMillis();
                                JSONObject a11 = com.apm.insight.b.f.b().a(uptimeMillis).a();
                                JSONArray a12 = com.apm.insight.b.j.a(uptimeMillis);
                                aVar.a("history_message", (Object) b11);
                                aVar.a("current_message", a11);
                                aVar.a("pending_messages", (Object) a12);
                            }
                            aVar.a("disable_looper_monitor", String.valueOf(com.apm.insight.runtime.a.c()));
                            aVar.a("npth_force_apm_crash", String.valueOf(com.apm.insight.c.a.a()));
                        }
                    } else {
                        aVar.a("timestamp", Long.valueOf(j10));
                        aVar.a("main_process", Boolean.valueOf(com.apm.insight.l.a.b(b.this.f6949a)));
                        aVar.a(CrashHianalyticsData.CRASH_TYPE, CrashType.JAVA);
                        Thread thread2 = thread;
                        if (thread2 != null) {
                            str3 = thread2.getName();
                        } else {
                            str3 = "";
                        }
                        aVar.a("crash_thread_name", (Object) str3);
                        aVar.a(ScarConstants.TOKEN_ID_KEY, Integer.valueOf(Process.myTid()));
                        String str5 = "false";
                        if (!Npth.hasCrashWhenJavaCrash()) {
                            str4 = "false";
                        } else {
                            str4 = "true";
                        }
                        aVar.a("crash_after_crash", str4);
                        if (NativeImpl.e()) {
                            str5 = "true";
                        }
                        aVar.a("crash_after_native", str5);
                        com.apm.insight.g.a.a().a(thread, th2, true, aVar);
                    }
                } else {
                    aVar.a("stack", (Object) m.a(th2));
                    aVar.a(ICEffectKeys.KEY_IS_IC_EFFECT_EVENT_TYPE, "start_crash");
                    aVar.a("isOOM", Boolean.valueOf(c10));
                    aVar.a("crash_time", Long.valueOf(j10));
                    aVar.a("launch_mode", Integer.valueOf(com.apm.insight.runtime.a.b.b()));
                    aVar.a("launch_time", Long.valueOf(com.apm.insight.runtime.a.b.c()));
                    String str6 = str2;
                    if (str6 != null) {
                        aVar.a("crash_md5", (Object) str6);
                        aVar.a("crash_md5", str2);
                        boolean z11 = z10;
                        if (z11) {
                            aVar.a("has_ignore", String.valueOf(z11));
                        }
                    }
                }
                return aVar;
            }

            @Override // com.apm.insight.runtime.a.c.a
            public final com.apm.insight.entity.a b(int i10, com.apm.insight.entity.a aVar) {
                try {
                    File file2 = file;
                    f.a(new File(file2, file.getName() + "." + i10), aVar.c());
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
                return aVar;
            }
        });
        long currentTimeMillis = System.currentTimeMillis() - j10;
        a10.a(CrashHianalyticsData.CRASH_TYPE, Constants.NORMAL);
        a10.b("crash_cost", String.valueOf(currentTimeMillis));
        a10.a("crash_cost", String.valueOf(currentTimeMillis / 1000));
        if (Npth.isStopUpload()) {
        }
    }

    @Override // com.apm.insight.g.c
    public final void a(long j10, Thread thread, Throwable th2, String str, String str2, boolean z10) {
        b(j10, thread, th2, str, str2, z10);
    }
}
