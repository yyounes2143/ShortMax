package com.amazonaws.mobileconnectors.s3.transferutility;

import android.database.Cursor;
import android.net.ConnectivityManager;
import com.amazonaws.AmazonClientException;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.model.AbortMultipartUploadRequest;
import com.amazonaws.util.json.JsonUtils;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.mbridge.msdk.foundation.download.database.DownloadModel;
import java.io.File;
import java.util.Map;
import java.util.concurrent.Future;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class TransferRecord {
    private static final Log M = LogFactory.b(TransferRecord.class);
    public String A;
    public String B;
    public Map<String, String> C;
    public String D;
    public String E;
    public String F;
    public String G;
    public String H;
    public String I;
    public TransferUtilityOptions J;
    private Future<?> K;
    private Gson L = new Gson();

    /* renamed from: a  reason: collision with root package name */
    public int f5668a;

    /* renamed from: b  reason: collision with root package name */
    public int f5669b;

    /* renamed from: c  reason: collision with root package name */
    public int f5670c;

    /* renamed from: d  reason: collision with root package name */
    public int f5671d;

    /* renamed from: e  reason: collision with root package name */
    public int f5672e;

    /* renamed from: f  reason: collision with root package name */
    public int f5673f;

    /* renamed from: g  reason: collision with root package name */
    public int f5674g;

    /* renamed from: h  reason: collision with root package name */
    public long f5675h;

    /* renamed from: i  reason: collision with root package name */
    public long f5676i;

    /* renamed from: j  reason: collision with root package name */
    public long f5677j;

    /* renamed from: k  reason: collision with root package name */
    public long f5678k;

    /* renamed from: l  reason: collision with root package name */
    public long f5679l;

    /* renamed from: m  reason: collision with root package name */
    public long f5680m;

    /* renamed from: n  reason: collision with root package name */
    public TransferType f5681n;

    /* renamed from: o  reason: collision with root package name */
    public TransferState f5682o;

    /* renamed from: p  reason: collision with root package name */
    public String f5683p;

    /* renamed from: q  reason: collision with root package name */
    public String f5684q;

    /* renamed from: r  reason: collision with root package name */
    public String f5685r;

    /* renamed from: s  reason: collision with root package name */
    public String f5686s;

    /* renamed from: t  reason: collision with root package name */
    public String f5687t;

    /* renamed from: u  reason: collision with root package name */
    public String f5688u;

    /* renamed from: v  reason: collision with root package name */
    public String f5689v;

    /* renamed from: w  reason: collision with root package name */
    public String f5690w;

    /* renamed from: x  reason: collision with root package name */
    public String f5691x;

    /* renamed from: y  reason: collision with root package name */
    public String f5692y;

    /* renamed from: z  reason: collision with root package name */
    public String f5693z;

    public TransferRecord(int i10) {
        this.f5668a = i10;
    }

    private boolean c() {
        if (this.f5674g == 0 && !TransferState.COMPLETED.equals(this.f5682o)) {
            return true;
        }
        return false;
    }

    private boolean e(TransferState transferState) {
        if (!TransferState.COMPLETED.equals(transferState) && !TransferState.FAILED.equals(transferState) && !TransferState.CANCELED.equals(transferState)) {
            return false;
        }
        return true;
    }

    public boolean b(final AmazonS3 amazonS3, TransferStatusUpdater transferStatusUpdater) {
        if (!e(this.f5682o)) {
            transferStatusUpdater.l(this.f5668a, TransferState.PENDING_CANCEL);
            if (f()) {
                this.K.cancel(true);
            }
            if (TransferType.UPLOAD.equals(this.f5681n) && this.f5671d == 1) {
                new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.s3.transferutility.TransferRecord.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            AmazonS3 amazonS32 = amazonS3;
                            TransferRecord transferRecord = TransferRecord.this;
                            amazonS32.o(new AbortMultipartUploadRequest(transferRecord.f5683p, transferRecord.f5684q, transferRecord.f5687t));
                            Log log = TransferRecord.M;
                            log.h("Successfully clean up multipart upload: " + TransferRecord.this.f5668a);
                        } catch (AmazonClientException e10) {
                            Log log2 = TransferRecord.M;
                            log2.d("Failed to abort multiplart upload: " + TransferRecord.this.f5668a, e10);
                        }
                    }
                }).start();
            } else if (TransferType.DOWNLOAD.equals(this.f5681n)) {
                new File(this.f5686s).delete();
            }
            return true;
        }
        return false;
    }

    protected boolean d(TransferStatusUpdater transferStatusUpdater, ConnectivityManager connectivityManager) {
        TransferUtilityOptions transferUtilityOptions;
        if (connectivityManager == null || (transferUtilityOptions = this.J) == null || transferUtilityOptions.g() == null || this.J.g().isConnected(connectivityManager)) {
            return true;
        }
        Log log = M;
        log.j("Network Connection " + this.J.g() + " is not available.");
        transferStatusUpdater.l(this.f5668a, TransferState.WAITING_FOR_NETWORK);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean f() {
        Future<?> future = this.K;
        if (future != null && !future.isDone()) {
            return true;
        }
        return false;
    }

    public boolean g(AmazonS3 amazonS3, TransferStatusUpdater transferStatusUpdater) {
        if (!e(this.f5682o) && !TransferState.PAUSED.equals(this.f5682o)) {
            TransferState transferState = TransferState.PENDING_PAUSE;
            if (!transferState.equals(this.f5682o)) {
                transferStatusUpdater.l(this.f5668a, transferState);
                if (f()) {
                    this.K.cancel(true);
                }
                return true;
            }
            return false;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean h(AmazonS3 amazonS3, TransferStatusUpdater transferStatusUpdater, ConnectivityManager connectivityManager) {
        boolean d10 = d(transferStatusUpdater, connectivityManager);
        boolean z10 = false;
        if (!d10 && !e(this.f5682o)) {
            z10 = true;
            if (f()) {
                this.K.cancel(true);
            }
        }
        return z10;
    }

    public boolean i(AmazonS3 amazonS3, TransferDBUtil transferDBUtil, TransferStatusUpdater transferStatusUpdater, ConnectivityManager connectivityManager) {
        if (!f() && c() && d(transferStatusUpdater, connectivityManager)) {
            if (this.f5681n.equals(TransferType.DOWNLOAD)) {
                this.K = TransferThreadPool.c(new DownloadTask(this, amazonS3, transferStatusUpdater));
                return true;
            }
            this.K = TransferThreadPool.c(new UploadTask(this, amazonS3, transferDBUtil, transferStatusUpdater));
            return true;
        }
        return false;
    }

    public void j(Cursor cursor) {
        this.f5668a = cursor.getInt(cursor.getColumnIndexOrThrow("_id"));
        this.f5669b = cursor.getInt(cursor.getColumnIndexOrThrow("main_upload_id"));
        this.f5681n = TransferType.getType(cursor.getString(cursor.getColumnIndexOrThrow("type")));
        this.f5682o = TransferState.getState(cursor.getString(cursor.getColumnIndexOrThrow("state")));
        this.f5683p = cursor.getString(cursor.getColumnIndexOrThrow("bucket_name"));
        this.f5684q = cursor.getString(cursor.getColumnIndexOrThrow("key"));
        this.f5685r = cursor.getString(cursor.getColumnIndexOrThrow("version_id"));
        this.f5675h = cursor.getLong(cursor.getColumnIndexOrThrow("bytes_total"));
        this.f5676i = cursor.getLong(cursor.getColumnIndexOrThrow("bytes_current"));
        this.f5677j = cursor.getLong(cursor.getColumnIndexOrThrow("speed"));
        this.f5670c = cursor.getInt(cursor.getColumnIndexOrThrow("is_requester_pays"));
        this.f5671d = cursor.getInt(cursor.getColumnIndexOrThrow("is_multipart"));
        this.f5672e = cursor.getInt(cursor.getColumnIndexOrThrow("is_last_part"));
        this.f5673f = cursor.getInt(cursor.getColumnIndexOrThrow("is_encrypted"));
        this.f5674g = cursor.getInt(cursor.getColumnIndexOrThrow("part_num"));
        this.f5688u = cursor.getString(cursor.getColumnIndexOrThrow(DownloadModel.ETAG));
        this.f5686s = cursor.getString(cursor.getColumnIndexOrThrow("file"));
        this.f5687t = cursor.getString(cursor.getColumnIndexOrThrow("multipart_id"));
        this.f5678k = cursor.getLong(cursor.getColumnIndexOrThrow("range_start"));
        this.f5679l = cursor.getLong(cursor.getColumnIndexOrThrow("range_last"));
        this.f5680m = cursor.getLong(cursor.getColumnIndexOrThrow("file_offset"));
        this.f5689v = cursor.getString(cursor.getColumnIndexOrThrow("header_content_type"));
        this.f5690w = cursor.getString(cursor.getColumnIndexOrThrow("header_content_language"));
        this.f5691x = cursor.getString(cursor.getColumnIndexOrThrow("header_content_disposition"));
        this.f5692y = cursor.getString(cursor.getColumnIndexOrThrow("header_content_encoding"));
        this.f5693z = cursor.getString(cursor.getColumnIndexOrThrow("header_cache_control"));
        this.A = cursor.getString(cursor.getColumnIndexOrThrow("header_expire"));
        this.C = JsonUtils.d(cursor.getString(cursor.getColumnIndexOrThrow("user_metadata")));
        this.D = cursor.getString(cursor.getColumnIndexOrThrow("expiration_time_rule_id"));
        this.E = cursor.getString(cursor.getColumnIndexOrThrow("http_expires_date"));
        this.F = cursor.getString(cursor.getColumnIndexOrThrow("sse_algorithm"));
        this.G = cursor.getString(cursor.getColumnIndexOrThrow("kms_key"));
        this.H = cursor.getString(cursor.getColumnIndexOrThrow("content_md5"));
        this.I = cursor.getString(cursor.getColumnIndexOrThrow("canned_acl"));
        this.B = cursor.getString(cursor.getColumnIndexOrThrow("header_storage_class"));
        String string = cursor.getString(cursor.getColumnIndexOrThrow("transfer_utility_options"));
        try {
            this.J = (TransferUtilityOptions) this.L.fromJson(string, (Class<Object>) TransferUtilityOptions.class);
        } catch (JsonSyntaxException e10) {
            M.b(String.format("Failed to deserialize: %s, setting to default", string), e10);
            this.J = new TransferUtilityOptions();
        }
    }

    public String toString() {
        return "[id:" + this.f5668a + ",bucketName:" + this.f5683p + ",key:" + this.f5684q + ",file:" + this.f5686s + ",type:" + this.f5681n + ",bytesTotal:" + this.f5675h + ",bytesCurrent:" + this.f5676i + ",fileOffset:" + this.f5680m + ",state:" + this.f5682o + ",cannedAcl:" + this.I + ",mainUploadId:" + this.f5669b + ",isMultipart:" + this.f5671d + ",isLastPart:" + this.f5672e + ",partNumber:" + this.f5674g + ",multipartId:" + this.f5687t + ",eTag:" + this.f5688u + ",storageClass:" + this.B + ",userMetadata:" + this.C.toString() + ",transferUtilityOptions:" + this.L.toJson(this.J) + "]";
    }
}
