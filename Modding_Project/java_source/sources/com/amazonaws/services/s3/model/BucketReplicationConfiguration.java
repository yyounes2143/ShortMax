package com.amazonaws.services.s3.model;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class BucketReplicationConfiguration implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private String f6006a;

    /* renamed from: b  reason: collision with root package name */
    private Map<String, ReplicationRule> f6007b = new HashMap();

    public BucketReplicationConfiguration b(String str, ReplicationRule replicationRule) {
        if (str != null && !str.trim().isEmpty()) {
            if (replicationRule != null) {
                this.f6007b.put(str, replicationRule);
                return this;
            }
            throw new IllegalArgumentException("Replication rule cannot be null");
        }
        throw new IllegalArgumentException("Rule id cannot be null or empty.");
    }

    public void d(String str) {
        this.f6006a = str;
    }
}
