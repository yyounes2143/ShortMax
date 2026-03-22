package com.amazonaws.services.s3.model;

import java.io.Serializable;
/* loaded from: classes2.dex */
public class SSEAwsKeyManagementParams implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private final String f6188a;

    public SSEAwsKeyManagementParams(String str) {
        if (str != null && !str.trim().isEmpty()) {
            this.f6188a = str;
            return;
        }
        throw new IllegalArgumentException("AWS Key Management System Key id cannot be null");
    }

    public String b() {
        return this.f6188a;
    }

    public String d() {
        return SSEAlgorithm.KMS.getAlgorithm();
    }
}
