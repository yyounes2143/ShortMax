package io.bidmachine.core;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.browser.trusted.sharing.ShareTarget;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
/* loaded from: classes7.dex */
public abstract class NetworkRequest<RequestDataType, RequestResultType, ErrorResultType> {
    @NonNull
    private static final cr.c TASK_MANAGER = new dr.a();
    @Nullable
    private b<RequestResultType, ErrorResultType> callback;
    @Nullable
    private c cancelCallback;
    @Nullable
    private ArrayList<g<RequestDataType, RequestResultType, ErrorResultType>> contentEncoders;
    @Nullable
    private URLConnection currentConnection;
    private State currentState = State.Idle;
    @Nullable
    private f<RequestDataType, RequestResultType, ErrorResultType> dataBinder;
    @Nullable
    private ArrayList<g<RequestDataType, RequestResultType, ErrorResultType>> dataEncoders;
    @Nullable
    private ErrorResultType errorResult;
    @NonNull
    private final Method method;
    @Nullable
    private final String path;
    @Nullable
    private final RequestDataType requestData;
    @Nullable
    private RequestResultType requestResult;

    /* loaded from: classes7.dex */
    public enum Method {
        Get(ShareTarget.METHOD_GET),
        Post(ShareTarget.METHOD_POST);
        
        private final String methodString;

        Method(@NonNull String str) {
            this.methodString = str;
        }

        public void apply(URLConnection uRLConnection) throws ProtocolException {
            if (uRLConnection instanceof HttpURLConnection) {
                ((HttpURLConnection) uRLConnection).setRequestMethod(this.methodString);
            }
        }
    }

    /* loaded from: classes7.dex */
    public enum State {
        Idle,
        Running,
        Success,
        Fail,
        Canceled
    }

    /* loaded from: classes7.dex */
    public interface b<RequestResultType, ErrorResultType> {
        void a(@Nullable ErrorResultType errorresulttype);

        void onSuccess(@Nullable RequestResultType requestresulttype);
    }

    /* loaded from: classes7.dex */
    public interface c {
        void onCanceled();
    }

    /* loaded from: classes7.dex */
    public static class d<RequestDataType, RequestResultType, ErrorResultType> extends g<RequestDataType, RequestResultType, ErrorResultType> {
        @Override // io.bidmachine.core.NetworkRequest.g
        protected byte[] a(NetworkRequest<RequestDataType, RequestResultType, ErrorResultType> networkRequest, URLConnection uRLConnection, byte[] bArr) throws Exception {
            GZIPInputStream gZIPInputStream;
            ByteArrayInputStream byteArrayInputStream;
            Throwable th2;
            ByteArrayOutputStream byteArrayOutputStream;
            if ("gzip".equals(uRLConnection.getContentEncoding())) {
                try {
                    byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        byteArrayInputStream = new ByteArrayInputStream(bArr);
                        try {
                            gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
                            try {
                                byte[] bArr2 = new byte[1024];
                                while (true) {
                                    int read = gZIPInputStream.read(bArr2);
                                    if (read != -1) {
                                        byteArrayOutputStream.write(bArr2, 0, read);
                                    } else {
                                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                                        io.bidmachine.core.g.p(byteArrayOutputStream);
                                        io.bidmachine.core.g.j(byteArrayOutputStream);
                                        io.bidmachine.core.g.j(byteArrayInputStream);
                                        io.bidmachine.core.g.j(gZIPInputStream);
                                        return byteArray;
                                    }
                                }
                            } catch (Throwable th3) {
                                th2 = th3;
                                io.bidmachine.core.g.p(byteArrayOutputStream);
                                io.bidmachine.core.g.j(byteArrayOutputStream);
                                io.bidmachine.core.g.j(byteArrayInputStream);
                                io.bidmachine.core.g.j(gZIPInputStream);
                                throw th2;
                            }
                        } catch (Throwable th4) {
                            gZIPInputStream = null;
                            th2 = th4;
                        }
                    } catch (Throwable th5) {
                        byteArrayInputStream = null;
                        th2 = th5;
                        gZIPInputStream = null;
                    }
                } catch (Throwable th6) {
                    gZIPInputStream = null;
                    byteArrayInputStream = null;
                    th2 = th6;
                    byteArrayOutputStream = null;
                }
            } else {
                return bArr;
            }
        }

