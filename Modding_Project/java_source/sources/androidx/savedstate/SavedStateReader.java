package androidx.savedstate;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import androidx.core.os.BundleCompat;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.jvm.internal.CharCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.e;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SavedStateReader.android.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSavedStateReader.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavedStateReader.android.kt\nandroidx/savedstate/SavedStateReader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,915:1\n653#1:916\n689#1:917\n510#1:918\n545#1:919\n1#2:920\n*S KotlinDebug\n*F\n+ 1 SavedStateReader.android.kt\nandroidx/savedstate/SavedStateReader\n*L\n421#1:916\n426#1:917\n456#1:918\n461#1:919\n*E\n"})
/* loaded from: classes2.dex */
public final class SavedStateReader {
    @NotNull
    private final Bundle source;

    private /* synthetic */ SavedStateReader(Bundle bundle) {
        this.source = bundle;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ SavedStateReader m4337boximpl(Bundle bundle) {
        return new SavedStateReader(bundle);
    }

    @NotNull
    /* renamed from: constructor-impl  reason: not valid java name */
    public static Bundle m4338constructorimpl(@NotNull Bundle source) {
        Intrinsics.checkNotNullParameter(source, "source");
        return source;
    }

    /* renamed from: contains-impl  reason: not valid java name */
    public static final boolean m4339containsimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return bundle.containsKey(key);
    }

    /* renamed from: contentDeepEquals-impl  reason: not valid java name */
    public static final boolean m4340contentDeepEqualsimpl(Bundle bundle, @NotNull Bundle other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return SavedStateReaderKt__SavedStateReader_androidKt.access$contentDeepEquals(bundle, other);
    }

    /* renamed from: contentDeepHashCode-impl  reason: not valid java name */
    public static final int m4341contentDeepHashCodeimpl(Bundle bundle) {
        return SavedStateReaderKt__SavedStateReader_androidKt.access$contentDeepHashCode(bundle);
    }

    @NotNull
    /* renamed from: contentDeepToString-impl  reason: not valid java name */
    public static final String m4342contentDeepToStringimpl(Bundle bundle) {
        StringBuilder sb2 = new StringBuilder((e.j(bundle.size(), 429496729) * 5) + 2);
        SavedStateReaderKt__SavedStateReader_androidKt.access$contentDeepToString(bundle, sb2, new ArrayList());
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m4343equalsimpl(Bundle bundle, Object obj) {
        if (!(obj instanceof SavedStateReader) || !Intrinsics.areEqual(bundle, ((SavedStateReader) obj).m4421unboximpl())) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m4344equalsimpl0(Bundle bundle, Bundle bundle2) {
        return Intrinsics.areEqual(bundle, bundle2);
    }

    @NotNull
    /* renamed from: getBinder-impl  reason: not valid java name */
    public static final IBinder m4345getBinderimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        IBinder binder = bundle.getBinder(key);
        if (binder != null) {
            return binder;
        }
        SavedStateReaderKt.keyOrValueNotFoundError(key);
        throw new KotlinNothingValueException();
    }

    @Nullable
    /* renamed from: getBinderOrNull-impl  reason: not valid java name */
    public static final IBinder m4346getBinderOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return bundle.getBinder(key);
    }

