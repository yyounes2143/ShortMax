package androidx.savedstate;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SavedStateWriter.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class SavedStateWriter {
    @NotNull
    private final Bundle source;

    private /* synthetic */ SavedStateWriter(Bundle bundle) {
        this.source = bundle;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ SavedStateWriter m4422boximpl(Bundle bundle) {
        return new SavedStateWriter(bundle);
    }

    /* renamed from: clear-impl  reason: not valid java name */
    public static final void m4423clearimpl(Bundle bundle) {
        bundle.clear();
    }

    @NotNull
    /* renamed from: constructor-impl  reason: not valid java name */
    public static Bundle m4424constructorimpl(@NotNull Bundle source) {
        Intrinsics.checkNotNullParameter(source, "source");
        return source;
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m4425equalsimpl(Bundle bundle, Object obj) {
        if (!(obj instanceof SavedStateWriter) || !Intrinsics.areEqual(bundle, ((SavedStateWriter) obj).m4462unboximpl())) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m4426equalsimpl0(Bundle bundle, Bundle bundle2) {
        return Intrinsics.areEqual(bundle, bundle2);
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m4427hashCodeimpl(Bundle bundle) {
        return bundle.hashCode();
    }

    /* renamed from: putAll-impl  reason: not valid java name */
    public static final void m4428putAllimpl(Bundle bundle, @NotNull Bundle from) {
        Intrinsics.checkNotNullParameter(from, "from");
        bundle.putAll(from);
    }

    /* renamed from: putBinder-impl  reason: not valid java name */
    public static final void m4429putBinderimpl(Bundle bundle, @NotNull String key, @NotNull IBinder value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        bundle.putBinder(key, value);
    }

    /* renamed from: putBoolean-impl  reason: not valid java name */
    public static final void m4430putBooleanimpl(Bundle bundle, @NotNull String key, boolean z10) {
        Intrinsics.checkNotNullParameter(key, "key");
        bundle.putBoolean(key, z10);
    }

    /* renamed from: putBooleanArray-impl  reason: not valid java name */
    public static final void m4431putBooleanArrayimpl(Bundle bundle, @NotNull String key, @NotNull boolean[] value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        bundle.putBooleanArray(key, value);
    }

    /* renamed from: putChar-impl  reason: not valid java name */
    public static final void m4432putCharimpl(Bundle bundle, @NotNull String key, char c10) {
        Intrinsics.checkNotNullParameter(key, "key");
        bundle.putChar(key, c10);
    }

    /* renamed from: putCharArray-impl  reason: not valid java name */
    public static final void m4433putCharArrayimpl(Bundle bundle, @NotNull String key, @NotNull char[] value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        bundle.putCharArray(key, value);
    }

    /* renamed from: putCharSequence-impl  reason: not valid java name */
    public static final void m4434putCharSequenceimpl(Bundle bundle, @NotNull String key, @NotNull CharSequence value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        bundle.putCharSequence(key, value);
    }

    /* renamed from: putCharSequenceArray-impl  reason: not valid java name */
    public static final void m4435putCharSequenceArrayimpl(Bundle bundle, @NotNull String key, @NotNull CharSequence[] value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        bundle.putCharSequenceArray(key, value);
    }

    /* renamed from: putCharSequenceList-impl  reason: not valid java name */
    public static final void m4436putCharSequenceListimpl(Bundle bundle, @NotNull String key, @NotNull List<? extends CharSequence> value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        bundle.putCharSequenceArrayList(key, SavedStateWriterKt.toArrayListUnsafe(value));
    }

    /* renamed from: putDouble-impl  reason: not valid java name */
    public static final void m4437putDoubleimpl(Bundle bundle, @NotNull String key, double d10) {
        Intrinsics.checkNotNullParameter(key, "key");
        bundle.putDouble(key, d10);
    }

    /* renamed from: putDoubleArray-impl  reason: not valid java name */
    public static final void m4438putDoubleArrayimpl(Bundle bundle, @NotNull String key, @NotNull double[] value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        bundle.putDoubleArray(key, value);
    }

    /* renamed from: putFloat-impl  reason: not valid java name */
    public static final void m4439putFloatimpl(Bundle bundle, @NotNull String key, float f10) {
        Intrinsics.checkNotNullParameter(key, "key");
        bundle.putFloat(key, f10);
    }

    /* renamed from: putFloatArray-impl  reason: not valid java name */
    public static final void m4440putFloatArrayimpl(Bundle bundle, @NotNull String key, @NotNull float[] value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        bundle.putFloatArray(key, value);
    }

    /* renamed from: putInt-impl  reason: not valid java name */
    public static final void m4441putIntimpl(Bundle bundle, @NotNull String key, int i10) {
        Intrinsics.checkNotNullParameter(key, "key");
        bundle.putInt(key, i10);
    }

    /* renamed from: putIntArray-impl  reason: not valid java name */
    public static final void m4442putIntArrayimpl(Bundle bundle, @NotNull String key, @NotNull int[] value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        bundle.putIntArray(key, value);
    }

    /* renamed from: putIntList-impl  reason: not valid java name */
    public static final void m4443putIntListimpl(Bundle bundle, @NotNull String key, @NotNull List<Integer> value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        bundle.putIntegerArrayList(key, SavedStateWriterKt.toArrayListUnsafe(value));
    }

    /* renamed from: putJavaSerializable-impl  reason: not valid java name */
    public static final <T extends Serializable> void m4444putJavaSerializableimpl(Bundle bundle, @NotNull String key, @NotNull T value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        bundle.putSerializable(key, value);
    }

    /* renamed from: putLong-impl  reason: not valid java name */
    public static final void m4445putLongimpl(Bundle bundle, @NotNull String key, long j10) {
        Intrinsics.checkNotNullParameter(key, "key");
        bundle.putLong(key, j10);
    }

    /* renamed from: putLongArray-impl  reason: not valid java name */
    public static final void m4446putLongArrayimpl(Bundle bundle, @NotNull String key, @NotNull long[] value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        bundle.putLongArray(key, value);
    }

    /* renamed from: putNull-impl  reason: not valid java name */
    public static final void m4447putNullimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        bundle.putString(key, null);
    }

    /* renamed from: putParcelable-impl  reason: not valid java name */
    public static final <T extends Parcelable> void m4448putParcelableimpl(Bundle bundle, @NotNull String key, @NotNull T value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        bundle.putParcelable(key, value);
    }

    /* renamed from: putParcelableArray-impl  reason: not valid java name */
    public static final <T extends Parcelable> void m4449putParcelableArrayimpl(Bundle bundle, @NotNull String key, @NotNull T[] value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        bundle.putParcelableArray(key, value);
    }

    /* renamed from: putParcelableList-impl  reason: not valid java name */
    public static final <T extends Parcelable> void m4450putParcelableListimpl(Bundle bundle, @NotNull String key, @NotNull List<? extends T> value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        bundle.putParcelableArrayList(key, SavedStateWriterKt.toArrayListUnsafe(value));
    }

    /* renamed from: putSavedState-impl  reason: not valid java name */
    public static final void m4451putSavedStateimpl(Bundle bundle, @NotNull String key, @NotNull Bundle value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        bundle.putBundle(key, value);
    }

    /* renamed from: putSavedStateArray-impl  reason: not valid java name */
    public static final void m4452putSavedStateArrayimpl(Bundle bundle, @NotNull String key, @NotNull Bundle[] value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        m4449putParcelableArrayimpl(bundle, key, value);
    }

    /* renamed from: putSavedStateList-impl  reason: not valid java name */
    public static final void m4453putSavedStateListimpl(Bundle bundle, @NotNull String key, @NotNull List<Bundle> value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        m4450putParcelableListimpl(bundle, key, value);
    }

    /* renamed from: putSize-impl  reason: not valid java name */
    public static final void m4454putSizeimpl(Bundle bundle, @NotNull String key, @NotNull Size value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        bundle.putSize(key, value);
    }

    /* renamed from: putSizeF-impl  reason: not valid java name */
    public static final void m4455putSizeFimpl(Bundle bundle, @NotNull String key, @NotNull SizeF value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        bundle.putSizeF(key, value);
    }

    /* renamed from: putSparseParcelableArray-impl  reason: not valid java name */
    public static final <T extends Parcelable> void m4456putSparseParcelableArrayimpl(Bundle bundle, @NotNull String key, @NotNull SparseArray<T> value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        bundle.putSparseParcelableArray(key, value);
    }

    /* renamed from: putString-impl  reason: not valid java name */
    public static final void m4457putStringimpl(Bundle bundle, @NotNull String key, @NotNull String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        bundle.putString(key, value);
    }

    /* renamed from: putStringArray-impl  reason: not valid java name */
    public static final void m4458putStringArrayimpl(Bundle bundle, @NotNull String key, @NotNull String[] value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        bundle.putStringArray(key, value);
    }

    /* renamed from: putStringList-impl  reason: not valid java name */
    public static final void m4459putStringListimpl(Bundle bundle, @NotNull String key, @NotNull List<String> value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        bundle.putStringArrayList(key, SavedStateWriterKt.toArrayListUnsafe(value));
    }

    /* renamed from: remove-impl  reason: not valid java name */
    public static final void m4460removeimpl(Bundle bundle, @NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        bundle.remove(key);
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m4461toStringimpl(Bundle bundle) {
        return "SavedStateWriter(source=" + bundle + ')';
    }

    public boolean equals(Object obj) {
        return m4425equalsimpl(this.source, obj);
    }

    public int hashCode() {
        return m4427hashCodeimpl(this.source);
    }

    public String toString() {
        return m4461toStringimpl(this.source);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ Bundle m4462unboximpl() {
        return this.source;
    }
}
