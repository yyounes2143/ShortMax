package ai.turbolink.sdk.request;

import ai.turbolink.sdk.TurboLink;
import ai.turbolink.sdk.helpers.AppPrefHelper;
import ai.turbolink.sdk.utils.TurboLinkCode;
import ai.turbolink.sdk.utils.TurboLinkLogger;
import android.content.Context;
import gt.g;
import gt.q0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.concurrent.Semaphore;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ServerRequestAsyncQueue.kt */
@Metadata
/* loaded from: classes.dex */
public final class ServerRequestAsyncQueue {
    private static final int QUEUE_MAX_ITEM = 25;
    private static ServerRequestAsyncQueue requestQueueInstance;
    private int _currentRequestNetworkCount;
    @NotNull
    private List<ServerRequest> queue;
    @NotNull
    private final Semaphore serverSemaphore;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static Object queueLockObject = new Object();

    /* compiled from: ServerRequestAsyncQueue.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ServerRequestAsyncQueue getInstance(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            synchronized (Reflection.getOrCreateKotlinClass(ServerRequestAsyncQueue.class)) {
                ServerRequestAsyncQueue.requestQueueInstance = new ServerRequestAsyncQueue(context);
                Unit unit = Unit.f60915a;
            }
            ServerRequestAsyncQueue serverRequestAsyncQueue = ServerRequestAsyncQueue.requestQueueInstance;
            if (serverRequestAsyncQueue == null) {
                Intrinsics.throwUninitializedPropertyAccessException("requestQueueInstance");
                return null;
            }
            return serverRequestAsyncQueue;
        }

        private Companion() {
        }
    }

    public ServerRequestAsyncQueue(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.serverSemaphore = new Semaphore(1);
        this.queue = findQueue();
    }

    private final void executeTurboLinkTask(ServerRequest serverRequest, int i10) {
        g.d(i.a(q0.b()), null, null, new ServerRequestAsyncQueue$executeTurboLinkTask$1(serverRequest, this, null), 3, null);
    }

    private final List<ServerRequest> findQueue() {
        List<ServerRequest> synchronizedList = Collections.synchronizedList(new ArrayList());
        Intrinsics.checkNotNullExpressionValue(synchronizedList, "synchronizedList(ArrayList())");
        return synchronizedList;
    }

    private final void manualInsert(ServerRequest serverRequest) {
        if (getSize() >= 25) {
            return;
        }
        synchronized (queueLockObject) {
            try {
                this.queue.add(serverRequest);
            } catch (IndexOutOfBoundsException e10) {
                TurboLinkLogger.d("Add request to queue raise exception " + e10.getMessage());
                Unit unit = Unit.f60915a;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onExecuteFailed(ServerRequest serverRequest, ServerResponse serverResponse, int i10) {
        TurboLinkLogger.v("onExecuteFailed " + serverResponse.getMessage());
        int code = TurboLinkCode.ERROR_GATEWAY.getCode();
        serverRequest.handleFailure(code, "Network request error " + serverResponse.getMessage());
        remove(serverRequest);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onExecuteSuccess(ServerRequest serverRequest, ServerResponse serverResponse) {
        TurboLink companion;
        if (serverResponse.getResponseBody() == null) {
            serverRequest.handleFailure(TurboLinkCode.ERROR_GATEWAY.getCode(), "Response body is null.");
        } else if (serverResponse.getEventResponse().getCode() != TurboLinkCode.SUCCESS.getCode()) {
            serverRequest.handleFailure(serverResponse.getEventResponse().getCode(), serverResponse.getEventResponse().getMsg());
        } else {
            serverRequest.handleSuccess(serverResponse);
        }
        if ((serverRequest instanceof ServerRequestSession) && (companion = TurboLink.Companion.getInstance()) != null) {
            companion.setSessionInitState(TurboLink.SESSION_STATE.INITIALISED);
        }
        remove(serverRequest);
    }

    public final void clear() {
        synchronized (queueLockObject) {
            try {
                this.queue.clear();
            } catch (Exception e10) {
                TurboLinkLogger.d("Clear request queue raise exception " + e10.getMessage());
            }
            Unit unit = Unit.f60915a;
        }
    }

    @Nullable
    public final ServerRequest get() {
        ServerRequest serverRequest;
        synchronized (queueLockObject) {
            try {
                serverRequest = this.queue.get(0);
            } catch (IndexOutOfBoundsException e10) {
                TurboLinkLogger.d("Get request queue, IndexOutOfBoundsException " + e10.getMessage());
                serverRequest = null;
                Unit unit = Unit.f60915a;
                return serverRequest;
            } catch (NoSuchElementException e11) {
                TurboLinkLogger.d("Get request queue, NoSuchElementException " + e11.getMessage());
                serverRequest = null;
                Unit unit2 = Unit.f60915a;
                return serverRequest;
            }
            Unit unit22 = Unit.f60915a;
        }
        return serverRequest;
    }

    @Nullable
    public final ServerRequest getAt(int i10) {
        ServerRequest serverRequest;
        synchronized (queueLockObject) {
            try {
                serverRequest = this.queue.get(i10);
            } catch (IndexOutOfBoundsException e10) {
                TurboLinkLogger.d("Get request queue, IndexOutOfBoundsException " + e10.getMessage());
                serverRequest = null;
                Unit unit = Unit.f60915a;
                return serverRequest;
            } catch (NoSuchElementException e11) {
                TurboLinkLogger.d("Get request queue, NoSuchElementException " + e11.getMessage());
                serverRequest = null;
                Unit unit2 = Unit.f60915a;
                return serverRequest;
            }
            Unit unit22 = Unit.f60915a;
        }
        return serverRequest;
    }

    public final int getSize() {
        int size;
        synchronized (queueLockObject) {
            size = this.queue.size();
        }
        return size;
    }

    @Nullable
    public final ServerRequestSession getWhetherAutoInitialized() {
        synchronized (queueLockObject) {
            for (ServerRequest serverRequest : this.queue) {
                if (serverRequest instanceof ServerRequestSession) {
                    ServerRequestSession serverRequestSession = (ServerRequestSession) serverRequest;
                    if (serverRequestSession.getInitiatedByClient()) {
                        return serverRequestSession;
                    }
                }
            }
            Unit unit = Unit.f60915a;
            return null;
        }
    }

    public final int get_currentRequestNetworkCount() {
        return this._currentRequestNetworkCount;
    }

    public final void handleNewManualRequest(@NotNull ServerRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        TurboLinkLogger.d("HandleNewManualRequest " + request);
        manualInsert(request);
        processNextQueueTask();
    }

    public final void insert(@NotNull ServerRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        synchronized (queueLockObject) {
            try {
                this.queue.add(request);
            } catch (IndexOutOfBoundsException e10) {
                TurboLinkLogger.d("Add request to queue raise exception " + e10.getMessage());
                Unit unit = Unit.f60915a;
            }
        }
    }

    public final void processNextQueueTask() {
        try {
            this.serverSemaphore.acquire();
            if (getSize() > 0 && this._currentRequestNetworkCount == 0) {
                ServerRequest serverRequest = get();
                this._currentRequestNetworkCount = 1;
                this.serverSemaphore.release();
                if (serverRequest != null) {
                    TurboLinkLogger.d("ProcessNextQueueTask, request is:" + Reflection.getOrCreateKotlinClass(serverRequest.getClass()).getSimpleName());
                    executeTurboLinkTask(serverRequest, AppPrefHelper.Companion.getEXECUTE_TIMEOUT());
                } else {
                    this._currentRequestNetworkCount = 0;
                    remove(null);
                }
            } else {
                this.serverSemaphore.release();
            }
        } catch (Exception e10) {
            TurboLinkLogger.d("Processing queue request item raise exception " + e10.getMessage());
        }
    }

    public final boolean remove(@Nullable ServerRequest serverRequest) {
        boolean z10;
        synchronized (queueLockObject) {
            try {
                z10 = TypeIntrinsics.asMutableCollection(this.queue).remove(serverRequest);
            } catch (Exception e10) {
                TurboLinkLogger.d("Remove from queue raise exception " + e10.getMessage());
                z10 = false;
            }
            Unit unit = Unit.f60915a;
        }
        return z10;
    }

    public final void set_currentRequestNetworkCount(int i10) {
        this._currentRequestNetworkCount = i10;
    }

    private final void persistQueue() {
    }
}
