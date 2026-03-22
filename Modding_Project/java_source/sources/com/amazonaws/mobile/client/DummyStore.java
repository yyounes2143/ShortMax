package com.amazonaws.mobile.client;

import java.util.Map;
/* loaded from: classes2.dex */
final class DummyStore implements KeyValueStore {
    private void d() {
        throw new IllegalStateException("AWSMobileClient has not been initialized yet.");
    }

    @Override // com.amazonaws.mobile.client.KeyValueStore
    public void a(String str, String str2) {
        d();
    }

    @Override // com.amazonaws.mobile.client.KeyValueStore
    public void b(Map<String, String> map) {
        d();
    }

    @Override // com.amazonaws.mobile.client.KeyValueStore
    public Map<String, String> c(String... strArr) {
        d();
        return null;
    }

    @Override // com.amazonaws.mobile.client.KeyValueStore
    public String get(String str) {
        d();
        return null;
    }
}
