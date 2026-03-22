package com.ss.mediakit.net;

import com.ss.mediakit.net.AVMDLNetClient;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class AVMDLHTTPNetwork extends AVMDLNetClient {
    private static final int HTTP_TIME_OUT = 10;
    public static final MediaType JSON = MediaType.g("application/json");
    private static OkHttpClient mClient;
    private Call mCall;

    @Override // com.ss.mediakit.net.AVMDLNetClient
    public void cancel() {
        Call call = this.mCall;
        if (call != null && !call.isCanceled()) {
            this.mCall.cancel();
        }
    }

    @Override // com.ss.mediakit.net.AVMDLNetClient
    public void startTask(String str, Map<String, String> map, final AVMDLNetClient.CompletionListener completionListener) {
        synchronized (AVMDLHTTPNetwork.class) {
            try {
                if (mClient == null) {
                    OkHttpClient.Builder z10 = new OkHttpClient().z();
                    TimeUnit timeUnit = TimeUnit.SECONDS;
                    mClient = z10.f(10L, timeUnit).Y(10L, timeUnit).V(10L, timeUnit).c();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        Request.Builder k10 = new Request.Builder().k(str);
        if (map != null) {
            for (String str2 : map.keySet()) {
                k10.e(str2, map.get(str2));
            }
        }
        Call a10 = mClient.a(k10.b());
        this.mCall = a10;
        a10.o0(new Callback() { // from class: com.ss.mediakit.net.AVMDLHTTPNetwork.1
            @Override // okhttp3.Callback
            public void onFailure(Call call, IOException iOException) {
                completionListener.onCompletion(null, new Error(0, null, null, iOException.toString()));
            }

            @Override // okhttp3.Callback
            public void onResponse(Call call, Response response) {
                ResponseBody responseBody;
                Throwable th3;
                JSONObject jSONObject;
                try {
                    responseBody = response.d();
                    try {
                        try {
                            jSONObject = new JSONObject(responseBody.string());
                            e = null;
                        } catch (Throwable th4) {
                            th3 = th4;
                            if (responseBody != null) {
                                try {
                                    responseBody.close();
                                } catch (Exception unused) {
                                }
                            }
                            throw th3;
                        }
                    } catch (Exception e10) {
                        e = e10;
                        e.printStackTrace();
                        jSONObject = null;
                    }
                    if (e == null && !response.isSuccessful()) {
                        e = new Exception("http fail");
                        response.o();
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
                        completionListener.onCompletion(jSONObject, new Error(0, null, null, e.toString()));
                    }
                } catch (Throwable th5) {
                    responseBody = null;
                    th3 = th5;
                }
            }
        });
    }

    @Override // com.ss.mediakit.net.AVMDLNetClient
    public void startTask(String str, Map<String, String> map, JSONObject jSONObject, int i10, final AVMDLNetClient.CompletionListener completionListener) {
        synchronized (AVMDLHTTPNetwork.class) {
            try {
                if (mClient == null) {
                    OkHttpClient.Builder z10 = new OkHttpClient().z();
                    TimeUnit timeUnit = TimeUnit.SECONDS;
                    mClient = z10.f(10L, timeUnit).Y(10L, timeUnit).V(10L, timeUnit).c();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        Request.Builder k10 = new Request.Builder().k(str);
        if (map != null && map.size() > 0) {
            for (String str2 : map.keySet()) {
                k10.a(str2, map.get(str2));
            }
        }
        if (i10 == 1) {
            k10.h(RequestBody.create(JSON, String.valueOf(jSONObject)));
        }
        Call a10 = mClient.a(k10.b());
        this.mCall = a10;
        a10.o0(new Callback() { // from class: com.ss.mediakit.net.AVMDLHTTPNetwork.2
            @Override // okhttp3.Callback
            public void onFailure(Call call, IOException iOException) {
                completionListener.onCompletion(null, new Error(0, null, null, iOException.toString()));
            }

            @Override // okhttp3.Callback
            public void onResponse(Call call, Response response) throws IOException {
                ResponseBody responseBody;
                Throwable th3;
                String obj;
                JSONObject jSONObject2;
                try {
                    responseBody = response.d();
                    try {
                        try {
                            jSONObject2 = new JSONObject(responseBody.string());
                            obj = null;
                        } catch (Throwable th4) {
                            th3 = th4;
                            if (responseBody != null) {
                                try {
                                    responseBody.close();
                                } catch (Exception unused) {
                                }
                            }
                            throw th3;
                        }
                    } catch (Exception e10) {
                        obj = e10.toString();
                        e10.printStackTrace();
                        jSONObject2 = null;
                    }
                    if (!response.isSuccessful()) {
                        obj = response.w();
                        response.o();
                    }
                    if (responseBody != null) {
                        try {
                            responseBody.close();
                        } catch (Exception unused2) {
                        }
                    }
                    if (obj == null) {
                        completionListener.onCompletion(jSONObject2, null);
                    } else {
                        completionListener.onCompletion(jSONObject2, new Error(0, null, null, obj.toString()));
                    }
                } catch (Throwable th5) {
                    responseBody = null;
                    th3 = th5;
                }
            }
        });
    }
}
