package com.amazonaws.mobileconnectors.s3.transferutility;

import android.content.ContentValues;
import android.content.Context;
import android.net.ConnectivityManager;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.RequestClientOptions;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.mobile.config.AWSConfiguration;
import com.amazonaws.regions.Region;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.S3ClientOptions;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.util.VersionInfoUtils;
import java.io.File;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class TransferUtility {

    /* renamed from: g  reason: collision with root package name */
    private static final Log f5728g = LogFactory.b(TransferUtility.class);

    /* renamed from: h  reason: collision with root package name */
    private static final Object f5729h = new Object();

    /* renamed from: i  reason: collision with root package name */
    private static String f5730i = "";

    /* renamed from: a  reason: collision with root package name */
    private TransferStatusUpdater f5731a;

    /* renamed from: b  reason: collision with root package name */
    private TransferDBUtil f5732b;

    /* renamed from: c  reason: collision with root package name */
    final ConnectivityManager f5733c;

    /* renamed from: d  reason: collision with root package name */
    private final AmazonS3 f5734d;

    /* renamed from: e  reason: collision with root package name */
    private final String f5735e;

    /* renamed from: f  reason: collision with root package name */
    private final TransferUtilityOptions f5736f;

    /* loaded from: classes2.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private AmazonS3 f5737a;

        /* renamed from: b  reason: collision with root package name */
        private Context f5738b;

        /* renamed from: c  reason: collision with root package name */
        private String f5739c;

        /* renamed from: d  reason: collision with root package name */
        private AWSConfiguration f5740d;

        /* renamed from: e  reason: collision with root package name */
        private TransferUtilityOptions f5741e;

        protected Builder() {
        }

        public Builder a(AWSConfiguration aWSConfiguration) {
            this.f5740d = aWSConfiguration;
            return this;
        }

        public TransferUtility b() {
            boolean z10;
            if (this.f5737a != null) {
                if (this.f5738b != null) {
                    AWSConfiguration aWSConfiguration = this.f5740d;
                    if (aWSConfiguration != null) {
                        try {
                            JSONObject e10 = aWSConfiguration.e("S3TransferUtility");
                            this.f5737a.a(Region.f(e10.getString("Region")));
                            this.f5739c = e10.getString("Bucket");
                            if (e10.has("DangerouslyConnectToHTTPEndpointForTesting")) {
                                z10 = e10.getBoolean("DangerouslyConnectToHTTPEndpointForTesting");
                            } else {
                                z10 = false;
                            }
                            if (z10) {
                                this.f5737a.b("http://10.0.2.2:20005");
                                this.f5737a.p(S3ClientOptions.a().b(true).c(true).a());
                            }
                            TransferUtility.h(this.f5740d.c());
                        } catch (Exception e11) {
                            throw new IllegalArgumentException("Failed to read S3TransferUtility please check your setup or awsconfiguration.json file", e11);
                        }
                    }
                    if (this.f5741e == null) {
                        this.f5741e = new TransferUtilityOptions();
                    }
                    return new TransferUtility(this.f5737a, this.f5738b, this.f5739c, this.f5741e);
                }
                throw new IllegalArgumentException("Context is required please set using .context(applicationContext)");
            }
            throw new IllegalArgumentException("AmazonS3 client is required please set using .s3Client(yourClient)");
        }

        public Builder c(Context context) {
            this.f5738b = context.getApplicationContext();
            return this;
        }

        public Builder d(AmazonS3 amazonS3) {
            this.f5737a = amazonS3;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <X extends AmazonWebServiceRequest> X b(X x10) {
        RequestClientOptions g10 = x10.g();
        g10.a("TransferService_multipart/" + g() + VersionInfoUtils.c());
        return x10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <X extends AmazonWebServiceRequest> X c(X x10) {
        RequestClientOptions g10 = x10.g();
        g10.a("TransferService/" + g() + VersionInfoUtils.c());
        return x10;
    }

    public static Builder d() {
        return new Builder();
    }

    private int e(String str, String str2, File file, ObjectMetadata objectMetadata, CannedAccessControlList cannedAccessControlList) {
        int i10;
        long length = file.length();
        double d10 = length;
        long max = (long) Math.max(Math.ceil(d10 / 10000.0d), this.f5736f.f());
        int ceil = ((int) Math.ceil(d10 / max)) + 1;
        ContentValues[] contentValuesArr = new ContentValues[ceil];
        contentValuesArr[0] = this.f5732b.d(str, str2, file, 0L, 0, "", file.length(), 0, objectMetadata, cannedAccessControlList, this.f5736f);
        int i11 = 1;
        long j10 = 0;
        for (int i12 = 1; i12 < ceil; i12++) {
            long min = Math.min(max, length);
            TransferDBUtil transferDBUtil = this.f5732b;
            length -= max;
            if (length <= 0) {
                i10 = 1;
            } else {
                i10 = 0;
            }
            contentValuesArr[i12] = transferDBUtil.d(str, str2, file, j10, i11, "", min, i10, objectMetadata, cannedAccessControlList, this.f5736f);
            j10 += max;
            i11++;
        }
        return this.f5732b.a(contentValuesArr);
    }

    private String f() {
        String str = this.f5735e;
        if (str != null) {
            return str;
        }
        throw new IllegalArgumentException("TransferUtility has not been configured with a default bucket. Please use the corresponding method that specifies bucket name or configure the default bucket name in construction of the object. See TransferUtility.builder().defaultBucket() or TransferUtility.builder().awsConfiguration()");
    }

    private static String g() {
        synchronized (f5729h) {
            try {
                String str = f5730i;
                if (str != null && !str.trim().isEmpty()) {
                    return f5730i.trim() + DomExceptionUtils.SEPARATOR;
                }
                return "";
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void h(String str) {
        synchronized (f5729h) {
            f5730i = str;
        }
    }

    private boolean i(File file) {
        if (file != null && file.length() > this.f5736f.f()) {
            return true;
        }
        return false;
    }

    private synchronized void j(String str, int i10) {
        S3ClientReference.b(Integer.valueOf(i10), this.f5734d);
        TransferRecord d10 = this.f5731a.d(i10);
        if (d10 == null) {
            d10 = this.f5732b.j(i10);
            if (d10 == null) {
                Log log = f5728g;
                log.c("Cannot find transfer with id: " + i10);
                return;
            }
            this.f5731a.b(d10);
        } else if ("add_transfer".equals(str)) {
            Log log2 = f5728g;
            log2.g("Transfer has already been added: " + i10);
            return;
        }
        if (!"add_transfer".equals(str) && !"resume_transfer".equals(str)) {
            if ("pause_transfer".equals(str)) {
                d10.g(this.f5734d, this.f5731a);
            } else if ("cancel_transfer".equals(str)) {
                d10.b(this.f5734d, this.f5731a);
            } else {
                Log log3 = f5728g;
                log3.c("Unknown action: " + str);
            }
        }
        d10.i(this.f5734d, this.f5732b, this.f5731a, this.f5733c);
    }

    public TransferObserver k(String str, File file) {
        return l(f(), str, file, new ObjectMetadata());
    }

    public TransferObserver l(String str, String str2, File file, ObjectMetadata objectMetadata) {
        return m(str, str2, file, objectMetadata, null);
    }

    public TransferObserver m(String str, String str2, File file, ObjectMetadata objectMetadata, CannedAccessControlList cannedAccessControlList) {
        return n(str, str2, file, objectMetadata, cannedAccessControlList, null);
    }

    public TransferObserver n(String str, String str2, File file, ObjectMetadata objectMetadata, CannedAccessControlList cannedAccessControlList, TransferListener transferListener) {
        int parseInt;
        if (file != null && !file.isDirectory() && file.exists()) {
            if (i(file)) {
                parseInt = e(str, str2, file, objectMetadata, cannedAccessControlList);
            } else {
                parseInt = Integer.parseInt(this.f5732b.k(TransferType.UPLOAD, str, str2, file, objectMetadata, cannedAccessControlList, this.f5736f).getLastPathSegment());
            }
            TransferObserver transferObserver = new TransferObserver(parseInt, this.f5732b, str, str2, file, transferListener);
            j("add_transfer", parseInt);
            return transferObserver;
        }
        throw new IllegalArgumentException("Invalid file: " + file);
    }

    private TransferUtility(AmazonS3 amazonS3, Context context, String str, TransferUtilityOptions transferUtilityOptions) {
        this.f5734d = amazonS3;
        this.f5735e = str;
        this.f5736f = transferUtilityOptions;
        this.f5732b = new TransferDBUtil(context.getApplicationContext());
        this.f5731a = TransferStatusUpdater.c(context.getApplicationContext());
        TransferThreadPool.b(transferUtilityOptions.h());
        this.f5733c = (ConnectivityManager) context.getSystemService("connectivity");
    }
}
