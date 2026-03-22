package com.ss.ttvideoengine.database;
/* loaded from: classes6.dex */
public interface IKVStorageProvider {
    default IKVStorage getKVStorage(String str) {
        throw new UnsupportedOperationException("Not implemented on this provider");
    }
}
