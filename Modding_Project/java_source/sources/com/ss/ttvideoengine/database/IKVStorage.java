package com.ss.ttvideoengine.database;
/* loaded from: classes6.dex */
public interface IKVStorage {
    default boolean clear() {
        throw new UnsupportedOperationException("Not implemented on this kv store");
    }

    default String getString(String str) {
        throw new UnsupportedOperationException("Not implemented on this kv store");
    }

    default boolean putString(String str, String str2) {
        throw new UnsupportedOperationException("Not implemented on this kv store");
    }

    default boolean removeString(String str) {
        throw new UnsupportedOperationException("Not implemented on this kv store");
    }
}
