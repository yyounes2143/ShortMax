package com.bytedance.bdtracker;

import android.os.SystemClock;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes3.dex */
public final class k2 {
    public static final void a(@Nullable h2 h2Var, @NotNull String metricsName, @Nullable String str, long j10) {
        p2 n2Var;
        Intrinsics.checkParameterIsNotNull(metricsName, "metricsName");
        long elapsedRealtime = SystemClock.elapsedRealtime();
        int hashCode = metricsName.hashCode();
        if (hashCode != -73212100) {
            if (hashCode == 270071285 && metricsName.equals("sdk_init")) {
                n2Var = new y2(elapsedRealtime - j10);
            }
            n2Var = null;
        } else {
            if (metricsName.equals("api_usage")) {
                n2Var = new n2(str, elapsedRealtime - j10);
            }
            n2Var = null;
        }
        if (n2Var == null || h2Var == null) {
            return;
        }
        ((m2) h2Var).a(n2Var);
    }

    public static final void a(@Nullable h2 h2Var, @NotNull Throwable e10) {
        Intrinsics.checkParameterIsNotNull(e10, "e");
        if (h2Var != null) {
            ((m2) h2Var).a(new s2(e10));
        }
    }

    public static final void a(@Nullable h2 h2Var, long j10, @Nullable String str, int i10) {
        if (str == null) {
            str = "";
        }
        t2 t2Var = new t2(j10, str, 1L);
        t2Var.f12398a = i10;
        if (h2Var != null) {
            ((m2) h2Var).a(t2Var);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0066  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void a(@org.jetbrains.annotations.Nullable com.bytedance.bdtracker.h2 r4, @org.jetbrains.annotations.NotNull java.net.URL r5, long r6, int r8, @org.jetbrains.annotations.NotNull java.lang.String r9) {
        /*
            java.lang.String r0 = "url"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r5, r0)
            java.lang.String r0 = "responseMsg"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r9, r0)
            if (r4 == 0) goto L75
            r0 = 0
            if (r5 != 0) goto L10
            goto L1a
        L10:
            java.lang.String r1 = r5.getPath()
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 == 0) goto L1c
        L1a:
            r1 = r0
            goto L26
        L1c:
            java.lang.String r1 = r5.getPath()
            java.lang.String r2 = "/simulator/"
            boolean r1 = r1.startsWith(r2)
        L26:
            if (r1 != 0) goto L75
            long r1 = android.os.SystemClock.elapsedRealtime()
            com.bytedance.bdtracker.x2 r3 = new com.bytedance.bdtracker.x2
            r3.<init>()
            long r1 = r1 - r6
            r3.f12524e = r1
            r6 = 1
            if (r5 != 0) goto L38
            goto L42
        L38:
            java.lang.String r7 = r5.getPath()
            boolean r1 = android.text.TextUtils.isEmpty(r7)
            if (r1 == 0) goto L45
        L42:
            java.lang.String r7 = ""
            goto L5e
        L45:
            java.lang.String r1 = "/"
            boolean r2 = r7.contains(r1)
            if (r2 == 0) goto L5e
            java.lang.String r5 = r5.getPath()
            java.lang.String[] r5 = r5.split(r1)
            if (r5 == 0) goto L5e
            int r1 = r5.length
            if (r1 <= 0) goto L5e
            int r7 = r5.length
            int r7 = r7 - r6
            r7 = r5[r7]
        L5e:
            r3.f12523d = r7
            r5 = 200(0xc8, float:2.8E-43)
            if (r8 != r5) goto L66
            r0 = r6
            goto L6e
        L66:
            java.lang.Integer r5 = java.lang.Integer.valueOf(r8)
            r3.f12521b = r5
            r3.f12522c = r9
        L6e:
            r3.f12520a = r0
            com.bytedance.bdtracker.m2 r4 = (com.bytedance.bdtracker.m2) r4
            r4.a(r3)
        L75:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.k2.a(com.bytedance.bdtracker.h2, java.net.URL, long, int, java.lang.String):void");
    }
}
