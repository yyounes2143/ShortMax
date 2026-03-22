package com.amazonaws.mobile.client.internal.oauth2;

import com.amazonaws.internal.keyvaluestore.AWSKeyValueStore;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: OAuth2Client.java */
/* loaded from: classes2.dex */
public class OAuth2ClientStore {

    /* renamed from: a  reason: collision with root package name */
    private final AWSKeyValueStore f5393a;

    /* renamed from: b  reason: collision with root package name */
    ReadWriteLock f5394b = new ReentrantReadWriteLock();

    /* JADX INFO: Access modifiers changed from: package-private */
    public OAuth2ClientStore(OAuth2Client oAuth2Client) {
        this.f5393a = new AWSKeyValueStore(oAuth2Client.f5377c, "com.amazonaws.mobile.client.oauth2", oAuth2Client.f5379e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a(String str) {
        try {
            this.f5394b.readLock().lock();
            return this.f5393a.g(str);
        } finally {
            this.f5394b.readLock().unlock();
        }
    }

    public void b(boolean z10) {
        this.f5393a.r(z10);
    }
}
