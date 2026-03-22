package com.bytedance.bdtracker;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.SystemClock;
import androidx.annotation.AnyThread;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.bytedance.applog.IOaidObserver;
import com.bytedance.applog.log.IAppLogLogger;
import com.bytedance.applog.log.LoggerImpl;
import com.bytedance.bdtracker.e0;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class h5 {

    /* renamed from: a  reason: collision with root package name */
    public static f5<j5> f12045a = new a();

    /* loaded from: classes3.dex */
    public static class a extends f5<j5> {
        @Override // com.bytedance.bdtracker.f5
        public j5 a(Object[] objArr) {
            return new j5((Context) objArr[0]);
        }
    }

    @Nullable
    @AnyThread
    public static String a(@Nullable JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optString("id", null);
        }
        return null;
    }

    public static void b(IOaidObserver iOaidObserver) {
        j5.b(iOaidObserver);
    }

    @AnyThread
    public static void a(@Nullable IOaidObserver iOaidObserver) {
        j5.a(iOaidObserver);
    }

    @AnyThread
    public static void a(@Nullable g gVar) {
        g gVar2;
        j5.f12106k = gVar;
        Map<String, String> map = j5.f12108m;
        if (map == null || (gVar2 = j5.f12106k) == null) {
            return;
        }
        ((e0.b) gVar2).a(map);
    }

    @WorkerThread
    public static String a(SharedPreferences sharedPreferences) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        String b10 = g5.f12029a.b(sharedPreferences);
        long elapsedRealtime2 = SystemClock.elapsedRealtime() - elapsedRealtime;
        IAppLogLogger global = LoggerImpl.global();
        global.debug(1, "getCdid takes " + elapsedRealtime2 + " ms", new Object[0]);
        return b10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0074, code lost:
        if (r2 != false) goto L15;
     */
    @androidx.annotation.Nullable
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Map a(@androidx.annotation.NonNull android.content.Context r11) {
        /*
            long r0 = android.os.SystemClock.elapsedRealtime()
            com.bytedance.bdtracker.f5<com.bytedance.bdtracker.j5> r2 = com.bytedance.bdtracker.h5.f12045a
            java.lang.Object[] r11 = new java.lang.Object[]{r11}
            java.lang.Object r11 = r2.b(r11)
            com.bytedance.bdtracker.j5 r11 = (com.bytedance.bdtracker.j5) r11
            boolean r2 = r11.f12111c
            java.lang.String r3 = " ms"
            r4 = 1
            r5 = 0
            if (r2 != 0) goto L1b
            r11 = 0
            goto La8
        L1b:
            r11.a()
            com.bytedance.applog.log.IAppLogLogger r2 = com.bytedance.applog.log.LoggerImpl.global()
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = "Oaid#getOaid timeoutMills="
            r6.append(r7)
            r7 = 100
            r6.append(r7)
            java.lang.String r6 = r6.toString()
            java.lang.Object[] r9 = new java.lang.Object[r5]
            r2.debug(r4, r6, r9)
            java.util.Map<java.lang.String, java.lang.String> r2 = com.bytedance.bdtracker.j5.f12108m
            if (r2 != 0) goto L97
            long r9 = android.os.SystemClock.elapsedRealtime()
            java.util.concurrent.locks.ReentrantLock r2 = r11.f12109a     // Catch: java.lang.Throwable -> L79
            java.util.concurrent.TimeUnit r6 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: java.lang.Throwable -> L79
            boolean r2 = r2.tryLock(r7, r6)     // Catch: java.lang.Throwable -> L79
            long r6 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.Throwable -> L77
            long r6 = r6 - r9
            com.bytedance.applog.log.IAppLogLogger r8 = com.bytedance.applog.log.LoggerImpl.global()     // Catch: java.lang.Throwable -> L77
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L77
            r9.<init>()     // Catch: java.lang.Throwable -> L77
            java.lang.String r10 = "Oaid#getOaid locked="
            r9.append(r10)     // Catch: java.lang.Throwable -> L77
            r9.append(r2)     // Catch: java.lang.Throwable -> L77
            java.lang.String r10 = ", took "
            r9.append(r10)     // Catch: java.lang.Throwable -> L77
            r9.append(r6)     // Catch: java.lang.Throwable -> L77
            r9.append(r3)     // Catch: java.lang.Throwable -> L77
            java.lang.String r6 = r9.toString()     // Catch: java.lang.Throwable -> L77
            java.lang.Object[] r7 = new java.lang.Object[r5]     // Catch: java.lang.Throwable -> L77
            r8.debug(r4, r6, r7)     // Catch: java.lang.Throwable -> L77
            if (r2 == 0) goto L97
            goto L88
        L77:
            r6 = move-exception
            goto L7b
        L79:
            r6 = move-exception
            r2 = r5
        L7b:
            com.bytedance.applog.log.IAppLogLogger r7 = com.bytedance.applog.log.LoggerImpl.global()     // Catch: java.lang.Throwable -> L8e
            java.lang.String r8 = "Get oaid failed"
            java.lang.Object[] r9 = new java.lang.Object[r5]     // Catch: java.lang.Throwable -> L8e
            r7.error(r4, r8, r6, r9)     // Catch: java.lang.Throwable -> L8e
            if (r2 == 0) goto L97
        L88:
            java.util.concurrent.locks.ReentrantLock r11 = r11.f12109a
            r11.unlock()
            goto L97
        L8e:
            r0 = move-exception
            if (r2 == 0) goto L96
            java.util.concurrent.locks.ReentrantLock r11 = r11.f12109a
            r11.unlock()
        L96:
            throw r0
        L97:
            com.bytedance.applog.log.IAppLogLogger r11 = com.bytedance.applog.log.LoggerImpl.global()
            java.util.Map<java.lang.String, java.lang.String> r2 = com.bytedance.bdtracker.j5.f12108m
            java.lang.Object[] r2 = new java.lang.Object[]{r2}
            java.lang.String r6 = "Oaid#getOaid return apiMap={}"
            r11.debug(r4, r6, r2)
            java.util.Map<java.lang.String, java.lang.String> r11 = com.bytedance.bdtracker.j5.f12108m
        La8:
            long r6 = android.os.SystemClock.elapsedRealtime()
            long r6 = r6 - r0
            com.bytedance.applog.log.IAppLogLogger r0 = com.bytedance.applog.log.LoggerImpl.global()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "getOaid takes "
            r1.append(r2)
            r1.append(r6)
            r1.append(r3)
            java.lang.String r1 = r1.toString()
            java.lang.Object[] r2 = new java.lang.Object[r5]
            r0.debug(r4, r1, r2)
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.h5.a(android.content.Context):java.util.Map");
    }
}
