package androidx.core.graphics;

import android.annotation.SuppressLint;
import android.graphics.Typeface;
import android.util.Log;
import android.util.SparseArray;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.collection.LongSparseArray;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* JADX INFO: Access modifiers changed from: package-private */
@RequiresApi(21)
@SuppressLint({"SoonBlockedPrivateApi"})
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public final class WeightTypefaceApi21 {
    private static final String NATIVE_CREATE_FROM_TYPEFACE_METHOD = "nativeCreateFromTypeface";
    private static final String NATIVE_CREATE_WEIGHT_ALIAS_METHOD = "nativeCreateWeightAlias";
    private static final String NATIVE_INSTANCE_FIELD = "native_instance";
    private static final String TAG = "WeightTypeface";
    private static final Constructor<Typeface> sConstructor;
    private static final Method sNativeCreateFromTypeface;
    private static final Method sNativeCreateWeightAlias;
    private static final Field sNativeInstance;
    private static final Object sWeightCacheLock;
    @GuardedBy("sWeightCacheLock")
    private static final LongSparseArray<SparseArray<Typeface>> sWeightTypefaceCache;

    static {
        Field field;
        Constructor<Typeface> constructor;
        Method method;
        Method method2;
        try {
            field = Typeface.class.getDeclaredField(NATIVE_INSTANCE_FIELD);
            Class cls = Long.TYPE;
            Class cls2 = Integer.TYPE;
            method = Typeface.class.getDeclaredMethod(NATIVE_CREATE_FROM_TYPEFACE_METHOD, cls, cls2);
            method.setAccessible(true);
            method2 = Typeface.class.getDeclaredMethod(NATIVE_CREATE_WEIGHT_ALIAS_METHOD, cls, cls2);
            method2.setAccessible(true);
            constructor = Typeface.class.getDeclaredConstructor(cls);
            constructor.setAccessible(true);
        } catch (NoSuchFieldException | NoSuchMethodException e10) {
            Log.e(TAG, e10.getClass().getName(), e10);
            field = null;
            constructor = null;
            method = null;
            method2 = null;
        }
        sNativeInstance = field;
        sNativeCreateFromTypeface = method;
        sNativeCreateWeightAlias = method2;
        sConstructor = constructor;
        sWeightTypefaceCache = new LongSparseArray<>(3);
        sWeightCacheLock = new Object();
    }

    private WeightTypefaceApi21() {
    }

    @Nullable
    private static Typeface create(long j10) {
        try {
            return sConstructor.newInstance(Long.valueOf(j10));
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static Typeface createWeightStyle(@NonNull Typeface typeface, int i10, boolean z10) {
        Typeface create;
        if (!isPrivateApiAvailable()) {
            return null;
        }
        int i11 = (i10 << 1) | z10;
        synchronized (sWeightCacheLock) {
            try {
                long nativeInstance = getNativeInstance(typeface);
                LongSparseArray<SparseArray<Typeface>> longSparseArray = sWeightTypefaceCache;
                SparseArray<Typeface> sparseArray = longSparseArray.get(nativeInstance);
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>(4);
                    longSparseArray.put(nativeInstance, sparseArray);
                } else {
                    Typeface typeface2 = sparseArray.get(i11);
                    if (typeface2 != null) {
                        return typeface2;
                    }
                }
                if (z10 == typeface.isItalic()) {
                    create = create(nativeCreateWeightAlias(nativeInstance, i10));
                } else {
                    create = create(nativeCreateFromTypefaceWithExactStyle(nativeInstance, i10, z10));
                }
                sparseArray.put(i11, create);
                return create;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static long getNativeInstance(@NonNull Typeface typeface) {
        try {
            return sNativeInstance.getLong(typeface);
        } catch (IllegalAccessException e10) {
            throw new RuntimeException(e10);
        }
    }

    private static boolean isPrivateApiAvailable() {
        if (sNativeInstance != null) {
            return true;
        }
        return false;
    }

    @SuppressLint({"BanUncheckedReflection"})
    private static long nativeCreateFromTypefaceWithExactStyle(long j10, int i10, boolean z10) {
        int i11;
        if (z10) {
            i11 = 2;
        } else {
            i11 = 0;
        }
        try {
            Long l10 = (Long) sNativeCreateFromTypeface.invoke(null, Long.valueOf(j10), Integer.valueOf(i11));
            l10.longValue();
            return ((Long) sNativeCreateWeightAlias.invoke(null, l10, Integer.valueOf(i10))).longValue();
        } catch (IllegalAccessException e10) {
            throw new RuntimeException(e10);
        } catch (InvocationTargetException e11) {
            throw new RuntimeException(e11);
        }
    }

    @SuppressLint({"BanUncheckedReflection"})
    private static long nativeCreateWeightAlias(long j10, int i10) {
        try {
            return ((Long) sNativeCreateWeightAlias.invoke(null, Long.valueOf(j10), Integer.valueOf(i10))).longValue();
        } catch (IllegalAccessException e10) {
            throw new RuntimeException(e10);
        } catch (InvocationTargetException e11) {
            throw new RuntimeException(e11);
        }
    }
}
