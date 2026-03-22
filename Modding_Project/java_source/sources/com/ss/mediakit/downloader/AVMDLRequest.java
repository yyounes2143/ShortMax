package com.ss.mediakit.downloader;

import java.util.HashMap;
import okhttp3.Response;
/* loaded from: classes6.dex */
public class AVMDLRequest {
    public static final int UrlStateIsForbidden = 1;
    public static final int UrlStateIsNormal = 0;
    public HashMap<String, String> headers;
    public int mCurlUrlIndex;
    public int mMaxTryCout;
    public int mOpenTimeOut;
    public int mRWTimeOut;
    public int[] mUrlErrCount;
    public int[] mUrlState;
    public long reqOff;
    public Response response;
    public long size;
    public String[] urls;

    public AVMDLRequest() {
        this.urls = null;
        this.headers = new HashMap<>();
        this.reqOff = -1L;
        this.size = 0L;
        this.response = null;
        this.mCurlUrlIndex = 0;
        this.mMaxTryCout = 0;
        this.mOpenTimeOut = 10;
        this.mRWTimeOut = 10;
    }

    public AVMDLRequest(long j10, long j11, String[] strArr, Object obj, int i10, int i11, int i12) {
        this.urls = strArr;
        this.headers = (HashMap) obj;
        this.reqOff = j10;
        this.size = j11;
        this.response = null;
        this.mUrlState = null;
        this.mCurlUrlIndex = 0;
        this.mMaxTryCout = i10;
        this.mOpenTimeOut = i11;
        this.mRWTimeOut = i12;
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        this.mUrlState = new int[strArr.length];
        int i13 = 0;
        while (true) {
            int[] iArr = this.mUrlState;
            if (i13 >= iArr.length) {
                break;
            }
            iArr[i13] = 0;
            i13++;
        }
        this.mUrlErrCount = new int[this.urls.length];
        int i14 = 0;
        while (true) {
            int[] iArr2 = this.mUrlErrCount;
            if (i14 >= iArr2.length) {
                return;
            }
            iArr2[i14] = 0;
            i14++;
        }
    }

    public AVMDLRequest(long j10, long j11, String[] strArr, HashMap<String, String> hashMap) {
        this.urls = strArr;
        this.headers = hashMap;
        this.reqOff = j10;
        this.size = j11;
        this.response = null;
        this.mUrlState = null;
        this.mCurlUrlIndex = 0;
        this.mMaxTryCout = 0;
        this.mOpenTimeOut = 10;
        this.mRWTimeOut = 10;
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        this.mUrlState = new int[strArr.length];
        int i10 = 0;
        while (true) {
            int[] iArr = this.mUrlState;
            if (i10 >= iArr.length) {
                return;
            }
            iArr[i10] = 0;
            i10++;
        }
    }
}
