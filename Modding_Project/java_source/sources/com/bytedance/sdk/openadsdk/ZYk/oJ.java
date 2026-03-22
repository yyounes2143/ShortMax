package com.bytedance.sdk.openadsdk.ZYk;

import com.bytedance.sdk.component.utils.cFZ;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes3.dex */
public abstract class oJ {
    protected boolean oJ = false;
    private final ExecutorService ZYk = Executors.newSingleThreadExecutor();

    /* renamed from: com.bytedance.sdk.openadsdk.ZYk.oJ$oJ  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    private class CallableC0188oJ implements Callable<Void> {
        private final File ZYk;

        @Override // java.util.concurrent.Callable
        /* renamed from: oJ */
        public Void call() throws Exception {
            oJ.this.ZYk(this.ZYk);
            return null;
        }

        private CallableC0188oJ(File file) {
            this.ZYk = file;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ZYk(File file) throws IOException {
        if (this.oJ) {
            List<File> oJ = cFZ.oJ(file);
            oJ.toString();
            oJ(oJ);
            return;
        }
        try {
            cFZ.ZYk(file);
        } catch (Throwable unused) {
        }
        oJ(cFZ.oJ(file.getParentFile()));
    }

    protected abstract void oJ(List<File> list);

    protected abstract boolean oJ(long j10, int i10);

    protected abstract boolean oJ(File file, long j10, int i10);

    public void oJ(File file) throws IOException {
        this.ZYk.submit(new CallableC0188oJ(file));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long ZYk(List<File> list) {
        long j10 = 0;
        for (File file : list) {
            j10 += file.length();
        }
        return j10;
    }
}
