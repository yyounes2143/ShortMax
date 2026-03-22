package com.amazonaws.services.s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.File;
import java.io.InputStream;
import java.io.Serializable;
/* loaded from: classes2.dex */
public class UploadPartRequest extends AmazonWebServiceRequest implements Serializable {

    /* renamed from: f  reason: collision with root package name */
    private ObjectMetadata f6193f;

    /* renamed from: g  reason: collision with root package name */
    private int f6194g;

    /* renamed from: h  reason: collision with root package name */
    private int f6195h;

    /* renamed from: i  reason: collision with root package name */
    private String f6196i;

    /* renamed from: j  reason: collision with root package name */
    private String f6197j;

    /* renamed from: k  reason: collision with root package name */
    private String f6198k;

    /* renamed from: l  reason: collision with root package name */
    private int f6199l;

    /* renamed from: m  reason: collision with root package name */
    private long f6200m;

    /* renamed from: n  reason: collision with root package name */
    private String f6201n;

    /* renamed from: o  reason: collision with root package name */
    private transient InputStream f6202o;

    /* renamed from: p  reason: collision with root package name */
    private File f6203p;

    /* renamed from: q  reason: collision with root package name */
    private long f6204q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f6205r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f6206s;

    public ObjectMetadata A() {
        return this.f6193f;
    }

    public int B() {
        return this.f6199l;
    }

    public long C() {
        return this.f6200m;
    }

    public SSECustomerKey D() {
        return null;
    }

    public String E() {
        return this.f6198k;
    }

    public boolean F() {
        return this.f6206s;
    }

    public void G(File file) {
        this.f6203p = file;
    }

    public void H(long j10) {
        this.f6204q = j10;
    }

    public void I(boolean z10) {
        this.f6205r = z10;
    }

    public UploadPartRequest J(String str) {
        this.f6196i = str;
        return this;
    }

    public UploadPartRequest K(File file) {
        G(file);
        return this;
    }

    public UploadPartRequest L(long j10) {
        H(j10);
        return this;
    }

    public UploadPartRequest M(int i10) {
        this.f6194g = i10;
        return this;
    }

    public UploadPartRequest N(String str) {
        this.f6197j = str;
        return this;
    }

    public UploadPartRequest O(boolean z10) {
        I(z10);
        return this;
    }

    public UploadPartRequest P(int i10) {
        this.f6195h = i10;
        return this;
    }

    public UploadPartRequest Q(int i10) {
        this.f6199l = i10;
        return this;
    }

    public UploadPartRequest S(long j10) {
        this.f6200m = j10;
        return this;
    }

    public UploadPartRequest U(String str) {
        this.f6198k = str;
        return this;
    }

    public String r() {
        return this.f6196i;
    }

    public File s() {
        return this.f6203p;
    }

    public long t() {
        return this.f6204q;
    }

    public int u() {
        return this.f6194g;
    }

    public InputStream v() {
        return this.f6202o;
    }

    public String y() {
        return this.f6197j;
    }

    public String z() {
        return this.f6201n;
    }
}
