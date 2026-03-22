package com.ss.ttvideoengine.net;

import android.os.SystemClock;
import com.applovin.sdk.AppLovinErrorCodes;
import com.ss.ttvideoengine.net.TTVNetClient;
import com.ss.ttvideoengine.utils.Error;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.io.IOException;
import java.security.KeyStore;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.ConnectionSpec;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class TTHTTPNetwork extends TTVNetClient {
    private static final int HTTP_MAX_RETRY_TIME_OUT = 10;
    private static final int HTTP_TIME_OUT = 10;
    private static final int STATUS_CANCEL = 3;
    private static final int STATUS_FINISHED = 2;
    private static final int STATUS_RUNNING = 1;
    private static final int STATUS_UNKNOWN = 0;
    private static final String TAG = "TTHTTPNetwork";
    private static OkHttpClient mClient;
    private Call mCall;
    private long mStartTime;
    private int mStatus = 0;
    public static final MediaType JSON = MediaType.g("application/json");
    private static boolean mIsRetryWhenFail = true;
    private static int mMaxRetryTimeOut = 10;
    private static boolean mTLSv1_2 = false;
    private static boolean mClientParamsChanged = false;

    public TTHTTPNetwork() {
        if (mClient == null || mClientParamsChanged) {
            synchronized (TTHTTPNetwork.class) {
                setupClient();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _receivedError(Call call, IOException iOException, TTVNetClient.CompletionListener completionListener) {
        if (!mIsRetryWhenFail) {
            completionListener.onCompletion(null, new Error("", (int) Error.HTTPNotOK, iOException.toString()));
            return;
        }
        Request request = call.request();
        if (SystemClock.elapsedRealtime() - this.mStartTime < (mMaxRetryTimeOut * 1000) + AppLovinErrorCodes.INCENTIVIZED_SERVER_TIMEOUT) {
            try {
                Thread.sleep(1000L);
            } catch (InterruptedException e10) {
                e10.printStackTrace();
            }
            _startTask(request, completionListener);
            return;
        }
        completionListener.onCompletion(null, new Error("", (int) Error.HTTPNotOK, iOException.toString()));
    }

    private void _startTask(Request request, final TTVNetClient.CompletionListener completionListener) {
        synchronized (TTHTTPNetwork.class) {
            int i10 = this.mStatus;
            if (i10 != 3 && i10 != 1) {
                this.mStatus = 1;
                Call a10 = mClient.a(request);
                this.mCall = a10;
                a10.o0(new Callback() { // from class: com.ss.ttvideoengine.net.TTHTTPNetwork.2
                    @Override // okhttp3.Callback
                    public void onFailure(Call call, IOException iOException) {
                        TTVideoEngineLog.d(TTHTTPNetwork.TAG, "onFailure:" + iOException.toString());
                        synchronized (TTHTTPNetwork.class) {
                            try {
                                if (TTHTTPNetwork.this.mStatus != 3) {
                                    TTHTTPNetwork.this.mStatus = 2;
                                    TTHTTPNetwork.this._receivedError(call, iOException, completionListener);
                                }
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                    }

                    /* JADX WARN: Removed duplicated region for block: B:27:0x0056 A[Catch: all -> 0x0042, TRY_LEAVE, TryCatch #1 {all -> 0x0042, blocks: (B:15:0x001f, B:16:0x0028, B:25:0x0050, B:27:0x0056, B:24:0x0048), top: B:45:0x001f }] */
                    /* JADX WARN: Removed duplicated region for block: B:31:0x0065  */
                    /* JADX WARN: Removed duplicated region for block: B:32:0x006b  */
                    /* JADX WARN: Removed duplicated region for block: B:52:0x0060 A[EXC_TOP_SPLITTER, SYNTHETIC] */
                    @Override // okhttp3.Callback
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public void onResponse(okhttp3.Call r8, okhttp3.Response r9) throws java.io.IOException {
                        /*
                            r7 = this;
                            java.lang.Class<com.ss.ttvideoengine.net.TTHTTPNetwork> r8 = com.ss.ttvideoengine.net.TTHTTPNetwork.class
                            monitor-enter(r8)
                            com.ss.ttvideoengine.net.TTHTTPNetwork r0 = com.ss.ttvideoengine.net.TTHTTPNetwork.this     // Catch: java.lang.Throwable -> Le
                            int r0 = com.ss.ttvideoengine.net.TTHTTPNetwork.access$000(r0)     // Catch: java.lang.Throwable -> Le
                            r1 = 3
                            if (r0 != r1) goto L11
                            monitor-exit(r8)     // Catch: java.lang.Throwable -> Le
                            return
                        Le:
                            r9 = move-exception
                            goto L81
                        L11:
                            com.ss.ttvideoengine.net.TTHTTPNetwork r0 = com.ss.ttvideoengine.net.TTHTTPNetwork.this     // Catch: java.lang.Throwable -> Le
                            r1 = 2
                            com.ss.ttvideoengine.net.TTHTTPNetwork.access$002(r0, r1)     // Catch: java.lang.Throwable -> Le
                            monitor-exit(r8)     // Catch: java.lang.Throwable -> Le
                            r8 = 0
                            okhttp3.ResponseBody r0 = r9.d()     // Catch: java.lang.Throwable -> L78
                            r1 = -9994(0xffffffffffffd8f6, float:NaN)
                            java.lang.String r2 = r0.string()     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L46
                            org.json.JSONObject r3 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L46
                            r3.<init>(r2)     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L46
                            java.lang.String r4 = "TTHTTPNetwork"
                            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44
                            r5.<init>()     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44
                            java.lang.String r6 = "startTask onResponse body:"
                            r5.append(r6)     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44
                            r5.append(r2)     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44
                            java.lang.String r2 = r5.toString()     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44
                            com.ss.ttvideoengine.utils.TTVideoEngineLog.d(r4, r2)     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L44
                            r2 = -1
                            r4 = r8
                            goto L50
                        L42:
                            r8 = move-exception
                            goto L7b
                        L44:
                            r2 = move-exception
                            goto L48
                        L46:
                            r2 = move-exception
                            r3 = r8
                        L48:
                            java.lang.String r4 = r2.toString()     // Catch: java.lang.Throwable -> L42
                            r2.printStackTrace()     // Catch: java.lang.Throwable -> L42
                            r2 = r1
                        L50:
                            boolean r5 = r9.isSuccessful()     // Catch: java.lang.Throwable -> L42
                            if (r5 != 0) goto L5e
                            java.lang.String r4 = r9.w()     // Catch: java.lang.Throwable -> L42
                            int r2 = r9.o()     // Catch: java.lang.Throwable -> L42
                        L5e:
                            if (r0 == 0) goto L63
                            r0.close()     // Catch: java.lang.Exception -> L63
                        L63:
                            if (r4 != 0) goto L6b
                            com.ss.ttvideoengine.net.TTVNetClient$CompletionListener r9 = r2
                            r9.onCompletion(r3, r8)
                            goto L77
                        L6b:
                            com.ss.ttvideoengine.net.TTVNetClient$CompletionListener r8 = r2
                            com.ss.ttvideoengine.utils.Error r9 = new com.ss.ttvideoengine.utils.Error
                            java.lang.String r0 = ""
                            r9.<init>(r0, r1, r2, r4)
                            r8.onCompletion(r3, r9)
                        L77:
                            return
                        L78:
                            r9 = move-exception
                            r0 = r8
                            r8 = r9
                        L7b:
                            if (r0 == 0) goto L80
                            r0.close()     // Catch: java.lang.Exception -> L80
                        L80:
                            throw r8
                        L81:
                            monitor-exit(r8)     // Catch: java.lang.Throwable -> Le
                            throw r9
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.net.TTHTTPNetwork.AnonymousClass2.onResponse(okhttp3.Call, okhttp3.Response):void");
                    }
                });
                return;
            }
            TTVideoEngineLog.i(TAG, "_startTask status error, return. " + this.mStatus);
        }
    }

    public static void enableTLSv1_2(boolean z10) {
        if (mTLSv1_2 != z10) {
            mTLSv1_2 = z10;
            mClientParamsChanged = true;
        }
    }

    public static void isRetryWhenFail(int i10) {
        TTVideoEngineLog.d(TAG, "isRetryWhenFail:" + i10);
        if (i10 >= 0) {
            boolean z10 = true;
            if (i10 <= 1) {
                if (i10 != 1) {
                    z10 = false;
                }
                mIsRetryWhenFail = z10;
            }
        }
    }

    public static void setMaxRetryTimeOut(int i10) {
        TTVideoEngineLog.d(TAG, "setMaxRetryTimeOut:" + i10);
        if (i10 >= 0 && i10 <= 60) {
            mMaxRetryTimeOut = i10;
        } else {
            mMaxRetryTimeOut = 10;
        }
    }

    private void setupClient() {
        if (mClientParamsChanged) {
            mClient = null;
        }
        if (mClient == null) {
            OkHttpClient.Builder builder = new OkHttpClient.Builder();
            TimeUnit timeUnit = TimeUnit.SECONDS;
            OkHttpClient.Builder V = builder.f(10L, timeUnit).Y(10L, timeUnit).V(10L, timeUnit);
            if (mTLSv1_2) {
                try {
                    SSLContext sSLContext = SSLContext.getInstance("TLS");
                    sSLContext.init(null, null, null);
                    TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                    trustManagerFactory.init((KeyStore) null);
                    ConnectionSpec a10 = new ConnectionSpec.Builder(ConnectionSpec.f63396i).a();
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(a10);
                    arrayList.add(ConnectionSpec.f63397j);
                    arrayList.add(ConnectionSpec.f63398k);
                    V.h(arrayList);
                    V.X(new TLSSocketFactory(sSLContext.getSocketFactory()), (X509TrustManager) trustManagerFactory.getTrustManagers()[0]);
                    TTVideoEngineLog.i(TAG, "tls1.2 enabled");
                } catch (Exception unused) {
                    TTVideoEngineLog.e(TAG, "enable tls1.2 error");
                }
            }
            mClient = V.c();
            mClientParamsChanged = false;
        }
    }

    @Override // com.ss.ttvideoengine.net.TTVNetClient
    public void cancel() {
        Call call = this.mCall;
        if (call != null && !call.isCanceled()) {
            this.mCall.cancel();
        }
    }

    @Override // com.ss.ttvideoengine.net.TTVNetClient
    public void startTask(String str, Map<String, String> map, TTVNetClient.CompletionListener completionListener) {
        synchronized (TTHTTPNetwork.class) {
            setupClient();
        }
        Request.Builder k10 = new Request.Builder().k(str);
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if (entry.getKey() != null && entry.getValue() != null) {
                    k10.e(entry.getKey(), entry.getValue());
                }
            }
        }
        _startTask(k10.b(), completionListener);
    }

    @Override // com.ss.ttvideoengine.net.TTVNetClient
    public void startTask(String str, Map<String, String> map, JSONObject jSONObject, int i10, TTVNetClient.CompletionListener completionListener) {
        synchronized (TTHTTPNetwork.class) {
            setupClient();
        }
        Request.Builder k10 = new Request.Builder().k(str);
        if (map != null && map.size() > 0) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if (entry.getKey() != null && entry.getValue() != null) {
                    k10.a(entry.getKey(), entry.getValue());
                }
            }
        }
        if (i10 == 1) {
            k10.h(RequestBody.create(JSON, String.valueOf(jSONObject)));
        }
        _startTask(k10.b(), completionListener);
    }

    @Override // com.ss.ttvideoengine.net.TTVNetClient
    public void startTask(String str, final TTVNetClient.CompletionListener completionListener) {
        synchronized (TTHTTPNetwork.class) {
            setupClient();
        }
        Call a10 = mClient.a(new Request.Builder().k(str).b());
        this.mCall = a10;
        a10.o0(new Callback() { // from class: com.ss.ttvideoengine.net.TTHTTPNetwork.1
            @Override // okhttp3.Callback
            public void onFailure(Call call, IOException iOException) {
                TTHTTPNetwork.this.mStatus = 2;
                completionListener.onCompletion(null, new Error("", (int) Error.HTTPNotOK, iOException.toString()));
            }

            @Override // okhttp3.Callback
            public void onResponse(Call call, Response response) {
                ResponseBody responseBody;
                Throwable th2;
                int i10;
                JSONObject jSONObject;
                try {
                    responseBody = response.d();
                    try {
                        try {
                            i10 = -1;
                            jSONObject = new JSONObject(responseBody.string());
                            e = null;
                        } catch (Throwable th3) {
                            th2 = th3;
                            if (responseBody != null) {
                                try {
                                    responseBody.close();
                                } catch (Exception unused) {
                                }
                            }
                            throw th2;
                        }
                    } catch (Exception e10) {
                        e = e10;
                        TTVideoEngineLog.d(e);
                        i10 = -9979;
                        jSONObject = null;
                    }
                    if (e == null && !response.isSuccessful()) {
                        e = new Exception("http fail");
                        i10 = response.o();
                    }
                    if (responseBody != null) {
                        try {
                            responseBody.close();
                        } catch (Exception unused2) {
                        }
                    }
                    if (e == null) {
                        completionListener.onCompletion(jSONObject, null);
                    } else {
                        completionListener.onCompletion(jSONObject, new Error("", i10, e.toString()));
                    }
                } catch (Throwable th4) {
                    responseBody = null;
                    th2 = th4;
                }
            }
        });
    }

    @Override // com.ss.ttvideoengine.net.TTVNetClient
    public void startTask(String str, Map<String, String> map, JSONObject jSONObject, int i10, final TTVNetClient.RawCompletionListener rawCompletionListener) {
        synchronized (TTHTTPNetwork.class) {
            setupClient();
        }
        Request.Builder k10 = new Request.Builder().k(str);
        if (map != null && map.size() > 0) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if (entry.getKey() != null && entry.getValue() != null) {
                    k10.a(entry.getKey(), entry.getValue());
                }
            }
        }
        if (i10 == 1) {
            k10.h(RequestBody.create(JSON, String.valueOf(jSONObject)));
        }
        Call a10 = mClient.a(k10.b());
        this.mCall = a10;
        a10.o0(new Callback() { // from class: com.ss.ttvideoengine.net.TTHTTPNetwork.3
            @Override // okhttp3.Callback
            public void onFailure(Call call, IOException iOException) {
                TTVideoEngineLog.d(TTHTTPNetwork.TAG, "startTask onFailure: " + iOException.toString());
                rawCompletionListener.onCompletion(null, new Error("", (int) Error.HTTPNotOK, iOException.toString()));
            }

            @Override // okhttp3.Callback
            public void onResponse(Call call, Response response) throws IOException {
                ResponseBody responseBody;
                Throwable th2;
                int i11;
                String str2;
                try {
                    responseBody = response.d();
                } catch (Throwable th3) {
                    responseBody = null;
                    th2 = th3;
                }
                try {
                    String string = responseBody.string();
                    TTVideoEngineLog.d(TTHTTPNetwork.TAG, "startTask onResponse body:" + string);
                    if (!response.isSuccessful()) {
                        str2 = response.w();
                        i11 = response.o();
                    } else {
                        i11 = -1;
                        str2 = null;
                    }
                    responseBody.close();
                    if (str2 == null) {
                        rawCompletionListener.onCompletion(string, null);
                    } else if (i11 == -9979) {
                        rawCompletionListener.onCompletion(null, new Error("", Error.ParseJsonError, i11, str2));
                    } else {
                        rawCompletionListener.onCompletion(string, new Error("", Error.HTTPNotOK, i11, str2));
                    }
                } catch (Throwable th4) {
                    th2 = th4;
                    if (responseBody != null) {
                        responseBody.close();
                    }
                    throw th2;
                }
            }
        });
    }
}
