package com.ss.ttvideoengine.net;

import android.os.Handler;
import android.os.Message;
import com.ss.ttvideoengine.utils.Error;
import com.ss.ttvideoengine.utils.TTHelper;
import java.lang.ref.WeakReference;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class BaseDNS {
    private static final int MSG_IS_CANCELLED = 0;
    private static final int MSG_IS_ERROR = 2;
    private static final int MSG_IS_RETRY = 1;
    private static final int MSG_IS_SUCCESS = 3;
    protected boolean mCancelled;
    protected Handler mHandler;
    protected String mHostname;
    protected DNSCompletionListener mListener;
    protected TTVNetClient mNetClient;

    /* loaded from: classes6.dex */
    private static class MyHandler extends Handler {
        private final WeakReference<BaseDNS> mDNSRef;

        public MyHandler(BaseDNS baseDNS) {
            super(TTHelper.getLooper());
            this.mDNSRef = new WeakReference<>(baseDNS);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            DNSCompletionListener dNSCompletionListener;
            BaseDNS baseDNS = this.mDNSRef.get();
            if (baseDNS == null || (dNSCompletionListener = baseDNS.mListener) == null || baseDNS.mCancelled) {
                return;
            }
            int i10 = message.what;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 == 3) {
                            baseDNS.close();
                            dNSCompletionListener.onCompletion((JSONObject) message.obj, null);
                            return;
                        }
                        return;
                    }
                    baseDNS.close();
                    dNSCompletionListener.onCompletion(null, (Error) message.obj);
                    return;
                }
                baseDNS.close();
                dNSCompletionListener.onRetry((Error) message.obj);
                return;
            }
            dNSCompletionListener.onCancelled();
        }
    }

    public BaseDNS(String str) {
        this.mCancelled = false;
        this.mNetClient = null;
        this.mHostname = str;
        this.mHandler = new MyHandler(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void notifyCancelled() {
        this.mHandler.sendEmptyMessage(0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void notifyError(Error error) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(2, error));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void notifyRetry(Error error) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(1, error));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void notifySuccess(JSONObject jSONObject) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(3, jSONObject));
    }

    public void setCompletionListener(DNSCompletionListener dNSCompletionListener) {
        this.mListener = dNSCompletionListener;
    }

    public BaseDNS(String str, TTVNetClient tTVNetClient) {
        this.mCancelled = false;
        this.mNetClient = null;
        this.mHostname = str;
        this.mHandler = new MyHandler(this);
        this.mNetClient = tTVNetClient == null ? new TTHTTPNetwork() : tTVNetClient;
    }

    public void cancel() {
    }

    public void close() {
    }

    public void start() {
    }
}
