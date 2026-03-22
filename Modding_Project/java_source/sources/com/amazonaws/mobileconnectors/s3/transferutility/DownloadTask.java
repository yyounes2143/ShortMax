package com.amazonaws.mobileconnectors.s3.transferutility;

import com.amazonaws.AmazonClientException;
import com.amazonaws.event.ProgressEvent;
import com.amazonaws.event.ProgressListener;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.retry.RetryUtils;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.model.GetObjectRequest;
import com.amazonaws.services.s3.model.S3Object;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.SocketTimeoutException;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class DownloadTask implements Callable<Boolean> {

    /* renamed from: d  reason: collision with root package name */
    private static final Log f5633d = LogFactory.b(DownloadTask.class);

    /* renamed from: a  reason: collision with root package name */
    private final AmazonS3 f5634a;

    /* renamed from: b  reason: collision with root package name */
    private final TransferRecord f5635b;

    /* renamed from: c  reason: collision with root package name */
    private final TransferStatusUpdater f5636c;

    public DownloadTask(TransferRecord transferRecord, AmazonS3 amazonS3, TransferStatusUpdater transferStatusUpdater) {
        this.f5635b = transferRecord;
        this.f5634a = amazonS3;
        this.f5636c = transferStatusUpdater;
    }

    private void b(InputStream inputStream, File file) {
        boolean z10;
        BufferedOutputStream bufferedOutputStream;
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        if (file.length() > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        BufferedOutputStream bufferedOutputStream2 = null;
        try {
            try {
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file, z10));
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (SocketTimeoutException e10) {
            e = e10;
        } catch (IOException e11) {
            e = e11;
        }
        try {
            byte[] bArr = new byte[16384];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    bufferedOutputStream.write(bArr, 0, read);
                } else {
                    try {
                        break;
                    } catch (IOException e12) {
                        f5633d.f("got exception", e12);
                    }
                }
            }
            bufferedOutputStream.close();
            try {
                inputStream.close();
            } catch (IOException e13) {
                f5633d.f("got exception", e13);
            }
        } catch (SocketTimeoutException e14) {
            e = e14;
            String str = "SocketTimeoutException: Unable to retrieve contents over network: " + e.getMessage();
            f5633d.c(str);
            throw new AmazonClientException(str, e);
        } catch (IOException e15) {
            e = e15;
            throw new AmazonClientException("Unable to store object contents to disk: " + e.getMessage(), e);
        } catch (Throwable th3) {
            th = th3;
            bufferedOutputStream2 = bufferedOutputStream;
            if (bufferedOutputStream2 != null) {
                try {
                    bufferedOutputStream2.close();
                } catch (IOException e16) {
                    f5633d.f("got exception", e16);
                }
            }
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e17) {
                    f5633d.f("got exception", e17);
                }
            }
            throw th;
        }
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: a */
    public Boolean call() {
        try {
            if (TransferNetworkLossHandler.c() != null && !TransferNetworkLossHandler.c().e()) {
                Log log = f5633d;
                log.j("Thread:[" + Thread.currentThread().getId() + "]: Network wasn't available.");
                this.f5636c.l(this.f5635b.f5668a, TransferState.WAITING_FOR_NETWORK);
                return Boolean.FALSE;
            }
        } catch (TransferUtilityException e10) {
            Log log2 = f5633d;
            log2.c("TransferUtilityException: [" + e10 + "]");
        }
        this.f5636c.l(this.f5635b.f5668a, TransferState.IN_PROGRESS);
        ProgressListener f10 = this.f5636c.f(this.f5635b.f5668a);
        try {
            TransferRecord transferRecord = this.f5635b;
            GetObjectRequest getObjectRequest = new GetObjectRequest(transferRecord.f5683p, transferRecord.f5684q);
            TransferUtility.c(getObjectRequest);
            File file = new File(this.f5635b.f5686s);
            long length = file.length();
            if (length > 0) {
                f5633d.h(String.format("Resume transfer %d from %d bytes", Integer.valueOf(this.f5635b.f5668a), Long.valueOf(length)));
                getObjectRequest.G(length, -1L);
            }
            getObjectRequest.n(f10);
            S3Object g10 = this.f5634a.g(getObjectRequest);
            if (g10 == null) {
                this.f5636c.i(this.f5635b.f5668a, new IllegalStateException("AmazonS3.getObject returns null"));
                this.f5636c.l(this.f5635b.f5668a, TransferState.FAILED);
                return Boolean.FALSE;
            }
            long D = g10.q().D();
            this.f5636c.k(this.f5635b.f5668a, length, D, true);
            b(g10.k(), file);
            this.f5636c.k(this.f5635b.f5668a, D, D, true);
            this.f5636c.l(this.f5635b.f5668a, TransferState.COMPLETED);
            return Boolean.TRUE;
        } catch (Exception e11) {
            if (TransferState.PENDING_CANCEL.equals(this.f5635b.f5682o)) {
                TransferStatusUpdater transferStatusUpdater = this.f5636c;
                int i10 = this.f5635b.f5668a;
                TransferState transferState = TransferState.CANCELED;
                transferStatusUpdater.l(i10, transferState);
                Log log3 = f5633d;
                log3.j("Transfer is " + transferState);
                return Boolean.FALSE;
            } else if (TransferState.PENDING_PAUSE.equals(this.f5635b.f5682o)) {
                TransferStatusUpdater transferStatusUpdater2 = this.f5636c;
                int i11 = this.f5635b.f5668a;
                TransferState transferState2 = TransferState.PAUSED;
                transferStatusUpdater2.l(i11, transferState2);
                Log log4 = f5633d;
                log4.j("Transfer is " + transferState2);
                new ProgressEvent(0L).c(32);
                f10.a(new ProgressEvent(0L));
                return Boolean.FALSE;
            } else {
                try {
                    if (TransferNetworkLossHandler.c() != null && !TransferNetworkLossHandler.c().e()) {
                        Log log5 = f5633d;
                        log5.j("Thread:[" + Thread.currentThread().getId() + "]: Network wasn't available.");
                        this.f5636c.l(this.f5635b.f5668a, TransferState.WAITING_FOR_NETWORK);
                        log5.h("Network Connection Interrupted: Moving the TransferState to WAITING_FOR_NETWORK");
                        new ProgressEvent(0L).c(32);
                        f10.a(new ProgressEvent(0L));
                        return Boolean.FALSE;
                    }
                } catch (TransferUtilityException e12) {
                    Log log6 = f5633d;
                    log6.c("TransferUtilityException: [" + e12 + "]");
                }
                if (RetryUtils.b(e11)) {
                    Log log7 = f5633d;
                    log7.j("Transfer is interrupted. " + e11);
                    this.f5636c.l(this.f5635b.f5668a, TransferState.FAILED);
                    return Boolean.FALSE;
                }
                Log log8 = f5633d;
                log8.h("Failed to download: " + this.f5635b.f5668a + " due to " + e11.getMessage());
                this.f5636c.i(this.f5635b.f5668a, e11);
                this.f5636c.l(this.f5635b.f5668a, TransferState.FAILED);
                return Boolean.FALSE;
            }
        }
    }
}
