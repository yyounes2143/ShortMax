package com.bytedance.vcloud.cacheModule;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.bytedance.vcloud.cacheModule.utils.CmLog;
/* loaded from: classes3.dex */
public class PreConnectTaskManager {
    private static final int MSG_WHAT_CHANGE_CUR_PLAY_TS_KEY = 100005;
    private static final int MSG_WHAT_CHANGE_CUR_PRECONNECT_TS_KEY = 100006;
    private static final int MSG_WHAT_CHANGE_TASK_RUN_MODE = 100003;
    private static final int MSG_WHAT_ERASE_ALL_TASK = 100001;
    private static final int MSG_WHAT_ERASE_TASK = 100002;
    private static final int MSG_WHAT_PAUSE = 100007;
    private static final int MSG_WHAT_RESUME = 100008;
    private static final int MSG_WHAT_SET_MAX_TASK_NUM = 100004;
    private static final String TAG;
    private Handler mHandler;
    private HandlerThread mHandlerThread;

    /* loaded from: classes3.dex */
    private static class PreConnectTaskManagerInner {
        private static final PreConnectTaskManager sInstance = new PreConnectTaskManager();

        private PreConnectTaskManagerInner() {
        }
    }

    /* loaded from: classes3.dex */
    public enum RunMode {
        Limit,
        Full
    }

    static {
        CacheModuleLoader.loadLibrary();
        TAG = PreConnectTaskManager.class.getSimpleName();
    }

    private native void _changeCurPlayTsKey(String str);

    private native void _changeCurPreConnectTsKey(String str);

    private native void _changeTaskRunMode(String str, int i10);

    private native void _eraseAllPreConnectTask();

    private native void _erasePreConnectTask(String str);

    private native void _pause(String str);

    private native void _resume(String str);

    private native void _setMaxTaskNum(String str, int i10);

