package com.google.firebase.crashlytics.internal.common;

import android.os.Process;
/* compiled from: BackgroundPriorityRunnable.java */
/* loaded from: classes5.dex */
public abstract class d implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(10);
        s();
    }

    protected abstract void s();
}
