package com.ss.ttvideoengine.fetcher;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.ss.mediakit.fetcher.AVMDLFetcherMakerInterface;
import com.ss.mediakit.fetcher.AVMDLURLFetcherInterface;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.Hashtable;
/* loaded from: classes6.dex */
public class FetcherMaker implements AVMDLFetcherMakerInterface {
    private static final String TAG = "FetcherMaker";
    private static Hashtable<String, FetcherBase> sFallbackCenter = new Hashtable<>();
    private final Context mContext;

    public FetcherMaker(Context context) {
        this.mContext = context;
    }

    public static void remove(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        sFallbackCenter.remove(str);
    }

    public static void store(String str, String str2, String str3, int i10) {
        TTVideoEngineLog.i(TAG, "store videoId " + str + ", keyseed " + str2 + ", fallbackAPI " + str3 + ", version " + i10);
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str3) && (i10 == 3 || !TextUtils.isEmpty(str2))) {
            sFallbackCenter.put(str, new FetcherBase(str2, str3, i10));
        } else {
            TTVideoEngineLog.i(TAG, "mdlFetch store fail");
        }
    }

    @Override // com.ss.mediakit.fetcher.AVMDLFetcherMakerInterface
    @Nullable
    public AVMDLURLFetcherInterface getFetcher(String str, String str2, String str3) {
        TTVideoEngineLog.i(TAG, "getFetcher rawKey " + str + ", fileKey " + str2 + ", oldURL " + str3);
        FetcherBase fetcherBase = sFallbackCenter.get(str);
        if (fetcherBase == null) {
            TTVideoEngineLog.i(TAG, "getFetcher FetcherBase is null");
            return null;
        }
        String keyseed = fetcherBase.getKeyseed();
        String fallbackAPI = fetcherBase.getFallbackAPI();
        int videoModelVersion = fetcherBase.getVideoModelVersion();
        if (!TextUtils.isEmpty(fallbackAPI) && (videoModelVersion == 3 || !TextUtils.isEmpty(keyseed))) {
            MDLFetcher mDLFetcher = new MDLFetcher(this.mContext, fallbackAPI, keyseed);
            TTVideoEngineLog.i(TAG, "return fetcher to mdl " + mDLFetcher);
            return mDLFetcher;
        }
        TTVideoEngineLog.i(TAG, "getFetcher FetcherBase is error " + fetcherBase);
        return null;
    }

    public FetcherMaker() {
        this.mContext = null;
    }
}
