package com.ss.ttvideoengine.log;

import android.content.Context;
import android.text.TextUtils;
import com.ss.ttvideoengine.TTVideoEngine;
import com.ss.ttvideoengine.utils.EngineThreadPool;
import com.ss.ttvideoengine.utils.FileUtils;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public final class EventSaver {
    private static final String DIR_NAME = "saved_events";
    private static final String TAG = "EventSaver";
    private static boolean checkedOnce;
    private static volatile EventSaver sInstance;
    private final File mDirectory;
    private final Set<String> mEventIdList = new HashSet();

    private EventSaver(Context context) {
        this.mDirectory = new File(context.getCacheDir(), DIR_NAME);
    }

    public static EventSaver getInstance(Context context) {
        if (sInstance == null) {
            synchronized (EventSaver.class) {
                try {
                    if (sInstance == null) {
                        sInstance = new EventSaver(context);
                    }
                } finally {
                }
            }
        }
        return sInstance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$remove$0(String str) {
        try {
            new File(this.mDirectory, str).delete();
            TTVideoEngineLog.i(TAG, "saved event deleted: " + str);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void uploadFile(File file, boolean z10) {
        try {
            VideoEventManager.instance.addEvent(z10, new JSONObject(FileUtils.readString(file)));
            TTVideoEngineLog.i(TAG, "saved event uploaded: " + file.getName());
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        file.delete();
    }

    public synchronized void remove(final String str) {
        if (!this.mEventIdList.contains(str)) {
            return;
        }
        this.mEventIdList.remove(str);
        EngineThreadPool.addExecuteTask(new Runnable() { // from class: com.ss.ttvideoengine.log.b
            @Override // java.lang.Runnable
            public final void run() {
                EventSaver.this.lambda$remove$0(str);
            }
        });
    }

    public synchronized void save(VideoEventOnePlay videoEventOnePlay, VideoEventBase videoEventBase) {
        if (videoEventOnePlay != null && videoEventBase != null) {
            String str = videoEventOnePlay.mSessionID;
            if (TextUtils.isEmpty(str)) {
                TTVideoEngineLog.w(TAG, "invalid sessionId");
                return;
            }
            this.mEventIdList.add(str);
            FileUtils.checkAndMkdir(this.mDirectory);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(new File(this.mDirectory, str));
                try {
                    JSONObject jsonObject = videoEventOnePlay.toJsonObject(videoEventBase);
                    jsonObject.put("manual_save", 1);
                    fileOutputStream.write(jsonObject.toString().getBytes());
                    TTVideoEngineLog.d(TAG, "save event with name: " + str);
                    fileOutputStream.close();
                } finally {
                }
            } catch (IOException e10) {
                e10.printStackTrace();
            } catch (JSONException e11) {
                e11.printStackTrace();
            }
        }
    }

    public void saveAllPlayEvent() {
        for (Map.Entry<Integer, WeakReference<TTVideoEngine>> entry : EngineInstanceHolder.getInstance().get().entrySet()) {
            TTVideoEngine tTVideoEngine = entry.getValue().get();
            if (tTVideoEngine != null) {
                tTVideoEngine.saveEvent();
            }
        }
    }

    public void uploadIfExits(boolean z10) {
        if (checkedOnce) {
            return;
        }
        checkedOnce = true;
        if (!this.mDirectory.exists()) {
            TTVideoEngineLog.w(TAG, "dir does not exist");
            return;
        }
        File[] listFiles = this.mDirectory.listFiles();
        if (listFiles == null) {
            TTVideoEngineLog.i(TAG, "no file in directory");
            return;
        }
        for (File file : listFiles) {
            if (file != null && !file.isDirectory()) {
                uploadFile(file, z10);
            }
        }
    }
}
