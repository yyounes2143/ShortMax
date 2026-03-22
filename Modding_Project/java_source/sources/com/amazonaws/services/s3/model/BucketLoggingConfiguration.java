package com.amazonaws.services.s3.model;

import java.io.Serializable;
/* loaded from: classes2.dex */
public class BucketLoggingConfiguration implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private String f6004a = null;

    /* renamed from: b  reason: collision with root package name */
    private String f6005b = null;

    public String b() {
        return this.f6004a;
    }

    public String d() {
        return this.f6005b;
    }

    public boolean e() {
        if (this.f6004a != null && this.f6005b != null) {
            return true;
        }
        return false;
    }

    public void f(String str) {
        this.f6004a = str;
    }

    public void g(String str) {
        if (str == null) {
            str = "";
        }
        this.f6005b = str;
    }

    public String toString() {
        String str = "LoggingConfiguration enabled=" + e();
        if (e()) {
            return str + ", destinationBucketName=" + b() + ", logFilePrefix=" + d();
        }
        return str;
    }
}
