package androidx.room;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.util.Log;
import androidx.room.IMultiInstanceInvalidationService;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: MultiInstanceInvalidationService.android.kt */
@ExperimentalRoomApi
@Metadata
/* loaded from: classes2.dex */
public final class MultiInstanceInvalidationService extends Service {
    private int maxClientId;
    @NotNull
    private final Map<Integer, String> clientNames = new LinkedHashMap();
    @NotNull
    private final RemoteCallbackList<IMultiInstanceInvalidationCallback> callbackList = new RemoteCallbackList<IMultiInstanceInvalidationCallback>() { // from class: androidx.room.MultiInstanceInvalidationService$callbackList$1
        @Override // android.os.RemoteCallbackList
        public void onCallbackDied(IMultiInstanceInvalidationCallback callback, Object cookie) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            Intrinsics.checkNotNullParameter(cookie, "cookie");
            MultiInstanceInvalidationService.this.getClientNames$room_runtime().remove((Integer) cookie);
        }
    };
    @NotNull
    private final IMultiInstanceInvalidationService.Stub binder = new IMultiInstanceInvalidationService.Stub() { // from class: androidx.room.MultiInstanceInvalidationService$binder$1
        @Override // androidx.room.IMultiInstanceInvalidationService
        public void broadcastInvalidation(int i10, String[] tables) {
            Intrinsics.checkNotNullParameter(tables, "tables");
            RemoteCallbackList<IMultiInstanceInvalidationCallback> callbackList$room_runtime = MultiInstanceInvalidationService.this.getCallbackList$room_runtime();
            MultiInstanceInvalidationService multiInstanceInvalidationService = MultiInstanceInvalidationService.this;
            synchronized (callbackList$room_runtime) {
                String str = multiInstanceInvalidationService.getClientNames$room_runtime().get(Integer.valueOf(i10));
                if (str == null) {
                    Log.w(Room.LOG_TAG, "Remote invalidation client ID not registered");
                    return;
                }
                int beginBroadcast = multiInstanceInvalidationService.getCallbackList$room_runtime().beginBroadcast();
                for (int i11 = 0; i11 < beginBroadcast; i11++) {
                    Object broadcastCookie = multiInstanceInvalidationService.getCallbackList$room_runtime().getBroadcastCookie(i11);
                    Intrinsics.checkNotNull(broadcastCookie, "null cannot be cast to non-null type kotlin.Int");
                    Integer num = (Integer) broadcastCookie;
                    int intValue = num.intValue();
                    String str2 = multiInstanceInvalidationService.getClientNames$room_runtime().get(num);
                    if (i10 != intValue && Intrinsics.areEqual(str, str2)) {
                        try {
                            multiInstanceInvalidationService.getCallbackList$room_runtime().getBroadcastItem(i11).onInvalidation(tables);
                            Unit unit = Unit.f60915a;
                        } catch (RemoteException e10) {
                            Log.w(Room.LOG_TAG, "Error invoking a remote callback", e10);
                        }
                    }
                }
                multiInstanceInvalidationService.getCallbackList$room_runtime().finishBroadcast();
                Unit unit2 = Unit.f60915a;
            }
        }

        @Override // androidx.room.IMultiInstanceInvalidationService
        public int registerCallback(IMultiInstanceInvalidationCallback callback, String str) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            int i10 = 0;
            if (str == null) {
                return 0;
            }
            RemoteCallbackList<IMultiInstanceInvalidationCallback> callbackList$room_runtime = MultiInstanceInvalidationService.this.getCallbackList$room_runtime();
            MultiInstanceInvalidationService multiInstanceInvalidationService = MultiInstanceInvalidationService.this;
            synchronized (callbackList$room_runtime) {
                try {
                    multiInstanceInvalidationService.setMaxClientId$room_runtime(multiInstanceInvalidationService.getMaxClientId$room_runtime() + 1);
                    int maxClientId$room_runtime = multiInstanceInvalidationService.getMaxClientId$room_runtime();
                    if (multiInstanceInvalidationService.getCallbackList$room_runtime().register(callback, Integer.valueOf(maxClientId$room_runtime))) {
                        multiInstanceInvalidationService.getClientNames$room_runtime().put(Integer.valueOf(maxClientId$room_runtime), str);
                        i10 = maxClientId$room_runtime;
                    } else {
                        multiInstanceInvalidationService.setMaxClientId$room_runtime(multiInstanceInvalidationService.getMaxClientId$room_runtime() - 1);
                        multiInstanceInvalidationService.getMaxClientId$room_runtime();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return i10;
        }

        @Override // androidx.room.IMultiInstanceInvalidationService
        public void unregisterCallback(IMultiInstanceInvalidationCallback callback, int i10) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            RemoteCallbackList<IMultiInstanceInvalidationCallback> callbackList$room_runtime = MultiInstanceInvalidationService.this.getCallbackList$room_runtime();
            MultiInstanceInvalidationService multiInstanceInvalidationService = MultiInstanceInvalidationService.this;
            synchronized (callbackList$room_runtime) {
                multiInstanceInvalidationService.getCallbackList$room_runtime().unregister(callback);
                multiInstanceInvalidationService.getClientNames$room_runtime().remove(Integer.valueOf(i10));
            }
        }
    };

    @NotNull
    public final RemoteCallbackList<IMultiInstanceInvalidationCallback> getCallbackList$room_runtime() {
        return this.callbackList;
    }

    @NotNull
    public final Map<Integer, String> getClientNames$room_runtime() {
        return this.clientNames;
    }

    public final int getMaxClientId$room_runtime() {
        return this.maxClientId;
    }

    @Override // android.app.Service
    @NotNull
    public IBinder onBind(@NotNull Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        return this.binder;
    }

    public final void setMaxClientId$room_runtime(int i10) {
        this.maxClientId = i10;
    }
}
