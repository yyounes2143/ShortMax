package com.amazonaws.mobileconnectors.s3.transferutility;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.event.ProgressEvent;
import com.amazonaws.event.ProgressListener;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.retry.RetryUtils;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.model.AbortMultipartUploadRequest;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.CompleteMultipartUploadRequest;
import com.amazonaws.services.s3.model.InitiateMultipartUploadRequest;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.ObjectTagging;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.SSEAwsKeyManagementParams;
import com.amazonaws.services.s3.model.Tag;
import com.amazonaws.services.s3.model.UploadPartRequest;
import com.amazonaws.services.s3.util.Mimetypes;
import com.huawei.hms.framework.common.ContainerUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class UploadTask implements Callable<Boolean> {

    /* renamed from: g  reason: collision with root package name */
    private static final Log f5756g = LogFactory.b(UploadTask.class);

    /* renamed from: h  reason: collision with root package name */
    private static final Map<String, CannedAccessControlList> f5757h = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    private final AmazonS3 f5758a;

    /* renamed from: b  reason: collision with root package name */
    private final TransferRecord f5759b;

    /* renamed from: c  reason: collision with root package name */
    private final TransferDBUtil f5760c;

    /* renamed from: d  reason: collision with root package name */
    private final TransferStatusUpdater f5761d;

    /* renamed from: e  reason: collision with root package name */
    Map<Integer, UploadPartTaskMetadata> f5762e = new HashMap();

    /* renamed from: f  reason: collision with root package name */
    private List<UploadPartRequest> f5763f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class UploadPartTaskMetadata {

        /* renamed from: a  reason: collision with root package name */
        UploadPartRequest f5764a;

        /* renamed from: b  reason: collision with root package name */
        Future<Boolean> f5765b;

        /* renamed from: c  reason: collision with root package name */
        long f5766c;

        /* renamed from: d  reason: collision with root package name */
        TransferState f5767d;

        UploadPartTaskMetadata() {
        }
    }

    static {
        CannedAccessControlList[] values;
        for (CannedAccessControlList cannedAccessControlList : CannedAccessControlList.values()) {
            f5757h.put(cannedAccessControlList.toString(), cannedAccessControlList);
        }
    }

    public UploadTask(TransferRecord transferRecord, AmazonS3 amazonS3, TransferDBUtil transferDBUtil, TransferStatusUpdater transferStatusUpdater) {
        this.f5759b = transferRecord;
        this.f5758a = amazonS3;
        this.f5760c = transferDBUtil;
        this.f5761d = transferStatusUpdater;
    }

    private void a(int i10, String str, String str2, String str3) {
        Log log = f5756g;
        log.j("Aborting the multipart since complete multipart failed.");
        try {
            this.f5758a.o(new AbortMultipartUploadRequest(str, str2, str3));
            log.h("Successfully aborted multipart upload: " + i10);
        } catch (AmazonClientException e10) {
            Log log2 = f5756g;
            log2.d("Failed to abort the multipart upload: " + i10, e10);
        }
    }

    private void f(int i10, String str, String str2, String str3) throws AmazonClientException, AmazonServiceException {
        CompleteMultipartUploadRequest completeMultipartUploadRequest = new CompleteMultipartUploadRequest(str, str2, str3, this.f5760c.m(i10));
        TransferUtility.b(completeMultipartUploadRequest);
        this.f5758a.k(completeMultipartUploadRequest);
    }

    private PutObjectRequest g(TransferRecord transferRecord) {
        File file = new File(transferRecord.f5686s);
        PutObjectRequest putObjectRequest = new PutObjectRequest(transferRecord.f5683p, transferRecord.f5684q, file);
        ObjectMetadata objectMetadata = new ObjectMetadata();
        objectMetadata.S(file.length());
        String str = transferRecord.f5693z;
        if (str != null) {
            objectMetadata.O(str);
        }
        String str2 = transferRecord.f5691x;
        if (str2 != null) {
            objectMetadata.P(str2);
        }
        String str3 = transferRecord.f5692y;
        if (str3 != null) {
            objectMetadata.Q(str3);
        }
        String str4 = transferRecord.f5689v;
        if (str4 != null) {
            objectMetadata.V(str4);
        } else {
            objectMetadata.V(Mimetypes.a().b(file));
        }
        String str5 = transferRecord.B;
        if (str5 != null) {
            putObjectRequest.O(str5);
        }
        String str6 = transferRecord.D;
        if (str6 != null) {
            objectMetadata.i(str6);
        }
        if (transferRecord.E != null) {
            objectMetadata.X(new Date(Long.valueOf(transferRecord.E).longValue()));
        }
        String str7 = transferRecord.F;
        if (str7 != null) {
            objectMetadata.e(str7);
        }
        Map<String, String> map = transferRecord.C;
        if (map != null) {
            objectMetadata.Y(map);
            String str8 = transferRecord.C.get("x-amz-tagging");
            if (str8 != null) {
                try {
                    String[] split = str8.split(ContainerUtils.FIELD_DELIMITER);
                    ArrayList arrayList = new ArrayList();
                    for (String str9 : split) {
                        String[] split2 = str9.split(ContainerUtils.KEY_VALUE_DELIMITER);
                        arrayList.add(new Tag(split2[0], split2[1]));
                    }
                    putObjectRequest.P(new ObjectTagging(arrayList));
                } catch (Exception e10) {
                    f5756g.b("Error in passing the object tags as request headers.", e10);
                }
            }
            String str10 = transferRecord.C.get("x-amz-website-redirect-location");
            if (str10 != null) {
                putObjectRequest.L(str10);
            }
            String str11 = transferRecord.C.get("x-amz-request-payer");
            if (str11 != null) {
                putObjectRequest.l0("requester".equals(str11));
            }
        }
        String str12 = transferRecord.H;
        if (str12 != null) {
            objectMetadata.U(str12);
        }
        String str13 = transferRecord.G;
        if (str13 != null) {
            putObjectRequest.M(new SSEAwsKeyManagementParams(str13));
        }
        putObjectRequest.K(objectMetadata);
        putObjectRequest.I(h(transferRecord.I));
        return putObjectRequest;
    }

    private static CannedAccessControlList h(String str) {
        if (str == null) {
            return null;
        }
        return f5757h.get(str);
    }

    private String i(PutObjectRequest putObjectRequest) {
        InitiateMultipartUploadRequest J = new InitiateMultipartUploadRequest(putObjectRequest.u(), putObjectRequest.A()).G(putObjectRequest.v()).H(putObjectRequest.B()).I(putObjectRequest.D()).J(putObjectRequest.G());
        TransferUtility.b(J);
        return this.f5758a.l(J).f();
    }

    private Boolean j() throws ExecutionException {
        long j10;
        String str = this.f5759b.f5687t;
        if (str != null && !str.isEmpty()) {
            long l10 = this.f5760c.l(this.f5759b.f5668a);
            if (l10 > 0) {
                f5756g.j(String.format("Resume transfer %d from %d bytes", Integer.valueOf(this.f5759b.f5668a), Long.valueOf(l10)));
            }
            j10 = l10;
        } else {
            PutObjectRequest g10 = g(this.f5759b);
            TransferUtility.b(g10);
            try {
                this.f5759b.f5687t = i(g10);
                TransferDBUtil transferDBUtil = this.f5760c;
                TransferRecord transferRecord = this.f5759b;
                transferDBUtil.r(transferRecord.f5668a, transferRecord.f5687t);
                j10 = 0;
            } catch (AmazonClientException e10) {
                f5756g.b("Error initiating multipart upload: " + this.f5759b.f5668a + " due to " + e10.getMessage(), e10);
                this.f5761d.i(this.f5759b.f5668a, e10);
                this.f5761d.l(this.f5759b.f5668a, TransferState.FAILED);
                return Boolean.FALSE;
            }
        }
        UploadTaskProgressListener uploadTaskProgressListener = new UploadTaskProgressListener(j10);
        TransferStatusUpdater transferStatusUpdater = this.f5761d;
        TransferRecord transferRecord2 = this.f5759b;
        transferStatusUpdater.k(transferRecord2.f5668a, j10, transferRecord2.f5675h, false);
        TransferDBUtil transferDBUtil2 = this.f5760c;
        TransferRecord transferRecord3 = this.f5759b;
        this.f5763f = transferDBUtil2.g(transferRecord3.f5668a, transferRecord3.f5687t);
        f5756g.j("Multipart upload " + this.f5759b.f5668a + " in " + this.f5763f.size() + " parts.");
        for (UploadPartRequest uploadPartRequest : this.f5763f) {
            TransferUtility.b(uploadPartRequest);
            UploadPartTaskMetadata uploadPartTaskMetadata = new UploadPartTaskMetadata();
            uploadPartTaskMetadata.f5764a = uploadPartRequest;
            uploadPartTaskMetadata.f5766c = 0L;
            uploadPartTaskMetadata.f5767d = TransferState.WAITING;
            this.f5762e.put(Integer.valueOf(uploadPartRequest.B()), uploadPartTaskMetadata);
            uploadPartTaskMetadata.f5765b = TransferThreadPool.c(new UploadPartTask(uploadPartTaskMetadata, uploadTaskProgressListener, uploadPartRequest, this.f5758a, this.f5760c));
        }
        try {
            boolean z10 = true;
            for (UploadPartTaskMetadata uploadPartTaskMetadata2 : this.f5762e.values()) {
                z10 &= uploadPartTaskMetadata2.f5765b.get().booleanValue();
            }
            if (!z10) {
                try {
                    if (TransferNetworkLossHandler.c() != null && !TransferNetworkLossHandler.c().e()) {
                        f5756g.j("Network not connected. Setting the state to WAITING_FOR_NETWORK.");
                        this.f5761d.l(this.f5759b.f5668a, TransferState.WAITING_FOR_NETWORK);
                        return Boolean.FALSE;
                    }
                } catch (TransferUtilityException e11) {
                    f5756g.c("TransferUtilityException: [" + e11 + "]");
                }
            }
            f5756g.j("Completing the multi-part upload transfer for " + this.f5759b.f5668a);
            try {
                TransferRecord transferRecord4 = this.f5759b;
                f(transferRecord4.f5668a, transferRecord4.f5683p, transferRecord4.f5684q, transferRecord4.f5687t);
                TransferStatusUpdater transferStatusUpdater2 = this.f5761d;
                TransferRecord transferRecord5 = this.f5759b;
                int i10 = transferRecord5.f5668a;
                long j11 = transferRecord5.f5675h;
                transferStatusUpdater2.k(i10, j11, j11, true);
                this.f5761d.l(this.f5759b.f5668a, TransferState.COMPLETED);
                return Boolean.TRUE;
            } catch (AmazonClientException e12) {
                f5756g.b("Failed to complete multipart: " + this.f5759b.f5668a + " due to " + e12.getMessage(), e12);
                TransferRecord transferRecord6 = this.f5759b;
                a(transferRecord6.f5668a, transferRecord6.f5683p, transferRecord6.f5684q, transferRecord6.f5687t);
                this.f5761d.i(this.f5759b.f5668a, e12);
                this.f5761d.l(this.f5759b.f5668a, TransferState.FAILED);
                return Boolean.FALSE;
            }
        } catch (Exception e13) {
            f5756g.c("Upload resulted in an exception. " + e13);
            for (UploadPartTaskMetadata uploadPartTaskMetadata3 : this.f5762e.values()) {
                uploadPartTaskMetadata3.f5765b.cancel(true);
            }
            if (TransferState.PENDING_CANCEL.equals(this.f5759b.f5682o)) {
                TransferStatusUpdater transferStatusUpdater3 = this.f5761d;
                int i11 = this.f5759b.f5668a;
                TransferState transferState = TransferState.CANCELED;
                transferStatusUpdater3.l(i11, transferState);
                f5756g.j("Transfer is " + transferState);
                return Boolean.FALSE;
            } else if (TransferState.PENDING_PAUSE.equals(this.f5759b.f5682o)) {
                TransferStatusUpdater transferStatusUpdater4 = this.f5761d;
                int i12 = this.f5759b.f5668a;
                TransferState transferState2 = TransferState.PAUSED;
                transferStatusUpdater4.l(i12, transferState2);
                f5756g.j("Transfer is " + transferState2);
                return Boolean.FALSE;
            } else {
                for (UploadPartTaskMetadata uploadPartTaskMetadata4 : this.f5762e.values()) {
                    TransferState transferState3 = TransferState.WAITING_FOR_NETWORK;
                    if (transferState3.equals(uploadPartTaskMetadata4.f5767d)) {
                        f5756g.j("Individual part is WAITING_FOR_NETWORK.");
                        this.f5761d.l(this.f5759b.f5668a, transferState3);
                        return Boolean.FALSE;
                    }
                }
                try {
                    if (TransferNetworkLossHandler.c() != null && !TransferNetworkLossHandler.c().e()) {
                        f5756g.j("Network not connected. Setting the state to WAITING_FOR_NETWORK.");
                        this.f5761d.l(this.f5759b.f5668a, TransferState.WAITING_FOR_NETWORK);
                        return Boolean.FALSE;
                    }
                } catch (TransferUtilityException e14) {
                    f5756g.c("TransferUtilityException: [" + e14 + "]");
                }
                if (RetryUtils.b(e13)) {
                    f5756g.j("Transfer is interrupted. " + e13);
                    this.f5761d.l(this.f5759b.f5668a, TransferState.FAILED);
                    return Boolean.FALSE;
                }
                f5756g.b("Error encountered during multi-part upload: " + this.f5759b.f5668a + " due to " + e13.getMessage(), e13);
                this.f5761d.i(this.f5759b.f5668a, e13);
                this.f5761d.l(this.f5759b.f5668a, TransferState.FAILED);
                return Boolean.FALSE;
            }
        }
    }

    private Boolean k() {
        PutObjectRequest g10 = g(this.f5759b);
        ProgressListener f10 = this.f5761d.f(this.f5759b.f5668a);
        long length = g10.y().length();
        TransferUtility.c(g10);
        g10.n(f10);
        try {
            this.f5758a.i(g10);
            this.f5761d.k(this.f5759b.f5668a, length, length, true);
            this.f5761d.l(this.f5759b.f5668a, TransferState.COMPLETED);
            return Boolean.TRUE;
        } catch (Exception e10) {
            if (TransferState.PENDING_CANCEL.equals(this.f5759b.f5682o)) {
                TransferStatusUpdater transferStatusUpdater = this.f5761d;
                int i10 = this.f5759b.f5668a;
                TransferState transferState = TransferState.CANCELED;
                transferStatusUpdater.l(i10, transferState);
                Log log = f5756g;
                log.j("Transfer is " + transferState);
                return Boolean.FALSE;
            } else if (TransferState.PENDING_PAUSE.equals(this.f5759b.f5682o)) {
                TransferStatusUpdater transferStatusUpdater2 = this.f5761d;
                int i11 = this.f5759b.f5668a;
                TransferState transferState2 = TransferState.PAUSED;
                transferStatusUpdater2.l(i11, transferState2);
                Log log2 = f5756g;
                log2.j("Transfer is " + transferState2);
                new ProgressEvent(0L).c(32);
                f10.a(new ProgressEvent(0L));
                return Boolean.FALSE;
            } else {
                try {
                    if (TransferNetworkLossHandler.c() != null && !TransferNetworkLossHandler.c().e()) {
                        Log log3 = f5756g;
                        log3.j("Thread:[" + Thread.currentThread().getId() + "]: Network wasn't available.");
                        this.f5761d.l(this.f5759b.f5668a, TransferState.WAITING_FOR_NETWORK);
                        log3.h("Network Connection Interrupted: Moving the TransferState to WAITING_FOR_NETWORK");
                        new ProgressEvent(0L).c(32);
                        f10.a(new ProgressEvent(0L));
                        return Boolean.FALSE;
                    }
                } catch (TransferUtilityException e11) {
                    Log log4 = f5756g;
                    log4.c("TransferUtilityException: [" + e11 + "]");
                }
                if (RetryUtils.b(e10)) {
                    Log log5 = f5756g;
                    log5.j("Transfer is interrupted. " + e10);
                    this.f5761d.l(this.f5759b.f5668a, TransferState.FAILED);
                    return Boolean.FALSE;
                }
                Log log6 = f5756g;
                log6.h("Failed to upload: " + this.f5759b.f5668a + " due to " + e10.getMessage());
                this.f5761d.i(this.f5759b.f5668a, e10);
                this.f5761d.l(this.f5759b.f5668a, TransferState.FAILED);
                return Boolean.FALSE;
            }
        }
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: e */
    public Boolean call() throws Exception {
        try {
            if (TransferNetworkLossHandler.c() != null && !TransferNetworkLossHandler.c().e()) {
                f5756g.j("Network not connected. Setting the state to WAITING_FOR_NETWORK.");
                this.f5761d.l(this.f5759b.f5668a, TransferState.WAITING_FOR_NETWORK);
                return Boolean.FALSE;
            }
        } catch (TransferUtilityException e10) {
            Log log = f5756g;
            log.c("TransferUtilityException: [" + e10 + "]");
        }
        this.f5761d.l(this.f5759b.f5668a, TransferState.IN_PROGRESS);
        TransferRecord transferRecord = this.f5759b;
        int i10 = transferRecord.f5671d;
        if (i10 == 1 && transferRecord.f5674g == 0) {
            return j();
        }
        if (i10 == 0) {
            return k();
        }
        return Boolean.FALSE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class UploadTaskProgressListener implements ProgressListener {

        /* renamed from: a  reason: collision with root package name */
        private long f5769a;

        /* renamed from: b  reason: collision with root package name */
        private final long f5770b;

        UploadTaskProgressListener(long j10) {
            this.f5769a = j10;
            this.f5770b = j10;
        }

        public synchronized void b(int i10, long j10) {
            UploadPartTaskMetadata uploadPartTaskMetadata = UploadTask.this.f5762e.get(Integer.valueOf(i10));
            if (uploadPartTaskMetadata == null) {
                UploadTask.f5756g.j("Update received for unknown part. Ignoring.");
                return;
            }
            uploadPartTaskMetadata.f5766c = j10;
            long j11 = this.f5770b;
            for (Map.Entry<Integer, UploadPartTaskMetadata> entry : UploadTask.this.f5762e.entrySet()) {
                j11 += entry.getValue().f5766c;
            }
            if (j11 > this.f5769a && j11 <= UploadTask.this.f5759b.f5675h) {
                UploadTask.this.f5761d.k(UploadTask.this.f5759b.f5668a, j11, UploadTask.this.f5759b.f5675h, true);
                this.f5769a = j11;
            }
        }

        @Override // com.amazonaws.event.ProgressListener
        public void a(ProgressEvent progressEvent) {
        }
    }
}
