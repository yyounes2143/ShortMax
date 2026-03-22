package com.ss.ttvideoengine.fetcher.mdlfethcer;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.ss.mediakit.fetcher.AVMDLNewFetcherMakerInterface;
import com.ss.mediakit.fetcher.AVMDLURLFetcherInterface;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes6.dex */
public class FetcherMakerNew implements AVMDLNewFetcherMakerInterface {
    private static final String TAG = "FetcherMakerNew";
    private static FetcherMakerNew mInst;
    private static final List<WeakReference<MDLFetcherListener>> sFetcherListenerList = new ArrayList();

    private FetcherMakerNew() {
    }

    public static FetcherMakerNew getInstance() {
        if (mInst == null) {
            synchronized (FetcherMakerNew.class) {
                try {
                    if (mInst == null) {
                        mInst = new FetcherMakerNew();
                    }
                } finally {
                }
            }
        }
        return mInst;
    }

    @Nullable
    private static synchronized MDLFetcherListener getMDLFetchListener(String str) {
        synchronized (FetcherMakerNew.class) {
            for (WeakReference<MDLFetcherListener> weakReference : sFetcherListenerList) {
                MDLFetcherListener mDLFetcherListener = weakReference.get();
                if (mDLFetcherListener != null && TextUtils.equals(str, mDLFetcherListener.getId())) {
                    return mDLFetcherListener;
                }
            }
            return null;
        }
    }

    public static synchronized void removeListener(MDLFetcherListener mDLFetcherListener) {
        synchronized (FetcherMakerNew.class) {
            if (mDLFetcherListener == null) {
                TTVideoEngineLog.i(TAG, "removeListener fetcherListener is null");
                return;
            }
            TTVideoEngineLog.i(TAG, "removeListener " + mDLFetcherListener);
            Iterator<WeakReference<MDLFetcherListener>> it = sFetcherListenerList.iterator();
            while (it.hasNext()) {
                WeakReference<MDLFetcherListener> next = it.next();
                if (next != null && next.get() != null) {
                    if (next.get() == mDLFetcherListener) {
                        it.remove();
                    }
                }
                it.remove();
            }
        }
    }

    public static synchronized void storeListener(MDLFetcherListener mDLFetcherListener) {
        synchronized (FetcherMakerNew.class) {
            if (mDLFetcherListener == null) {
                TTVideoEngineLog.i(TAG, "storeListener fetcherListener is null");
                return;
            }
            TTVideoEngineLog.i(TAG, "storeListener " + mDLFetcherListener);
            sFetcherListenerList.add(new WeakReference<>(mDLFetcherListener));
        }
    }

    @Override // com.ss.mediakit.fetcher.AVMDLNewFetcherMakerInterface
    public AVMDLURLFetcherInterface getFetcher(String str, String str2, String str3, String str4) {
        TTVideoEngineLog.i(TAG, "getFetcher rawKey " + str + ", fileKey " + str2 + ", engineId " + str4);
        MDLFetcherListener mDLFetchListener = getMDLFetchListener(str4);
        if (mDLFetchListener == null) {
            TTVideoEngineLog.e(TAG, "getFetcher MDLFetcherListener is null");
            return null;
        }
        MDLFetcherNew mDLFetcherNew = new MDLFetcherNew(mDLFetchListener);
        TTVideoEngineLog.i(TAG, "return fetcher to mdl " + mDLFetcherNew);
        return mDLFetcherNew;
    }
}
