package com.tencent.mmkv;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import dalvik.annotation.optimization.FastNative;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import ll.c;
import org.jetbrains.annotations.Contract;
/* loaded from: classes7.dex */
public class MMKV implements SharedPreferences, SharedPreferences.Editor {
    private static final int ASHMEM_MODE = 8;
    private static final int BACKUP_MODE = 16;
    private static final int CONTEXT_MODE_MULTI_PROCESS = 4;
    public static final int ExpireInDay = 86400;
    public static final int ExpireInHour = 3600;
    public static final int ExpireInMinute = 60;
    public static final int ExpireInMonth = 2592000;
    public static final int ExpireInYear = 946080000;
    public static final int ExpireNever = 0;
    public static final int MULTI_PROCESS_MODE = 2;
    public static final int SINGLE_PROCESS_MODE = 1;
    private static final Set<Long> checkedHandleSet;
    private static ll.b gCallbackHandler;
    private static ll.a gContentChangeNotify;
    private static boolean gWantLogReDirecting;
    private static final MMKVLogLevel[] index2LogLevel;
    private static boolean isProcessModeCheckerEnabled;
    private static final EnumMap<MMKVLogLevel, Integer> logLevel2Index;
    private static final HashMap<String, Parcelable.Creator<?>> mCreators;
    private static final EnumMap<MMKVRecoverStrategic, Integer> recoverIndex;
    private static String rootDir;
    private final long nativeHandle;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f49486a;

