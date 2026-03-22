package com.ss.ttm.player;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes6.dex */
public final class TTPlayerConfiger {
    private static String APP_PATH = null;
    private static String CRASH_FILE_NAME = "ttplayer_crash.log";
    private static String CRASH_FILE_PATH = null;
    public static final boolean DEBUG = false;
    public static final int DEFAULT_POOL_STACK_SIZE = 32;
    public static final int DEFAULT_VC2_DEC_POOL_SIZE = 2;
    public static final int DEFAULT_VC2_STACK_SIZE_VALUE = 131072;
    public static final int DEFAULT_VC2_THREAD_PRIORITY_VALUE = 5242880;
    public static final int FALSE = 0;
    public static boolean IS_PRINT_INFO = false;
    public static final int IS_TIME_OUT_COUNT = 3;
    private static final ConcurrentHashMap<Integer, Value> KEYS = new ConcurrentHashMap<>();
    public static final int KEY_IS_AUDIOTRACK_POOL_SIZE = 47;
    public static final int KEY_IS_BATTERY_INFO = 23;
    public static final int KEY_IS_BUSINESS_TYPE = 33;
    public static final int KEY_IS_CHECK_LIB = 3;
    public static final int KEY_IS_CHECK_TTPLAYER_MODEL = 0;
    public static final int KEY_IS_CRASHED = 7;
    public static final int KEY_IS_CRASH_FILE_NAME = 17;
    public static final int KEY_IS_CRASH_PATH = 19;
    public static final int KEY_IS_DEBUG_MODEL = 6;
    public static final int KEY_IS_ENABLE_GLOBAL_MUTE_FEATURE = 31;
    public static final int KEY_IS_ENABLE_THREAD2_POOL = 45;
    public static final int KEY_IS_ENABLE_VC2_DEC_POOL = 41;
    public static final int KEY_IS_ENABLE_VC2_THREAD_PRIORITY = 34;
    public static final int KEY_IS_ENABLE_VC2_THREAD_PRIORITY_LITE = 36;
    public static final int KEY_IS_EXO_PLAYER_ON = 26;
    public static final int KEY_IS_FALLBACK_EXO_FIRST = 27;
    public static final int KEY_IS_FORBID_CREATED_OS_PLAYER = 11;
    public static final int KEY_IS_FOREGROUND = 21;
    public static final int KEY_IS_FREEDOM_PLAYER_ON = 37;
    public static final int KEY_IS_GET_VC2_DEC_POOL_SIZE = 42;
    public static final int KEY_IS_GLOBAL_MUTE = 32;
    public static final int KEY_IS_GLOBAL_QOS_LOOPER = 44;
    public static final int KEY_IS_IPTTPLAYER_ON = 2;
    public static final int KEY_IS_LOG_FILE_DIR = 20;
    public static final int KEY_IS_MEDIA_CODEC_USING_CODEC2 = 48;
    public static final int KEY_IS_ON_SCREEN = 22;
    public static final int KEY_IS_OPEN_DEVICE_FAIL = 8;
    public static final int KEY_IS_PLAYER_CREATION_CONFIG = 43;
    public static final int KEY_IS_PORT_VERSION = 18;
    public static final int KEY_IS_PRINT_INFO = 5;
    public static final int KEY_IS_SDK_VERSION = 13;
    public static final int KEY_IS_SDK_VERSION_INFO = 15;
    public static final int KEY_IS_SDK_VERSION_NAME = 14;
    public static final int KEY_IS_SKIP_LOAD_SSL = 28;
    public static final int KEY_IS_SKIP_LOAD_STL = 30;
    public static final int KEY_IS_START_SERVICE = 16;
    public static final int KEY_IS_STOP_SERVICE = 12;
    public static final int KEY_IS_THREAD2_POOL_SIZE = 46;
    public static final int KEY_IS_THREAD_POOL_STACK_SIZE = 25;
    public static final int KEY_IS_THREAD_V2 = 38;
    public static final int KEY_IS_THROW_CRASH = 4;
    public static final int KEY_IS_TIMEOUT_COUNT = 10;
    public static final int KEY_IS_TTPLAYER_ON = 1;
    public static final int KEY_IS_USED_THREAD_POOL = 24;
    public static final int KEY_IS_USE_BETA_PLAYER = 29;
    public static final int KEY_IS_VC2_STACK_SIZE_OPT = 39;
    public static final int KEY_IS_VC2_STACK_SIZE_VALUE = 40;
    public static final int KEY_IS_VC2_THREAD_PRIORITY_VALUE = 35;
    private static String LIBRARY_DIR = null;
    private static String PLAYER_LIBRARY_NAME = "libttmplayer.so";
    private static final int PORT_VERSION = 2;
    public static final String TAG = "ttplayer";
    public static final int TRUE = 1;
    private static String TTPLAYER_FILE_CACHE_DIR = null;
    private static final int VERSION = 1;
    private static final String VERSION_INFO = "version code:1,name:999.999.999.9default sdk info 2016-12-05";
    private static final String VERSION_NAME = "999.999.999.9";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static final class IntValue extends Value {
        private int mValue;

        public IntValue(int i10, int i11) {
            super(i10);
            this.mValue = i11;
        }

        public int getValue() {
            return this.mValue;
        }

        public void setValue(int i10) {
            this.mValue = i10;
        }
    }

