package com.amazonaws.mobileconnectors.s3.transferutility;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.amazonaws.event.ProgressEvent;
import com.amazonaws.event.ProgressListener;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.mobileconnectors.s3.transferutility.TransferObserver;
import java.io.File;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class TransferStatusUpdater {

    /* renamed from: d  reason: collision with root package name */
    private static final Log f5701d = LogFactory.b(TransferStatusUpdater.class);

    /* renamed from: e  reason: collision with root package name */
    private static final HashSet<TransferState> f5702e = new HashSet<>(Arrays.asList(TransferState.PART_COMPLETED, TransferState.PENDING_CANCEL, TransferState.PENDING_PAUSE, TransferState.PENDING_NETWORK_DISCONNECT));

    /* renamed from: f  reason: collision with root package name */
    static final Map<Integer, List<TransferListener>> f5703f = new ConcurrentHashMap<Integer, List<TransferListener>>() { // from class: com.amazonaws.mobileconnectors.s3.transferutility.TransferStatusUpdater.1
    };

    /* renamed from: g  reason: collision with root package name */
    private static TransferDBUtil f5704g;

    /* renamed from: h  reason: collision with root package name */
    private static TransferStatusUpdater f5705h;

    /* renamed from: a  reason: collision with root package name */
    private final Map<Integer, TransferRecord> f5706a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f5707b;

    /* renamed from: c  reason: collision with root package name */
    private Context f5708c;

    /* loaded from: classes2.dex */
    private class TransferProgressListener implements ProgressListener {

        /* renamed from: a  reason: collision with root package name */
        private final TransferRecord f5722a;

        /* renamed from: b  reason: collision with root package name */
        private long f5723b;

        public TransferProgressListener(TransferRecord transferRecord) {
            this.f5722a = transferRecord;
        }

        @Override // com.amazonaws.event.ProgressListener
        public synchronized void a(ProgressEvent progressEvent) {
            try {
                if (32 == progressEvent.b()) {
                    TransferStatusUpdater.f5701d.j("Reset Event triggered. Resetting the bytesCurrent to 0.");
                    this.f5723b = 0L;
                } else {
                    long a10 = this.f5723b + progressEvent.a();
                    this.f5723b = a10;
                    TransferRecord transferRecord = this.f5722a;
                    if (a10 > transferRecord.f5676i) {
                        transferRecord.f5676i = a10;
                        TransferStatusUpdater.this.k(transferRecord.f5668a, a10, transferRecord.f5675h, true);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    TransferStatusUpdater(TransferDBUtil transferDBUtil, Context context) {
        f5704g = transferDBUtil;
        this.f5708c = context;
        this.f5707b = new Handler(Looper.getMainLooper());
        this.f5706a = new ConcurrentHashMap();
    }

    public static synchronized TransferStatusUpdater c(Context context) {
        TransferStatusUpdater transferStatusUpdater;
        synchronized (TransferStatusUpdater.class) {
            try {
                if (f5705h == null) {
                    TransferDBUtil transferDBUtil = new TransferDBUtil(context);
                    f5704g = transferDBUtil;
                    f5705h = new TransferStatusUpdater(transferDBUtil, context);
                }
                transferStatusUpdater = f5705h;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return transferStatusUpdater;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void g(int i10, TransferListener transferListener) {
        if (transferListener != null) {
            Map<Integer, List<TransferListener>> map = f5703f;
            synchronized (map) {
                try {
                    List<TransferListener> list = map.get(Integer.valueOf(i10));
                    if (list == null) {
                        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
                        copyOnWriteArrayList.add(transferListener);
                        map.put(Integer.valueOf(i10), copyOnWriteArrayList);
                    } else if (!list.contains(transferListener)) {
                        list.add(transferListener);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return;
        }
        throw new IllegalArgumentException("Listener can't be null");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void j(int i10, TransferListener transferListener) {
        if (transferListener != null) {
            Map<Integer, List<TransferListener>> map = f5703f;
            synchronized (map) {
                try {
                    List<TransferListener> list = map.get(Integer.valueOf(i10));
                    if (list != null && !list.isEmpty()) {
                        list.remove(transferListener);
                        return;
                    }
                    return;
                } finally {
                }
            }
        }
        throw new IllegalArgumentException("Listener can't be null");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void b(TransferRecord transferRecord) {
        this.f5706a.put(Integer.valueOf(transferRecord.f5668a), transferRecord);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized TransferRecord d(int i10) {
        return this.f5706a.get(Integer.valueOf(i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized Map<Integer, TransferRecord> e() {
        return Collections.unmodifiableMap(this.f5706a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized ProgressListener f(int i10) {
        TransferRecord d10;
        d10 = d(i10);
        if (d10 != null) {
            Log log = f5701d;
            log.j("Creating a new progress listener for transfer: " + i10);
        } else {
            Log log2 = f5701d;
            log2.j("TransferStatusUpdater doesn't track the transfer: " + i10);
            throw new IllegalArgumentException("transfer " + i10 + " doesn't exist");
        }
        return new TransferProgressListener(d10);
    }

    synchronized void h(int i10) {
        try {
            TransferRecord j10 = f5704g.j(i10);
            if (j10 != null) {
                String str = j10.f5686s;
                if (new File(str).getName().startsWith("aws-s3-d861b25a-1edf-11eb-adc1-0242ac120002")) {
                    new File(str).delete();
                }
            }
            S3ClientReference.c(Integer.valueOf(i10));
            f5704g.c(i10);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i(final int i10, final Exception exc) {
        Map<Integer, List<TransferListener>> map = f5703f;
        synchronized (map) {
            try {
                List<TransferListener> list = map.get(Integer.valueOf(i10));
                if (list != null && !list.isEmpty()) {
                    for (final TransferListener transferListener : list) {
                        this.f5707b.post(new Runnable() { // from class: com.amazonaws.mobileconnectors.s3.transferutility.TransferStatusUpdater.4
                            @Override // java.lang.Runnable
                            public void run() {
                                transferListener.b(i10, exc);
                            }
                        });
                    }
                }
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void k(final int i10, final long j10, final long j11, boolean z10) {
        try {
            TransferRecord transferRecord = this.f5706a.get(Integer.valueOf(i10));
            if (transferRecord != null) {
                transferRecord.f5676i = j10;
                transferRecord.f5675h = j11;
            }
            f5704g.p(i10, j10);
            if (!z10) {
                return;
            }
            Map<Integer, List<TransferListener>> map = f5703f;
            synchronized (map) {
                List<TransferListener> list = map.get(Integer.valueOf(i10));
                if (list != null && !list.isEmpty()) {
                    for (Iterator<TransferListener> it = list.iterator(); it.hasNext(); it = it) {
                        final TransferListener next = it.next();
                        this.f5707b.post(new Runnable() { // from class: com.amazonaws.mobileconnectors.s3.transferutility.TransferStatusUpdater.3
                            @Override // java.lang.Runnable
                            public void run() {
                                next.a(i10, j10, j11);
                            }
                        });
                    }
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void l(final int i10, final TransferState transferState) {
        try {
            boolean contains = f5702e.contains(transferState);
            TransferRecord transferRecord = this.f5706a.get(Integer.valueOf(i10));
            if (transferRecord == null) {
                if (f5704g.s(i10, transferState) == 0) {
                    Log log = f5701d;
                    log.g("Failed to update the status of transfer " + i10);
                }
            } else {
                contains |= transferState.equals(transferRecord.f5682o);
                transferRecord.f5682o = transferState;
                if (f5704g.t(transferRecord) == 0) {
                    Log log2 = f5701d;
                    log2.g("Failed to update the status of transfer " + i10);
                }
            }
            if (contains) {
                return;
            }
            if (TransferState.COMPLETED.equals(transferState)) {
                h(i10);
            }
            Map<Integer, List<TransferListener>> map = f5703f;
            synchronized (map) {
                List<TransferListener> list = map.get(Integer.valueOf(i10));
                if (list != null && !list.isEmpty()) {
                    for (final TransferListener transferListener : list) {
                        if (transferListener instanceof TransferObserver.TransferStatusListener) {
                            transferListener.c(i10, transferState);
                        } else {
                            this.f5707b.post(new Runnable() { // from class: com.amazonaws.mobileconnectors.s3.transferutility.TransferStatusUpdater.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    transferListener.c(i10, transferState);
                                }
                            });
                        }
                    }
                    if (TransferState.isFinalState(transferState)) {
                        list.clear();
                    }
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
