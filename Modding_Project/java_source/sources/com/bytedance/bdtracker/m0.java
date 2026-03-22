package com.bytedance.bdtracker;

import com.bytedance.applog.log.IAppLogLogger;
import com.bytedance.applog.log.LoggerImpl;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes3.dex */
public final class m0 extends Throwable {
    @Override // java.lang.Throwable
    public void printStackTrace() {
        boolean z10;
        String str;
        IAppLogLogger global = LoggerImpl.global();
        StringBuilder a10 = a.a("AppLog assert failed: ");
        Throwable cause = getCause();
        if (cause == null || (str = cause.getMessage()) == null) {
            StackTraceElement[] stackTrace = getStackTrace();
            Intrinsics.checkExpressionValueIsNotNull(stackTrace, "stackTrace");
            if (stackTrace.length == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (!z10) {
                str = getStackTrace()[0].toString();
            } else {
                str = "function interrupt";
            }
        }
        a10.append((Object) str);
        global.ast(a10.toString(), getCause(), new Object[0]);
    }
}
