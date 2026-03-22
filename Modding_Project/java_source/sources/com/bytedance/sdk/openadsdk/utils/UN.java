package com.bytedance.sdk.openadsdk.utils;

import android.content.Context;
import com.bytedance.sdk.openadsdk.AdSlot;
import java.io.File;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Thread;
/* loaded from: classes3.dex */
public class UN implements Thread.UncaughtExceptionHandler {
    public static volatile boolean oJ;
    private final Thread.UncaughtExceptionHandler ZYk = Thread.getDefaultUncaughtExceptionHandler();
    private String tB;

    private UN() {
        Thread.setDefaultUncaughtExceptionHandler(this);
        ZYk();
    }

    private void ZYk() {
        Context oJ2 = com.bytedance.sdk.openadsdk.core.si.oJ();
        if (oJ2 == null) {
            return;
        }
        try {
            File file = new File(oJ2.getFilesDir(), "TTCache");
            file.mkdirs();
            this.tB = file.getPath();
        } catch (Throwable unused) {
        }
    }

    public static UN oJ() {
        return new UN();
    }

    private void tB() {
        try {
            com.bytedance.sdk.openadsdk.component.cFZ.oJ.oJ(com.bytedance.sdk.openadsdk.core.si.oJ());
        } catch (Throwable unused) {
        }
        try {
            com.bytedance.sdk.openadsdk.component.reward.PiB.oJ(com.bytedance.sdk.openadsdk.core.si.oJ()).oJ();
        } catch (Throwable unused2) {
        }
        try {
            com.bytedance.sdk.openadsdk.component.reward.Pfn.oJ(com.bytedance.sdk.openadsdk.core.si.oJ()).oJ();
        } catch (Throwable unused3) {
        }
        try {
            com.bytedance.sdk.openadsdk.core.settings.PiB.ib().oJ();
        } catch (Throwable unused4) {
        }
        try {
            com.bytedance.sdk.component.adexpress.oJ.ZYk.ZYk.ZYk();
        } catch (Throwable unused5) {
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th2) {
        oJ = true;
        com.bytedance.sdk.component.so.jFA.sCrashHappened = true;
        com.bytedance.sdk.component.so.tB.ex.tB = true;
        boolean z10 = false;
        com.bytedance.sdk.component.so.ba.oJ(false);
        try {
            StringWriter stringWriter = new StringWriter();
            th2.printStackTrace(new PrintWriter(stringWriter));
            String stringWriter2 = stringWriter.toString();
            if (stringWriter2 != null) {
                z10 = stringWriter2.contains(AdSlot.class.getPackage().getName());
            }
        } catch (Throwable unused) {
        }
        if (z10) {
            oJ(thread, th2);
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.ZYk;
        if (uncaughtExceptionHandler != null && uncaughtExceptionHandler != this) {
            uncaughtExceptionHandler.uncaughtException(thread, th2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00e4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x00e9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r12v14, types: [java.io.OutputStream, java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r12v5, types: [java.util.Properties] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r1v10, types: [java.util.Properties] */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.io.OutputStream, java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.io.FileOutputStream] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void oJ(java.lang.Thread r12, java.lang.Throwable r13) {
        /*
            Method dump skipped, instructions count: 249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.utils.UN.oJ(java.lang.Thread, java.lang.Throwable):void");
    }
}