        @Override // io.bidmachine.core.NetworkRequest.g
        protected byte[] b(NetworkRequest<RequestDataType, RequestResultType, ErrorResultType> networkRequest, URLConnection uRLConnection, byte[] bArr) throws Exception {
            GZIPOutputStream gZIPOutputStream;
            ByteArrayOutputStream byteArrayOutputStream = null;
            try {
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                try {
                    gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream2);
                } catch (Throwable th2) {
                    th = th2;
                    gZIPOutputStream = null;
                }
                try {
                    gZIPOutputStream.write(bArr);
                    io.bidmachine.core.g.j(gZIPOutputStream);
                    byte[] byteArray = byteArrayOutputStream2.toByteArray();
                    io.bidmachine.core.g.p(byteArrayOutputStream2);
                    io.bidmachine.core.g.j(byteArrayOutputStream2);
                    io.bidmachine.core.g.p(null);
                    io.bidmachine.core.g.j(null);
                    return byteArray;
                } catch (Throwable th3) {
                    th = th3;
                    byteArrayOutputStream = byteArrayOutputStream2;
                    io.bidmachine.core.g.p(byteArrayOutputStream);
                    io.bidmachine.core.g.j(byteArrayOutputStream);
                    io.bidmachine.core.g.p(gZIPOutputStream);
                    io.bidmachine.core.g.j(gZIPOutputStream);
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                gZIPOutputStream = null;
            }
        }

        @Override // io.bidmachine.core.NetworkRequest.g
        protected void c(NetworkRequest<RequestDataType, RequestResultType, ErrorResultType> networkRequest, URLConnection uRLConnection) {
            uRLConnection.setRequestProperty("Accept-Encoding", "gzip");
            uRLConnection.setRequestProperty("Content-Encoding", "gzip");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public final class e implements Runnable {
        private e() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            NetworkRequest.this.process();
            if (NetworkRequest.this.callback != null && !NetworkRequest.this.isCanceled()) {
                if (NetworkRequest.this.currentState == State.Success) {
                    NetworkRequest.this.callback.onSuccess(NetworkRequest.this.requestResult);
                } else {
                    NetworkRequest.this.callback.a(NetworkRequest.this.errorResult);
                }
            }
        }
    }

    public NetworkRequest(@NonNull Method method, @Nullable String str, @Nullable RequestDataType requestdatatype) {
        this.method = method;
        this.path = str;
        this.requestData = requestdatatype;
    }

    private InputStream obtainErrorStream(URLConnection uRLConnection) {
        if (uRLConnection instanceof HttpURLConnection) {
            return ((HttpURLConnection) uRLConnection).getErrorStream();
        }
        return null;
    }

