package com.ss.ttvideoengine.download;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.FeatureManager;
import com.ss.ttvideoengine.Resolution;
import com.ss.ttvideoengine.database.KVDBManager;
import com.ss.ttvideoengine.download.DownloadTask;
import com.ss.ttvideoengine.model.VideoModel;
import com.ss.ttvideoengine.utils.Error;
import com.ss.ttvideoengine.utils.TTHelper;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
/* loaded from: classes6.dex */
public class Downloader {
    private static final int MESSAGE_COMPLETE = 3;
    private static final int MESSAGE_FAIL = 1;
    private static final int MESSAGE_LOADTASKS = 4;
    private static final int MESSAGE_OPEN_DB_FAIL = 5;
    private static final int MESSAGE_PROGRESS = 0;
    private static final int MESSAGE_SUSPEND = 2;
    private static final long MIN_FREE_SIZE = 1073741824;
    private static final int PRIVATE_MESSAGE_LOADALLTASK = 10;
    private static final int PRIVATE_MESSAGE_SAVETASK = 11;
    private static final String TAG = "TTVideoEngine.Downloader";
    private static final String dataBaseName = "TTVideoEngine_download_database_v01";
    private static final Downloader ourInstance = new Downloader();
    private static final String tasksIndex = "TTVideoEngine_download_index_v01";
    private ArrayList<DownloadTask> allTasks;
    private ArrayList<Long> indexArray;
    private long limitFreeDiskSize;
    private long maxDownloadOperationCount;
    private long maxTaskId;
    private boolean readAllTask;
    private ArrayList<DownloadTask> runingTasks;
    private ArrayList<DownloadTask> waitingTasks;
    private IDownloaderListener listener = null;
    private ArrayList<DownloadTask> temLoadedTasks = null;
    private boolean loadData = false;
    private Handler mHandler = null;
    private Context mContext = null;
    private KVDBManager dbObject = null;
    private TaskThread taskThread = new TaskThread();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public class SaveInfos {
        ArrayList<DownloadTask> alltasks;
        DownloadTask task;

        private SaveInfos() {
            this.task = null;
            this.alltasks = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class TaskThread {
        private Handler mHandler;
        private HandlerThread mHandlerThread;

        public TaskThread() {
            try {
                HandlerThread handlerThread = new HandlerThread("vcloud.engine.download.tasks");
                this.mHandlerThread = handlerThread;
                handlerThread.start();
                this.mHandler = new Handler(this.mHandlerThread.getLooper()) { // from class: com.ss.ttvideoengine.download.Downloader.TaskThread.1
                    @Override // android.os.Handler
                    public void handleMessage(@NonNull Message message) {
                        SaveInfos saveInfos;
                        try {
                            Object obj = message.obj;
                            if (!(obj instanceof ArrayList)) {
                                TTVideoEngineLog.d(Downloader.TAG, "[downloader] obj should instance of ArrayList");
                                return;
                            }
                            ArrayList arrayList = (ArrayList) obj;
                            Downloader downloader = (Downloader) arrayList.get(0);
                            int i10 = message.what;
                            if (i10 == 10) {
                                downloader.dbObject = new KVDBManager(downloader.mContext, Downloader.dataBaseName);
                                if (!downloader.dbObject.isCreateDBSuccess()) {
                                    if (downloader.mHandler != null) {
                                        downloader.mHandler.sendMessage(Message.obtain(downloader.mHandler, 5));
                                        return;
                                    }
                                    return;
                                }
                                TTVideoEngineLog.d(Downloader.TAG, "[downloader] open db success");
                                downloader.temLoadedTasks = downloader._loadAllTasks();
                                if (downloader.mHandler != null) {
                                    downloader.mHandler.sendMessage(Message.obtain(downloader.mHandler, 4));
                                }
                            } else if (i10 == 11 && arrayList.size() == 2 && (saveInfos = (SaveInfos) arrayList.get(1)) != null) {
                                downloader.writeTask(saveInfos.task, saveInfos.alltasks);
                            }
                        } catch (Throwable th2) {
                            TTVideoEngineLog.d(th2);
                        }
                    }
                };
            } catch (Throwable th2) {
                TTVideoEngineLog.d(th2);
                this.mHandlerThread = null;
                this.mHandler = null;
            }
        }

        public void postMessage(ArrayList<Object> arrayList, int i10) {
            if (this.mHandler != null && this.mHandlerThread != null) {
                Message obtain = Message.obtain();
                obtain.what = i10;
                obtain.obj = arrayList;
                this.mHandler.sendMessage(obtain);
            }
        }
    }

    private Downloader() {
        this.maxDownloadOperationCount = 0L;
        this.limitFreeDiskSize = MIN_FREE_SIZE;
        this.maxTaskId = 0L;
        this.allTasks = null;
        this.waitingTasks = null;
        this.runingTasks = null;
        this.indexArray = null;
        this.readAllTask = false;
        this.maxTaskId = -1L;
        this.allTasks = new ArrayList<>();
        this.indexArray = new ArrayList<>();
        this.waitingTasks = new ArrayList<>();
        this.runingTasks = new ArrayList<>();
        this.maxDownloadOperationCount = 1L;
        this.limitFreeDiskSize = MIN_FREE_SIZE;
        this.readAllTask = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0047, code lost:
        if (r7 == null) goto L112;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0144 A[Catch: all -> 0x011c, TryCatch #4 {all -> 0x011c, blocks: (B:54:0x010d, B:58:0x0123, B:63:0x0138, B:65:0x0144, B:67:0x014a, B:70:0x0151, B:71:0x0156, B:73:0x015c, B:74:0x0160, B:75:0x0163, B:77:0x0167, B:79:0x016b, B:80:0x016e, B:82:0x0175, B:83:0x0178, B:85:0x017f, B:87:0x0185), top: B:113:0x010d }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0175 A[Catch: all -> 0x011c, TryCatch #4 {all -> 0x011c, blocks: (B:54:0x010d, B:58:0x0123, B:63:0x0138, B:65:0x0144, B:67:0x014a, B:70:0x0151, B:71:0x0156, B:73:0x015c, B:74:0x0160, B:75:0x0163, B:77:0x0167, B:79:0x016b, B:80:0x016e, B:82:0x0175, B:83:0x0178, B:85:0x017f, B:87:0x0185), top: B:113:0x010d }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x017f A[Catch: all -> 0x011c, TryCatch #4 {all -> 0x011c, blocks: (B:54:0x010d, B:58:0x0123, B:63:0x0138, B:65:0x0144, B:67:0x014a, B:70:0x0151, B:71:0x0156, B:73:0x015c, B:74:0x0160, B:75:0x0163, B:77:0x0167, B:79:0x016b, B:80:0x016e, B:82:0x0175, B:83:0x0178, B:85:0x017f, B:87:0x0185), top: B:113:0x010d }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0198 A[Catch: all -> 0x018f, TRY_LEAVE, TryCatch #5 {all -> 0x018f, blocks: (B:90:0x018b, B:93:0x0191, B:95:0x0198), top: B:115:0x018b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.ArrayList<com.ss.ttvideoengine.download.DownloadTask> _loadAllTasks() {
        /*
            Method dump skipped, instructions count: 448
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.download.Downloader._loadAllTasks():java.util.ArrayList");
    }

    private DownloadTask addTask(DownloadTask downloadTask) {
        DownloadTask downloadTask2;
        Throwable th2;
        downloadTask.setDownloader(this);
        try {
            if (this.readAllTask) {
                if (this.allTasks.contains(downloadTask)) {
                    downloadTask2 = this.allTasks.get(this.allTasks.indexOf(downloadTask));
                    try {
                        downloadTask2.setDownloader(this);
                        return downloadTask2;
                    } catch (Throwable th3) {
                        th2 = th3;
                        try {
                            TTVideoEngineLog.d(th2);
                        } catch (Throwable unused) {
                        }
                        return downloadTask2;
                    }
                }
                long j10 = this.maxTaskId + 1;
                this.maxTaskId = j10;
                downloadTask.taskIdentifier = j10;
                if (this.indexArray.contains(Long.valueOf(j10))) {
                    TTVideoEngineLog.e(TAG, "[downloader] add task fail. taskIdentifier = " + this.maxTaskId);
                    downloadTask = null;
                } else {
                    this.indexArray.add(Long.valueOf(this.maxTaskId));
                    this.allTasks.add(downloadTask);
                }
                saveTaskInfo(downloadTask);
                return downloadTask;
            }
            TTVideoEngineLog.e(TAG, "[downloader] should load all tasks first.");
            return null;
        } catch (Throwable th4) {
            downloadTask2 = downloadTask;
            th2 = th4;
        }
    }

    public static Downloader getInstance() {
        return ourInstance;
    }

    private String indexToString(ArrayList<Long> arrayList) {
        if (arrayList != null) {
            StringBuilder sb2 = new StringBuilder(arrayList.size());
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                sb2.append(arrayList.get(i10));
                if (i10 < arrayList.size() - 1) {
                    sb2.append(",");
                }
            }
            return sb2.toString();
        }
        return null;
    }

    private void initHandle() {
        if (this.mHandler != null) {
            return;
        }
        this.mHandler = new Handler(TTHelper.getLooper()) { // from class: com.ss.ttvideoengine.download.Downloader.1
            @Override // android.os.Handler
            public void handleMessage(@NonNull Message message) {
                boolean z10;
                long j10;
                long j11;
                Downloader downloader;
                try {
                    super.handleMessage(message);
                    int i10 = message.what;
                    if (i10 == 1) {
                        Object obj = message.obj;
                        if (obj instanceof ArrayList) {
                            ArrayList arrayList = (ArrayList) obj;
                            DownloadTask taskForKey = Downloader.this.taskForKey((String) arrayList.get(0));
                            if (taskForKey != null) {
                                Error error = (Error) arrayList.get(1);
                                if (!taskForKey._shouldRetry(error)) {
                                    taskForKey.setState(5);
                                }
                                taskForKey.receiveError(error);
                                ArrayList<String> arrayList2 = taskForKey.mediaKeys;
                                if (arrayList2 != null && arrayList2.size() > 0) {
                                    for (int i11 = 0; i11 < taskForKey.mediaKeys.size(); i11++) {
                                        DataLoaderHelper.getDataLoader().suspendedDownload(taskForKey.mediaKeys.get(i11));
                                    }
                                }
                            }
                        }
                    } else if (i10 == 2) {
                        DownloadTask taskForKey2 = Downloader.this.taskForKey((String) message.obj);
                        if (taskForKey2 != null) {
                            if (taskForKey2.getState() != 5 && taskForKey2.getState() != 3) {
                                taskForKey2.setState(3);
                            }
                            TTVideoEngineLog.d(Downloader.TAG, "[downloader] task did suspended " + taskForKey2.toString());
                            Downloader.this.tryNextWaitingTask(taskForKey2);
                        }
                    } else if (i10 == 0) {
                        String[] split = ((String) message.obj).split(",");
                        if (split.length < 4) {
                            return;
                        }
                        long parseLong = Long.parseLong(split[0]);
                        long parseLong2 = Long.parseLong(split[1]);
                        TTVideoEngineLog.i(Downloader.TAG, "[downloader] download progress, bytesReceived = " + parseLong + " expectedToReceive = " + parseLong2);
                        if (parseLong2 <= 0) {
                            return;
                        }
                        String str = split[2];
                        String str2 = split[3];
                        DownloadTask taskForKey3 = this.taskForKey(str);
                        if (taskForKey3 == null) {
                            TTVideoEngineLog.e(Downloader.TAG, "[downloader] exect fail. key = " + str + ", task is null");
                            DataLoaderHelper.getDataLoader().suspendedDownload(str);
                            return;
                        }
                        if (taskForKey3.getState() != 3 && taskForKey3.getState() != 5) {
                            taskForKey3.bytesReceivedMap.put(str, Long.valueOf(parseLong));
                            taskForKey3.bytesExpectedToReceiveMap.put(str, Long.valueOf(parseLong2));
                            ArrayList<String> arrayList3 = taskForKey3.mediaKeys;
                            if (arrayList3 != null && arrayList3.size() > 0) {
                                Iterator<String> it = taskForKey3.mediaKeys.iterator();
                                z10 = true;
                                j10 = 0;
                                j11 = 0;
                                while (it.hasNext()) {
                                    String next = it.next();
                                    if (!taskForKey3.bytesReceivedMap.containsKey(next)) {
                                        z10 = false;
                                    } else {
                                        j10 += taskForKey3.bytesReceivedMap.get(next).longValue();
                                        j11 += taskForKey3.bytesExpectedToReceiveMap.get(next).longValue();
                                    }
                                }
                            } else {
                                z10 = false;
                                j10 = 0;
                                j11 = 0;
                            }
                            taskForKey3.bytesReceived = j10;
                            taskForKey3.bytesExpectedToReceive = j11;
                            if (!taskForKey3.mFirstResumeCallback && (downloader = this) != null && downloader.listener != null) {
                                this.listener.downloaderDidResume(this, taskForKey3, taskForKey3.bytesReceived, taskForKey3.bytesExpectedToReceive);
                                taskForKey3.mFirstResumeCallback = true;
                            }
                            if (z10) {
                                long j12 = taskForKey3.bytesReceived;
                                if (j12 > 0 && j12 == taskForKey3.bytesExpectedToReceive) {
                                    taskForKey3.availableLocalFilePath = str2;
                                    taskForKey3.downloadEnd();
                                    return;
                                }
                            }
                            long currentTimeMillis = System.currentTimeMillis();
                            long j13 = currentTimeMillis - taskForKey3.updateTs;
                            int i12 = (j13 > 1000L ? 1 : (j13 == 1000L ? 0 : -1));
                            if (i12 > 0) {
                                long freeSize = TTHelper.getFreeSize(Downloader.this.mContext);
                                TTVideoEngineLog.i(Downloader.TAG, "[downloader] get free size, size = " + freeSize);
                                if (freeSize <= Downloader.this.getLimitFreeDiskSize()) {
                                    taskForKey3.receiveError(new Error(Error.Download, Error.NotEnoughDiskSpace, 0, "available size is less than " + Downloader.this.getLimitFreeDiskSize() + " Byte"));
                                    if (taskForKey3.mediaKeys != null) {
                                        for (int i13 = 0; i13 < taskForKey3.mediaKeys.size(); i13++) {
                                            DataLoaderHelper.getDataLoader().suspendedDownload(taskForKey3.mediaKeys.get(i13));
                                        }
                                        return;
                                    }
                                    return;
                                }
                            }
                            if (taskForKey3.updateTs < 1 || i12 >= 0) {
                                TTVideoEngineLog.i(Downloader.TAG, "[downloader] notify listener. key = " + str);
                                Downloader downloader2 = this;
                                if (downloader2 != null && downloader2.listener != null && taskForKey3.getState() != 3) {
                                    this.listener.downloaderWriteData(this, taskForKey3, taskForKey3.bytesReceived - taskForKey3.updateBytesReceived, j13);
                                    this.listener.downloaderProgress(this, taskForKey3, taskForKey3.bytesReceived, taskForKey3.bytesExpectedToReceive);
                                }
                                taskForKey3.updateTs = currentTimeMillis;
                                taskForKey3.updateBytesReceived = taskForKey3.bytesReceived;
                                return;
                            }
                            return;
                        }
                        TTVideoEngineLog.i(Downloader.TAG, "[downloader] task should suspend. key = " + str + ", state = " + taskForKey3.getState());
                        DataLoaderHelper.getDataLoader().suspendedDownload(str);
                        Downloader.this.tryNextWaitingTask(taskForKey3);
                    } else if (i10 == 5) {
                        this.loadData = false;
                        TTVideoEngineLog.e(Downloader.TAG, "[downloader] create KV db fail");
                        if (this.listener != null) {
                            this.listener.downloaderDidLoadAllTask(this, null, new Error(Error.Download, Error.CreateDBFail, 0, "create kv db fail"));
                        }
                    } else if (i10 == 4 && this.listener != null) {
                        ArrayList arrayList4 = new ArrayList(this.temLoadedTasks);
                        if (arrayList4.size() > 0) {
                            this.maxTaskId = ((DownloadTask) arrayList4.get(arrayList4.size() - 1)).taskIdentifier;
                        }
                        Iterator it2 = arrayList4.iterator();
                        while (it2.hasNext()) {
                            this.indexArray.add(Long.valueOf(((DownloadTask) it2.next()).taskIdentifier));
                        }
                        this.allTasks.clear();
                        this.allTasks.addAll(arrayList4);
                        this.readAllTask = true;
                        this.loadData = false;
                        TTVideoEngineLog.d(Downloader.TAG, "[downloader] did load alltask. size = " + arrayList4.size());
                        this.listener.downloaderDidLoadAllTask(this, arrayList4, null);
                    }
                } catch (Throwable th2) {
                    TTVideoEngineLog.d(th2);
                }
            }
        };
    }

    private void saveTaskInfo(DownloadTask downloadTask) {
        SaveInfos saveInfos = new SaveInfos();
        saveInfos.task = downloadTask;
        saveInfos.alltasks = new ArrayList<>(this.allTasks);
        ArrayList<Object> arrayList = new ArrayList<>();
        arrayList.add(this);
        arrayList.add(saveInfos);
        this.taskThread.postMessage(arrayList, 11);
    }

    @Nullable
    private ArrayList<String> stringToStringArray(String str) {
        ArrayList<String> arrayList = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            String[] split = str.split(",");
            if (split == null || split.length <= 0) {
                return null;
            }
            ArrayList<String> arrayList2 = new ArrayList<>();
            try {
                for (String str2 : split) {
                    if (!TextUtils.isEmpty(str2)) {
                        arrayList2.add(str2);
                    }
                }
                return arrayList2;
            } catch (Throwable th2) {
                th = th2;
                arrayList = arrayList2;
                TTVideoEngineLog.d(th);
                return arrayList;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0042, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.ss.ttvideoengine.download.DownloadTask taskForKey(java.lang.String r6) {
        /*
            r5 = this;
            boolean r0 = android.text.TextUtils.isEmpty(r6)
            r1 = 0
            if (r0 == 0) goto L8
            return r1
        L8:
            java.util.ArrayList r0 = new java.util.ArrayList
            java.util.ArrayList<com.ss.ttvideoengine.download.DownloadTask> r2 = r5.allTasks
            r0.<init>(r2)
            java.util.Iterator r0 = r0.iterator()
        L13:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L44
            java.lang.Object r2 = r0.next()
            com.ss.ttvideoengine.download.DownloadTask r2 = (com.ss.ttvideoengine.download.DownloadTask) r2
            java.util.ArrayList<java.lang.String> r3 = r2.mediaKeys
            if (r3 == 0) goto L42
            int r3 = r3.size()
            if (r3 <= 0) goto L42
            java.util.ArrayList<java.lang.String> r3 = r2.mediaKeys
            java.util.Iterator r3 = r3.iterator()
        L2f:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L42
            java.lang.Object r4 = r3.next()
            java.lang.String r4 = (java.lang.String) r4
            boolean r4 = r6.equals(r4)
            if (r4 == 0) goto L2f
            r1 = r2
        L42:
            if (r1 == 0) goto L13
        L44:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.download.Downloader.taskForKey(java.lang.String):com.ss.ttvideoengine.download.DownloadTask");
    }

    private void writeIndexesToDisk(ArrayList<DownloadTask> arrayList) {
        ArrayList<Long> arrayList2 = new ArrayList<>();
        Iterator<DownloadTask> it = arrayList.iterator();
        while (it.hasNext()) {
            DownloadTask next = it.next();
            if (!arrayList2.contains(Long.valueOf(next.taskIdentifier))) {
                arrayList2.add(Long.valueOf(next.taskIdentifier));
            }
        }
        Collections.sort(arrayList2);
        String indexToString = indexToString(arrayList2);
        this.dbObject.save(TextureRenderKeys.KEY_IS_INDEX, indexToString);
        SharedPreferences.Editor edit = this.mContext.getSharedPreferences(tasksIndex, 0).edit();
        edit.putString(TextureRenderKeys.KEY_IS_INDEX, indexToString);
        edit.commit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeTask(DownloadTask downloadTask, ArrayList<DownloadTask> arrayList) {
        writeIndexesToDisk(arrayList);
        String jSONObject = downloadTask.jsonObject().toString();
        String valueOf = String.valueOf(downloadTask.taskIdentifier);
        TTVideoEngineLog.i(TAG, "[downloader] write task. key " + valueOf + " value: " + jSONObject);
        if (arrayList.contains(downloadTask)) {
            if (!this.dbObject.save(valueOf, jSONObject)) {
                TTVideoEngineLog.e(TAG, "[downloader] save task fail, videoid = " + downloadTask.videoId + " taskIdentifier = " + downloadTask.taskIdentifier);
                downloadTask.receiveError(new Error(Error.Download, Error.SaveTaskItem, -1, jSONObject));
            }
        } else if (!this.dbObject.remove(valueOf)) {
            TTVideoEngineLog.e(TAG, "[downloader] remove task fail, videoid = " + downloadTask.videoId + " taskIdentifier = " + downloadTask.taskIdentifier);
            downloadTask.receiveError(new Error(Error.Download, Error.SaveTaskItem, -1, jSONObject));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void cancel(DownloadTask downloadTask) {
        this.allTasks.remove(downloadTask);
        this.indexArray.remove(Long.valueOf(downloadTask.taskIdentifier));
        this.waitingTasks.remove(downloadTask);
        downloadTask.receiveError(new Error(Error.Download, Error.UserCancel, 0, "task info: " + downloadTask.toString()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void completeError(DownloadTask downloadTask, Error error) {
        if (downloadTask.finished && !downloadTask.canceled) {
            TTVideoEngineLog.d(TAG, "[downloader] task did finished, info = " + downloadTask.toString());
            return;
        }
        if (error != null) {
            TTVideoEngineLog.d(TAG, "[downloader] error info " + error.toString());
        }
        downloadTask.finished = true;
        saveTaskInfo(downloadTask);
        IDownloaderListener iDownloaderListener = this.listener;
        if (iDownloaderListener != null) {
            if (error == null) {
                long j10 = downloadTask.bytesExpectedToReceive;
                iDownloaderListener.downloaderProgress(this, downloadTask, j10, j10);
            }
            this.listener.downloaderDidComplete(this, downloadTask, error);
        }
        TTVideoEngineLog.d(TAG, "[downloader] task complete, task info = " + downloadTask.toString());
        tryNextWaitingTask(downloadTask);
    }

    public void downloadDidSuspened(String str) {
        Handler handler;
        if (!TextUtils.isEmpty(str) && (handler = this.mHandler) != null) {
            handler.sendMessage(Message.obtain(handler, 2, str));
        }
    }

    public void downloadFail(String str, Error error) {
        if (!TextUtils.isEmpty(str) && error != null && this.mHandler != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(str);
            arrayList.add(error);
            Handler handler = this.mHandler;
            handler.sendMessage(Message.obtain(handler, 1, arrayList));
        }
    }

    public long getLimitFreeDiskSize() {
        return this.limitFreeDiskSize;
    }

    @Nullable
    public IDownloaderListener getListener() {
        return this.listener;
    }

    public long getMaxDownloadOperationCount() {
        return this.maxDownloadOperationCount;
    }

    public void invalidateAndCancelAllTasks() {
        ArrayList<DownloadTask> arrayList = this.allTasks;
        if (arrayList == null) {
            return;
        }
        Iterator<DownloadTask> it = arrayList.iterator();
        while (it.hasNext()) {
            DownloadTask next = it.next();
            if (next != null) {
                next.invalidateAndCancel();
            }
        }
    }

    public void loadAllTasks(Context context) {
        if (context == null) {
            TTVideoEngineLog.e(TAG, "[downloader] context == null");
            IDownloaderListener iDownloaderListener = this.listener;
            if (iDownloaderListener != null) {
                iDownloaderListener.downloaderDidLoadAllTask(this, null, new Error(Error.Download, Error.ParameterNull, 0, "context is null"));
            }
        } else if (!DataLoaderHelper.getDataLoader().isRunning()) {
            TTVideoEngineLog.e(TAG, "[downloader] need start dataloader first.");
            IDownloaderListener iDownloaderListener2 = this.listener;
            if (iDownloaderListener2 != null) {
                iDownloaderListener2.downloaderDidLoadAllTask(this, null, new Error(Error.Download, Error.MediaLoaderNeedStart, 0, "need start medialoader"));
            }
        } else if (this.readAllTask) {
            if (this.listener != null) {
                this.listener.downloaderDidLoadAllTask(this, new ArrayList(this.allTasks), null);
            }
        } else if (!this.loadData) {
            this.loadData = true;
            this.mContext = context;
            initHandle();
            ArrayList<Object> arrayList = new ArrayList<>();
            arrayList.add(this);
            this.taskThread.postMessage(arrayList, 10);
        }
    }

    public void progress(String str) {
        Handler handler;
        if (!TextUtils.isEmpty(str) && (handler = this.mHandler) != null) {
            handler.sendMessage(Message.obtain(handler, 0, str));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void resume(DownloadTask downloadTask) {
        IDownloaderListener iDownloaderListener;
        if (!FeatureManager.hasPermission()) {
            return;
        }
        if (!this.runingTasks.contains(downloadTask)) {
            this.runingTasks.add(downloadTask);
        }
        if (this.waitingTasks.contains(downloadTask)) {
            TTVideoEngineLog.i(TAG, "[downloader] resume task. is waiting,  task = " + downloadTask.toString());
            this.waitingTasks.remove(downloadTask);
        }
        long j10 = downloadTask.bytesReceived;
        if (j10 >= 1) {
            long j11 = downloadTask.bytesExpectedToReceive;
            if (j11 >= 1 && (iDownloaderListener = this.listener) != null) {
                iDownloaderListener.downloaderDidResume(this, downloadTask, j10, j11);
            }
        }
    }

    public void resumeAllTasks() {
        ArrayList<DownloadTask> arrayList = this.allTasks;
        if (arrayList == null) {
            return;
        }
        Iterator<DownloadTask> it = arrayList.iterator();
        while (it.hasNext()) {
            DownloadTask next = it.next();
            if (next != null && (next.getState() == 3 || next.getState() == 0)) {
                next.resume();
            }
        }
    }

    public void setLimitFreeDiskSize(long j10) {
        this.limitFreeDiskSize = j10;
    }

    public void setListener(IDownloaderListener iDownloaderListener) {
        this.listener = iDownloaderListener;
    }

    public void setMaxDownloadOperationCount(long j10) {
        this.maxDownloadOperationCount = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean shouldResume(DownloadTask downloadTask) {
        if (this.runingTasks.size() >= this.maxDownloadOperationCount && (!this.runingTasks.contains(downloadTask) || (downloadTask.getState() != 3 && downloadTask.getState() != 5))) {
            downloadTask.setState(1);
            if (!this.waitingTasks.contains(downloadTask)) {
                this.waitingTasks.add(downloadTask);
            }
            TTVideoEngineLog.d(TAG, "[downloader] task is waiting, task info " + downloadTask.toString());
            return false;
        }
        long freeSize = TTHelper.getFreeSize(this.mContext);
        TTVideoEngineLog.i(TAG, "[downloader] get free size, size = " + freeSize + ", limite = " + getLimitFreeDiskSize());
        if (freeSize > getLimitFreeDiskSize()) {
            return true;
        }
        downloadTask.receiveError(new Error(Error.Download, Error.NotEnoughDiskSpace, 0, "available size is less than 1073741824 M"));
        return false;
    }

    public void suspendAllTasks() {
        ArrayList<DownloadTask> arrayList = this.allTasks;
        if (arrayList == null) {
            return;
        }
        Iterator<DownloadTask> it = arrayList.iterator();
        while (it.hasNext()) {
            DownloadTask next = it.next();
            if (next != null) {
                next.suspend();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean suspended(DownloadTask downloadTask) {
        if (this.waitingTasks.contains(downloadTask)) {
            this.waitingTasks.remove(downloadTask);
            TTVideoEngineLog.d(TAG, "[downloader] task is waiting. key =" + downloadTask.toString());
            downloadTask.setState(3);
            return true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void tryNextWaitingTask(DownloadTask downloadTask) {
        if (this.runingTasks.contains(downloadTask)) {
            this.runingTasks.remove(downloadTask);
        }
        if (this.runingTasks.size() >= this.maxDownloadOperationCount) {
            TTVideoEngineLog.d(TAG, "[downloader] running task count is " + this.runingTasks.size() + " max count is " + this.maxDownloadOperationCount);
        } else if (this.waitingTasks.size() < 1) {
            TTVideoEngineLog.d(TAG, "[downloader] waiting task is empty");
        } else {
            DownloadTask downloadTask2 = this.waitingTasks.get(0);
            this.waitingTasks.remove(downloadTask2);
            downloadTask2.resume();
            TTVideoEngineLog.d(TAG, "[downloader] auto resume waiting task: " + downloadTask2.toString());
        }
    }

    @Nullable
    public DownloadURLTask urlTask(String[] strArr, String str, @Nullable String str2, DownloadTask.EncryptVersion encryptVersion) {
        if (FeatureManager.hasPermission()) {
            if (strArr != null && strArr.length >= 1 && !TextUtils.isEmpty(str)) {
                ArrayList<String> arrayList = new ArrayList<>();
                Collections.addAll(arrayList, strArr);
                DownloadURLTask taskItem = DownloadURLTask.taskItem(str, arrayList, str2, encryptVersion);
                if (taskItem != null && (taskItem = (DownloadURLTask) addTask(taskItem)) != null) {
                    taskItem.updateUrls(arrayList);
                }
                return taskItem;
            }
            TTVideoEngineLog.e(TAG, "[downloader] urls or key is invalid.");
            return null;
        }
        return null;
    }

    @Nullable
    public DownloadVidTask vidTask(String str, Resolution resolution, boolean z10, boolean z11, boolean z12) {
        String str2;
        if (FeatureManager.hasPermission()) {
            if (z10) {
                str2 = "h265";
            } else {
                str2 = "h264";
            }
            return vidTask(str, resolution, str2, z11, z12);
        }
        return null;
    }

    @Nullable
    public DownloadVidTask vidTask(String str, Resolution resolution, String str2, boolean z10, boolean z11) {
        return vidTask(str, resolution, str2, z10, z11, null);
    }

    @Nullable
    public DownloadVidTask vidTask(String str, Resolution resolution, String str2) {
        return vidTask(str, resolution, null, false, false, str2);
    }

    @Nullable
    public DownloadVidTask vidTask(String str, Resolution resolution, String str2, boolean z10, boolean z11, String str3) {
        if (FeatureManager.hasPermission()) {
            DownloadVidTask taskItem = DownloadVidTask.taskItem(str, resolution, str2, z10, z11, str3);
            if (taskItem != null && (taskItem = (DownloadVidTask) addTask(taskItem)) != null) {
                taskItem.mContext = this.mContext;
            }
            return taskItem;
        }
        return null;
    }

    @Nullable
    public DownloadURLTask urlTask(String[] strArr, String str, @Nullable String str2) {
        if (FeatureManager.hasPermission()) {
            if (strArr != null && strArr.length >= 1 && !TextUtils.isEmpty(str)) {
                ArrayList<String> arrayList = new ArrayList<>();
                for (String str3 : strArr) {
                    arrayList.add(str3);
                }
                DownloadURLTask taskItem = DownloadURLTask.taskItem(str, arrayList, str2);
                if (taskItem != null && (taskItem = (DownloadURLTask) addTask(taskItem)) != null) {
                    taskItem.updateUrls(arrayList);
                }
                return taskItem;
            }
            TTVideoEngineLog.e(TAG, "[downloader] urls or key is invalid.");
            return null;
        }
        return null;
    }

    @Nullable
    public DownloadVidTask vidTask(VideoModel videoModel, Resolution resolution) {
        if (FeatureManager.hasPermission()) {
            DownloadVidTask taskItem = DownloadVidTask.taskItem(videoModel, resolution);
            if (taskItem != null && (taskItem = (DownloadVidTask) addTask(taskItem)) != null) {
                taskItem.mContext = this.mContext;
                taskItem.setVideoModel(videoModel);
            }
            return taskItem;
        }
        return null;
    }
}
