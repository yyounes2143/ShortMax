package com.amazonaws.mobile.client;

import com.amazonaws.internal.keyvaluestore.AWSKeyValueStore;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
/* loaded from: classes2.dex */
final class AWSMobileClientStore implements KeyValueStore {

    /* renamed from: a  reason: collision with root package name */
    private final AWSKeyValueStore f5354a;

    /* renamed from: b  reason: collision with root package name */
    private final ReadWriteLock f5355b = new ReentrantReadWriteLock();

    /* JADX INFO: Access modifiers changed from: package-private */
    public AWSMobileClientStore(AWSMobileClient aWSMobileClient) {
        this.f5354a = new AWSKeyValueStore(aWSMobileClient.f5314f, "com.amazonaws.mobile.client", aWSMobileClient.f5334z);
    }

    @Override // com.amazonaws.mobile.client.KeyValueStore
    public void a(String str, String str2) {
        try {
            this.f5355b.writeLock().lock();
            this.f5354a.o(str, str2);
        } finally {
            this.f5355b.writeLock().unlock();
        }
    }

    @Override // com.amazonaws.mobile.client.KeyValueStore
    public void b(Map<String, String> map) {
        try {
            this.f5355b.writeLock().lock();
            for (String str : map.keySet()) {
                this.f5354a.o(str, map.get(str));
            }
        } finally {
            this.f5355b.writeLock().unlock();
        }
    }

    @Override // com.amazonaws.mobile.client.KeyValueStore
    public Map<String, String> c(String... strArr) {
        try {
            this.f5355b.readLock().lock();
            HashMap hashMap = new HashMap();
            for (String str : strArr) {
                hashMap.put(str, this.f5354a.g(str));
            }
            return hashMap;
        } finally {
            this.f5355b.readLock().unlock();
        }
    }

    @Override // com.amazonaws.mobile.client.KeyValueStore
    public String get(String str) {
        try {
            this.f5355b.readLock().lock();
            return this.f5354a.g(str);
        } finally {
            this.f5355b.readLock().unlock();
        }
    }
}
