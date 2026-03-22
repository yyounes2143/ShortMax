package com.amazonaws.services.s3.model;
/* loaded from: classes2.dex */
public class ReplicationRule {

    /* renamed from: a  reason: collision with root package name */
    private String f6155a;

    /* renamed from: b  reason: collision with root package name */
    private String f6156b;

    /* renamed from: c  reason: collision with root package name */
    private ReplicationDestinationConfig f6157c;

    public void a(ReplicationDestinationConfig replicationDestinationConfig) {
        if (replicationDestinationConfig != null) {
            this.f6157c = replicationDestinationConfig;
            return;
        }
        throw new IllegalArgumentException("Destination cannot be null in the replication rule");
    }

    public void b(String str) {
        if (str != null) {
            this.f6155a = str;
            return;
        }
        throw new IllegalArgumentException("Prefix cannot be null for a replication rule");
    }

    public void c(String str) {
        this.f6156b = str;
    }
}
