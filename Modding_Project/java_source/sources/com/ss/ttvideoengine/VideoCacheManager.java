package com.ss.ttvideoengine;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.work.Data;
import com.applovin.shadow.okhttp3.internal.http2.Http2Stream;
import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.ss.ttvideoengine.model.VideoCacheInfo;
import com.ss.ttvideoengine.utils.TTHelper;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.io.File;
import java.io.FileInputStream;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.locks.ReentrantReadWriteLock;
/* loaded from: classes6.dex */
public class VideoCacheManager {
    public static final int CLEAN_IFNECESSARY = 2;
    public static final int CLEAR_CACHE = 1;
    public static final int INIT_CACHE = 0;
    public static final int KEY_NUMBER = 4;
    public static final int KEY_NUMBER_ENCRYPTED = 5;
    private static String TAG = "VideoCacheManager";
    private static volatile File dir;
    private final LinkedHashMap<String, File> cache;
    private volatile float cleanFactor;
    private ClearTask clearTask;
    private volatile boolean isInited;
    private final LinkedHashMap<String, VideoCacheInfo> keyCache;
    private final ReentrantReadWriteLock lock;
    private volatile long maxSize;
    private final ProtectKeyManager protectKeyManager;
    private final ReentrantReadWriteLock.ReadLock readLock;
    private final ReentrantReadWriteLock.WriteLock writeLock;

    /* loaded from: classes6.dex */
    private static class ClearTask {
        private Handler mHandler;
        private HandlerThread mHandlerThread;

        public ClearTask() {
            try {
                HandlerThread handlerThread = new HandlerThread("clearCacheThread");
                this.mHandlerThread = handlerThread;
                handlerThread.start();
                this.mHandler = new Handler(this.mHandlerThread.getLooper()) { // from class: com.ss.ttvideoengine.VideoCacheManager.ClearTask.1
                    @Override // android.os.Handler
                    public void handleMessage(@NonNull Message message) {
                        try {
                            VideoCacheManager videoCacheManager = (VideoCacheManager) message.obj;
                            int i10 = message.what;
                            if (i10 != 0) {
                                if (i10 != 1) {
                                    if (i10 == 2) {
                                        videoCacheManager.cleanIfNecessary();
                                    }
                                } else {
                                    videoCacheManager.clear();
                                }
                            } else {
                                videoCacheManager.init();
                            }
                        } catch (Throwable unused) {
                        }
                    }
                };
            } catch (Throwable unused) {
                this.mHandlerThread.quit();
                this.mHandlerThread = null;
                this.mHandler = null;
            }
        }

