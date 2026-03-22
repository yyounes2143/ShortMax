package com.amazonaws.mobileconnectors.s3.transferutility;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.AmazonS3;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class TransferNetworkLossHandler extends BroadcastReceiver {

    /* renamed from: d  reason: collision with root package name */
    private static final Log f5651d = LogFactory.b(TransferNetworkLossHandler.class);

    /* renamed from: e  reason: collision with root package name */
    private static TransferNetworkLossHandler f5652e;

    /* renamed from: a  reason: collision with root package name */
    final ConnectivityManager f5653a;

    /* renamed from: b  reason: collision with root package name */
    private TransferDBUtil f5654b;

    /* renamed from: c  reason: collision with root package name */
    TransferStatusUpdater f5655c;

    private TransferNetworkLossHandler(Context context) {
        this.f5653a = (ConnectivityManager) context.getSystemService("connectivity");
        this.f5654b = new TransferDBUtil(context);
        this.f5655c = TransferStatusUpdater.c(context);
    }

    public static synchronized TransferNetworkLossHandler c() throws TransferUtilityException {
        TransferNetworkLossHandler transferNetworkLossHandler;
        synchronized (TransferNetworkLossHandler.class) {
            transferNetworkLossHandler = f5652e;
            if (transferNetworkLossHandler == null) {
                f5651d.c("TransferNetworkLossHandler is not created. Please call `TransferNetworkLossHandler.getInstance(Context)` to instantiate it before retrieving");
                throw new TransferUtilityException("TransferNetworkLossHandler is not created. Please call `TransferNetworkLossHandler.getInstance(Context)` to instantiate it before retrieving");
            }
        }
        return transferNetworkLossHandler;
    }

    public static synchronized TransferNetworkLossHandler d(Context context) {
        TransferNetworkLossHandler transferNetworkLossHandler;
        synchronized (TransferNetworkLossHandler.class) {
            try {
                if (f5652e == null) {
                    f5652e = new TransferNetworkLossHandler(context);
                }
                transferNetworkLossHandler = f5652e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return transferNetworkLossHandler;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void f() {
        for (TransferRecord transferRecord : this.f5655c.e().values()) {
            AmazonS3 a10 = S3ClientReference.a(Integer.valueOf(transferRecord.f5668a));
            if (a10 != null && transferRecord.h(a10, this.f5655c, this.f5653a)) {
                this.f5655c.l(transferRecord.f5668a, TransferState.WAITING_FOR_NETWORK);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void g() {
        TransferRecord d10;
        TransferState[] transferStateArr = {TransferState.WAITING_FOR_NETWORK};
        f5651d.h("Loading transfers from database...");
        ArrayList<Integer> arrayList = new ArrayList();
        Cursor o10 = this.f5654b.o(TransferType.ANY, transferStateArr);
        int i10 = 0;
        while (o10.moveToNext()) {
            int i11 = o10.getInt(o10.getColumnIndexOrThrow("_id"));
            if (this.f5655c.d(i11) == null) {
                TransferRecord transferRecord = new TransferRecord(i11);
                transferRecord.j(o10);
                this.f5655c.b(transferRecord);
                i10++;
            }
            arrayList.add(Integer.valueOf(i11));
        }
        f5651d.h("Closing the cursor for resumeAllTransfers");
        o10.close();
        try {
            for (Integer num : arrayList) {
                AmazonS3 a10 = S3ClientReference.a(num);
                if (a10 != null && (d10 = this.f5655c.d(num.intValue())) != null && !d10.f()) {
                    d10.i(a10, this.f5654b, this.f5655c, this.f5653a);
                }
            }
        } catch (Exception e10) {
            Log log = f5651d;
            log.c("Error in resuming the transfers." + e10.getMessage());
        }
        Log log2 = f5651d;
        log2.h(i10 + " transfers are loaded from database.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean e() {
        NetworkInfo activeNetworkInfo = this.f5653a.getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            return true;
        }
        return false;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
            Log log = f5651d;
            log.j("Network connectivity changed detected.");
            boolean e10 = e();
            log.j("Network connected: " + e10);
            new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.s3.transferutility.TransferNetworkLossHandler.1
                @Override // java.lang.Runnable
                public void run() {
                    if (TransferNetworkLossHandler.this.e()) {
                        TransferNetworkLossHandler.this.g();
                    } else {
                        TransferNetworkLossHandler.this.f();
                    }
                }
            }).start();
        }
    }
}
