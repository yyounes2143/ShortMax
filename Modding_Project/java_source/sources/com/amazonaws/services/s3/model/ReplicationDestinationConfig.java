package com.amazonaws.services.s3.model;
/* loaded from: classes2.dex */
public class ReplicationDestinationConfig {

    /* renamed from: a  reason: collision with root package name */
    private String f6153a;

    /* renamed from: b  reason: collision with root package name */
    private String f6154b;

    public void a(String str) {
        if (str != null) {
            this.f6153a = str;
            return;
        }
        throw new IllegalArgumentException("Bucket name cannot be null");
    }

    public void b(String str) {
        this.f6154b = str;
    }
}
