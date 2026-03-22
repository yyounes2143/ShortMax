package com.unity3d.services.core.device;

import com.unity3d.services.core.device.StorageManager;
import kotlin.Metadata;
/* compiled from: InMemoryStorage.kt */
@Metadata
/* loaded from: classes7.dex */
public final class InMemoryStorage extends Storage {
    public InMemoryStorage() {
        super("", StorageManager.StorageType.MEMORY);
    }

    @Override // com.unity3d.services.core.device.Storage
    public synchronized boolean clearStorage() {
        clearData();
        return true;
    }

    @Override // com.unity3d.services.core.device.Storage
    public synchronized boolean readStorage() {
        return true;
    }

    @Override // com.unity3d.services.core.device.Storage
    public synchronized boolean writeStorage() {
        return true;
    }
}
