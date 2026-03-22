package com.ss.ttvideoengine.playermetrcis;

import android.os.Process;
import android.text.TextUtils;
import com.ss.ttvideoengine.NativeThreadInterface;
import com.ss.ttvideoengine.utils.EngineThreadPool;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes6.dex */
public class ThreadCPU {
    private static final int INDEX_S_TIME = 13;
    private static final int INDEX_U_TIME = 12;
    private static final String MEDIA_LOAD_TAG = "MediaLoad";
    private static final String PROC_PATH = "/proc/self/stat";
    private static final String TAG = "ThreadCPU";
    private static final String TASK_PATH_PREFIX = "/proc/self/task/";
    private static final String TASK_PATH_SUFFIX = "/stat";
    public static NativeThreadInterface gNativeThreadInterface = null;
    private static final int kClockTicksMs = 10;
    public static boolean sCpuRefreshFix = false;
    public static boolean sUseNativeThread = false;
    private final ConcurrentHashMap<String, Object> mCpuMap = new ConcurrentHashMap<>();
    private CopyOnWriteArrayList<ThreadInfo> mStaticThreads = null;
    private CopyOnWriteArrayList<ThreadInfo> mSingleThreads = null;
    private CopyOnWriteArrayList<Integer> mNativeTids = null;
    private ThreadInfo total = null;
    private int mMdlCpuOverZero = 0;

    private ThreadInfo getMultiCpuTime(String str, ThreadInfo threadInfo, String str2) {
        Object obj;
        if (threadInfo == null) {
            threadInfo = new ThreadInfo();
        }
        long parseTime = parseTime(str);
        if (parseTime != -1) {
            HashMap<String, Object> hashMap = threadInfo.mMutiThreadUsage;
            if (hashMap != null) {
                if (hashMap.containsKey(str2) && (obj = threadInfo.mMutiThreadUsage.get(str2)) != null && parseTime - ((Long) obj).longValue() > 0) {
                    this.mMdlCpuOverZero++;
                }
                threadInfo.mMutiThreadUsage.put(str2, Long.valueOf(parseTime));
            }
            threadInfo.cpuTime += parseTime;
        }
        return threadInfo;
    }

