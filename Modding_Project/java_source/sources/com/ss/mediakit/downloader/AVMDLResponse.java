package com.ss.mediakit.downloader;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.ss.mediakit.medialoader.AVMDLLog;
import java.io.IOException;
import java.util.Locale;
import okhttp3.Call;
import okhttp3.Response;
/* loaded from: classes6.dex */
public class AVMDLResponse {
    private static final String TAG = "AVMDLResponse";
    public Call call;
    public long readOff;
    public AVMDLRequest request;
    public Response response;
    public long contentlength = -1;
    public int statusCode = -1;
    public boolean isReadErr = false;

    public AVMDLResponse(AVMDLRequest aVMDLRequest, Response response, Call call) {
        this.request = aVMDLRequest;
        this.response = response;
        this.call = call;
        this.readOff = aVMDLRequest.reqOff;
        parseResponse();
    }

    private void parseResponse() {
        int lastIndexOf;
        Response response = this.response;
        if (response == null) {
            return;
        }
        int o10 = response.o();
        this.statusCode = o10;
        if (o10 == 200) {
            this.contentlength = toInt(this.response.r("Content-Length"));
        } else if (o10 == 206) {
            String r10 = this.response.r("Content-Range");
            if (!TextUtils.isEmpty(r10) && (lastIndexOf = r10.lastIndexOf(DomExceptionUtils.SEPARATOR)) >= 0 && lastIndexOf < r10.length() - 1) {
                this.contentlength = toInt(r10.substring(lastIndexOf + 1), -1);
            }
        }
    }

    public static int toInt(String str) {
        return toInt(str, 0);
    }

    public void cancel() {
        Call call = this.call;
        if (call != null) {
            call.cancel();
        }
    }

    @SuppressLint({"CI_DefaultLocale"})
    public boolean isFinish() {
        long j10;
        AVMDLRequest aVMDLRequest = this.request;
        long j11 = aVMDLRequest.size;
        if (j11 >= 0) {
            j10 = aVMDLRequest.reqOff + j11;
        } else {
            j10 = this.contentlength;
        }
        long j12 = this.contentlength;
        if (j10 > j12) {
            j10 = j12;
        }
        AVMDLLog.d(TAG, String.format(Locale.US, "check readoff:%d reqoff:%d reqsize:%d contentlen:%d endoff:%d", Long.valueOf(this.readOff), Long.valueOf(this.request.reqOff), Long.valueOf(this.request.size), Long.valueOf(this.contentlength), Long.valueOf(j10)));
        if (this.readOff >= j10) {
            return true;
        }
        return false;
    }

    public boolean isOpenSuccessful() {
        int i10 = this.statusCode;
        if (i10 >= 200 && i10 < 300) {
            return true;
        }
        return false;
    }

    public boolean isReadSuccessful() {
        return !this.isReadErr;
    }

    @SuppressLint({"CI_DefaultLocale"})
    public int readData(byte[] bArr) {
        if (this.response.d() == null) {
            return 0;
        }
        try {
            int read = this.response.d().byteStream().read(bArr);
            if (read > 0) {
                Locale locale = Locale.US;
                AVMDLLog.d(TAG, String.format(locale, "before read off:%d reqoff:%d req size:%d", Long.valueOf(this.readOff), Long.valueOf(this.request.reqOff), Long.valueOf(this.request.size)));
                long j10 = read;
                this.readOff += j10;
                AVMDLRequest aVMDLRequest = this.request;
                aVMDLRequest.reqOff += j10;
                long j11 = aVMDLRequest.size;
                if (j11 > 0) {
                    aVMDLRequest.size = j11 - j10;
                }
                AVMDLLog.d(TAG, String.format(locale, "after read,ret:%d off:%d reqoff:%d req size:%d", Integer.valueOf(read), Long.valueOf(this.readOff), Long.valueOf(this.request.reqOff), Long.valueOf(this.request.size)));
                return read;
            }
            return -1;
        } catch (IOException e10) {
            this.isReadErr = true;
            AVMDLLog.e(TAG, "read data exception:" + e10.getLocalizedMessage());
            return -1;
        }
    }

    public void reset() {
        this.response = null;
        this.call = null;
        this.contentlength = -1L;
        this.statusCode = -1;
        this.isReadErr = false;
    }

    public static int toInt(String str, int i10) {
        if (TextUtils.isEmpty(str)) {
            return i10;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return i10;
        }
    }
}
