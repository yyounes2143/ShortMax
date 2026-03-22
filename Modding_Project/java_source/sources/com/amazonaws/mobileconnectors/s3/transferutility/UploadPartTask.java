package com.amazonaws.mobileconnectors.s3.transferutility;

import com.amazonaws.AbortedException;
import com.amazonaws.event.ProgressEvent;
import com.amazonaws.event.ProgressListener;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.mobileconnectors.s3.transferutility.UploadTask;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.model.UploadPartRequest;
import com.amazonaws.services.s3.model.UploadPartResult;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class UploadPartTask implements Callable<Boolean> {

    /* renamed from: f  reason: collision with root package name */
    private static final Log f5747f = LogFactory.b(UploadPartTask.class);

    /* renamed from: a  reason: collision with root package name */
    private final UploadTask.UploadPartTaskMetadata f5748a;

    /* renamed from: b  reason: collision with root package name */
    private final UploadPartTaskProgressListener f5749b;

    /* renamed from: c  reason: collision with root package name */
    private final UploadPartRequest f5750c;

    /* renamed from: d  reason: collision with root package name */
    private final AmazonS3 f5751d;

    /* renamed from: e  reason: collision with root package name */
    private final TransferDBUtil f5752e;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class UploadPartTaskProgressListener implements ProgressListener {

        /* renamed from: a  reason: collision with root package name */
        private final UploadTask.UploadTaskProgressListener f5753a;

        /* renamed from: b  reason: collision with root package name */
        private long f5754b;

        public UploadPartTaskProgressListener(UploadTask.UploadTaskProgressListener uploadTaskProgressListener) {
            this.f5753a = uploadTaskProgressListener;
        }

        @Override // com.amazonaws.event.ProgressListener
        public void a(ProgressEvent progressEvent) {
            if (32 == progressEvent.b()) {
                UploadPartTask.f5747f.h("Reset Event triggered. Resetting the bytesCurrent to 0.");
                this.f5754b = 0L;
            } else {
                this.f5754b += progressEvent.a();
            }
            this.f5753a.b(UploadPartTask.this.f5750c.B(), this.f5754b);
        }
    }

    public UploadPartTask(UploadTask.UploadPartTaskMetadata uploadPartTaskMetadata, UploadTask.UploadTaskProgressListener uploadTaskProgressListener, UploadPartRequest uploadPartRequest, AmazonS3 amazonS3, TransferDBUtil transferDBUtil) {
        this.f5748a = uploadPartTaskMetadata;
        this.f5749b = new UploadPartTaskProgressListener(uploadTaskProgressListener);
        this.f5750c = uploadPartRequest;
        this.f5751d = amazonS3;
        this.f5752e = transferDBUtil;
    }

    private long d(int i10) {
        return ((1 << i10) * 1000) + ((long) (Math.random() * 1000.0d));
    }

    private void e() {
        ProgressEvent progressEvent = new ProgressEvent(0L);
        progressEvent.c(32);
        this.f5749b.a(progressEvent);
    }

    private void f(TransferState transferState) {
        this.f5748a.f5767d = transferState;
        this.f5752e.s(this.f5750c.u(), transferState);
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: c */
    public Boolean call() throws Exception {
        this.f5748a.f5767d = TransferState.IN_PROGRESS;
        this.f5750c.n(this.f5749b);
        int i10 = 1;
        while (true) {
            try {
                UploadPartResult h10 = this.f5751d.h(this.f5750c);
                f(TransferState.PART_COMPLETED);
                this.f5752e.q(this.f5750c.u(), h10.f());
                return Boolean.TRUE;
            } catch (AbortedException unused) {
                f5747f.h("Upload part aborted.");
                e();
                return Boolean.FALSE;
            } catch (Exception e10) {
                Log log = f5747f;
                log.c("Unexpected error occurred: " + e10);
                e();
                try {
                    if (TransferNetworkLossHandler.c() != null && !TransferNetworkLossHandler.c().e()) {
                        log.j("Thread: [" + Thread.currentThread().getId() + "]: Network wasn't available.");
                        UploadTask.UploadPartTaskMetadata uploadPartTaskMetadata = this.f5748a;
                        TransferState transferState = TransferState.WAITING_FOR_NETWORK;
                        uploadPartTaskMetadata.f5767d = transferState;
                        this.f5752e.s(this.f5750c.u(), transferState);
                        log.j("Network Connection Interrupted: Moving the TransferState to WAITING_FOR_NETWORK");
                        return Boolean.FALSE;
                    }
                } catch (TransferUtilityException e11) {
                    Log log2 = f5747f;
                    log2.c("TransferUtilityException: [" + e11 + "]");
                }
                if (i10 < 3) {
                    long d10 = d(i10);
                    Log log3 = f5747f;
                    log3.j("Retrying in " + d10 + " ms.");
                    TimeUnit.MILLISECONDS.sleep(d10);
                    log3.d("Retry attempt: " + i10, e10);
                    i10++;
                } else {
                    f(TransferState.FAILED);
                    f5747f.b("Encountered error uploading part ", e10);
                    throw e10;
                }
            }
        }
    }
}