    private ThreadInfo getSingleCpuTime(String str, ThreadInfo threadInfo) {
        NativeThreadInterface nativeThreadInterface;
        if (threadInfo == null) {
            threadInfo = new ThreadInfo();
        }
        if (sUseNativeThread && (nativeThreadInterface = gNativeThreadInterface) != null) {
            try {
                threadInfo.cpuUsage = nativeThreadInterface.getThreadCpuUsage(Integer.parseInt(threadInfo.pid));
            } catch (Exception unused) {
            }
        } else {
            long parseTime = parseTime(str);
            long currentTimeMillis = System.currentTimeMillis();
            long j10 = threadInfo.currentTime;
            if (j10 != 0) {
                if (parseTime == -1) {
                    threadInfo.cpuUsage = -1.0f;
                } else {
                    threadInfo.cpuUsage = ((float) (parseTime - threadInfo.cpuTime)) / ((float) (currentTimeMillis - j10));
                }
            } else {
                threadInfo.cpuUsage = -1.0f;
            }
            threadInfo.cpuTime = parseTime;
            threadInfo.currentTime = currentTimeMillis;
        }
        return threadInfo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$refresh$0() {
        HashSet<String> hashSet;
        String str;
        NativeThreadInterface nativeThreadInterface;
        if (sUseNativeThread && (nativeThreadInterface = gNativeThreadInterface) != null) {
            nativeThreadInterface.carethreadList(this.mNativeTids);
        }
        for (int i10 = 0; i10 < this.mStaticThreads.size(); i10++) {
            ThreadInfo threadInfo = this.mStaticThreads.get(i10);
            if (!sCpuRefreshFix || i10 != 0) {
                if (threadInfo.type == 2 && (hashSet = threadInfo.pids) != null && hashSet.size() > 0 && (str = threadInfo.pidName) != null && str.contains(MEDIA_LOAD_TAG)) {
                    this.mCpuMap.put("mdl_cpu_rate", Float.valueOf((float) (this.mMdlCpuOverZero / (threadInfo.pids.size() * 1.0d))));
                }
                refreshInternal(threadInfo);
            }
        }
        for (int i11 = 0; i11 < this.mSingleThreads.size(); i11++) {
            refreshInternal(this.mSingleThreads.get(i11));
        }
        ThreadInfo threadInfo2 = this.total;
        if (threadInfo2 != null && sCpuRefreshFix) {
            getProcInfo(threadInfo2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$refreshForVV$1() {
        for (int i10 = 0; i10 < this.mSingleThreads.size(); i10++) {
            refreshInternal(this.mSingleThreads.get(i10));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$refreshStaticThreads$2() {
        File[] listFiles;
        try {
            File file = new File("/proc/" + Process.myPid() + "/task/");
            if (file.isDirectory() && (listFiles = file.listFiles()) != null) {
                for (File file2 : listFiles) {
                    String readFile = readFile(file2.getPath() + TASK_PATH_SUFFIX);
                    if (!readFile.isEmpty()) {
                        try {
                            transStaticThread(parseStat(readFile));
                        } catch (Throwable unused) {
                        }
                    }
                }
            }
        } catch (Throwable unused2) {
        }
    }

    private ThreadInfo refreshCpu(ThreadInfo threadInfo) {
        if (threadInfo == null) {
            return null;
        }
        ThreadInfo threadInfo2 = this.total;
        if (threadInfo2 != null && !sCpuRefreshFix) {
            getProcInfo(threadInfo2);
        }
        int i10 = threadInfo.type;
        if (i10 == 1) {
            getSingleThreadInfoByID(threadInfo.pid, threadInfo);
        } else if (i10 == 2) {
            if (threadInfo.pids == null) {
                return threadInfo;
            }
            threadInfo.cpuTime = 0L;
            if (threadInfo.currentTime == 0) {
                threadInfo.currentTime = System.currentTimeMillis();
            }
            getMultiThreadInfoByID(threadInfo.pids, threadInfo);
            long j10 = threadInfo.cpuTimeStart;
            if (j10 == 0) {
                threadInfo.cpuTimeStart = threadInfo.cpuTime;
            } else {
                threadInfo.cpuUsage = ((float) (threadInfo.cpuTime - j10)) / ((float) (System.currentTimeMillis() - threadInfo.currentTime));
            }
        }
        return threadInfo;
    }

    private void refreshForVV() {
        CopyOnWriteArrayList<ThreadInfo> copyOnWriteArrayList = this.mSingleThreads;
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() == 0) {
            return;
        }
        if (this.mSingleThreads.size() > 0 && this.mSingleThreads.get(0).cpuTime == -1) {
            return;
        }
        EngineThreadPool.addExecuteTask(new Runnable() { // from class: com.ss.ttvideoengine.playermetrcis.c
            @Override // java.lang.Runnable
            public final void run() {
                ThreadCPU.this.lambda$refreshForVV$1();
            }
        });
    }

    private void refreshInternal(ThreadInfo threadInfo) {
        String str;
        String lowerCase;
        refreshCpu(threadInfo);
        if (threadInfo != null && (str = threadInfo.pidName) != null) {
            if (str.contains("-")) {
                int indexOf = threadInfo.pidName.indexOf("-");
                if (indexOf > 0) {
                    lowerCase = threadInfo.pidName.substring(0, indexOf);
                    if (lowerCase != null) {
                        lowerCase = lowerCase.toLowerCase(Locale.ROOT);
                    }
                } else {
                    lowerCase = null;
                }
            } else {
                lowerCase = threadInfo.pidName.toLowerCase(Locale.ROOT);
            }
            if (lowerCase != null) {
                if (sCpuRefreshFix) {
                    float f10 = threadInfo.cpuUsage;
                    if (f10 != -1.0f) {
                        this.mCpuMap.put(lowerCase, Float.valueOf(f10));
                        return;
                    }
                    return;
                }
                this.mCpuMap.put(lowerCase, Float.valueOf(threadInfo.cpuUsage));
            }
        }
    }

    protected ThreadInfo getMultiThreadInfoByID(HashSet<String> hashSet, ThreadInfo threadInfo) {
        if (threadInfo == null) {
            threadInfo = new ThreadInfo();
        }
        this.mMdlCpuOverZero = 0;
        Iterator<String> it = hashSet.iterator();
        while (it.hasNext()) {
            String next = it.next();
            String readFile = readFile(TASK_PATH_PREFIX + next + TASK_PATH_SUFFIX);
            if (readFile != null && !readFile.isEmpty()) {
                getMultiCpuTime(readFile, threadInfo, next);
            } else {
                it.remove();
            }
        }
        return threadInfo;
    }

    public Map<String, Object> getPlayerThreads() {
        return new HashMap(this.mCpuMap);
    }

    protected ThreadInfo getProcInfo(ThreadInfo threadInfo) {
        if (sUseNativeThread && gNativeThreadInterface != null) {
            getSingleCpuTime(null, threadInfo);
        } else {
            getSingleCpuTime(readFile("/proc/self/stat"), threadInfo);
        }
        float f10 = threadInfo.cpuUsage;
        if (f10 > 0.0f) {
            this.mCpuMap.put("proc", Float.valueOf(f10));
        }
        return threadInfo;
    }

    protected ThreadInfo getSingleThreadInfoByID(String str, ThreadInfo threadInfo) {
        if (threadInfo == null) {
            threadInfo = new ThreadInfo();
        }
        if (str == null) {
            return threadInfo;
        }
        getSingleCpuTime(readFile(TASK_PATH_PREFIX + str + TASK_PATH_SUFFIX), threadInfo);
        return threadInfo;
    }

    protected void initProc(String str, int i10) {
        ThreadInfo threadInfo = new ThreadInfo();
        threadInfo.pidName = str;
        if (str != null && str.equals(MEDIA_LOAD_TAG)) {
            threadInfo.type = 2;
        } else {
            threadInfo.type = 1;
        }
        this.mStaticThreads.add(threadInfo);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean initThreadMonitor(ArrayList<String> arrayList) {
        int i10 = 0;
        if (arrayList == null) {
            return false;
        }
        this.mStaticThreads = new CopyOnWriteArrayList<>();
        this.mSingleThreads = new CopyOnWriteArrayList<>();
        this.mNativeTids = new CopyOnWriteArrayList<>();
        ThreadInfo threadInfo = new ThreadInfo();
        threadInfo.pidName = "proc";
        threadInfo.type = 1;
        this.total = threadInfo;
        ThreadInfo threadInfo2 = new ThreadInfo();
        threadInfo2.pidName = "self";
        threadInfo2.pid = Process.myPid() + "";
        threadInfo2.type = 1;
        this.mStaticThreads.add(threadInfo2);
        while (i10 < arrayList.size()) {
            i10++;
            initProc(arrayList.get(i10), i10);
        }
        return true;
    }

    protected String[] parseStat(String str) {
        char[] charArray = str.toCharArray();
        String str2 = null;
        String str3 = null;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            if (i10 >= charArray.length) {
                break;
            }
            char c10 = charArray[i10];
            if (c10 == ' ' && str3 == null) {
                str3 = new String(charArray, 0, i10);
            }
            if (c10 == '(') {
                i11 = i10 + 1;
            }
            if (c10 == ')') {
                str2 = new String(charArray, i11, i10 - i11);
                break;
            }
            i10++;
        }
        return new String[]{str3, str2};
    }

    protected long parseTime(String str) {
        if (str == null || str.isEmpty()) {
            return -1L;
        }
        char[] charArray = str.toCharArray();
        String str2 = null;
        int i10 = 0;
        String str3 = null;
        int i11 = 0;
        int i12 = 0;
        boolean z10 = false;
        while (true) {
            if (i10 >= charArray.length) {
                break;
            }
            char c10 = charArray[i10];
            if (c10 == ' ') {
                if (i11 == 12) {
                    str3 = new String(charArray, i12, i10 - i12);
                } else if (i11 == 13) {
                    str2 = new String(charArray, i12, i10 - i12);
                    break;
                }
                if (z10) {
                    i11++;
                    i12 = i10 + 1;
                }
            }
            if (c10 == ')') {
                z10 = true;
            }
            i10++;
        }
        if (str3 == null) {
            return -1L;
        }
        if (str2 != null) {
            try {
            } catch (Throwable unused) {
                return -1L;
            }
        }
        return (Integer.parseInt(str3) + Integer.parseInt(str2)) * 10;
    }

    protected String readFile(String str) {
        FileInputStream fileInputStream;
        Throwable th2;
        BufferedInputStream bufferedInputStream;
        BufferedInputStream bufferedInputStream2 = null;
        try {
            fileInputStream = new FileInputStream(str);
            try {
                bufferedInputStream = new BufferedInputStream(fileInputStream);
                try {
                    StringBuilder sb2 = new StringBuilder();
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int read = bufferedInputStream.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        sb2.append(new String(bArr, 0, read));
                    }
                    String sb3 = sb2.toString();
                    try {
                        bufferedInputStream.close();
                    } catch (IOException e10) {
                        e10.printStackTrace();
                    }
                    try {
                        fileInputStream.close();
                    } catch (IOException e11) {
                        e11.printStackTrace();
                    }
                    return sb3;
                } catch (Exception unused) {
                    bufferedInputStream2 = bufferedInputStream;
                    if (bufferedInputStream2 != null) {
                        try {
                            bufferedInputStream2.close();
                        } catch (IOException e12) {
                            e12.printStackTrace();
                        }
                    }
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e13) {
                            e13.printStackTrace();
                        }
                    }
                    return "";
                } catch (Throwable th3) {
                    th2 = th3;
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (IOException e14) {
                            e14.printStackTrace();
                        }
                    }
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e15) {
                            e15.printStackTrace();
                        }
                    }
                    throw th2;
                }
            } catch (Exception unused2) {
            } catch (Throwable th4) {
                th2 = th4;
                bufferedInputStream = null;
            }
        } catch (Exception unused3) {
            fileInputStream = null;
        } catch (Throwable th5) {
            fileInputStream = null;
            th2 = th5;
            bufferedInputStream = null;
        }
    }

    public void refresh() {
        EngineThreadPool.addExecuteTask(new Runnable() { // from class: com.ss.ttvideoengine.playermetrcis.d
            @Override // java.lang.Runnable
            public final void run() {
                ThreadCPU.this.lambda$refresh$0();
            }
        });
    }

    public void refreshSingleThreads(String str) {
        if (TextUtils.isEmpty(str) || this.mSingleThreads == null) {
            return;
        }
        String[] split = str.split("=|;");
        this.mSingleThreads.clear();
        this.mNativeTids.clear();
        for (int i10 = 0; i10 < split.length - 1; i10 += 2) {
            ThreadInfo threadInfo = new ThreadInfo();
            threadInfo.type = 1;
            threadInfo.pidName = split[i10];
            int i11 = i10 + 1;
            threadInfo.pid = split[i11];
            this.mSingleThreads.add(threadInfo);
            if (sUseNativeThread) {
                try {
                    this.mNativeTids.add(Integer.valueOf(Integer.parseInt(split[i11])));
                } catch (Exception unused) {
                }
            }
        }
    }

    public void refreshStaticThreads() {
        EngineThreadPool.addExecuteTask(new Runnable() { // from class: com.ss.ttvideoengine.playermetrcis.e
            @Override // java.lang.Runnable
            public final void run() {
                ThreadCPU.this.lambda$refreshStaticThreads$2();
            }
        });
    }

    public void refreshWhenBegin() {
        refreshForVV();
    }

    public void refreshWhenEnd() {
        refreshForVV();
    }

    protected boolean transMulti(String[] strArr, int i10) {
        HashSet<String> hashSet;
        if (this.mStaticThreads.get(i10).pids == null) {
            this.mStaticThreads.get(i10).pids = new HashSet<>();
        }
        if (this.mStaticThreads.get(i10).mMutiThreadUsage == null) {
            this.mStaticThreads.get(i10).mMutiThreadUsage = new HashMap<>();
        }
        if (this.mStaticThreads.get(i10).pids != null && (hashSet = this.mStaticThreads.get(i10).pids) != null && !hashSet.contains(strArr[0])) {
            hashSet.add(strArr[0]);
            return true;
        }
        return true;
    }

    void transStaticThread(String[] strArr) {
        for (int i10 = 1; i10 < this.mStaticThreads.size() + 1; i10++) {
            if (strArr.length == 2 && strArr[1].startsWith(this.mStaticThreads.get(i10).pidName)) {
                if (this.mStaticThreads.get(i10).type == 2) {
                    transMulti(strArr, i10);
                    return;
                }
                ThreadInfo threadInfo = this.mStaticThreads.get(i10);
                threadInfo.reset();
                threadInfo.pid = strArr[0];
                threadInfo.currentTime = System.currentTimeMillis();
                return;
            }
        }
    }
}