    /* renamed from: getBoolean-impl  reason: not valid java name */
    public static final boolean m4347getBooleanimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        boolean z10 = bundle.getBoolean(key, false);
        if (!z10 && bundle.getBoolean(key, true)) {
            SavedStateReaderKt.keyOrValueNotFoundError(key);
            throw new KotlinNothingValueException();
        }
        return z10;
    }

    @NotNull
    /* renamed from: getBooleanArray-impl  reason: not valid java name */
    public static final boolean[] m4348getBooleanArrayimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        boolean[] booleanArray = bundle.getBooleanArray(key);
        if (booleanArray != null) {
            return booleanArray;
        }
        SavedStateReaderKt.keyOrValueNotFoundError(key);
        throw new KotlinNothingValueException();
    }

    @Nullable
    /* renamed from: getBooleanArrayOrNull-impl  reason: not valid java name */
    public static final boolean[] m4349getBooleanArrayOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return bundle.getBooleanArray(key);
    }

    @Nullable
    /* renamed from: getBooleanOrNull-impl  reason: not valid java name */
    public static final Boolean m4350getBooleanOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        boolean z10 = bundle.getBoolean(key, false);
        if (!z10 && bundle.getBoolean(key, true)) {
            return null;
        }
        return Boolean.valueOf(z10);
    }

    /* renamed from: getChar-impl  reason: not valid java name */
    public static final char m4351getCharimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        char c10 = bundle.getChar(key, (char) 0);
        if (c10 == 0 && bundle.getChar(key, CharCompanionObject.MAX_VALUE) == 65535) {
            SavedStateReaderKt.keyOrValueNotFoundError(key);
            throw new KotlinNothingValueException();
        }
        return c10;
    }

    @NotNull
    /* renamed from: getCharArray-impl  reason: not valid java name */
    public static final char[] m4352getCharArrayimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        char[] charArray = bundle.getCharArray(key);
        if (charArray != null) {
            return charArray;
        }
        SavedStateReaderKt.keyOrValueNotFoundError(key);
        throw new KotlinNothingValueException();
    }

    @Nullable
    /* renamed from: getCharArrayOrNull-impl  reason: not valid java name */
    public static final char[] m4353getCharArrayOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return bundle.getCharArray(key);
    }

    @Nullable
    /* renamed from: getCharOrNull-impl  reason: not valid java name */
    public static final Character m4354getCharOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        char c10 = bundle.getChar(key, (char) 0);
        if (c10 == 0 && bundle.getChar(key, CharCompanionObject.MAX_VALUE) == 65535) {
            return null;
        }
        return Character.valueOf(c10);
    }

    @NotNull
    /* renamed from: getCharSequence-impl  reason: not valid java name */
    public static final CharSequence m4355getCharSequenceimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        CharSequence charSequence = bundle.getCharSequence(key);
        if (charSequence != null) {
            return charSequence;
        }
        SavedStateReaderKt.keyOrValueNotFoundError(key);
        throw new KotlinNothingValueException();
    }

    @NotNull
    /* renamed from: getCharSequenceArray-impl  reason: not valid java name */
    public static final CharSequence[] m4356getCharSequenceArrayimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        CharSequence[] charSequenceArray = bundle.getCharSequenceArray(key);
        if (charSequenceArray != null) {
            return charSequenceArray;
        }
        SavedStateReaderKt.keyOrValueNotFoundError(key);
        throw new KotlinNothingValueException();
    }

    @Nullable
    /* renamed from: getCharSequenceArrayOrNull-impl  reason: not valid java name */
    public static final CharSequence[] m4357getCharSequenceArrayOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return bundle.getCharSequenceArray(key);
    }

    @NotNull
    /* renamed from: getCharSequenceList-impl  reason: not valid java name */
    public static final List<CharSequence> m4358getCharSequenceListimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        ArrayList<CharSequence> charSequenceArrayList = bundle.getCharSequenceArrayList(key);
        if (charSequenceArrayList != null) {
            return charSequenceArrayList;
        }
        SavedStateReaderKt.keyOrValueNotFoundError(key);
        throw new KotlinNothingValueException();
    }

    @Nullable
    /* renamed from: getCharSequenceListOrNull-impl  reason: not valid java name */
    public static final List<CharSequence> m4359getCharSequenceListOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return bundle.getCharSequenceArrayList(key);
    }

    @Nullable
    /* renamed from: getCharSequenceOrNull-impl  reason: not valid java name */
    public static final CharSequence m4360getCharSequenceOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return bundle.getCharSequence(key);
    }

    /* renamed from: getDouble-impl  reason: not valid java name */
    public static final double m4361getDoubleimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        double d10 = bundle.getDouble(key, Double.MIN_VALUE);
        if (d10 == Double.MIN_VALUE && bundle.getDouble(key, Double.MAX_VALUE) == Double.MAX_VALUE) {
            SavedStateReaderKt.keyOrValueNotFoundError(key);
            throw new KotlinNothingValueException();
        }
        return d10;
    }

    @NotNull
    /* renamed from: getDoubleArray-impl  reason: not valid java name */
    public static final double[] m4362getDoubleArrayimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        double[] doubleArray = bundle.getDoubleArray(key);
        if (doubleArray != null) {
            return doubleArray;
        }
        SavedStateReaderKt.keyOrValueNotFoundError(key);
        throw new KotlinNothingValueException();
    }

    @Nullable
    /* renamed from: getDoubleArrayOrNull-impl  reason: not valid java name */
    public static final double[] m4363getDoubleArrayOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return bundle.getDoubleArray(key);
    }

    @Nullable
    /* renamed from: getDoubleOrNull-impl  reason: not valid java name */
    public static final Double m4364getDoubleOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        double d10 = bundle.getDouble(key, Double.MIN_VALUE);
        if (d10 == Double.MIN_VALUE && bundle.getDouble(key, Double.MAX_VALUE) == Double.MAX_VALUE) {
            return null;
        }
        return Double.valueOf(d10);
    }

    /* renamed from: getFloat-impl  reason: not valid java name */
    public static final float m4365getFloatimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        float f10 = bundle.getFloat(key, Float.MIN_VALUE);
        if (f10 == Float.MIN_VALUE && bundle.getFloat(key, Float.MAX_VALUE) == Float.MAX_VALUE) {
            SavedStateReaderKt.keyOrValueNotFoundError(key);
            throw new KotlinNothingValueException();
        }
        return f10;
    }

    @NotNull
    /* renamed from: getFloatArray-impl  reason: not valid java name */
    public static final float[] m4366getFloatArrayimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        float[] floatArray = bundle.getFloatArray(key);
        if (floatArray != null) {
            return floatArray;
        }
        SavedStateReaderKt.keyOrValueNotFoundError(key);
        throw new KotlinNothingValueException();
    }

    @Nullable
    /* renamed from: getFloatArrayOrNull-impl  reason: not valid java name */
    public static final float[] m4367getFloatArrayOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return bundle.getFloatArray(key);
    }

    @Nullable
    /* renamed from: getFloatOrNull-impl  reason: not valid java name */
    public static final Float m4368getFloatOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        float f10 = bundle.getFloat(key, Float.MIN_VALUE);
        if (f10 == Float.MIN_VALUE && bundle.getFloat(key, Float.MAX_VALUE) == Float.MAX_VALUE) {
            return null;
        }
        return Float.valueOf(f10);
    }

    /* renamed from: getInt-impl  reason: not valid java name */
    public static final int m4369getIntimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        int i10 = bundle.getInt(key, Integer.MIN_VALUE);
        if (i10 == Integer.MIN_VALUE && bundle.getInt(key, Integer.MAX_VALUE) == Integer.MAX_VALUE) {
            SavedStateReaderKt.keyOrValueNotFoundError(key);
            throw new KotlinNothingValueException();
        }
        return i10;
    }

    @NotNull
    /* renamed from: getIntArray-impl  reason: not valid java name */
    public static final int[] m4370getIntArrayimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        int[] intArray = bundle.getIntArray(key);
        if (intArray != null) {
            return intArray;
        }
        SavedStateReaderKt.keyOrValueNotFoundError(key);
        throw new KotlinNothingValueException();
    }

    @Nullable
    /* renamed from: getIntArrayOrNull-impl  reason: not valid java name */
    public static final int[] m4371getIntArrayOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return bundle.getIntArray(key);
    }

    @NotNull
    /* renamed from: getIntList-impl  reason: not valid java name */
    public static final List<Integer> m4372getIntListimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList(key);
        if (integerArrayList != null) {
            return integerArrayList;
        }
        SavedStateReaderKt.keyOrValueNotFoundError(key);
        throw new KotlinNothingValueException();
    }

    @Nullable
    /* renamed from: getIntListOrNull-impl  reason: not valid java name */
    public static final List<Integer> m4373getIntListOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return bundle.getIntegerArrayList(key);
    }

    @Nullable
    /* renamed from: getIntOrNull-impl  reason: not valid java name */
    public static final Integer m4374getIntOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        int i10 = bundle.getInt(key, Integer.MIN_VALUE);
        if (i10 == Integer.MIN_VALUE && bundle.getInt(key, Integer.MAX_VALUE) == Integer.MAX_VALUE) {
            return null;
        }
        return Integer.valueOf(i10);
    }

    @NotNull
    /* renamed from: getJavaSerializable-impl  reason: not valid java name */
    public static final <T extends Serializable> T m4376getJavaSerializableimpl(Bundle bundle, @NotNull String key, @NotNull KClass<T> serializableClass) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(serializableClass, "serializableClass");
        T t10 = (T) BundleCompat.getSerializable(bundle, key, zs.a.b(serializableClass));
        if (t10 != null) {
            return t10;
        }
        SavedStateReaderKt.keyOrValueNotFoundError(key);
        throw new KotlinNothingValueException();
    }

    @Nullable
    /* renamed from: getJavaSerializableOrNull-impl  reason: not valid java name */
    public static final <T extends Serializable> T m4378getJavaSerializableOrNullimpl(Bundle bundle, @NotNull String key, @NotNull KClass<T> serializableClass) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(serializableClass, "serializableClass");
        return (T) BundleCompat.getSerializable(bundle, key, zs.a.b(serializableClass));
    }

    /* renamed from: getLong-impl  reason: not valid java name */
    public static final long m4379getLongimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        long j10 = bundle.getLong(key, Long.MIN_VALUE);
        if (j10 == Long.MIN_VALUE && bundle.getLong(key, Long.MAX_VALUE) == Long.MAX_VALUE) {
            SavedStateReaderKt.keyOrValueNotFoundError(key);
            throw new KotlinNothingValueException();
        }
        return j10;
    }

    @NotNull
    /* renamed from: getLongArray-impl  reason: not valid java name */
    public static final long[] m4380getLongArrayimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        long[] longArray = bundle.getLongArray(key);
        if (longArray != null) {
            return longArray;
        }
        SavedStateReaderKt.keyOrValueNotFoundError(key);
        throw new KotlinNothingValueException();
    }

    @Nullable
    /* renamed from: getLongArrayOrNull-impl  reason: not valid java name */
    public static final long[] m4381getLongArrayOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return bundle.getLongArray(key);
    }

    @Nullable
    /* renamed from: getLongOrNull-impl  reason: not valid java name */
    public static final Long m4382getLongOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        long j10 = bundle.getLong(key, Long.MIN_VALUE);
        if (j10 == Long.MIN_VALUE && bundle.getLong(key, Long.MAX_VALUE) == Long.MAX_VALUE) {
            return null;
        }
        return Long.valueOf(j10);
    }

    @NotNull
    /* renamed from: getParcelable-impl  reason: not valid java name */
    public static final <T extends Parcelable> T m4384getParcelableimpl(Bundle bundle, @NotNull String key, @NotNull KClass<T> parcelableClass) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(parcelableClass, "parcelableClass");
        T t10 = (T) BundleCompat.getParcelable(bundle, key, zs.a.b(parcelableClass));
        if (t10 != null) {
            return t10;
        }
        SavedStateReaderKt.keyOrValueNotFoundError(key);
        throw new KotlinNothingValueException();
    }

    @NotNull
    /* renamed from: getParcelableArray-impl  reason: not valid java name */
    public static final <T extends Parcelable> T[] m4386getParcelableArrayimpl(Bundle bundle, @NotNull String key, @NotNull KClass<T> parcelableClass) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(parcelableClass, "parcelableClass");
        T[] tArr = (T[]) m4388getParcelableArrayOrNullimpl(bundle, key, parcelableClass);
        if (tArr != null) {
            return tArr;
        }
        SavedStateReaderKt.keyOrValueNotFoundError(key);
        throw new KotlinNothingValueException();
    }

    @Nullable
    /* renamed from: getParcelableArrayOrNull-impl  reason: not valid java name */
    public static final <T extends Parcelable> T[] m4388getParcelableArrayOrNullimpl(Bundle bundle, @NotNull String key, @NotNull KClass<T> parcelableClass) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(parcelableClass, "parcelableClass");
        T[] tArr = (T[]) BundleCompat.getParcelableArray(bundle, key, zs.a.b(parcelableClass));
        if (tArr != null) {
            return tArr;
        }
        return null;
    }

    @NotNull
    /* renamed from: getParcelableList-impl  reason: not valid java name */
    public static final <T extends Parcelable> List<T> m4390getParcelableListimpl(Bundle bundle, @NotNull String key, @NotNull KClass<T> parcelableClass) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(parcelableClass, "parcelableClass");
        ArrayList parcelableArrayList = BundleCompat.getParcelableArrayList(bundle, key, zs.a.b(parcelableClass));
        if (parcelableArrayList != null) {
            return parcelableArrayList;
        }
        SavedStateReaderKt.keyOrValueNotFoundError(key);
        throw new KotlinNothingValueException();
    }

    @Nullable
    /* renamed from: getParcelableListOrNull-impl  reason: not valid java name */
    public static final <T extends Parcelable> List<T> m4392getParcelableListOrNullimpl(Bundle bundle, @NotNull String key, @NotNull KClass<T> parcelableClass) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(parcelableClass, "parcelableClass");
        return BundleCompat.getParcelableArrayList(bundle, key, zs.a.b(parcelableClass));
    }

    @Nullable
    /* renamed from: getParcelableOrNull-impl  reason: not valid java name */
    public static final <T extends Parcelable> T m4394getParcelableOrNullimpl(Bundle bundle, @NotNull String key, @NotNull KClass<T> parcelableClass) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(parcelableClass, "parcelableClass");
        return (T) BundleCompat.getParcelable(bundle, key, zs.a.b(parcelableClass));
    }

    @NotNull
    /* renamed from: getSavedState-impl  reason: not valid java name */
    public static final Bundle m4395getSavedStateimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Bundle bundle2 = bundle.getBundle(key);
        if (bundle2 != null) {
            return bundle2;
        }
        SavedStateReaderKt.keyOrValueNotFoundError(key);
        throw new KotlinNothingValueException();
    }

    @NotNull
    /* renamed from: getSavedStateArray-impl  reason: not valid java name */
    public static final Bundle[] m4396getSavedStateArrayimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return (Bundle[]) m4386getParcelableArrayimpl(bundle, key, Reflection.getOrCreateKotlinClass(Bundle.class));
    }

    @Nullable
    /* renamed from: getSavedStateArrayOrNull-impl  reason: not valid java name */
    public static final Bundle[] m4397getSavedStateArrayOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return (Bundle[]) m4388getParcelableArrayOrNullimpl(bundle, key, Reflection.getOrCreateKotlinClass(Bundle.class));
    }

    @NotNull
    /* renamed from: getSavedStateList-impl  reason: not valid java name */
    public static final List<Bundle> m4398getSavedStateListimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return m4390getParcelableListimpl(bundle, key, Reflection.getOrCreateKotlinClass(Bundle.class));
    }

    @Nullable
    /* renamed from: getSavedStateListOrNull-impl  reason: not valid java name */
    public static final List<Bundle> m4399getSavedStateListOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return m4392getParcelableListOrNullimpl(bundle, key, Reflection.getOrCreateKotlinClass(Bundle.class));
    }

    @Nullable
    /* renamed from: getSavedStateOrNull-impl  reason: not valid java name */
    public static final Bundle m4400getSavedStateOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return bundle.getBundle(key);
    }

    @NotNull
    /* renamed from: getSize-impl  reason: not valid java name */
    public static final Size m4401getSizeimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Size size = bundle.getSize(key);
        if (size != null) {
            return size;
        }
        SavedStateReaderKt.keyOrValueNotFoundError(key);
        throw new KotlinNothingValueException();
    }

    @NotNull
    /* renamed from: getSizeF-impl  reason: not valid java name */
    public static final SizeF m4402getSizeFimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        SizeF sizeF = bundle.getSizeF(key);
        if (sizeF != null) {
            return sizeF;
        }
        SavedStateReaderKt.keyOrValueNotFoundError(key);
        throw new KotlinNothingValueException();
    }

    @Nullable
    /* renamed from: getSizeFOrNull-impl  reason: not valid java name */
    public static final SizeF m4403getSizeFOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return bundle.getSizeF(key);
    }

    @Nullable
    /* renamed from: getSizeOrNull-impl  reason: not valid java name */
    public static final Size m4404getSizeOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return bundle.getSize(key);
    }

    @NotNull
    /* renamed from: getSparseParcelableArray-impl  reason: not valid java name */
    public static final <T extends Parcelable> SparseArray<T> m4406getSparseParcelableArrayimpl(Bundle bundle, @NotNull String key, @NotNull KClass<T> parcelableClass) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(parcelableClass, "parcelableClass");
        SparseArray<T> m4408getSparseParcelableArrayOrNullimpl = m4408getSparseParcelableArrayOrNullimpl(bundle, key, parcelableClass);
        if (m4408getSparseParcelableArrayOrNullimpl != null) {
            return m4408getSparseParcelableArrayOrNullimpl;
        }
        SavedStateReaderKt.keyOrValueNotFoundError(key);
        throw new KotlinNothingValueException();
    }

    @Nullable
    /* renamed from: getSparseParcelableArrayOrNull-impl  reason: not valid java name */
    public static final <T extends Parcelable> SparseArray<T> m4408getSparseParcelableArrayOrNullimpl(Bundle bundle, @NotNull String key, @NotNull KClass<T> parcelableClass) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(parcelableClass, "parcelableClass");
        return BundleCompat.getSparseParcelableArray(bundle, key, zs.a.b(parcelableClass));
    }

    @NotNull
    /* renamed from: getString-impl  reason: not valid java name */
    public static final String m4409getStringimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        String string = bundle.getString(key);
        if (string != null) {
            return string;
        }
        SavedStateReaderKt.keyOrValueNotFoundError(key);
        throw new KotlinNothingValueException();
    }

    @NotNull
    /* renamed from: getStringArray-impl  reason: not valid java name */
    public static final String[] m4410getStringArrayimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        String[] stringArray = bundle.getStringArray(key);
        if (stringArray != null) {
            return stringArray;
        }
        SavedStateReaderKt.keyOrValueNotFoundError(key);
        throw new KotlinNothingValueException();
    }

    @Nullable
    /* renamed from: getStringArrayOrNull-impl  reason: not valid java name */
    public static final String[] m4411getStringArrayOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return bundle.getStringArray(key);
    }

    @NotNull
    /* renamed from: getStringList-impl  reason: not valid java name */
    public static final List<String> m4412getStringListimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        ArrayList<String> stringArrayList = bundle.getStringArrayList(key);
        if (stringArrayList != null) {
            return stringArrayList;
        }
        SavedStateReaderKt.keyOrValueNotFoundError(key);
        throw new KotlinNothingValueException();
    }

    @Nullable
    /* renamed from: getStringListOrNull-impl  reason: not valid java name */
    public static final List<String> m4413getStringListOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return bundle.getStringArrayList(key);
    }

    @Nullable
    /* renamed from: getStringOrNull-impl  reason: not valid java name */
    public static final String m4414getStringOrNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return bundle.getString(key);
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m4415hashCodeimpl(Bundle bundle) {
        return bundle.hashCode();
    }

    /* renamed from: isEmpty-impl  reason: not valid java name */
    public static final boolean m4416isEmptyimpl(Bundle bundle) {
        return bundle.isEmpty();
    }

    /* renamed from: isNull-impl  reason: not valid java name */
    public static final boolean m4417isNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        if (m4339containsimpl(bundle, key) && bundle.get(key) == null) {
            return true;
        }
        return false;
    }

    /* renamed from: size-impl  reason: not valid java name */
    public static final int m4418sizeimpl(Bundle bundle) {
        return bundle.size();
    }

    @NotNull
    /* renamed from: toMap-impl  reason: not valid java name */
    public static final Map<String, Object> m4419toMapimpl(Bundle bundle) {
        Map d10 = p0.d(bundle.size());
        for (String str : bundle.keySet()) {
            Intrinsics.checkNotNull(str);
            d10.put(str, bundle.get(str));
        }
        return p0.b(d10);
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m4420toStringimpl(Bundle bundle) {
        return "SavedStateReader(source=" + bundle + ')';
    }

    public boolean equals(Object obj) {
        return m4343equalsimpl(this.source, obj);
    }

    public int hashCode() {
        return m4415hashCodeimpl(this.source);
    }

    public String toString() {
        return m4420toStringimpl(this.source);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ Bundle m4421unboximpl() {
        return this.source;
    }

    /* renamed from: getJavaSerializable-impl  reason: not valid java name */
    public static final /* synthetic */ <T extends Serializable> T m4375getJavaSerializableimpl(Bundle bundle, String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.reifiedOperationMarker(4, "T");
        return (T) m4376getJavaSerializableimpl(bundle, key, Reflection.getOrCreateKotlinClass(Serializable.class));
    }

    /* renamed from: getJavaSerializableOrNull-impl  reason: not valid java name */
    public static final /* synthetic */ <T extends Serializable> T m4377getJavaSerializableOrNullimpl(Bundle bundle, String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.reifiedOperationMarker(4, "T");
        return (T) m4378getJavaSerializableOrNullimpl(bundle, key, Reflection.getOrCreateKotlinClass(Serializable.class));
    }

    /* renamed from: getParcelable-impl  reason: not valid java name */
    public static final /* synthetic */ <T extends Parcelable> T m4383getParcelableimpl(Bundle bundle, String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.reifiedOperationMarker(4, "T");
        return (T) m4384getParcelableimpl(bundle, key, Reflection.getOrCreateKotlinClass(Parcelable.class));
    }

    /* renamed from: getParcelableArray-impl  reason: not valid java name */
    public static final /* synthetic */ <T extends Parcelable> T[] m4385getParcelableArrayimpl(Bundle bundle, String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.reifiedOperationMarker(4, "T");
        return (T[]) m4386getParcelableArrayimpl(bundle, key, Reflection.getOrCreateKotlinClass(Parcelable.class));
    }

    /* renamed from: getParcelableArrayOrNull-impl  reason: not valid java name */
    public static final /* synthetic */ <T extends Parcelable> T[] m4387getParcelableArrayOrNullimpl(Bundle bundle, String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.reifiedOperationMarker(4, "T");
        return (T[]) m4388getParcelableArrayOrNullimpl(bundle, key, Reflection.getOrCreateKotlinClass(Parcelable.class));
    }

    /* renamed from: getParcelableListOrNull-impl  reason: not valid java name */
    public static final /* synthetic */ <T extends Parcelable> List<T> m4391getParcelableListOrNullimpl(Bundle bundle, String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.reifiedOperationMarker(4, "T");
        return m4392getParcelableListOrNullimpl(bundle, key, Reflection.getOrCreateKotlinClass(Parcelable.class));
    }

    /* renamed from: getParcelableOrNull-impl  reason: not valid java name */
    public static final /* synthetic */ <T extends Parcelable> T m4393getParcelableOrNullimpl(Bundle bundle, String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.reifiedOperationMarker(4, "T");
        return (T) m4394getParcelableOrNullimpl(bundle, key, Reflection.getOrCreateKotlinClass(Parcelable.class));
    }

    /* renamed from: getSparseParcelableArray-impl  reason: not valid java name */
    public static final /* synthetic */ <T extends Parcelable> SparseArray<T> m4405getSparseParcelableArrayimpl(Bundle bundle, String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.reifiedOperationMarker(4, "T");
        return m4406getSparseParcelableArrayimpl(bundle, key, Reflection.getOrCreateKotlinClass(Parcelable.class));
    }

    /* renamed from: getSparseParcelableArrayOrNull-impl  reason: not valid java name */
    public static final /* synthetic */ <T extends Parcelable> SparseArray<T> m4407getSparseParcelableArrayOrNullimpl(Bundle bundle, String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.reifiedOperationMarker(4, "T");
        return m4408getSparseParcelableArrayOrNullimpl(bundle, key, Reflection.getOrCreateKotlinClass(Parcelable.class));
    }

    /* renamed from: getParcelableList-impl  reason: not valid java name */
    public static final /* synthetic */ <T extends Parcelable> List<T> m4389getParcelableListimpl(Bundle bundle, String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.reifiedOperationMarker(4, "T");
        return m4390getParcelableListimpl(bundle, key, Reflection.getOrCreateKotlinClass(Parcelable.class));
    }
}
