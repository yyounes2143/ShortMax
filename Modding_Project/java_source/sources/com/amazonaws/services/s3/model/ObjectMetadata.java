package com.amazonaws.services.s3.model;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.amazonaws.services.s3.internal.ObjectExpirationResult;
import com.amazonaws.services.s3.internal.ObjectRestoreResult;
import com.amazonaws.services.s3.internal.S3RequesterChargedResult;
import com.amazonaws.services.s3.internal.ServerSideEncryptionResult;
import com.amazonaws.util.DateUtils;
import com.mbridge.msdk.foundation.download.Command;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.Serializable;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes2.dex */
public class ObjectMetadata implements ServerSideEncryptionResult, S3RequesterChargedResult, ObjectExpirationResult, ObjectRestoreResult, Cloneable, Serializable {

    /* renamed from: h  reason: collision with root package name */
    public static final String f6109h = SSEAlgorithm.AES256.getAlgorithm();

    /* renamed from: i  reason: collision with root package name */
    public static final String f6110i = SSEAlgorithm.KMS.getAlgorithm();

    /* renamed from: a  reason: collision with root package name */
    private Map<String, String> f6111a;

    /* renamed from: b  reason: collision with root package name */
    private Map<String, Object> f6112b;

    /* renamed from: c  reason: collision with root package name */
    private Date f6113c;

    /* renamed from: d  reason: collision with root package name */
    private Date f6114d;

    /* renamed from: e  reason: collision with root package name */
    private String f6115e;

    /* renamed from: f  reason: collision with root package name */
    private Boolean f6116f;

    /* renamed from: g  reason: collision with root package name */
    private Date f6117g;

    public ObjectMetadata() {
        Comparator comparator = String.CASE_INSENSITIVE_ORDER;
        this.f6111a = new TreeMap(comparator);
        this.f6112b = new TreeMap(comparator);
    }

    public Date A() {
        return DateUtils.b(this.f6114d);
    }

    public String B() {
        return this.f6115e;
    }

    public Date C() {
        return DateUtils.b(this.f6113c);
    }

    public long D() {
        int lastIndexOf;
        String str = (String) this.f6112b.get("Content-Range");
        if (str != null && (lastIndexOf = str.lastIndexOf(DomExceptionUtils.SEPARATOR)) >= 0) {
            return Long.parseLong(str.substring(lastIndexOf + 1));
        }
        return u();
    }

    public Map<String, Object> E() {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        treeMap.putAll(this.f6112b);
        return Collections.unmodifiableMap(treeMap);
    }

    public Object F(String str) {
        return this.f6112b.get(str);
    }

    public String G() {
        return (String) this.f6112b.get("x-amz-server-side-encryption");
    }

    public String H() {
        return (String) this.f6112b.get("x-amz-server-side-encryption-aws-kms-key-id");
    }

    public String I() {
        return (String) this.f6112b.get("x-amz-server-side-encryption-customer-algorithm");
    }

    public String J() {
        return (String) this.f6112b.get("x-amz-server-side-encryption-customer-key-MD5");
    }

    public String K() {
        Object obj = this.f6112b.get("x-amz-storage-class");
        if (obj == null) {
            return null;
        }
        return obj.toString();
    }

    public Map<String, String> L() {
        return this.f6111a;
    }

    public String M() {
        return (String) this.f6112b.get("x-amz-version-id");
    }

    public boolean N() {
        if (this.f6112b.get("x-amz-request-charged") != null) {
            return true;
        }
        return false;
    }

    public void O(String str) {
        this.f6112b.put("Cache-Control", str);
    }

    public void P(String str) {
        this.f6112b.put("Content-Disposition", str);
    }

    public void Q(String str) {
        this.f6112b.put("Content-Encoding", str);
    }

    public void S(long j10) {
        this.f6112b.put("Content-Length", Long.valueOf(j10));
    }

    public void U(String str) {
        if (str == null) {
            this.f6112b.remove("Content-MD5");
        } else {
            this.f6112b.put("Content-MD5", str);
        }
    }

    public void V(String str) {
        this.f6112b.put(CommonGatewayClient.HEADER_CONTENT_TYPE, str);
    }

    public void W(String str, Object obj) {
        this.f6112b.put(str, obj);
    }

    public void X(Date date) {
        this.f6113c = date;
    }

    public void Y(Map<String, String> map) {
        this.f6111a = map;
    }

    @Override // com.amazonaws.services.s3.internal.S3RequesterChargedResult
    public void b(boolean z10) {
        if (z10) {
            this.f6112b.put("x-amz-request-charged", "requester");
        }
    }

    @Override // com.amazonaws.services.s3.internal.ServerSideEncryptionResult
    public void e(String str) {
        this.f6112b.put("x-amz-server-side-encryption", str);
    }

    @Override // com.amazonaws.services.s3.internal.ObjectRestoreResult
    public void f(Date date) {
        this.f6117g = date;
    }

    @Override // com.amazonaws.services.s3.internal.ObjectRestoreResult
    public void g(boolean z10) {
        this.f6116f = Boolean.valueOf(z10);
    }

    @Override // com.amazonaws.services.s3.internal.ServerSideEncryptionResult
    public void h(String str) {
        this.f6112b.put("x-amz-server-side-encryption-customer-algorithm", str);
    }

    @Override // com.amazonaws.services.s3.internal.ObjectExpirationResult
    public void i(String str) {
        this.f6115e = str;
    }

    @Override // com.amazonaws.services.s3.internal.ObjectExpirationResult
    public void j(Date date) {
        this.f6114d = date;
    }

    @Override // com.amazonaws.services.s3.internal.ServerSideEncryptionResult
    public void k(String str) {
        this.f6112b.put("x-amz-server-side-encryption-customer-key-MD5", str);
    }

    public void n(String str, String str2) {
        this.f6111a.put(str, str2);
    }

    /* renamed from: q */
    public ObjectMetadata clone() {
        return new ObjectMetadata(this);
    }

    public String r() {
        return (String) this.f6112b.get("Cache-Control");
    }

    public String s() {
        return (String) this.f6112b.get("Content-Disposition");
    }

    public String t() {
        return (String) this.f6112b.get("Content-Encoding");
    }

    public long u() {
        Long l10 = (Long) this.f6112b.get("Content-Length");
        if (l10 == null) {
            return 0L;
        }
        return l10.longValue();
    }

    public String v() {
        return (String) this.f6112b.get("Content-MD5");
    }

    public String y() {
        return (String) this.f6112b.get(CommonGatewayClient.HEADER_CONTENT_TYPE);
    }

    public String z() {
        return (String) this.f6112b.get(Command.HTTP_HEADER_ETAG);
    }

    private ObjectMetadata(ObjectMetadata objectMetadata) {
        Comparator comparator = String.CASE_INSENSITIVE_ORDER;
        this.f6111a = new TreeMap(comparator);
        this.f6112b = new TreeMap(comparator);
        this.f6111a = objectMetadata.f6111a == null ? null : new TreeMap(objectMetadata.f6111a);
        this.f6112b = objectMetadata.f6112b != null ? new TreeMap(objectMetadata.f6112b) : null;
        this.f6114d = DateUtils.b(objectMetadata.f6114d);
        this.f6115e = objectMetadata.f6115e;
        this.f6113c = DateUtils.b(objectMetadata.f6113c);
        this.f6116f = objectMetadata.f6116f;
        this.f6117g = DateUtils.b(objectMetadata.f6117g);
    }
}
