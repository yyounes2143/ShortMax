package com.amazonaws.services.s3.internal;

import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.S3ClientOptions;
import com.amazonaws.services.s3.model.GetObjectRequest;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.UploadPartRequest;
import com.amazonaws.util.DateUtils;
import java.util.Date;
import java.util.List;
/* loaded from: classes2.dex */
public class ServiceUtils {

    /* renamed from: a  reason: collision with root package name */
    private static final Log f5948a = LogFactory.b(ServiceUtils.class);
    @Deprecated

    /* renamed from: b  reason: collision with root package name */
    protected static final DateUtils f5949b = new DateUtils();

    public static String a(Date date) {
        return DateUtils.d(date);
    }

    public static String b(List<String> list) {
        String str = "";
        boolean z10 = true;
        for (String str2 : list) {
            if (!z10) {
                str = str + ", ";
            }
            str = str + str2;
            z10 = false;
        }
        return str;
    }

    public static Date c(String str) {
        return DateUtils.h(str);
    }

    public static Date d(String str) {
        return DateUtils.i(str);
    }

    public static String e(String str) {
        if (str == null) {
            return null;
        }
        String trim = str.trim();
        if (trim.startsWith("\"")) {
            trim = trim.substring(1);
        }
        if (trim.endsWith("\"")) {
            return trim.substring(0, trim.length() - 1);
        }
        return trim;
    }

    public static boolean f(AmazonWebServiceRequest amazonWebServiceRequest, S3ClientOptions s3ClientOptions) {
        if ((s3ClientOptions != null && s3ClientOptions.c()) || System.getProperty("com.amazonaws.services.s3.disableGetObjectMD5Validation") != null) {
            return true;
        }
        if (amazonWebServiceRequest instanceof GetObjectRequest) {
            GetObjectRequest getObjectRequest = (GetObjectRequest) amazonWebServiceRequest;
            if (getObjectRequest.y() != null) {
                return true;
            }
            getObjectRequest.A();
        } else if (amazonWebServiceRequest instanceof PutObjectRequest) {
            PutObjectRequest putObjectRequest = (PutObjectRequest) amazonWebServiceRequest;
            ObjectMetadata B = putObjectRequest.B();
            if (B != null && B.G() != null) {
                return true;
            }
            putObjectRequest.E();
            if (putObjectRequest.D() != null && (putObjectRequest.D().d() != null || putObjectRequest.D().b() != null)) {
                return true;
            }
        } else if (amazonWebServiceRequest instanceof UploadPartRequest) {
            ((UploadPartRequest) amazonWebServiceRequest).D();
        }
        return false;
    }
}