    private int obtainResponseCode(URLConnection uRLConnection) throws IOException {
        if (uRLConnection instanceof HttpURLConnection) {
            return ((HttpURLConnection) uRLConnection).getResponseCode();
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:116:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0116, code lost:
        if (r8.errorResult == null) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0118, code lost:
        r0 = io.bidmachine.core.NetworkRequest.State.Success;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x011b, code lost:
        r0 = io.bidmachine.core.NetworkRequest.State.Fail;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x011d, code lost:
        r8.currentState = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x014b, code lost:
        if (r8.errorResult == null) goto L52;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void process() {
        /*
            Method dump skipped, instructions count: 365
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.core.NetworkRequest.process():void");
    }

    public void addContentEncoder(g<RequestDataType, RequestResultType, ErrorResultType> gVar) {
        if (this.contentEncoders == null) {
            this.contentEncoders = new ArrayList<>();
        }
        this.contentEncoders.add(gVar);
    }

    public void addDataEncoder(g<RequestDataType, RequestResultType, ErrorResultType> gVar) {
        if (this.dataEncoders == null) {
            this.dataEncoders = new ArrayList<>();
        }
        this.dataEncoders.add(gVar);
    }

    public void cancel() {
        this.currentState = State.Canceled;
        c cVar = this.cancelCallback;
        if (cVar != null) {
            cVar.onCanceled();
        }
    }

    protected byte[] decodeResponseData(URLConnection uRLConnection, byte[] bArr) throws Exception {
        ArrayList<g<RequestDataType, RequestResultType, ErrorResultType>> arrayList = this.contentEncoders;
        if (arrayList != null) {
            Iterator<g<RequestDataType, RequestResultType, ErrorResultType>> it = arrayList.iterator();
            while (it.hasNext()) {
                bArr = it.next().a(this, uRLConnection, bArr);
            }
        }
        ArrayList<g<RequestDataType, RequestResultType, ErrorResultType>> arrayList2 = this.dataEncoders;
        if (arrayList2 != null) {
            Iterator<g<RequestDataType, RequestResultType, ErrorResultType>> it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                bArr = it2.next().a(this, uRLConnection, bArr);
            }
        }
        return bArr;
    }

    protected byte[] encodeRequestData(URLConnection uRLConnection, byte[] bArr) throws Exception {
        ArrayList<g<RequestDataType, RequestResultType, ErrorResultType>> arrayList = this.dataEncoders;
        if (arrayList != null) {
            Iterator<g<RequestDataType, RequestResultType, ErrorResultType>> it = arrayList.iterator();
            while (it.hasNext()) {
                g<RequestDataType, RequestResultType, ErrorResultType> next = it.next();
                next.c(this, uRLConnection);
                bArr = next.b(this, uRLConnection, bArr);
            }
        }
        ArrayList<g<RequestDataType, RequestResultType, ErrorResultType>> arrayList2 = this.contentEncoders;
        if (arrayList2 != null) {
            Iterator<g<RequestDataType, RequestResultType, ErrorResultType>> it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                g<RequestDataType, RequestResultType, ErrorResultType> next2 = it2.next();
                next2.c(this, uRLConnection);
                bArr = next2.b(this, uRLConnection, bArr);
            }
        }
        return bArr;
    }

    protected String getBaseUrl() throws Exception {
        return "TODO: implement url";
    }

    @NonNull
    public Method getMethod() {
        return this.method;
    }

    @Nullable
    public String getPath() {
        return this.path;
    }

    public boolean isCanceled() {
        if (this.currentState == State.Canceled) {
            return true;
        }
        return false;
    }

    @NonNull
    protected abstract ErrorResultType obtainError(@Nullable URLConnection uRLConnection, int i10);

    @NonNull
    protected abstract ErrorResultType obtainError(@Nullable URLConnection uRLConnection, @Nullable Throwable th2);

    protected byte[] obtainRequestData(URLConnection uRLConnection) throws Exception {
        f<RequestDataType, RequestResultType, ErrorResultType> fVar = this.dataBinder;
        if (fVar != null) {
            fVar.prepareRequest(this, uRLConnection);
            this.dataBinder.prepareHeaders(this, uRLConnection);
            return this.dataBinder.obtainData(this, uRLConnection, this.requestData);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void prepareRequestParams(URLConnection uRLConnection) {
        uRLConnection.setConnectTimeout(TTVideoEngineInterface.GLOBAL_PLAYER_OPTION_MIN);
        uRLConnection.setReadTimeout(TTVideoEngineInterface.GLOBAL_PLAYER_OPTION_MIN);
    }

    public void request() {
        request(TASK_MANAGER);
    }

    public void setCallback(@Nullable b<RequestResultType, ErrorResultType> bVar) {
        this.callback = bVar;
    }

    public void setCancelCallback(@Nullable c cVar) {
        this.cancelCallback = cVar;
    }

    public void setDataBinder(@Nullable f<RequestDataType, RequestResultType, ErrorResultType> fVar) {
        this.dataBinder = fVar;
    }

    public void request(@NonNull cr.c cVar) {
        try {
            cVar.execute(new e());
        } catch (Throwable th2) {
            io.bidmachine.core.a.m(th2);
            b<RequestResultType, ErrorResultType> bVar = this.callback;
            if (bVar != null) {
                bVar.a(obtainError((URLConnection) null, th2));
            }
        }
    }

    /* loaded from: classes7.dex */
    public static abstract class f<RequestDataType, RequestResultType, ErrorResultType> {
        protected ErrorResultType createFailResult(NetworkRequest<RequestDataType, RequestResultType, ErrorResultType> networkRequest, URLConnection uRLConnection, byte[] bArr) throws Exception {
            return null;
        }

        protected abstract RequestResultType createSuccessResult(NetworkRequest<RequestDataType, RequestResultType, ErrorResultType> networkRequest, URLConnection uRLConnection, byte[] bArr) throws Exception;

        @Nullable
        protected abstract byte[] obtainData(NetworkRequest<RequestDataType, RequestResultType, ErrorResultType> networkRequest, URLConnection uRLConnection, @Nullable RequestDataType requestdatatype) throws Exception;

        protected abstract void prepareHeaders(NetworkRequest<RequestDataType, RequestResultType, ErrorResultType> networkRequest, URLConnection uRLConnection);

        protected void prepareRequest(NetworkRequest<RequestDataType, RequestResultType, ErrorResultType> networkRequest, URLConnection uRLConnection) {
        }
    }

    /* loaded from: classes7.dex */
    public static abstract class g<RequestDataType, RequestResultType, ErrorResultType> {
        protected abstract byte[] a(NetworkRequest<RequestDataType, RequestResultType, ErrorResultType> networkRequest, URLConnection uRLConnection, byte[] bArr) throws Exception;

        protected abstract byte[] b(NetworkRequest<RequestDataType, RequestResultType, ErrorResultType> networkRequest, URLConnection uRLConnection, byte[] bArr) throws Exception;

        protected void c(NetworkRequest<RequestDataType, RequestResultType, ErrorResultType> networkRequest, URLConnection uRLConnection) {
        }
    }
}
