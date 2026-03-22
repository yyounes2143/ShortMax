package com.unity3d.services.core.device;

import com.unity3d.services.core.device.StorageManager;
import com.unity3d.services.core.log.DeviceLog;
import com.unity3d.services.core.misc.JsonStorage;
import com.unity3d.services.core.misc.Utilities;
import com.unity3d.services.core.webview.WebViewApp;
import com.unity3d.services.core.webview.WebViewEventCategory;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import kotlinx.coroutines.flow.o;
import kt.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: Storage.kt */
@Metadata
@SourceDebugExtension({"SMAP\nStorage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Storage.kt\ncom/unity3d/services/core/device/Storage\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,98:1\n1855#2,2:99\n*S KotlinDebug\n*F\n+ 1 Storage.kt\ncom/unity3d/services/core/device/Storage\n*L\n76#1:99,2\n*E\n"})
/* loaded from: classes7.dex */
public class Storage extends JsonStorage {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final e<List<Function1<StorageEventInfo, Unit>>> onStorageEventCallbacks = o.a(CollectionsKt.n());
    @NotNull
    private final String _targetFileName;
    @NotNull
    private final StorageManager.StorageType type;

    /* compiled from: Storage.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nStorage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Storage.kt\ncom/unity3d/services/core/device/Storage$Companion\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,98:1\n230#2,5:99\n230#2,5:104\n*S KotlinDebug\n*F\n+ 1 Storage.kt\ncom/unity3d/services/core/device/Storage$Companion\n*L\n94#1:99,5\n95#1:104,5\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void addStorageEventCallback(@NotNull Function1<? super StorageEventInfo, Unit> callback) {
            Object value;
            Intrinsics.checkNotNullParameter(callback, "callback");
            e eVar = Storage.onStorageEventCallbacks;
            do {
                value = eVar.getValue();
            } while (!eVar.b(value, CollectionsKt.L0((List) value, callback)));
        }

        public final void removeStorageEventCallback(@NotNull Function1<? super StorageEventInfo, Unit> callback) {
            Object value;
            Intrinsics.checkNotNullParameter(callback, "callback");
            e eVar = Storage.onStorageEventCallbacks;
            do {
                value = eVar.getValue();
            } while (!eVar.b(value, CollectionsKt.I0((List) value, callback)));
        }

        private Companion() {
        }
    }

    public Storage(@NotNull String _targetFileName, @NotNull StorageManager.StorageType type) {
        Intrinsics.checkNotNullParameter(_targetFileName, "_targetFileName");
        Intrinsics.checkNotNullParameter(type, "type");
        this._targetFileName = _targetFileName;
        this.type = type;
    }

    public synchronized boolean clearStorage() {
        clearData();
        return new File(this._targetFileName).delete();
    }

    @NotNull
    public final StorageManager.StorageType getType() {
        return this.type;
    }

    public final synchronized boolean initStorage() {
        readStorage();
        super.initData();
        return true;
    }

    public synchronized boolean readStorage() {
        byte[] readFileBytes;
        boolean z10 = false;
        try {
            try {
                readFileBytes = Utilities.readFileBytes(new File(this._targetFileName));
            } catch (FileNotFoundException e10) {
                DeviceLog.debug("Storage JSON file not found in local cache:", e10);
            }
        } catch (Exception e11) {
            DeviceLog.debug("Failed to read storage JSON file:", e11);
        }
        if (readFileBytes == null) {
            return false;
        }
        setData(new JSONObject(new String(readFileBytes, Charsets.UTF_8)));
        z10 = true;
        return z10;
    }

    public final synchronized void sendEvent(@Nullable StorageEvent storageEvent, @Nullable Object obj) {
        boolean z10;
        List<Function1<StorageEventInfo, Unit>> value = onStorageEventCallbacks.getValue();
        if (!value.isEmpty()) {
            Intrinsics.checkNotNull(storageEvent);
            StorageEventInfo storageEventInfo = new StorageEventInfo(storageEvent, this.type, obj);
            Iterator<T> it = value.iterator();
            while (it.hasNext()) {
                ((Function1) it.next()).invoke(storageEventInfo);
            }
            return;
        }
        if (WebViewApp.getCurrentApp() != null) {
            z10 = WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.STORAGE, storageEvent, this.type.name(), obj);
        } else {
            z10 = false;
        }
        if (!z10) {
            DeviceLog.debug("Couldn't send storage event to WebApp");
        }
    }

    public final synchronized boolean storageFileExists() {
        return new File(this._targetFileName).exists();
    }

    public synchronized boolean writeStorage() {
        File file = new File(this._targetFileName);
        if (getData() != null) {
            return Utilities.writeFile(file, getData().toString());
        }
        return false;
    }
}
