package com.ss.mediakit.downloader;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import androidx.browser.trusted.sharing.ShareTarget;
import com.mbridge.msdk.foundation.download.Command;
import com.ss.mediakit.medialoader.AVMDLDataLoader;
import com.ss.mediakit.medialoader.AVMDLDataLoaderConfigure;
import com.ss.mediakit.medialoader.AVMDLLog;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.Headers;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
/* loaded from: classes6.dex */
public class AVMDLHttpExcutor {
    private static final String TAG = "AVMDLHttpExcutor";
    private static OkHttpClient okHttpClient;

    public static String buildRangeHeader(long j10, long j11) {
        String formRangeStrBySize = formRangeStrBySize(j10, j11);
        if (TextUtils.isEmpty(formRangeStrBySize)) {
            return "";
        }
        return "bytes=" + formRangeStrBySize;
    }

    @SuppressLint({"CI_DefaultLocale"})
    public static AVMDLResponse excute(AVMDLRequest aVMDLRequest, int i10) throws IOException {
        Request.Builder builder = new Request.Builder();
        builder.k(aVMDLRequest.urls[i10]);
        builder.g(ShareTarget.METHOD_GET, null);
        builder.f(toOkHttpHeaders(aVMDLRequest));
        Call a10 = getOkHttpClient().a(builder.b());
        try {
            long currentTimeMillis = System.currentTimeMillis();
            Response execute = a10.execute();
            long currentTimeMillis2 = System.currentTimeMillis();
            aVMDLRequest.mCurlUrlIndex = i10;
            AVMDLLog.d(TAG, String.format(Locale.US, "http open cost time:%d url:%s", Long.valueOf(currentTimeMillis2 - currentTimeMillis), aVMDLRequest.urls[i10]));
            return new AVMDLResponse(aVMDLRequest, execute, a10);
        } catch (Exception e10) {
            AVMDLLog.e(TAG, "request exception is " + e10.getLocalizedMessage());
            throw e10;
        }
    }

    public static String formRangeStrByPos(long j10, long j11) {
        int i10 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        if (i10 >= 0 && j11 > 0) {
            return j10 + "-" + j11;
        } else if (i10 >= 0) {
            return j10 + "-";
        } else if (i10 < 0 && j11 > 0) {
            return "-" + j11;
        } else {
            return "";
        }
    }

    public static String formRangeStrBySize(long j10, long j11) {
        long j12;
        if (j11 > 0) {
            j12 = (j11 + j10) - 1;
        } else {
            j12 = -1;
        }
        return formRangeStrByPos(j10, j12);
    }

    private static synchronized OkHttpClient getOkHttpClient() {
        OkHttpClient okHttpClient2;
        long j10;
        long j11;
        synchronized (AVMDLHttpExcutor.class) {
            try {
                if (okHttpClient == null) {
                    AVMDLDataLoaderConfigure config = AVMDLDataLoader.getInstance().getConfig();
                    long j12 = 10000;
                    if (config != null) {
                        int i10 = config.mOpenTimeOut;
                        if (i10 > 0) {
                            j11 = i10 * 1000;
                        } else {
                            j11 = 10000;
                        }
                        int i11 = config.mRWTimeOut;
                        if (i11 > 0) {
                            j12 = i11 * 1000;
                        }
                        long j13 = j12;
                        j12 = j11;
                        j10 = j13;
                    } else {
                        j10 = 10000;
                    }
                    AVMDLLog.d(TAG, "connect timeout:" + j12 + " rwtimeout:" + j10);
                    OkHttpClient.Builder builder = new OkHttpClient.Builder();
                    builder.T(Collections.singletonList(Protocol.HTTP_1_1));
                    TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                    builder.f(j12, timeUnit).V(j10, timeUnit).Y(j10, timeUnit);
                    okHttpClient = builder.c();
                }
                okHttpClient2 = okHttpClient;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return okHttpClient2;
    }

    public static synchronized void setOkHttpClient(OkHttpClient okHttpClient2) {
        synchronized (AVMDLHttpExcutor.class) {
            try {
                if (okHttpClient == null) {
                    okHttpClient = okHttpClient2;
                    AVMDLLog.d(TAG, "cur client null allow set");
                }
                AVMDLLog.d(TAG, "set custom client:" + okHttpClient2);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static Headers toOkHttpHeaders(AVMDLRequest aVMDLRequest) {
        Headers.Builder builder = new Headers.Builder();
        HashMap<String, String> hashMap = aVMDLRequest.headers;
        if (hashMap != null) {
            for (Map.Entry<String, String> entry : hashMap.entrySet()) {
                AVMDLLog.d(TAG, "custom header key:" + entry.getKey() + "  value:" + entry.getValue());
                builder.a(entry.getKey(), entry.getValue());
            }
        }
        String buildRangeHeader = buildRangeHeader(aVMDLRequest.reqOff, aVMDLRequest.size);
        if (!TextUtils.isEmpty(buildRangeHeader)) {
            AVMDLLog.d(TAG, "range str: " + buildRangeHeader);
            builder.a(Command.HTTP_HEADER_RANGE, buildRangeHeader);
        }
        builder.a("Accept-Encoding", "identity");
        return builder.f();
    }
}
