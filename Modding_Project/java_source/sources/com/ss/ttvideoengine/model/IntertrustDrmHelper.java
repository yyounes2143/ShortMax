package com.ss.ttvideoengine.model;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.ss.ttvideoengine.net.TTHTTPNetwork;
import com.ss.ttvideoengine.net.TTVNetClient;
import com.ss.ttvideoengine.utils.Error;
import com.ss.ttvideoengine.utils.TTHelper;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class IntertrustDrmHelper {
    public static final int DRM_ERROR_INTERNAL = -600000;
    public static final int DRM_ERROR_TOKEN_PROCESS = -600001;
    public static final int DRM_RESULT_FAIL = -1;
    public static final int DRM_RESULT_LIB_UNLOAD = -1000;
    public static final int DRM_RESULT_OK = 0;
    public static final int DRM_RESULT_PLUGIN_UNLOAD = -1002;
    public static final int DRM_RESULT_ROOT_DEVICE = -1003;
    public static final int DRM_RESULT_TOKEN_TEMPLATE_INVALID = -1001;
    private static final String INTERTRUST_DRM_LISTENER_PATH = "com.ss.ttm.drm.intertrust.IntertrustDrmProxy$IntertrustDrmProxyListener";
    private static final String INTERTRUST_DRM_NETWORK_LISTENER_PATH = "com.ss.ttm.drm.intertrust.IntertrustDrmProxy$IntertrustDrmProxyNetworkClient";
    private static final String INTERTRUST_DRM_PATH = "com.ss.ttm.drm.intertrust.IntertrustDrmProxy";
    public static final int MSG_IS_ERROR = 1;
    public static final int MSG_IS_SUCCESS = 0;
    private static final String TAG = "IntertrustDrmHelper";
    public static final int URL_TYPE_DASH = 2;
    public static final int URL_TYPE_HLS = 1;
    public static final int URL_TYPE_SINGLE = 0;
    private TTVNetClient mNetworkSession;
    private Class<?> mDrmClass = null;
    private Object mInstance = null;
    private Object mIntertrustCallback = null;
    private Object mDrmNetworkCallback = null;
    private IntertrustDrmHelperListener mListener = null;
    private Handler mHandler = null;

    /* loaded from: classes6.dex */
    public interface IntertrustDrmHelperListener {
        void onError(Error error);

        void onTokenProcessed(Error error);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public class MyHandler extends Handler {
        private WeakReference<IntertrustDrmHelper> mHelper;

        public MyHandler(IntertrustDrmHelper intertrustDrmHelper, Looper looper) {
            super(looper);
            this.mHelper = new WeakReference<>(intertrustDrmHelper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            IntertrustDrmHelperListener intertrustDrmHelperListener;
            IntertrustDrmHelper intertrustDrmHelper = this.mHelper.get();
            if (intertrustDrmHelper == null || (intertrustDrmHelperListener = intertrustDrmHelper.mListener) == null) {
                return;
            }
            int i10 = message.what;
            if (i10 != 0) {
                if (i10 == 1) {
                    intertrustDrmHelperListener.onError((Error) message.obj);
                    return;
                }
                return;
            }
            intertrustDrmHelperListener.onTokenProcessed(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public class MyIntertrustListener implements InvocationHandler {
        private MyIntertrustListener() {
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            int i10;
            String str;
            TTVideoEngineLog.d(IntertrustDrmHelper.TAG, "intertrust listener invoke");
            String name = method.getName();
            if (name.equals("onTokenProcessed")) {
                IntertrustDrmHelper.this._notifySuccess();
                return null;
            } else if (name.equals("onError")) {
                Object obj2 = objArr[0];
                int i11 = -1;
                if (obj2 != null) {
                    i10 = ((Integer) obj2).intValue();
                } else {
                    i10 = -1;
                }
                Object obj3 = objArr[1];
                if (obj3 != null) {
                    i11 = ((Integer) obj3).intValue();
                }
                Object obj4 = objArr[2];
                if (obj4 != null) {
                    str = obj4.toString();
                } else {
                    str = "";
                }
                if (i10 == -600000) {
                    i10 = Error.IntertrustDrmInternalError;
                } else if (i10 == -600001) {
                    i10 = Error.IntertrustDrmTokenProcessError;
                }
                IntertrustDrmHelper.this._notifyError(new Error(Error.IntertrustDRM, i10, i11, str));
                return null;
            } else {
                TTVideoEngineLog.w(IntertrustDrmHelper.TAG, "invalid method name:" + name);
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public class MyNetworkListener implements InvocationHandler {
        private MyNetworkListener() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            String str;
            Map map;
            JSONObject jSONObject;
            TTVideoEngineLog.d(IntertrustDrmHelper.TAG, "network listener invoke");
            String name = method.getName();
            if (name.equals("startTask")) {
                Object obj2 = objArr[0];
                if (obj2 != null) {
                    str = obj2.toString();
                } else {
                    str = "";
                }
                String str2 = str;
                Object obj3 = objArr[1];
                if (obj3 != null) {
                    map = (Map) obj3;
                } else {
                    map = null;
                }
                Object obj4 = objArr[2];
                if (obj4 != null) {
                    jSONObject = (JSONObject) obj4;
                } else {
                    jSONObject = null;
                }
                IntertrustDrmHelper.this.mNetworkSession.startTask(str2, map, jSONObject, 0, new myNetClientListener());
            } else if (name.equals("cancel")) {
                IntertrustDrmHelper.this.mNetworkSession.cancel();
            } else {
                TTVideoEngineLog.w(IntertrustDrmHelper.TAG, "invalid method name:" + name);
            }
            return null;
        }
    }

    /* loaded from: classes6.dex */
    class myNetClientListener implements TTVNetClient.RawCompletionListener {
        myNetClientListener() {
        }

        @Override // com.ss.ttvideoengine.net.TTVNetClient.RawCompletionListener
        public void onCompletion(String str, Error error) {
            if (error != null) {
                String str2 = error.description;
                TTVideoEngineLog.e(IntertrustDrmHelper.TAG, "get token return error code: " + error.code + ", internal:" + error.internalCode + ", description:" + error.description);
                if (!str2.contains("Canceled")) {
                    IntertrustDrmHelper.this._notifyError(error);
                }
            } else if (IntertrustDrmHelper.this.mInstance == null) {
            } else {
                try {
                    if (IntertrustDrmHelper.this.mDrmClass == null) {
                        IntertrustDrmHelper.this.mDrmClass = Class.forName(IntertrustDrmHelper.INTERTRUST_DRM_PATH);
                    }
                    IntertrustDrmHelper.this.mDrmClass.getDeclaredMethod("processTokenComplete", String.class).invoke(IntertrustDrmHelper.this.mInstance, str);
                } catch (ClassNotFoundException e10) {
                    TTVideoEngineLog.e(IntertrustDrmHelper.TAG, "class not found:" + e10.getLocalizedMessage());
                } catch (IllegalAccessException e11) {
                    TTVideoEngineLog.e(IntertrustDrmHelper.TAG, "method invoke failied:" + e11.getLocalizedMessage());
                } catch (NoSuchMethodException e12) {
                    TTVideoEngineLog.e(IntertrustDrmHelper.TAG, "method not found:" + e12.getLocalizedMessage());
                } catch (InvocationTargetException e13) {
                    TTVideoEngineLog.e(IntertrustDrmHelper.TAG, "method invoke failied:" + e13.getLocalizedMessage());
                }
            }
        }
    }

    public IntertrustDrmHelper() {
        this.mNetworkSession = null;
        this.mNetworkSession = new TTHTTPNetwork();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _notifyError(Error error) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(1, error));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _notifySuccess() {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(0));
    }

    public int init(Context context, int i10) {
        Object invoke;
        TTVideoEngineLog.d(TAG, "init enter");
        try {
            Class<?> cls = Class.forName(INTERTRUST_DRM_PATH);
            this.mDrmClass = cls;
            this.mInstance = cls.newInstance();
            Class<?> cls2 = Class.forName(INTERTRUST_DRM_LISTENER_PATH);
            this.mIntertrustCallback = Proxy.newProxyInstance(IntertrustDrmHelper.class.getClassLoader(), new Class[]{cls2}, new MyIntertrustListener());
            this.mDrmClass.getDeclaredMethod("setListener", cls2).invoke(this.mInstance, this.mIntertrustCallback);
            Class<?> cls3 = Class.forName(INTERTRUST_DRM_NETWORK_LISTENER_PATH);
            this.mDrmNetworkCallback = Proxy.newProxyInstance(IntertrustDrmHelper.class.getClassLoader(), new Class[]{cls3}, new MyNetworkListener());
            this.mDrmClass.getDeclaredMethod("setNetworkClient", cls3).invoke(this.mInstance, this.mDrmNetworkCallback);
            if (i10 == 0) {
                invoke = this.mDrmClass.getDeclaredMethod("init", Context.class).invoke(this.mInstance, context);
            } else {
                invoke = this.mDrmClass.getDeclaredMethod("init", Context.class, Integer.TYPE).invoke(this.mInstance, context, Integer.valueOf(i10));
            }
            this.mHandler = new MyHandler(this, TTHelper.getLooper());
            return ((Integer) invoke).intValue();
        } catch (ClassNotFoundException e10) {
            TTVideoEngineLog.e(TAG, "class not found:" + e10.getLocalizedMessage());
            return -1002;
        } catch (IllegalAccessException e11) {
            TTVideoEngineLog.e(TAG, "illegal access exception:" + e11.getLocalizedMessage());
            return -1;
        } catch (InstantiationException e12) {
            TTVideoEngineLog.e(TAG, "instance failed+" + e12.getLocalizedMessage());
            return -1;
        } catch (NoSuchMethodException e13) {
            TTVideoEngineLog.e(TAG, "method not found:" + e13.getLocalizedMessage());
            return -1;
        } catch (InvocationTargetException e14) {
            TTVideoEngineLog.e(TAG, "invoke failed:" + e14.getLocalizedMessage());
            return -1;
        }
    }

    public String makeUrl(String str, int i10) {
        TTVideoEngineLog.d(TAG, "makeUrl enter");
        if (this.mInstance == null) {
            return null;
        }
        try {
            if (this.mDrmClass == null) {
                this.mDrmClass = Class.forName(INTERTRUST_DRM_PATH);
            }
            return (String) this.mDrmClass.getDeclaredMethod("makeUrl", String.class, Integer.TYPE).invoke(this.mInstance, str, Integer.valueOf(i10));
        } catch (ClassNotFoundException e10) {
            TTVideoEngineLog.e(TAG, "class not found:" + e10.getLocalizedMessage());
            return null;
        } catch (IllegalAccessException e11) {
            TTVideoEngineLog.e(TAG, "method invoke failied:" + e11.getLocalizedMessage());
            return null;
        } catch (NoSuchMethodException e12) {
            TTVideoEngineLog.e(TAG, "method not found:" + e12.getLocalizedMessage());
            return null;
        } catch (InvocationTargetException e13) {
            TTVideoEngineLog.e(TAG, "method invoke failied:" + e13.getLocalizedMessage());
            return null;
        }
    }

    public int processToken(int i10, String str, String str2) {
        TTVideoEngineLog.d(TAG, "processToken enter");
        if (this.mInstance == null) {
            return -1;
        }
        try {
            if (this.mDrmClass == null) {
                this.mDrmClass = Class.forName(INTERTRUST_DRM_PATH);
            }
            return ((Integer) this.mDrmClass.getDeclaredMethod("processToken", Integer.TYPE, String.class, String.class).invoke(this.mInstance, Integer.valueOf(i10), str, str2)).intValue();
        } catch (ClassNotFoundException e10) {
            TTVideoEngineLog.e(TAG, "class not found:" + e10.getLocalizedMessage());
            return -1;
        } catch (IllegalAccessException e11) {
            TTVideoEngineLog.e(TAG, "method invoke failied:" + e11.getLocalizedMessage());
            return -1;
        } catch (NoSuchMethodException e12) {
            TTVideoEngineLog.e(TAG, "method not found:" + e12.getLocalizedMessage());
            return -1;
        } catch (InvocationTargetException e13) {
            TTVideoEngineLog.e(TAG, "method invoke failied:" + e13.getLocalizedMessage());
            return -1;
        }
    }

    public void release() {
        TTVideoEngineLog.d(TAG, "release enter");
        if (this.mInstance == null) {
            return;
        }
        try {
            if (this.mDrmClass == null) {
                this.mDrmClass = Class.forName(INTERTRUST_DRM_PATH);
            }
            this.mDrmClass.getDeclaredMethod("release", new Class[0]).invoke(this.mInstance, new Object[0]);
            this.mInstance = null;
        } catch (ClassNotFoundException e10) {
            TTVideoEngineLog.e(TAG, "class not found:" + e10.getLocalizedMessage());
        } catch (IllegalAccessException e11) {
            TTVideoEngineLog.e(TAG, "method invoke failied:" + e11.getLocalizedMessage());
        } catch (NoSuchMethodException e12) {
            TTVideoEngineLog.e(TAG, "method not found:" + e12.getLocalizedMessage());
        } catch (InvocationTargetException e13) {
            TTVideoEngineLog.e(TAG, "method invoke failied:" + e13.getLocalizedMessage());
        }
    }

    public void setListener(IntertrustDrmHelperListener intertrustDrmHelperListener) {
        this.mListener = intertrustDrmHelperListener;
    }

    public void setTokenUrlTemplate(String str) {
        TTVideoEngineLog.d(TAG, "setTokenUrlTemplate enter");
        if (this.mInstance == null) {
            return;
        }
        try {
            if (this.mDrmClass == null) {
                this.mDrmClass = Class.forName(INTERTRUST_DRM_PATH);
            }
            this.mDrmClass.getDeclaredMethod("setTokenUrlTemplate", String.class).invoke(this.mInstance, str);
        } catch (ClassNotFoundException e10) {
            TTVideoEngineLog.e(TAG, "class not found:" + e10.getLocalizedMessage());
        } catch (IllegalAccessException e11) {
            TTVideoEngineLog.e(TAG, "method invoke failied:" + e11.getLocalizedMessage());
        } catch (NoSuchMethodException e12) {
            TTVideoEngineLog.e(TAG, "method not found:" + e12.getLocalizedMessage());
        } catch (InvocationTargetException e13) {
            TTVideoEngineLog.e(TAG, "method invoke failied:" + e13.getLocalizedMessage());
        }
    }

    public int start() {
        TTVideoEngineLog.d(TAG, "start enter");
        if (this.mInstance == null) {
            return -1;
        }
        try {
            if (this.mDrmClass == null) {
                this.mDrmClass = Class.forName(INTERTRUST_DRM_PATH);
            }
            return ((Integer) this.mDrmClass.getDeclaredMethod("start", new Class[0]).invoke(this.mInstance, new Object[0])).intValue();
        } catch (ClassNotFoundException e10) {
            TTVideoEngineLog.e(TAG, "class not found:" + e10.getLocalizedMessage());
            return -1;
        } catch (IllegalAccessException e11) {
            TTVideoEngineLog.e(TAG, "method invoke failied:" + e11.getLocalizedMessage());
            return -1;
        } catch (NoSuchMethodException e12) {
            TTVideoEngineLog.e(TAG, "method not found:" + e12.getLocalizedMessage());
            return -1;
        } catch (InvocationTargetException e13) {
            TTVideoEngineLog.e(TAG, "method invoke failied:" + e13.getLocalizedMessage());
            return -1;
        }
    }

    public int stop() {
        TTVideoEngineLog.d(TAG, "stop enter");
        if (this.mInstance == null) {
            return -1;
        }
        try {
            if (this.mDrmClass == null) {
                this.mDrmClass = Class.forName(INTERTRUST_DRM_PATH);
            }
            return ((Integer) this.mDrmClass.getDeclaredMethod("stop", new Class[0]).invoke(this.mInstance, new Object[0])).intValue();
        } catch (ClassNotFoundException e10) {
            TTVideoEngineLog.e(TAG, "class not found:" + e10.getLocalizedMessage());
            return -1;
        } catch (IllegalAccessException e11) {
            TTVideoEngineLog.e(TAG, "method invoke failied:" + e11.getLocalizedMessage());
            return -1;
        } catch (NoSuchMethodException e12) {
            TTVideoEngineLog.e(TAG, "method not found:" + e12.getLocalizedMessage());
            return -1;
        } catch (InvocationTargetException e13) {
            TTVideoEngineLog.e(TAG, "method invoke failied:" + e13.getLocalizedMessage());
            return -1;
        }
    }
}