    /* loaded from: classes6.dex */
    static class LongValue extends Value {
        private long mValue;

        public LongValue(int i10, long j10) {
            super(i10);
            this.mValue = j10;
        }

        public long getValue() {
            return this.mValue;
        }

        public void setValue(long j10) {
            this.mValue = j10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static class StringValue extends Value {
        private String mValue;

        public StringValue(int i10, String str) {
            super(i10);
            this.mValue = str;
        }

        public String getValue() {
            return this.mValue;
        }

        public void setValue(String str) {
            this.mValue = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static class Value {
        private int mKey;

        protected Value(int i10) {
            this.mKey = i10;
        }

        public int getKey() {
            return this.mKey;
        }
    }

    static {
        setValue(13, 1);
        setValue(14, VERSION_NAME);
        setValue(15, VERSION_INFO);
        setValue(0, false);
        setValue(1, true);
        setValue(2, true);
        setValue(3, false);
        setValue(4, false);
        setValue(5, false);
        setValue(6, false);
        setValue(7, false);
        setValue(8, false);
        setValue(10, 0);
        setValue(11, false);
        setValue(18, 2);
        setValue(25, 32);
        setValue(34, 0);
        setValue(35, 5242880);
        setValue(36, 0);
        setValue(39, 0);
        setValue(40, 131072);
        setValue(41, 0);
        setValue(42, 2);
        setValue(47, 1);
        setValue(48, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x008d A[Catch: IOException -> 0x0089, TRY_LEAVE, TryCatch #5 {IOException -> 0x0089, blocks: (B:46:0x0085, B:50:0x008d), top: B:78:0x0085 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0085 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean copyFile(java.lang.String r4, java.lang.String r5, boolean r6, boolean r7) {
        /*
            java.io.File r0 = new java.io.File
            r0.<init>(r5)
            boolean r5 = r0.exists()
            r1 = 0
            if (r5 != 0) goto Ld
            return r1
        Ld:
            boolean r5 = r0.isFile()
            if (r5 != 0) goto L14
            return r1
        L14:
            java.io.File r5 = new java.io.File
            r5.<init>(r4)
            boolean r2 = r5.exists()
            if (r2 == 0) goto L2a
            if (r6 == 0) goto L3f
            java.io.File r6 = new java.io.File
            r6.<init>(r4)
            r6.delete()
            goto L3f
        L2a:
            java.io.File r4 = r5.getParentFile()
            boolean r4 = r4.exists()
            if (r4 != 0) goto L3f
            java.io.File r4 = r5.getParentFile()
            boolean r4 = r4.mkdirs()
            if (r4 != 0) goto L3f
            return r1
        L3f:
            r4 = 0
            java.io.FileInputStream r6 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7f java.io.FileNotFoundException -> L81
            r6.<init>(r0)     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7f java.io.FileNotFoundException -> L81
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L77 java.io.IOException -> L95 java.io.FileNotFoundException -> La7
            r2.<init>(r5)     // Catch: java.lang.Throwable -> L77 java.io.IOException -> L95 java.io.FileNotFoundException -> La7
            r4 = 1024(0x400, float:1.435E-42)
            byte[] r4 = new byte[r4]     // Catch: java.lang.Throwable -> L59 java.io.IOException -> L5b java.io.FileNotFoundException -> L5d
        L4e:
            int r5 = r6.read(r4)     // Catch: java.lang.Throwable -> L59 java.io.IOException -> L5b java.io.FileNotFoundException -> L5d
            r3 = -1
            if (r5 == r3) goto L5f
            r2.write(r4, r1, r5)     // Catch: java.lang.Throwable -> L59 java.io.IOException -> L5b java.io.FileNotFoundException -> L5d
            goto L4e
        L59:
            r4 = move-exception
            goto L83
        L5b:
            r4 = r2
            goto L95
        L5d:
            r4 = r2
            goto La7
        L5f:
            r2.close()     // Catch: java.lang.Throwable -> L59 java.io.IOException -> L5b java.io.FileNotFoundException -> L5d
            r6.close()     // Catch: java.lang.Throwable -> L59 java.io.IOException -> L5b java.io.FileNotFoundException -> L5d
            if (r7 == 0) goto L6a
            r0.delete()     // Catch: java.lang.Throwable -> L59 java.io.IOException -> L5b java.io.FileNotFoundException -> L5d
        L6a:
            r2.close()     // Catch: java.io.IOException -> L71
            r6.close()     // Catch: java.io.IOException -> L71
            goto L75
        L71:
            r4 = move-exception
            r4.printStackTrace()
        L75:
            r4 = 1
            return r4
        L77:
            r5 = move-exception
            r2 = r4
        L79:
            r4 = r5
            goto L83
        L7b:
            r5 = move-exception
            r6 = r4
            r2 = r6
            goto L79
        L7f:
            r6 = r4
            goto L95
        L81:
            r6 = r4
            goto La7
        L83:
            if (r2 == 0) goto L8b
            r2.close()     // Catch: java.io.IOException -> L89
            goto L8b
        L89:
            r5 = move-exception
            goto L91
        L8b:
            if (r6 == 0) goto L94
            r6.close()     // Catch: java.io.IOException -> L89
            goto L94
        L91:
            r5.printStackTrace()
        L94:
            throw r4
        L95:
            if (r4 == 0) goto L9d
            r4.close()     // Catch: java.io.IOException -> L9b
            goto L9d
        L9b:
            r4 = move-exception
            goto La3
        L9d:
            if (r6 == 0) goto La6
            r6.close()     // Catch: java.io.IOException -> L9b
            goto La6
        La3:
            r4.printStackTrace()
        La6:
            return r1
        La7:
            if (r4 == 0) goto Laf
            r4.close()     // Catch: java.io.IOException -> Lad
            goto Laf
        Lad:
            r4 = move-exception
            goto Lb5
        Laf:
            if (r6 == 0) goto Lb8
            r6.close()     // Catch: java.io.IOException -> Lad
            goto Lb8
        Lb5:
            r4.printStackTrace()
        Lb8:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttm.player.TTPlayerConfiger.copyFile(java.lang.String, java.lang.String, boolean, boolean):boolean");
    }

    @Deprecated
    public static final String getAppCrashFilePath(Context context) {
        if (CRASH_FILE_PATH == null && !new File(getAppCrashFileStorePath(context)).exists()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(APP_PATH);
            char c10 = File.separatorChar;
            sb2.append(c10);
            sb2.append("plugins");
            sb2.append(c10);
            sb2.append("com.ss.ttm");
            sb2.append(c10);
            sb2.append("data");
            sb2.append(c10);
            sb2.append("files");
            sb2.append(c10);
            sb2.append(CRASH_FILE_NAME);
            return sb2.toString();
        }
        if (isPrintInfo()) {
            Log.i(TAG, "<TTPlayerConfigure.java,getAppCrashFileStorePath,278>carsh file path:" + CRASH_FILE_PATH);
        }
        return CRASH_FILE_PATH;
    }

    public static final String getAppCrashFilePath2(Context context) {
        if (context != null && APP_PATH == null) {
            APP_PATH = context.getApplicationContext().getFilesDir().getAbsolutePath();
        }
        if (CRASH_FILE_PATH == null) {
            if (APP_PATH == null) {
                APP_PATH = getAppFilesPath(context);
            }
            if (isPrintInfo()) {
                Log.i(TAG, "<TTPlayerConfigure.java,getAppCrashFilePath2,211>app files path:" + APP_PATH);
            }
            if (APP_PATH != null) {
                return APP_PATH + File.separatorChar + CRASH_FILE_NAME;
            }
            return null;
        }
        if (isPrintInfo()) {
            Log.i(TAG, "<TTPlayerConfigure.java,getAppCrashFileStorePath,195>carsh file path:" + CRASH_FILE_PATH);
        }
        return CRASH_FILE_PATH;
    }

    @Deprecated
    public static final String getAppCrashFileStorePath(Context context) {
        if (context != null && APP_PATH == null) {
            APP_PATH = context.getApplicationContext().getFilesDir().getAbsolutePath();
        }
        if (CRASH_FILE_PATH == null) {
            if (APP_PATH == null) {
                APP_PATH = getAppFilesPath(context);
            }
            if (isPrintInfo()) {
                Log.i(TAG, "<TTPlayerConfigure.java,getAppCrashFileStorePath,245>app files path:" + APP_PATH);
            }
            if (APP_PATH != null) {
                return APP_PATH + File.separatorChar + CRASH_FILE_NAME;
            }
            return null;
        }
        if (isPrintInfo()) {
            Log.i(TAG, "<TTPlayerConfigure.java,getAppCrashFileStorePath,253>carsh file path:" + CRASH_FILE_PATH);
        }
        return CRASH_FILE_PATH;
    }

    public static final String getAppFileCachePath(Context context) {
        if (context != null && APP_PATH == null) {
            APP_PATH = context.getApplicationContext().getFilesDir().getAbsolutePath();
        }
        String str = TTPLAYER_FILE_CACHE_DIR;
        if (str != null) {
            return str;
        }
        String str2 = APP_PATH;
        if (str2 != null) {
            return str2;
        }
        if (context == null) {
            return null;
        }
        try {
            String absolutePath = context.getApplicationContext().getFilesDir().getAbsolutePath();
            APP_PATH = absolutePath;
            return absolutePath;
        } catch (Exception unused) {
            return null;
        }
    }

    public static final String getAppFilesPath(Context context) {
        String str = APP_PATH;
        if (str != null) {
            return str;
        }
        if (context == null) {
            return null;
        }
        try {
            String absolutePath = context.getApplicationContext().getFilesDir().getAbsolutePath();
            APP_PATH = absolutePath;
            return absolutePath;
        } catch (Exception unused) {
            return null;
        }
    }

    public static final String getExternalStorageDirectoryCrashFilePath(Context context) {
        return null;
    }

    public static String getPlayerLibraryPath(Context context) {
        if (APP_PATH == null || context != null) {
            APP_PATH = getAppFilesPath(context);
        }
        if (APP_PATH == null && LIBRARY_DIR == null) {
            return null;
        }
        String str = LIBRARY_DIR;
        if (str != null) {
            char c10 = File.separatorChar;
            if (str.endsWith(String.valueOf(c10))) {
                return LIBRARY_DIR + PLAYER_LIBRARY_NAME;
            }
            return LIBRARY_DIR + c10 + PLAYER_LIBRARY_NAME;
        }
        return APP_PATH + File.separatorChar + PLAYER_LIBRARY_NAME;
    }

    public static String getPlayerLibrarysDir(Context context) {
        String str = LIBRARY_DIR;
        if (str == null) {
            String str2 = getAppFilesPath(context) + File.separatorChar;
            LIBRARY_DIR = str2;
            return str2;
        }
        char c10 = File.separatorChar;
        if (str.endsWith(String.valueOf(c10))) {
            return LIBRARY_DIR;
        }
        return LIBRARY_DIR + c10;
    }

    public static final String getPlugerCrashFilePath(Context context) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(APP_PATH);
        char c10 = File.separatorChar;
        sb2.append(c10);
        sb2.append("plugins");
        sb2.append(c10);
        sb2.append("com.ss.ttm");
        sb2.append(c10);
        sb2.append("data");
        sb2.append(c10);
        sb2.append("files");
        sb2.append(c10);
        sb2.append(CRASH_FILE_NAME);
        return sb2.toString();
    }

    public static final String getValue(int i10, String str) {
        if (i10 == 17) {
            return CRASH_FILE_NAME;
        }
        Value value = KEYS.get(Integer.valueOf(i10));
        return (value == null || !(value instanceof StringValue)) ? str : ((StringValue) value).getValue();
    }

    public static final int getVersion() {
        return 1;
    }

    public static final boolean isOnTTPlayer() {
        if (getValue(6, 0) == 1) {
            return true;
        }
        if (getValue(1, 0) == 0) {
            return false;
        }
        if (getValue(11, 0) == 1) {
            return true;
        }
        if (getValue(7, 0) == 1 || getValue(8, 0) == 1 || getValue(10, 0) >= 3) {
            return false;
        }
        return true;
    }

    public static boolean isPrintInfo() {
        return IS_PRINT_INFO;
    }

    public static final boolean moveFile(String str, String str2, boolean z10) {
        return copyFile(str, str2, z10, true);
    }

    public static final void setCrashFileName(String str) {
        CRASH_FILE_NAME = str;
    }

    public static final void setCrashFilePath(String str) {
        CRASH_FILE_PATH = str;
    }

    public static final void setLibraryName(String str) {
        PLAYER_LIBRARY_NAME = str;
    }

    public static final void setLibrarysDir(String str) {
        LIBRARY_DIR = str;
    }

    public static final void setValue(int i10, boolean z10) {
        setValue(i10, z10 ? 1 : 0);
    }

    public static final void setValue(int i10, int i11) {
        ConcurrentHashMap<Integer, Value> concurrentHashMap = KEYS;
        Value value = concurrentHashMap.get(Integer.valueOf(i10));
        if (value != null) {
            if (value instanceof IntValue) {
                if (i10 == 2 && getValue(6, false)) {
                    return;
                }
                ((IntValue) value).setValue(i11);
                return;
            }
            concurrentHashMap.remove(Integer.valueOf(i10));
        }
        concurrentHashMap.put(Integer.valueOf(i10), new IntValue(i10, i11));
    }

    public static final boolean getValue(int i10, boolean z10) {
        Value value = KEYS.get(Integer.valueOf(i10));
        return (value == null || !(value instanceof IntValue)) ? z10 : ((IntValue) value).getValue() == 1;
    }

    public static final int getValue(int i10, int i11) {
        Value value = KEYS.get(Integer.valueOf(i10));
        return (value == null || !(value instanceof IntValue)) ? i11 : ((IntValue) value).getValue();
    }

    public static String getPlayerLibraryPath() {
        return getPlayerLibraryPath(null);
    }

    public static final void setValue(int i10, long j10) {
        ConcurrentHashMap<Integer, Value> concurrentHashMap = KEYS;
        Value value = concurrentHashMap.get(Integer.valueOf(i10));
        if (value != null) {
            if (value instanceof LongValue) {
                ((LongValue) value).setValue(j10);
                return;
            }
            concurrentHashMap.remove(Integer.valueOf(i10));
        }
        concurrentHashMap.put(Integer.valueOf(i10), new LongValue(i10, j10));
    }

    public static final long getValue(int i10, long j10) {
        Value value = KEYS.get(Integer.valueOf(i10));
        return (value == null || !(value instanceof LongValue)) ? j10 : ((LongValue) value).getValue();
    }

    public static void checkDebugTTPlayerLib() {
    }

    public static final void setValue(int i10, String str) {
        ConcurrentHashMap<Integer, Value> concurrentHashMap = KEYS;
        Value value = concurrentHashMap.get(Integer.valueOf(i10));
        if (value != null) {
            if (value instanceof StringValue) {
                ((StringValue) value).setValue(str);
                return;
            }
            concurrentHashMap.remove(Integer.valueOf(i10));
        }
        concurrentHashMap.put(Integer.valueOf(i10), new StringValue(i10, str));
    }
}