    /* JADX INFO: Access modifiers changed from: private */
    public void changeCurPlayTsKeyInner(String str) {
        if (CacheModuleLoader.inited) {
            try {
                _changeCurPlayTsKey(str);
            } catch (UnsatisfiedLinkError e10) {
                String str2 = TAG;
                CmLog.w(str2, "api-native not match: " + e10.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeTaskRunModeInner(String str, int i10) {
        if (CacheModuleLoader.inited) {
            try {
                _changeTaskRunMode(str, i10);
            } catch (UnsatisfiedLinkError e10) {
                String str2 = TAG;
                CmLog.w(str2, "api-native not match: " + e10.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void eraseAllPreConnectTaskInner() {
        if (CacheModuleLoader.inited) {
            try {
                _eraseAllPreConnectTask();
            } catch (UnsatisfiedLinkError e10) {
                String str = TAG;
                CmLog.w(str, "api-native not match: " + e10.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void erasePreConnectTaskInner(String str) {
        if (CacheModuleLoader.inited) {
            try {
                _erasePreConnectTask(str);
            } catch (UnsatisfiedLinkError e10) {
                String str2 = TAG;
                CmLog.w(str2, "api-native not match: " + e10.getMessage());
            }
        }
    }

    public static PreConnectTaskManager getInstance() {
        return PreConnectTaskManagerInner.sInstance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pauseInner(String str) {
        if (CacheModuleLoader.inited) {
            try {
                _pause(str);
            } catch (UnsatisfiedLinkError e10) {
                String str2 = TAG;
                CmLog.w(str2, "api-native not match: " + e10.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resumeInner(String str) {
        if (CacheModuleLoader.inited) {
            try {
                _resume(str);
            } catch (UnsatisfiedLinkError e10) {
                String str2 = TAG;
                CmLog.w(str2, "api-native not match: " + e10.getMessage());
            }
        }
    }

    private void sendMsg(int i10) {
        Message message = new Message();
        message.what = i10;
        this.mHandler.sendMessage(message);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMaxTaskNumInner(String str, int i10) {
        if (CacheModuleLoader.inited) {
            try {
                _setMaxTaskNum(str, i10);
            } catch (UnsatisfiedLinkError e10) {
                String str2 = TAG;
                CmLog.w(str2, "api-native not match: " + e10.getMessage());
            }
        }
    }

    public void changeCurPlayTsKey(String str) {
        String str2 = TAG;
        CmLog.d(str2, "changeCurPlayTsKey， key : " + str);
        sendMsg(100005, str);
    }

    public void changeCurPreConnectTsKey(String str) {
        String str2 = TAG;
        CmLog.d(str2, "changeCurPreConnectTsKey， key : " + str);
        sendMsg(100006, str);
    }

    public void changeCurPreConnectTsKeyInner(String str) {
        if (CacheModuleLoader.inited) {
            try {
                _changeCurPreConnectTsKey(str);
            } catch (UnsatisfiedLinkError e10) {
                String str2 = TAG;
                CmLog.w(str2, "api-native not match: " + e10.getMessage());
            }
        }
    }

    public void changeTaskRunMode(String str, RunMode runMode) {
        String str2 = TAG;
        CmLog.d(str2, "changeTaskRunMode， key : " + str + ", mode : " + runMode.name());
        sendMsg(MSG_WHAT_CHANGE_TASK_RUN_MODE, str, runMode.ordinal());
    }

    public void eraseAllPreConnectTask() {
        CmLog.d(TAG, "eraseAllPreConnectTask");
        sendMsg(MSG_WHAT_ERASE_ALL_TASK);
    }

    public void erasePreConnectTask(String str) {
        String str2 = TAG;
        CmLog.d(str2, "erasePreConnectTask:" + str);
        sendMsg(MSG_WHAT_ERASE_TASK, str);
    }

    public void pause(String str) {
        String str2 = TAG;
        CmLog.d(str2, "pause， key : " + str);
        sendMsg(MSG_WHAT_PAUSE, str);
    }

    public void resume(String str) {
        String str2 = TAG;
        CmLog.d(str2, "resume， key : " + str);
        sendMsg(MSG_WHAT_RESUME, str);
    }

    public void setMaxTaskNum(String str, int i10) {
        String str2 = TAG;
        CmLog.d(str2, "setMaxTaskNum， key : " + str + ", num : " + i10);
        sendMsg(MSG_WHAT_SET_MAX_TASK_NUM, str, i10);
    }

    private PreConnectTaskManager() {
        this.mHandlerThread = null;
        this.mHandler = null;
        HandlerThread handlerThread = new HandlerThread(PreConnectTaskManager.class.getSimpleName(), 1);
        this.mHandlerThread = handlerThread;
        handlerThread.start();
        this.mHandler = new Handler(this.mHandlerThread.getLooper()) { // from class: com.bytedance.vcloud.cacheModule.PreConnectTaskManager.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                switch (message.what) {
                    case PreConnectTaskManager.MSG_WHAT_ERASE_ALL_TASK /* 100001 */:
                        PreConnectTaskManager.this.eraseAllPreConnectTaskInner();
                        break;
                    case PreConnectTaskManager.MSG_WHAT_ERASE_TASK /* 100002 */:
                        PreConnectTaskManager.this.erasePreConnectTaskInner((String) message.obj);
                        break;
                    case PreConnectTaskManager.MSG_WHAT_CHANGE_TASK_RUN_MODE /* 100003 */:
                        PreConnectTaskManager.this.changeTaskRunModeInner((String) message.obj, message.arg1);
                        break;
                    case PreConnectTaskManager.MSG_WHAT_SET_MAX_TASK_NUM /* 100004 */:
                        PreConnectTaskManager.this.setMaxTaskNumInner((String) message.obj, message.arg1);
                        break;
                    case 100005:
                        PreConnectTaskManager.this.changeCurPlayTsKeyInner((String) message.obj);
                        break;
                    case 100006:
                        PreConnectTaskManager.this.changeCurPreConnectTsKeyInner((String) message.obj);
                        break;
                    case PreConnectTaskManager.MSG_WHAT_PAUSE /* 100007 */:
                        PreConnectTaskManager.this.pauseInner((String) message.obj);
                        break;
                    case PreConnectTaskManager.MSG_WHAT_RESUME /* 100008 */:
                        PreConnectTaskManager.this.resumeInner((String) message.obj);
                        break;
                }
                super.handleMessage(message);
            }
        };
    }

    private void sendMsg(int i10, String str) {
        Message message = new Message();
        message.what = i10;
        message.obj = str;
        this.mHandler.sendMessage(message);
    }

    private void sendMsg(int i10, String str, int i11) {
        Message message = new Message();
        message.what = i10;
        message.obj = str;
        message.arg1 = i11;
        this.mHandler.sendMessage(message);
    }
}
