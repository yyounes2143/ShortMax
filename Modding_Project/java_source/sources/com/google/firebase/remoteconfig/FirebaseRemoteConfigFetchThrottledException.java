package com.google.firebase.remoteconfig;
/* loaded from: classes5.dex */
public class FirebaseRemoteConfigFetchThrottledException extends FirebaseRemoteConfigException {

    /* renamed from: b  reason: collision with root package name */
    private final long f21315b;

    public FirebaseRemoteConfigFetchThrottledException(long j10) {
        this("Fetch was throttled.", j10);
    }

    public FirebaseRemoteConfigFetchThrottledException(String str, long j10) {
        super(str);
        this.f21315b = j10;
    }
}
