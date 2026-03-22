package com.ss.ttvideoengine;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Parcel;
import java.util.List;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
/* loaded from: classes6.dex */
public class TTVideoEngineLooperThread {
    public static final int INJECT_MSG_THREAD_NOTALLOW_DESTROY = 0;
    private static final String PARAM_COND = "msgCond";
    private static final String PARAM_OBJ = "paramObj";
    private static final String PARAM_OBJ1 = "paramObj1";
    private static final String PARAM_OBJ2 = "paramObj2";
    private static final String TAG = "TTVideoEngineLooperThread";
    static final long TIMEOUT_MSG_DEFAULT = 500;
    static final long TIMEOUT_MSG_NO_LIMIT = -1;
    private List<Condition> mCondList;
    private TTVideoEngine mEngine;
    private Lock mEngineMsgLock;
    Parcel mEngineMsgRetValue;
    private Lock mMainMsgLock;
    Parcel mMainMsgRetValue;
    private HandlerThread mMessageThread;
    private Handler mEngineMsgHandler = null;
    private Handler mMainLooperHandler = null;
    private boolean mIsHandlingMainMsg = false;
    boolean mInjectedMsgThread = false;
    boolean mInjectedMsgNotAllowDestroy = false;
}
