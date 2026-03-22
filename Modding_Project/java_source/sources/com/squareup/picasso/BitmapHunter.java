package com.squareup.picasso;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.NetworkInfo;
import com.squareup.picasso.NetworkRequestHandler;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.RequestHandler;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;
import okio.BufferedSource;
import okio.Okio;
import okio.Source;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes6.dex */
public class BitmapHunter implements Runnable {
    Action action;
    List<Action> actions;
    final Cache cache;
    final Request data;
    final Dispatcher dispatcher;
    Exception exception;
    int exifOrientation;
    Future<?> future;
    final String key;
    Picasso.LoadedFrom loadedFrom;
    final int memoryPolicy;
    int networkPolicy;
    final Picasso picasso;
    Picasso.Priority priority;
    final RequestHandler requestHandler;
    Bitmap result;
    int retryCount;
    final int sequence = SEQUENCE_GENERATOR.incrementAndGet();
    final Stats stats;
    private static final Object DECODE_LOCK = new Object();
    private static final ThreadLocal<StringBuilder> NAME_BUILDER = new ThreadLocal<StringBuilder>() { // from class: com.squareup.picasso.BitmapHunter.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public StringBuilder initialValue() {
            return new StringBuilder("Picasso-");
        }
    };
    private static final AtomicInteger SEQUENCE_GENERATOR = new AtomicInteger();
    private static final RequestHandler ERRORING_HANDLER = new RequestHandler() { // from class: com.squareup.picasso.BitmapHunter.2
        @Override // com.squareup.picasso.RequestHandler
        public boolean canHandleRequest(Request request) {
            return true;
        }

        @Override // com.squareup.picasso.RequestHandler
        public RequestHandler.Result load(Request request, int i10) throws IOException {
            throw new IllegalStateException("Unrecognized type of request: " + request);
        }
    };

    BitmapHunter(Picasso picasso, Dispatcher dispatcher, Cache cache, Stats stats, Action action, RequestHandler requestHandler) {
        this.picasso = picasso;
        this.dispatcher = dispatcher;
        this.cache = cache;
        this.stats = stats;
        this.action = action;
        this.key = action.getKey();
        this.data = action.getRequest();
        this.priority = action.getPriority();
        this.memoryPolicy = action.getMemoryPolicy();
        this.networkPolicy = action.getNetworkPolicy();
        this.requestHandler = requestHandler;
        this.retryCount = requestHandler.getRetryCount();
    }

    static Bitmap applyCustomTransformations(List<Transformation> list, Bitmap bitmap) {
        int size = list.size();
        int i10 = 0;
        while (i10 < size) {
            final Transformation transformation = list.get(i10);
            try {
                Bitmap transform = transformation.transform(bitmap);
                if (transform == null) {
                    final StringBuilder sb2 = new StringBuilder();
                    sb2.append("Transformation ");
                    sb2.append(transformation.key());
                    sb2.append(" returned null after ");
                    sb2.append(i10);
                    sb2.append(" previous transformation(s).\n\nTransformation list:\n");
                    for (Transformation transformation2 : list) {
                        sb2.append(transformation2.key());
                        sb2.append('\n');
                    }
                    Picasso.HANDLER.post(new Runnable() { // from class: com.squareup.picasso.BitmapHunter.4
                        @Override // java.lang.Runnable
                        public void run() {
                            throw new NullPointerException(sb2.toString());
                        }
                    });
                    return null;
                } else if (transform == bitmap && bitmap.isRecycled()) {
                    Picasso.HANDLER.post(new Runnable() { // from class: com.squareup.picasso.BitmapHunter.5
                        @Override // java.lang.Runnable
                        public void run() {
                            throw new IllegalStateException("Transformation " + Transformation.this.key() + " returned input Bitmap but recycled it.");
                        }
                    });
                    return null;
                } else if (transform != bitmap && !bitmap.isRecycled()) {
                    Picasso.HANDLER.post(new Runnable() { // from class: com.squareup.picasso.BitmapHunter.6
                        @Override // java.lang.Runnable
                        public void run() {
                            throw new IllegalStateException("Transformation " + Transformation.this.key() + " mutated input Bitmap but failed to recycle the original.");
                        }
                    });
                    return null;
                } else {
                    i10++;
                    bitmap = transform;
                }
            } catch (RuntimeException e10) {
                Picasso.HANDLER.post(new Runnable() { // from class: com.squareup.picasso.BitmapHunter.3
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new RuntimeException("Transformation " + Transformation.this.key() + " crashed with exception.", e10);
                    }
                });
                return null;
            }
        }
        return bitmap;
    }

    private Picasso.Priority computeNewPriority() {
        boolean z10;
        Picasso.Priority priority = Picasso.Priority.LOW;
        List<Action> list = this.actions;
        if (list != null && !list.isEmpty()) {
            z10 = true;
        } else {
            z10 = false;
        }
        Action action = this.action;
        if (action == null && !z10) {
            return priority;
        }
        if (action != null) {
            priority = action.getPriority();
        }
        if (z10) {
            int size = this.actions.size();
            for (int i10 = 0; i10 < size; i10++) {
                Picasso.Priority priority2 = this.actions.get(i10).getPriority();
                if (priority2.ordinal() > priority.ordinal()) {
                    priority = priority2;
                }
            }
        }
        return priority;
    }

    static Bitmap decodeStream(Source source, Request request) throws IOException {
        BufferedSource buffer = Okio.buffer(source);
        boolean isWebPFile = Utils.isWebPFile(buffer);
        boolean z10 = request.purgeable;
        BitmapFactory.Options createBitmapOptions = RequestHandler.createBitmapOptions(request);
        boolean requiresInSampleSize = RequestHandler.requiresInSampleSize(createBitmapOptions);
        if (!isWebPFile) {
            InputStream inputStream = buffer.inputStream();
            if (requiresInSampleSize) {
                MarkableInputStream markableInputStream = new MarkableInputStream(inputStream);
                markableInputStream.allowMarksToExpire(false);
                long savePosition = markableInputStream.savePosition(1024);
                BitmapFactory.decodeStream(markableInputStream, null, createBitmapOptions);
                RequestHandler.calculateInSampleSize(request.targetWidth, request.targetHeight, createBitmapOptions, request);
                markableInputStream.reset(savePosition);
                markableInputStream.allowMarksToExpire(true);
                inputStream = markableInputStream;
            }
            Bitmap decodeStream = BitmapFactory.decodeStream(inputStream, null, createBitmapOptions);
            if (decodeStream != null) {
                return decodeStream;
            }
            throw new IOException("Failed to decode stream.");
        }
        byte[] readByteArray = buffer.readByteArray();
        if (requiresInSampleSize) {
            BitmapFactory.decodeByteArray(readByteArray, 0, readByteArray.length, createBitmapOptions);
            RequestHandler.calculateInSampleSize(request.targetWidth, request.targetHeight, createBitmapOptions, request);
        }
        return BitmapFactory.decodeByteArray(readByteArray, 0, readByteArray.length, createBitmapOptions);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static BitmapHunter forRequest(Picasso picasso, Dispatcher dispatcher, Cache cache, Stats stats, Action action) {
        Request request = action.getRequest();
        List<RequestHandler> requestHandlers = picasso.getRequestHandlers();
        int size = requestHandlers.size();
        for (int i10 = 0; i10 < size; i10++) {
            RequestHandler requestHandler = requestHandlers.get(i10);
            if (requestHandler.canHandleRequest(request)) {
                return new BitmapHunter(picasso, dispatcher, cache, stats, action, requestHandler);
            }
        }
        return new BitmapHunter(picasso, dispatcher, cache, stats, action, ERRORING_HANDLER);
    }

    static int getExifRotation(int i10) {
        switch (i10) {
            case 3:
            case 4:
                return 180;
            case 5:
            case 6:
                return 90;
            case 7:
            case 8:
                return 270;
            default:
                return 0;
        }
    }

    static int getExifTranslation(int i10) {
        if (i10 != 2 && i10 != 7 && i10 != 4 && i10 != 5) {
            return 1;
        }
        return -1;
    }

    private static boolean shouldResize(boolean z10, int i10, int i11, int i12, int i13) {
        if (z10 && ((i12 == 0 || i10 <= i12) && (i13 == 0 || i11 <= i13))) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:94:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0254  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static android.graphics.Bitmap transformResult(com.squareup.picasso.Request r26, android.graphics.Bitmap r27, int r28) {
        /*
            Method dump skipped, instructions count: 598
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.picasso.BitmapHunter.transformResult(com.squareup.picasso.Request, android.graphics.Bitmap, int):android.graphics.Bitmap");
    }

    static void updateThreadName(Request request) {
        String name = request.getName();
        StringBuilder sb2 = NAME_BUILDER.get();
        sb2.ensureCapacity(name.length() + 8);
        sb2.replace(8, sb2.length(), name);
        Thread.currentThread().setName(sb2.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void attach(Action action) {
        boolean z10 = this.picasso.loggingEnabled;
        Request request = action.request;
        if (this.action == null) {
            this.action = action;
            if (z10) {
                List<Action> list = this.actions;
                if (list != null && !list.isEmpty()) {
                    Utils.log("Hunter", "joined", request.logId(), Utils.getLogIdsForHunter(this, "to "));
                    return;
                } else {
                    Utils.log("Hunter", "joined", request.logId(), "to empty hunter");
                    return;
                }
            }
            return;
        }
        if (this.actions == null) {
            this.actions = new ArrayList(3);
        }
        this.actions.add(action);
        if (z10) {
            Utils.log("Hunter", "joined", request.logId(), Utils.getLogIdsForHunter(this, "to "));
        }
        Picasso.Priority priority = action.getPriority();
        if (priority.ordinal() > this.priority.ordinal()) {
            this.priority = priority;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean cancel() {
        Future<?> future;
        if (this.action != null) {
            return false;
        }
        List<Action> list = this.actions;
        if ((list != null && !list.isEmpty()) || (future = this.future) == null || !future.cancel(false)) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void detach(Action action) {
        boolean z10;
        if (this.action == action) {
            this.action = null;
            z10 = true;
        } else {
            List<Action> list = this.actions;
            if (list != null) {
                z10 = list.remove(action);
            } else {
                z10 = false;
            }
        }
        if (z10 && action.getPriority() == this.priority) {
            this.priority = computeNewPriority();
        }
        if (this.picasso.loggingEnabled) {
            Utils.log("Hunter", "removed", action.request.logId(), Utils.getLogIdsForHunter(this, "from "));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Action getAction() {
        return this.action;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<Action> getActions() {
        return this.actions;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Request getData() {
        return this.data;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Exception getException() {
        return this.exception;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getKey() {
        return this.key;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Picasso.LoadedFrom getLoadedFrom() {
        return this.loadedFrom;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getMemoryPolicy() {
        return this.memoryPolicy;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Picasso getPicasso() {
        return this.picasso;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Picasso.Priority getPriority() {
        return this.priority;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bitmap getResult() {
        return this.result;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00cb A[Catch: all -> 0x00a5, TryCatch #1 {all -> 0x00a5, blocks: (B:36:0x0098, B:38:0x00a0, B:46:0x00c3, B:48:0x00cb, B:50:0x00d9, B:51:0x00e9, B:43:0x00a7, B:45:0x00b5), top: B:61:0x0098 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.Bitmap hunt() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.picasso.BitmapHunter.hunt():android.graphics.Bitmap");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isCancelled() {
        Future<?> future = this.future;
        if (future != null && future.isCancelled()) {
            return true;
        }
        return false;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            try {
                try {
                    try {
                        updateThreadName(this.data);
                        if (this.picasso.loggingEnabled) {
                            Utils.log("Hunter", "executing", Utils.getLogIdsForHunter(this));
                        }
                        Bitmap hunt = hunt();
                        this.result = hunt;
                        if (hunt == null) {
                            this.dispatcher.dispatchFailed(this);
                        } else {
                            this.dispatcher.dispatchComplete(this);
                        }
                    } catch (IOException e10) {
                        this.exception = e10;
                        this.dispatcher.dispatchRetry(this);
                    }
                } catch (NetworkRequestHandler.ResponseException e11) {
                    if (!NetworkPolicy.isOfflineOnly(e11.networkPolicy) || e11.code != 504) {
                        this.exception = e11;
                    }
                    this.dispatcher.dispatchFailed(this);
                }
            } catch (Exception e12) {
                this.exception = e12;
                this.dispatcher.dispatchFailed(this);
            } catch (OutOfMemoryError e13) {
                StringWriter stringWriter = new StringWriter();
                this.stats.createSnapshot().dump(new PrintWriter(stringWriter));
                this.exception = new RuntimeException(stringWriter.toString(), e13);
                this.dispatcher.dispatchFailed(this);
            }
            Thread.currentThread().setName("Picasso-Idle");
        } catch (Throwable th2) {
            Thread.currentThread().setName("Picasso-Idle");
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean shouldRetry(boolean z10, NetworkInfo networkInfo) {
        int i10 = this.retryCount;
        if (i10 > 0) {
            this.retryCount = i10 - 1;
            return this.requestHandler.shouldRetry(z10, networkInfo);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean supportsReplay() {
        return this.requestHandler.supportsReplay();
    }
}
