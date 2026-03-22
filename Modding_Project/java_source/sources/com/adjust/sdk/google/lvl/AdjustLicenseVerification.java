package com.adjust.sdk.google.lvl;

import android.content.Context;
import com.adjust.sdk.ILogger;
import com.adjust.sdk.LicenseData;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class AdjustLicenseVerification {

    /* loaded from: classes2.dex */
    class a implements LicenseRawCallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BlockingQueue f4308a;

        a(BlockingQueue blockingQueue) {
            this.f4308a = blockingQueue;
        }

        @Override // com.adjust.sdk.google.lvl.LicenseRawCallback
        public void onError(int i10) {
            this.f4308a.offer(new LicenseData(null, null, i10));
        }

        @Override // com.adjust.sdk.google.lvl.LicenseRawCallback
        public void onLicenseDataReceived(int i10, String str, String str2) {
            this.f4308a.offer(new LicenseData(str, str2, i10));
        }
    }

    public static LicenseData fetchLicenseDate(Context context, ILogger iLogger, long j10) {
        try {
            LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue(1);
            new LicenseChecker(context, new a(linkedBlockingQueue), iLogger, j10).checkAccess();
            return (LicenseData) linkedBlockingQueue.poll(3000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e10) {
            iLogger.error("LVL License checker interrupted: ", e10.getMessage());
            return null;
        }
    }
}