        static {
            int[] iArr = new int[MMKVLogLevel.values().length];
            f49486a = iArr;
            try {
                iArr[MMKVLogLevel.LevelDebug.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f49486a[MMKVLogLevel.LevelWarning.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f49486a[MMKVLogLevel.LevelError.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f49486a[MMKVLogLevel.LevelNone.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f49486a[MMKVLogLevel.LevelInfo.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes7.dex */
    public interface b {
        void loadLibrary(String str);
    }

    static {
        EnumMap<MMKVRecoverStrategic, Integer> enumMap = new EnumMap<>(MMKVRecoverStrategic.class);
        recoverIndex = enumMap;
        enumMap.put((EnumMap<MMKVRecoverStrategic, Integer>) MMKVRecoverStrategic.OnErrorDiscard, (MMKVRecoverStrategic) 0);
        enumMap.put((EnumMap<MMKVRecoverStrategic, Integer>) MMKVRecoverStrategic.OnErrorRecover, (MMKVRecoverStrategic) 1);
        EnumMap<MMKVLogLevel, Integer> enumMap2 = new EnumMap<>(MMKVLogLevel.class);
        logLevel2Index = enumMap2;
        MMKVLogLevel mMKVLogLevel = MMKVLogLevel.LevelDebug;
        enumMap2.put((EnumMap<MMKVLogLevel, Integer>) mMKVLogLevel, (MMKVLogLevel) 0);
        MMKVLogLevel mMKVLogLevel2 = MMKVLogLevel.LevelInfo;
        enumMap2.put((EnumMap<MMKVLogLevel, Integer>) mMKVLogLevel2, (MMKVLogLevel) 1);
        MMKVLogLevel mMKVLogLevel3 = MMKVLogLevel.LevelWarning;
        enumMap2.put((EnumMap<MMKVLogLevel, Integer>) mMKVLogLevel3, (MMKVLogLevel) 2);
        MMKVLogLevel mMKVLogLevel4 = MMKVLogLevel.LevelError;
        enumMap2.put((EnumMap<MMKVLogLevel, Integer>) mMKVLogLevel4, (MMKVLogLevel) 3);
        MMKVLogLevel mMKVLogLevel5 = MMKVLogLevel.LevelNone;
        enumMap2.put((EnumMap<MMKVLogLevel, Integer>) mMKVLogLevel5, (MMKVLogLevel) 4);
        index2LogLevel = new MMKVLogLevel[]{mMKVLogLevel, mMKVLogLevel2, mMKVLogLevel3, mMKVLogLevel4, mMKVLogLevel5};
        checkedHandleSet = new HashSet();
        rootDir = null;
        isProcessModeCheckerEnabled = true;
        mCreators = new HashMap<>();
        gWantLogReDirecting = false;
    }

    private MMKV(long j10) {
        this.nativeHandle = j10;
    }

    private native long actualSize(long j10);

    private native String[] allKeys(long j10, boolean z10);

    @NonNull
    public static MMKV backedUpMMKVWithID(String str, int i10, @Nullable String str2, String str3) throws RuntimeException {
        if (rootDir != null) {
            int i11 = i10 | 16;
            return checkProcessMode(getMMKVWithID(str, i11, str2, str3, 0L), str, i11);
        }
        throw new IllegalStateException("You should Call MMKV.initialize() first.");
    }

    public static native long backupAllToDirectory(String str);

    public static native boolean backupOneToDirectory(String str, String str2, @Nullable String str3);

    @NonNull
    @Contract("_, _, _ -> new")
    private static MMKV checkProcessMode(long j10, String str, int i10) throws RuntimeException {
        String str2;
        if (j10 != 0) {
            if (!isProcessModeCheckerEnabled) {
                return new MMKV(j10);
            }
            Set<Long> set = checkedHandleSet;
            synchronized (set) {
                try {
                    if (!set.contains(Long.valueOf(j10))) {
                        if (!checkProcessMode(j10)) {
                            if (i10 == 1) {
                                str2 = "Opening a multi-process MMKV instance [" + str + "] with SINGLE_PROCESS_MODE!";
                            } else {
                                str2 = ("Opening an MMKV instance [" + str + "] with MULTI_PROCESS_MODE, ") + "while it's already been opened with SINGLE_PROCESS_MODE by someone somewhere else!";
                            }
                            throw new IllegalArgumentException(str2);
                        }
                        set.add(Long.valueOf(j10));
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return new MMKV(j10);
        }
        throw new RuntimeException("Fail to create an MMKV instance [" + str + "] in JNI");
    }

    private static native boolean checkProcessMode(long j10);

    private native boolean containsKey(long j10, String str);

    private native long count(long j10, boolean z10);

    private static native long createNB(int i10);

    @Nullable
    public static c createNativeBuffer(int i10) {
        long createNB = createNB(i10);
        if (createNB <= 0) {
            return null;
        }
        return new c(createNB, i10);
    }

    private native boolean decodeBool(long j10, String str, boolean z10);

    @Nullable
    private native byte[] decodeBytes(long j10, String str);

    private native double decodeDouble(long j10, String str, double d10);

    private native float decodeFloat(long j10, String str, float f10);

    private native int decodeInt(long j10, String str, int i10);

    private native long decodeLong(long j10, String str, long j11);

    @Nullable
    private native String decodeString(long j10, String str, @Nullable String str2);

    @Nullable
    private native String[] decodeStringSet(long j10, String str);

    @NonNull
    public static MMKV defaultMMKV() throws RuntimeException {
        if (rootDir != null) {
            return checkProcessMode(getDefaultMMKV(1, null), "DefaultMMKV", 1);
        }
        throw new IllegalStateException("You should Call MMKV.initialize() first.");
    }

    private static native void destroyNB(long j10, int i10);

    public static void destroyNativeBuffer(@NonNull c cVar) {
        destroyNB(cVar.f62235a, cVar.f62236b);
    }

    public static void disableProcessModeChecker() {
        synchronized (checkedHandleSet) {
            isProcessModeCheckerEnabled = false;
        }
        Log.i("MMKV", "Disable checkProcessMode()");
    }

    private static String doInitialize(String str, String str2, b bVar, MMKVLogLevel mMKVLogLevel, boolean z10) {
        if (bVar != null) {
            bVar.loadLibrary("mmkv");
        } else {
            System.loadLibrary("mmkv");
        }
        jniInitialize(str, str2, logLevel2Int(mMKVLogLevel), z10);
        rootDir = str;
        return str;
    }

    public static void enableProcessModeChecker() {
        synchronized (checkedHandleSet) {
            isProcessModeCheckerEnabled = true;
        }
        Log.i("MMKV", "Enable checkProcessMode()");
    }

    private native boolean encodeBool(long j10, String str, boolean z10);

    private native boolean encodeBool_2(long j10, String str, boolean z10, int i10);

    private native boolean encodeBytes(long j10, String str, @Nullable byte[] bArr);

    private native boolean encodeBytes_2(long j10, String str, @Nullable byte[] bArr, int i10);

    private native boolean encodeDouble(long j10, String str, double d10);

    private native boolean encodeDouble_2(long j10, String str, double d10, int i10);

    private native boolean encodeFloat(long j10, String str, float f10);

    private native boolean encodeFloat_2(long j10, String str, float f10, int i10);

    private native boolean encodeInt(long j10, String str, int i10);

    private native boolean encodeInt_2(long j10, String str, int i10, int i11);

    private native boolean encodeLong(long j10, String str, long j11);

    private native boolean encodeLong_2(long j10, String str, long j11, int i10);

    private native boolean encodeSet(long j10, String str, @Nullable String[] strArr);

    private native boolean encodeSet_2(long j10, String str, @Nullable String[] strArr, int i10);

    private native boolean encodeString(long j10, String str, @Nullable String str2);

    private native boolean encodeString_2(long j10, String str, @Nullable String str2, int i10);

    private static native long getDefaultMMKV(int i10, @Nullable String str);

    private static native long getMMKVWithAshmemFD(String str, int i10, int i11, @Nullable String str2);

    private static native long getMMKVWithID(String str, int i10, @Nullable String str2, @Nullable String str3, long j10);

    private static native long getMMKVWithIDAndSize(String str, int i10, int i11, @Nullable String str2);

    private byte[] getParcelableByte(@NonNull Parcelable parcelable) {
        Parcel obtain = Parcel.obtain();
        parcelable.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        return marshall;
    }

    public static String getRootDir() {
        return rootDir;
    }

    public static String initialize(@NonNull Context context) {
        return initialize(context, context.getFilesDir().getAbsolutePath() + "/mmkv", null, MMKVLogLevel.LevelInfo, null);
    }

    private native boolean isCompareBeforeSetEnabled();

    @FastNative
    private native boolean isEncryptionEnabled();

    @FastNative
    private native boolean isExpirationEnabled();

    public static boolean isFileValid(String str) {
        return isFileValid(str, null);
    }

    public static native boolean isFileValid(String str, @Nullable String str2);

    private static native void jniInitialize(String str, String str2, int i10, boolean z10);

    @Contract(pure = true)
    private static int logLevel2Int(@NonNull MMKVLogLevel mMKVLogLevel) {
        int i10 = a.f49486a[mMKVLogLevel.ordinal()];
        if (i10 != 1) {
            int i11 = 2;
            if (i10 != 2) {
                i11 = 3;
                if (i10 != 3) {
                    i11 = 4;
                    if (i10 != 4) {
                        return 1;
                    }
                }
            }
            return i11;
        }
        return 0;
    }

    private static void mmkvLogImp(int i10, String str, int i11, String str2, String str3) {
        int i12 = a.f49486a[index2LogLevel[i10].ordinal()];
        if (i12 != 1) {
            if (i12 != 2) {
                if (i12 != 3) {
                    if (i12 == 5) {
                        Log.i("MMKV", str3);
                        return;
                    }
                    return;
                }
                Log.e("MMKV", str3);
                return;
            }
            Log.w("MMKV", str3);
            return;
        }
        Log.d("MMKV", str3);
    }

    @NonNull
    @Contract("_, _, _, _ -> new")
    public static MMKV mmkvWithAshmemFD(String str, int i10, int i11, String str2) throws RuntimeException {
        long mMKVWithAshmemFD = getMMKVWithAshmemFD(str, i10, i11, str2);
        if (mMKVWithAshmemFD != 0) {
            return new MMKV(mMKVWithAshmemFD);
        }
        throw new RuntimeException("Fail to create an ashmem MMKV instance [" + str + "] in JNI");
    }

    @NonNull
    public static MMKV mmkvWithAshmemID(Context context, String str, int i10, int i11, @Nullable String str2) throws RuntimeException {
        MMKV a10;
        if (rootDir != null) {
            String b10 = MMKVContentProvider.b(context, Process.myPid());
            if (b10 != null && b10.length() != 0) {
                if (b10.contains(":")) {
                    Uri a11 = MMKVContentProvider.a(context);
                    if (a11 != null) {
                        MMKVLogLevel mMKVLogLevel = MMKVLogLevel.LevelInfo;
                        simpleLog(mMKVLogLevel, "getting parcelable mmkv in process, Uri = " + a11);
                        Bundle bundle = new Bundle();
                        bundle.putInt("KEY_SIZE", i10);
                        bundle.putInt("KEY_MODE", i11);
                        if (str2 != null) {
                            bundle.putString("KEY_CRYPT", str2);
                        }
                        Bundle call = context.getContentResolver().call(a11, "mmkvFromAshmemID", str, bundle);
                        if (call != null) {
                            call.setClassLoader(ParcelableMMKV.class.getClassLoader());
                            ParcelableMMKV parcelableMMKV = (ParcelableMMKV) call.getParcelable("KEY");
                            if (parcelableMMKV != null && (a10 = parcelableMMKV.a()) != null) {
                                simpleLog(mMKVLogLevel, a10.mmapID() + " fd = " + a10.ashmemFD() + ", meta fd = " + a10.ashmemMetaFD());
                                return a10;
                            }
                        }
                    } else {
                        simpleLog(MMKVLogLevel.LevelError, "MMKVContentProvider has invalid authority");
                        throw new IllegalStateException("MMKVContentProvider has invalid authority");
                    }
                }
                simpleLog(MMKVLogLevel.LevelInfo, "getting mmkv in main process");
                long mMKVWithIDAndSize = getMMKVWithIDAndSize(str, i10, i11 | 8, str2);
                if (mMKVWithIDAndSize != 0) {
                    return new MMKV(mMKVWithIDAndSize);
                }
                throw new IllegalStateException("Fail to create an Ashmem MMKV instance [" + str + "]");
            }
            simpleLog(MMKVLogLevel.LevelError, "process name detect fail, try again later");
            throw new IllegalStateException("process name detect fail, try again later");
        }
        throw new IllegalStateException("You should Call MMKV.initialize() first.");
    }

    @NonNull
    public static MMKV mmkvWithID(String str) throws RuntimeException {
        if (rootDir != null) {
            return checkProcessMode(getMMKVWithID(str, 1, null, null, 0L), str, 1);
        }
        throw new IllegalStateException("You should Call MMKV.initialize() first.");
    }

    @FastNative
    private native void nativeEnableCompareBeforeSet();

    public static native void onExit();

    private static int onMMKVCRCCheckFail(String str) {
        MMKVRecoverStrategic mMKVRecoverStrategic = MMKVRecoverStrategic.OnErrorDiscard;
        MMKVLogLevel mMKVLogLevel = MMKVLogLevel.LevelInfo;
        simpleLog(mMKVLogLevel, "Recover strategic for " + str + " is " + mMKVRecoverStrategic);
        Integer num = recoverIndex.get(mMKVRecoverStrategic);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    private static int onMMKVFileLengthError(String str) {
        MMKVRecoverStrategic mMKVRecoverStrategic = MMKVRecoverStrategic.OnErrorDiscard;
        MMKVLogLevel mMKVLogLevel = MMKVLogLevel.LevelInfo;
        simpleLog(mMKVLogLevel, "Recover strategic for " + str + " is " + mMKVRecoverStrategic);
        Integer num = recoverIndex.get(mMKVRecoverStrategic);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public static native int pageSize();

    public static void registerContentChangeNotify(ll.a aVar) {
        setWantsContentChangeNotify(false);
    }

    public static void registerHandler(ll.b bVar) {
        throw null;
    }

    public static boolean removeStorage(String str) {
        return removeStorage(str, null);
    }

    public static native boolean removeStorage(String str, @Nullable String str2);

    private native void removeValueForKey(long j10, String str);

    public static native long restoreAllFromDirectory(String str);

    public static native boolean restoreOneMMKVFromDirectory(String str, String str2, @Nullable String str3);

    private static native void setCallbackHandler(boolean z10, boolean z11);

    private static native void setLogLevel(int i10);

    public static void setLogLevel(MMKVLogLevel mMKVLogLevel) {
        setLogLevel(logLevel2Int(mMKVLogLevel));
    }

    private static native void setWantsContentChangeNotify(boolean z10);

    private static void simpleLog(MMKVLogLevel mMKVLogLevel, String str) {
        int intValue;
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        StackTraceElement stackTraceElement = stackTrace[stackTrace.length - 1];
        Integer num = logLevel2Index.get(mMKVLogLevel);
        if (num == null) {
            intValue = 0;
        } else {
            intValue = num.intValue();
        }
        mmkvLogImp(intValue, stackTraceElement.getFileName(), stackTraceElement.getLineNumber(), stackTraceElement.getMethodName(), str);
    }

    private native void sync(boolean z10);

    private native long totalSize(long j10);

    public static void unregisterContentChangeNotify() {
        setWantsContentChangeNotify(false);
    }

    public static void unregisterHandler() {
        setCallbackHandler(false, false);
        gWantLogReDirecting = false;
    }

    private native int valueSize(long j10, String str, boolean z10);

    public static native String version();

    private native int writeValueToNB(long j10, String str, long j11, int i10);

    public long actualSize() {
        return actualSize(this.nativeHandle);
    }

    @Nullable
    public String[] allKeys() {
        return allKeys(this.nativeHandle, false);
    }

    @Nullable
    public String[] allNonExpireKeys() {
        return allKeys(this.nativeHandle, true);
    }

    @Override // android.content.SharedPreferences.Editor
    @Deprecated
    public void apply() {
        sync(false);
    }

    public native int ashmemFD();

    public native int ashmemMetaFD();

    public void async() {
        sync(false);
    }

    public native void checkContentChangedByOuterProcess();

    public native void checkReSetCryptKey(@Nullable String str);

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor clear() {
        clearAll();
        return this;
    }

    public native void clearAll();

    public native void clearAllWithKeepingSpace();

    public native void clearMemoryCache();

    public native void close();

    @Override // android.content.SharedPreferences.Editor
    @Deprecated
    public boolean commit() {
        sync(true);
        return true;
    }

    @Override // android.content.SharedPreferences
    public boolean contains(String str) {
        return containsKey(str);
    }

    public boolean containsKey(String str) {
        return containsKey(this.nativeHandle, str);
    }

    public long count() {
        return count(this.nativeHandle, false);
    }

    public long countNonExpiredKeys() {
        return count(this.nativeHandle, true);
    }

    @Nullable
    public native String cryptKey();

    public boolean decodeBool(String str) {
        return decodeBool(this.nativeHandle, str, false);
    }

    @Nullable
    public byte[] decodeBytes(String str) {
        return decodeBytes(str, (byte[]) null);
    }

    public double decodeDouble(String str) {
        return decodeDouble(this.nativeHandle, str, 0.0d);
    }

    public float decodeFloat(String str) {
        return decodeFloat(this.nativeHandle, str, 0.0f);
    }

    public int decodeInt(String str) {
        return decodeInt(this.nativeHandle, str, 0);
    }

    public long decodeLong(String str) {
        return decodeLong(this.nativeHandle, str, 0L);
    }

    @Nullable
    public <T extends Parcelable> T decodeParcelable(String str, Class<T> cls) {
        return (T) decodeParcelable(str, cls, null);
    }

    @Nullable
    public String decodeString(String str) {
        return decodeString(this.nativeHandle, str, null);
    }

    @Nullable
    public Set<String> decodeStringSet(String str) {
        return decodeStringSet(str, (Set<String>) null);
    }

    public native boolean disableAutoKeyExpire();

    public native void disableCompareBeforeSet();

    public native boolean enableAutoKeyExpire(int i10);

    public void enableCompareBeforeSet() {
        if (isExpirationEnabled()) {
            Log.e("MMKV", "enableCompareBeforeSet is invalid when Expiration is on");
        }
        if (isEncryptionEnabled()) {
            Log.e("MMKV", "enableCompareBeforeSet is invalid when key encryption is on");
        }
        nativeEnableCompareBeforeSet();
    }

    public boolean encode(String str, boolean z10) {
        return encodeBool(this.nativeHandle, str, z10);
    }

    @Override // android.content.SharedPreferences
    public Map<String, ?> getAll() {
        throw new UnsupportedOperationException("Intentionally Not Supported. Use allKeys() instead, getAll() not implement because type-erasure inside mmkv");
    }

    @Override // android.content.SharedPreferences
    public boolean getBoolean(String str, boolean z10) {
        return decodeBool(this.nativeHandle, str, z10);
    }

    public byte[] getBytes(String str, @Nullable byte[] bArr) {
        return decodeBytes(str, bArr);
    }

    @Override // android.content.SharedPreferences
    public float getFloat(String str, float f10) {
        return decodeFloat(this.nativeHandle, str, f10);
    }

    @Override // android.content.SharedPreferences
    public int getInt(String str, int i10) {
        return decodeInt(this.nativeHandle, str, i10);
    }

    @Override // android.content.SharedPreferences
    public long getLong(String str, long j10) {
        return decodeLong(this.nativeHandle, str, j10);
    }

    @Override // android.content.SharedPreferences
    @Nullable
    public String getString(String str, @Nullable String str2) {
        return decodeString(this.nativeHandle, str, str2);
    }

    @Override // android.content.SharedPreferences
    @Nullable
    public Set<String> getStringSet(String str, @Nullable Set<String> set) {
        return decodeStringSet(str, set);
    }

    public int getValueActualSize(String str) {
        return valueSize(this.nativeHandle, str, true);
    }

    public int getValueSize(String str) {
        return valueSize(this.nativeHandle, str, false);
    }

    public int importFromSharedPreferences(@NonNull SharedPreferences sharedPreferences) {
        Map<String, ?> all = sharedPreferences.getAll();
        if (all != null && all.size() > 0) {
            for (Map.Entry<String, ?> entry : all.entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                if (key != null && value != null) {
                    if (value instanceof Boolean) {
                        encodeBool(this.nativeHandle, key, ((Boolean) value).booleanValue());
                    } else if (value instanceof Integer) {
                        encodeInt(this.nativeHandle, key, ((Integer) value).intValue());
                    } else if (value instanceof Long) {
                        encodeLong(this.nativeHandle, key, ((Long) value).longValue());
                    } else if (value instanceof Float) {
                        encodeFloat(this.nativeHandle, key, ((Float) value).floatValue());
                    } else if (value instanceof Double) {
                        encodeDouble(this.nativeHandle, key, ((Double) value).doubleValue());
                    } else if (value instanceof String) {
                        encodeString(this.nativeHandle, key, (String) value);
                    } else if (value instanceof Set) {
                        encode(key, (Set) value);
                    } else {
                        MMKVLogLevel mMKVLogLevel = MMKVLogLevel.LevelError;
                        simpleLog(mMKVLogLevel, "unknown type: " + value.getClass());
                    }
                }
            }
            return all.size();
        }
        return 0;
    }

    public native void lock();

    public native String mmapID();

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putBoolean(String str, boolean z10) {
        encodeBool(this.nativeHandle, str, z10);
        return this;
    }

    public SharedPreferences.Editor putBytes(String str, @Nullable byte[] bArr) {
        encode(str, bArr);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putFloat(String str, float f10) {
        encodeFloat(this.nativeHandle, str, f10);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putInt(String str, int i10) {
        encodeInt(this.nativeHandle, str, i10);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putLong(String str, long j10) {
        encodeLong(this.nativeHandle, str, j10);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putString(String str, @Nullable String str2) {
        encodeString(this.nativeHandle, str, str2);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putStringSet(String str, @Nullable Set<String> set) {
        encode(str, set);
        return this;
    }

    public native boolean reKey(@Nullable String str);

    @Override // android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        throw new UnsupportedOperationException("Intentionally Not implement in MMKV");
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor remove(String str) {
        removeValueForKey(str);
        return this;
    }

    public void removeValueForKey(String str) {
        removeValueForKey(this.nativeHandle, str);
    }

    public native void removeValuesForKeys(String[] strArr);

    public void sync() {
        sync(true);
    }

    public long totalSize() {
        return totalSize(this.nativeHandle);
    }

    public native void trim();

    public native boolean tryLock();

    public native void unlock();

    @Override // android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        throw new UnsupportedOperationException("Intentionally Not implement in MMKV");
    }

    public int writeValueToNativeBuffer(String str, @NonNull c cVar) {
        return writeValueToNB(this.nativeHandle, str, cVar.f62235a, cVar.f62236b);
    }

    public boolean decodeBool(String str, boolean z10) {
        return decodeBool(this.nativeHandle, str, z10);
    }

    @Nullable
    public byte[] decodeBytes(String str, @Nullable byte[] bArr) {
        byte[] decodeBytes = decodeBytes(this.nativeHandle, str);
        return decodeBytes != null ? decodeBytes : bArr;
    }

    public double decodeDouble(String str, double d10) {
        return decodeDouble(this.nativeHandle, str, d10);
    }

    public float decodeFloat(String str, float f10) {
        return decodeFloat(this.nativeHandle, str, f10);
    }

    public int decodeInt(String str, int i10) {
        return decodeInt(this.nativeHandle, str, i10);
    }

    public long decodeLong(String str, long j10) {
        return decodeLong(this.nativeHandle, str, j10);
    }

    @Nullable
    public <T extends Parcelable> T decodeParcelable(String str, Class<T> cls, @Nullable T t10) {
        byte[] decodeBytes;
        Parcelable.Creator<?> creator;
        if (cls == null || (decodeBytes = decodeBytes(this.nativeHandle, str)) == null) {
            return t10;
        }
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(decodeBytes, 0, decodeBytes.length);
        obtain.setDataPosition(0);
        try {
            String cls2 = cls.toString();
            HashMap<String, Parcelable.Creator<?>> hashMap = mCreators;
            synchronized (hashMap) {
                try {
                    creator = hashMap.get(cls2);
                    if (creator == null && (creator = (Parcelable.Creator) cls.getField("CREATOR").get(null)) != null) {
                        hashMap.put(cls2, creator);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (creator != null) {
                return (T) creator.createFromParcel(obtain);
            }
            throw new Exception("Parcelable protocol requires a non-null static Parcelable.Creator object called CREATOR on class " + cls2);
        } catch (Exception e10) {
            simpleLog(MMKVLogLevel.LevelError, e10.toString());
            return t10;
        } finally {
            obtain.recycle();
        }
    }

    @Nullable
    public String decodeString(String str, @Nullable String str2) {
        return decodeString(this.nativeHandle, str, str2);
    }

    @Nullable
    public Set<String> decodeStringSet(String str, @Nullable Set<String> set) {
        return decodeStringSet(str, set, HashSet.class);
    }

    public boolean encode(String str, boolean z10, int i10) {
        return encodeBool_2(this.nativeHandle, str, z10, i10);
    }

    public SharedPreferences.Editor putBoolean(String str, boolean z10, int i10) {
        encodeBool_2(this.nativeHandle, str, z10, i10);
        return this;
    }

    public SharedPreferences.Editor putBytes(String str, @Nullable byte[] bArr, int i10) {
        encode(str, bArr, i10);
        return this;
    }

    public SharedPreferences.Editor putFloat(String str, float f10, int i10) {
        encodeFloat_2(this.nativeHandle, str, f10, i10);
        return this;
    }

    public SharedPreferences.Editor putInt(String str, int i10, int i11) {
        encodeInt_2(this.nativeHandle, str, i10, i11);
        return this;
    }

    public SharedPreferences.Editor putLong(String str, long j10, int i10) {
        encodeLong_2(this.nativeHandle, str, j10, i10);
        return this;
    }

    public SharedPreferences.Editor putString(String str, @Nullable String str2, int i10) {
        encodeString_2(this.nativeHandle, str, str2, i10);
        return this;
    }

    public SharedPreferences.Editor putStringSet(String str, @Nullable Set<String> set, int i10) {
        encode(str, set, i10);
        return this;
    }

    @Nullable
    public Set<String> decodeStringSet(String str, @Nullable Set<String> set, Class<? extends Set> cls) {
        String[] decodeStringSet = decodeStringSet(this.nativeHandle, str);
        if (decodeStringSet == null) {
            return set;
        }
        try {
            Set<String> newInstance = cls.newInstance();
            newInstance.addAll(Arrays.asList(decodeStringSet));
            return newInstance;
        } catch (IllegalAccessException | InstantiationException unused) {
            return set;
        }
    }

    public boolean encode(String str, int i10) {
        return encodeInt(this.nativeHandle, str, i10);
    }

    public static String initialize(@NonNull Context context, MMKVLogLevel mMKVLogLevel) {
        return initialize(context, context.getFilesDir().getAbsolutePath() + "/mmkv", null, mMKVLogLevel, null);
    }

    public boolean encode(String str, int i10, int i11) {
        return encodeInt_2(this.nativeHandle, str, i10, i11);
    }

    @NonNull
    public static MMKV defaultMMKV(int i10, @Nullable String str) throws RuntimeException {
        if (rootDir != null) {
            return checkProcessMode(getDefaultMMKV(i10, str), "DefaultMMKV", i10);
        }
        throw new IllegalStateException("You should Call MMKV.initialize() first.");
    }

    @NonNull
    public static MMKV mmkvWithID(String str, int i10) throws RuntimeException {
        if (rootDir != null) {
            return checkProcessMode(getMMKVWithID(str, i10, null, null, 0L), str, i10);
        }
        throw new IllegalStateException("You should Call MMKV.initialize() first.");
    }

    public boolean encode(String str, long j10) {
        return encodeLong(this.nativeHandle, str, j10);
    }

    public static String initialize(@NonNull Context context, b bVar) {
        return initialize(context, context.getFilesDir().getAbsolutePath() + "/mmkv", bVar, MMKVLogLevel.LevelInfo, null);
    }

    public boolean encode(String str, long j10, int i10) {
        return encodeLong_2(this.nativeHandle, str, j10, i10);
    }

    public boolean encode(String str, float f10) {
        return encodeFloat(this.nativeHandle, str, f10);
    }

    public boolean encode(String str, float f10, int i10) {
        return encodeFloat_2(this.nativeHandle, str, f10, i10);
    }

    public static String initialize(@NonNull Context context, b bVar, MMKVLogLevel mMKVLogLevel) {
        return initialize(context, context.getFilesDir().getAbsolutePath() + "/mmkv", bVar, mMKVLogLevel, null);
    }

    @NonNull
    public static MMKV mmkvWithID(String str, int i10, long j10) throws RuntimeException {
        if (rootDir != null) {
            return checkProcessMode(getMMKVWithID(str, i10, null, null, j10), str, i10);
        }
        throw new IllegalStateException("You should Call MMKV.initialize() first.");
    }

    public boolean encode(String str, double d10) {
        return encodeDouble(this.nativeHandle, str, d10);
    }

    public boolean encode(String str, double d10, int i10) {
        return encodeDouble_2(this.nativeHandle, str, d10, i10);
    }

    public static String initialize(Context context, String str) {
        return initialize(context, str, null, MMKVLogLevel.LevelInfo, null);
    }

    public boolean encode(String str, @Nullable String str2) {
        return encodeString(this.nativeHandle, str, str2);
    }

    public boolean encode(String str, @Nullable String str2, int i10) {
        return encodeString_2(this.nativeHandle, str, str2, i10);
    }

    public static String initialize(Context context, String str, MMKVLogLevel mMKVLogLevel) {
        return initialize(context, str, null, mMKVLogLevel, null);
    }

    @NonNull
    public static MMKV mmkvWithID(String str, int i10, @Nullable String str2) throws RuntimeException {
        if (rootDir != null) {
            return checkProcessMode(getMMKVWithID(str, i10, str2, null, 0L), str, i10);
        }
        throw new IllegalStateException("You should Call MMKV.initialize() first.");
    }

    public boolean encode(String str, @Nullable Set<String> set) {
        return encodeSet(this.nativeHandle, str, set == null ? null : (String[]) set.toArray(new String[0]));
    }

    public static String initialize(Context context, String str, b bVar) {
        return initialize(context, str, bVar, MMKVLogLevel.LevelInfo, null);
    }

    public boolean encode(String str, @Nullable Set<String> set, int i10) {
        return encodeSet_2(this.nativeHandle, str, set == null ? null : (String[]) set.toArray(new String[0]), i10);
    }

    public boolean encode(String str, @Nullable byte[] bArr) {
        return encodeBytes(this.nativeHandle, str, bArr);
    }

    public static String initialize(Context context, String str, b bVar, MMKVLogLevel mMKVLogLevel) {
        return initialize(context, str, bVar, mMKVLogLevel, null);
    }

    @Override // android.content.SharedPreferences
    public SharedPreferences.Editor edit() {
        return this;
    }

    public boolean encode(String str, @Nullable byte[] bArr, int i10) {
        return encodeBytes_2(this.nativeHandle, str, bArr, i10);
    }

    public static String initialize(@NonNull Context context, String str, b bVar, MMKVLogLevel mMKVLogLevel, ll.b bVar2) {
        if ((context.getApplicationInfo().flags & 2) == 0) {
            disableProcessModeChecker();
        } else {
            enableProcessModeChecker();
        }
        return doInitialize(str, context.getCacheDir().getAbsolutePath(), bVar, mMKVLogLevel, gWantLogReDirecting);
    }

    @NonNull
    public static MMKV mmkvWithID(String str, String str2) throws RuntimeException {
        if (rootDir != null) {
            return checkProcessMode(getMMKVWithID(str, 1, null, str2, 0L), str, 1);
        }
        throw new IllegalStateException("You should Call MMKV.initialize() first.");
    }

    public boolean encode(String str, @Nullable Parcelable parcelable) {
        if (parcelable == null) {
            return encodeBytes(this.nativeHandle, str, null);
        }
        return encodeBytes(this.nativeHandle, str, getParcelableByte(parcelable));
    }

    public boolean encode(String str, @Nullable Parcelable parcelable, int i10) {
        if (parcelable == null) {
            return encodeBytes_2(this.nativeHandle, str, null, i10);
        }
        return encodeBytes_2(this.nativeHandle, str, getParcelableByte(parcelable), i10);
    }

    @NonNull
    public static MMKV mmkvWithID(String str, String str2, long j10) throws RuntimeException {
        if (rootDir != null) {
            return checkProcessMode(getMMKVWithID(str, 1, null, str2, j10), str, 1);
        }
        throw new IllegalStateException("You should Call MMKV.initialize() first.");
    }

    @Deprecated
    public static String initialize(String str) {
        MMKVLogLevel mMKVLogLevel = MMKVLogLevel.LevelInfo;
        return doInitialize(str, str + "/.tmp", null, mMKVLogLevel, false);
    }

    private static void onContentChangedByOuterProcess(String str) {
    }

    @Deprecated
    public static String initialize(String str, MMKVLogLevel mMKVLogLevel) {
        return doInitialize(str, str + "/.tmp", null, mMKVLogLevel, false);
    }

    @Deprecated
    public static String initialize(String str, b bVar) {
        MMKVLogLevel mMKVLogLevel = MMKVLogLevel.LevelInfo;
        return doInitialize(str, str + "/.tmp", bVar, mMKVLogLevel, false);
    }

    @NonNull
    public static MMKV mmkvWithID(String str, int i10, @Nullable String str2, String str3, long j10) throws RuntimeException {
        if (rootDir != null) {
            return checkProcessMode(getMMKVWithID(str, i10, str2, str3, j10), str, i10);
        }
        throw new IllegalStateException("You should Call MMKV.initialize() first.");
    }

    @Deprecated
    public static String initialize(String str, b bVar, MMKVLogLevel mMKVLogLevel) {
        return doInitialize(str, str + "/.tmp", bVar, mMKVLogLevel, false);
    }

    @NonNull
    public static MMKV mmkvWithID(String str, int i10, @Nullable String str2, String str3) throws RuntimeException {
        if (rootDir != null) {
            return checkProcessMode(getMMKVWithID(str, i10, str2, str3, 0L), str, i10);
        }
        throw new IllegalStateException("You should Call MMKV.initialize() first.");
    }
}