        public void postMessage(VideoCacheManager videoCacheManager, int i10) {
            if (this.mHandler != null && this.mHandlerThread != null) {
                Message message = new Message();
                message.what = i10;
                message.obj = videoCacheManager;
                this.mHandler.sendMessage(message);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static final class ProtectKeyManager {
        private final Map<String, Integer> protectKeys;

        private ProtectKeyManager() {
            this.protectKeys = new HashMap();
        }

        synchronized void addProtectKey(String str) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    Integer num = this.protectKeys.get(str);
                    if (num == null) {
                        this.protectKeys.put(str, 1);
                    } else {
                        this.protectKeys.put(str, Integer.valueOf(num.intValue() + 1));
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }

        synchronized boolean containsKey(String str) {
            if (!TextUtils.isEmpty(str)) {
                return this.protectKeys.containsKey(str);
            }
            return false;
        }

        synchronized void removeProtectKey(String str) {
            Integer num;
            try {
                if (!TextUtils.isEmpty(str) && (num = this.protectKeys.get(str)) != null) {
                    if (num.intValue() == 1) {
                        this.protectKeys.remove(str);
                    } else {
                        this.protectKeys.put(str, Integer.valueOf(num.intValue() - 1));
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* loaded from: classes6.dex */
    private static class VideoCacheManagerSingletonHolder {
        private static final VideoCacheManager instance = new VideoCacheManager();

        private VideoCacheManagerSingletonHolder() {
        }
    }

    public static boolean checkCacheFileIntegrity(String str, String str2, long j10) {
        MessageDigest messageDigest;
        FileInputStream fileInputStream;
        int i10;
        File file = new File(str);
        if (!file.exists() || !file.isFile() || file.length() < j10) {
            return false;
        }
        int i11 = Data.MAX_DATA_BYTES;
        if (j10 < ((long) Data.MAX_DATA_BYTES)) {
            i11 = (int) j10;
        }
        FileInputStream fileInputStream2 = null;
        try {
            try {
                messageDigest = MessageDigest.getInstance(SameMD5.TAG);
                fileInputStream = new FileInputStream(file);
            } catch (Exception e10) {
                e = e10;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            byte[] bArr = new byte[i11];
            boolean z10 = false;
            while (!z10) {
                if (j10 < i11) {
                    i10 = (int) j10;
                } else {
                    i10 = i11;
                }
                int read = fileInputStream.read(bArr, 0, i10);
                messageDigest.update(bArr, 0, read);
                long j11 = read;
                if (j10 <= j11) {
                    z10 = true;
                } else {
                    j10 -= j11;
                }
            }
            byte[] digest = messageDigest.digest();
            StringBuilder sb2 = new StringBuilder("");
            for (byte b10 : digest) {
                String hexString = Integer.toHexString(b10 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
                if (hexString.length() < 2) {
                    sb2.append(0);
                }
                sb2.append(hexString);
            }
            String sb3 = sb2.toString();
            try {
                fileInputStream.close();
            } catch (Throwable th3) {
                TTVideoEngineLog.d(th3);
            }
            if (sb3 == null) {
                return false;
            }
            return sb3.equals(str2);
        } catch (Exception e11) {
            e = e11;
            fileInputStream2 = fileInputStream;
            TTVideoEngineLog.d(e);
            if (fileInputStream2 != null) {
                try {
                    fileInputStream2.close();
                } catch (Throwable th4) {
                    TTVideoEngineLog.d(th4);
                }
            }
            return false;
        } catch (Throwable th5) {
            th = th5;
            fileInputStream2 = fileInputStream;
            if (fileInputStream2 != null) {
                try {
                    fileInputStream2.close();
                } catch (Throwable th6) {
                    TTVideoEngineLog.d(th6);
                }
            }
            throw th;
        }
    }

    private String[] extractKeys(File file) {
        String name = file.getName();
        if (name == null) {
            return null;
        }
        return extractKeys(name);
    }

    public static VideoCacheManager getInstance() {
        return VideoCacheManagerSingletonHolder.instance;
    }

    private String getKey(File file) {
        return file.getName();
    }

    public static void setDir(File file) {
        if (file != null) {
            dir = file;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x0138  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void trimSize(long r14) {
        /*
            Method dump skipped, instructions count: 361
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.VideoCacheManager.trimSize(long):void");
    }

    public void addCacheInfo(String str, String str2) {
        String str3;
        if (this.writeLock.tryLock()) {
            try {
                String[] extractKeys = extractKeys(str);
                if (isValidKeys(extractKeys)) {
                    String format = String.format("%s_%s", extractKeys[0], extractKeys[1]);
                    String format2 = String.format("%s_%s_%s_%s", extractKeys[0], extractKeys[1], extractKeys[2], extractKeys[3]);
                    if (extractKeys.length == 5) {
                        str3 = extractKeys[4];
                    } else {
                        str3 = null;
                    }
                    VideoCacheInfo videoCacheInfo = new VideoCacheInfo(str2, format2, format2, str3);
                    if (!this.keyCache.containsKey(format)) {
                        this.keyCache.put(format, videoCacheInfo);
                    }
                }
            } finally {
                try {
                } finally {
                }
            }
        }
    }

    public void addProtectKey(String str) {
        if (!TextUtils.isEmpty(str)) {
            TTVideoEngineLog.i(TAG, String.format("start add protect key:%s", str));
            this.protectKeyManager.addProtectKey(str);
            TTVideoEngineLog.d(TAG, String.format("end add protect key:%s", str));
        }
    }

    boolean checkMD5(String str, String str2, long j10) {
        if (str != null && str2 != null) {
            long j11 = 0;
            if (j10 > 0) {
                File file = new File(str);
                if (file.exists() && file.length() >= j10) {
                    byte[] bArr = new byte[16384];
                    try {
                        FileInputStream fileInputStream = new FileInputStream(file);
                        MessageDigest messageDigest = MessageDigest.getInstance(SameMD5.TAG);
                        while (true) {
                            long j12 = j10 - j11;
                            if (j12 > Http2Stream.EMIT_BUFFER_SIZE) {
                                j12 = 16384;
                            }
                            int i10 = (int) j12;
                            if (i10 == 0) {
                                break;
                            }
                            int read = fileInputStream.read(bArr, 0, i10);
                            if (read < 0) {
                                TTVideoEngineLog.e(TAG, String.format("read data err:%s", str));
                                break;
                            }
                            j11 += read;
                            messageDigest.update(bArr, 0, read);
                        }
                        fileInputStream.close();
                        BigInteger bigInteger = new BigInteger(1, messageDigest.digest());
                        String format = String.format("%032x", bigInteger);
                        TTVideoEngineLog.i(TAG, String.format("cache md5:%s compute md5:%s", str2, bigInteger.toString(16)));
                        if (!str2.equals(format)) {
                            return false;
                        }
                        TTVideoEngineLog.i(TAG, "md5 match right");
                        return true;
                    } catch (Exception e10) {
                        TTVideoEngineLog.d(e10);
                        return false;
                    }
                }
                TTVideoEngineLog.e(TAG, String.format("file not exist or filesize not engough:%s length:%d filesize:%d", str, Long.valueOf(file.length()), Long.valueOf(j10)));
            }
        }
        return false;
    }

    void cleanIfNecessary() {
        String str = TAG;
        TTVideoEngineLog.d(str, "start clean file maxSize: " + this.maxSize);
        trimSize(this.maxSize);
        String str2 = TAG;
        TTVideoEngineLog.d(str2, "end clean file maxSize: " + this.maxSize);
    }

    void clear() {
        TTVideoEngineLog.d(TAG, "start clear all cache");
        trimSize(0L);
        TTVideoEngineLog.d(TAG, "end clear all cache");
    }

    public VideoCacheInfo getCacheInfo(String str) {
        VideoCacheInfo videoCacheInfo;
        VideoCacheInfo videoCacheInfo2 = null;
        if (str == null) {
            return null;
        }
        if (this.readLock.tryLock()) {
            try {
                videoCacheInfo = this.keyCache.get(str);
            } catch (Throwable th2) {
                th = th2;
            }
            if (videoCacheInfo != null) {
                try {
                    videoCacheInfo.spadeaKey = TTHelper.customBase64Decode(videoCacheInfo.spadeaKey);
                    String[] extractKeys = extractKeys(videoCacheInfo.fileName);
                    if (isValidKeys(extractKeys)) {
                        if (!checkMD5(videoCacheInfo.filePath, extractKeys[2], Long.parseLong(extractKeys[3]))) {
                        }
                    }
                    TTVideoEngineLog.d(TAG, String.format("get info err", str));
                } catch (Throwable th3) {
                    th = th3;
                    videoCacheInfo2 = videoCacheInfo;
                    try {
                        TTVideoEngineLog.d(th);
                        return videoCacheInfo2;
                    } finally {
                        this.readLock.unlock();
                    }
                }
            }
            videoCacheInfo2 = videoCacheInfo;
        }
        return videoCacheInfo2;
    }

    void init() {
        String str;
        String customBase64Encode;
        TTVideoEngineLog.i(TAG, "start init videocachemanager");
        this.writeLock.lock();
        try {
            if (!this.isInited && isValidDir(dir)) {
                File[] listFiles = dir.listFiles();
                if (listFiles != null && listFiles.length > 0) {
                    final HashMap hashMap = new HashMap(listFiles.length);
                    ArrayList arrayList = new ArrayList(listFiles.length);
                    for (File file : listFiles) {
                        if (file.isFile()) {
                            arrayList.add(file);
                            hashMap.put(file, Long.valueOf(file.lastModified()));
                        }
                    }
                    Collections.sort(arrayList, new Comparator<File>() { // from class: com.ss.ttvideoengine.VideoCacheManager.1
                        @Override // java.util.Comparator
                        public int compare(File file2, File file3) {
                            return Long.valueOf(TTHelper.safelyUnbox((Long) hashMap.get(file2))).compareTo(Long.valueOf(TTHelper.safelyUnbox((Long) hashMap.get(file3))));
                        }
                    });
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        File file2 = (File) it.next();
                        TTVideoEngineLog.i(TAG, String.format("add file:%s", file2.getName()));
                        this.cache.put(getKey(file2), file2);
                        String[] extractKeys = extractKeys(file2);
                        if (isValidKeys(extractKeys)) {
                            String format = String.format("%s_%s", extractKeys[0], extractKeys[1]);
                            String format2 = String.format("%s_%s_%s_%s", extractKeys[0], extractKeys[1], extractKeys[2], extractKeys[3]);
                            if (extractKeys.length == 5) {
                                str = extractKeys[4];
                            } else {
                                str = null;
                            }
                            String canonicalPath = file2.getCanonicalPath();
                            if (str != null && str.length() > 0 && (customBase64Encode = TTHelper.customBase64Encode(str)) != null && !customBase64Encode.equals(str)) {
                                canonicalPath = canonicalPath.replace(str, customBase64Encode);
                                file2.renameTo(new File(canonicalPath));
                                str = customBase64Encode;
                            }
                            this.keyCache.put(format, new VideoCacheInfo(canonicalPath, format2, format2, str));
                        }
                    }
                }
                this.isInited = true;
            }
        } finally {
            try {
                TTVideoEngineLog.d(TAG, "end init videocachemanager");
            } finally {
            }
        }
        TTVideoEngineLog.d(TAG, "end init videocachemanager");
    }

    public boolean isCacheInfoExist(String str) {
        boolean z10 = false;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (this.readLock.tryLock()) {
            try {
                z10 = this.keyCache.containsKey(str);
            } finally {
                try {
                } finally {
                }
            }
        }
        return z10;
    }

    boolean isValidDir(File file) {
        if (file != null && file.exists() && file.isDirectory() && file.canRead() && file.canWrite()) {
            return true;
        }
        return false;
    }

    boolean isValidKeys(String[] strArr) {
        if (strArr == null || (strArr.length != 4 && strArr.length != 5)) {
            return false;
        }
        for (String str : strArr) {
            if (str == null) {
                return false;
            }
        }
        return true;
    }

    public void removeProtectKey(String str) {
        if (!TextUtils.isEmpty(str)) {
            TTVideoEngineLog.i(TAG, String.format("start remove protect key:%s", str));
            this.protectKeyManager.removeProtectKey(str);
            TTVideoEngineLog.d(TAG, String.format("end remove protect key:%s", str));
        }
    }

    public void setMaxSize(long j10) {
        this.maxSize = j10;
    }

    public void start() {
        this.clearTask.postMessage(this, 0);
    }

    private VideoCacheManager() {
        this.cache = new LinkedHashMap<>(0, 0.75f, true);
        this.keyCache = new LinkedHashMap<>(0, 0.75f, true);
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.lock = reentrantReadWriteLock;
        this.readLock = reentrantReadWriteLock.readLock();
        this.writeLock = reentrantReadWriteLock.writeLock();
        this.maxSize = 209715200L;
        this.cleanFactor = 0.3f;
        this.isInited = false;
        this.protectKeyManager = new ProtectKeyManager();
        this.clearTask = new ClearTask();
    }

    private String[] extractKeys(String str) {
        String[] split;
        if (str == null || (split = str.split("\\.")) == null || split.length <= 0) {
            return null;
        }
        return split[0].split("_");
    }
}
