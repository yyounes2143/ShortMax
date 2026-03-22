package androidx.core.os;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Bundle.kt */
@Metadata
/* loaded from: classes.dex */
public final class BundleKt {
    @NotNull
    public static final Bundle bundleOf(@NotNull Pair<String, ? extends Object>... pairArr) {
        Bundle bundle = new Bundle(pairArr.length);
        for (Pair<String, ? extends Object> pair : pairArr) {
            String b10 = pair.b();
            Object d10 = pair.d();
            if (d10 == null) {
                bundle.putString(b10, null);
            } else if (d10 instanceof Boolean) {
                bundle.putBoolean(b10, ((Boolean) d10).booleanValue());
            } else if (d10 instanceof Byte) {
                bundle.putByte(b10, ((Number) d10).byteValue());
            } else if (d10 instanceof Character) {
                bundle.putChar(b10, ((Character) d10).charValue());
            } else if (d10 instanceof Double) {
                bundle.putDouble(b10, ((Number) d10).doubleValue());
            } else if (d10 instanceof Float) {
                bundle.putFloat(b10, ((Number) d10).floatValue());
            } else if (d10 instanceof Integer) {
                bundle.putInt(b10, ((Number) d10).intValue());
            } else if (d10 instanceof Long) {
                bundle.putLong(b10, ((Number) d10).longValue());
            } else if (d10 instanceof Short) {
                bundle.putShort(b10, ((Number) d10).shortValue());
            } else if (d10 instanceof Bundle) {
                bundle.putBundle(b10, (Bundle) d10);
            } else if (d10 instanceof CharSequence) {
                bundle.putCharSequence(b10, (CharSequence) d10);
            } else if (d10 instanceof Parcelable) {
                bundle.putParcelable(b10, (Parcelable) d10);
            } else if (d10 instanceof boolean[]) {
                bundle.putBooleanArray(b10, (boolean[]) d10);
            } else if (d10 instanceof byte[]) {
                bundle.putByteArray(b10, (byte[]) d10);
            } else if (d10 instanceof char[]) {
                bundle.putCharArray(b10, (char[]) d10);
            } else if (d10 instanceof double[]) {
                bundle.putDoubleArray(b10, (double[]) d10);
            } else if (d10 instanceof float[]) {
                bundle.putFloatArray(b10, (float[]) d10);
            } else if (d10 instanceof int[]) {
                bundle.putIntArray(b10, (int[]) d10);
            } else if (d10 instanceof long[]) {
                bundle.putLongArray(b10, (long[]) d10);
            } else if (d10 instanceof short[]) {
                bundle.putShortArray(b10, (short[]) d10);
            } else if (d10 instanceof Object[]) {
                Class<?> componentType = d10.getClass().getComponentType();
                Intrinsics.checkNotNull(componentType);
                if (Parcelable.class.isAssignableFrom(componentType)) {
                    Intrinsics.checkNotNull(d10, "null cannot be cast to non-null type kotlin.Array<android.os.Parcelable>");
                    bundle.putParcelableArray(b10, (Parcelable[]) d10);
                } else if (String.class.isAssignableFrom(componentType)) {
                    Intrinsics.checkNotNull(d10, "null cannot be cast to non-null type kotlin.Array<kotlin.String>");
                    bundle.putStringArray(b10, (String[]) d10);
                } else if (CharSequence.class.isAssignableFrom(componentType)) {
                    Intrinsics.checkNotNull(d10, "null cannot be cast to non-null type kotlin.Array<kotlin.CharSequence>");
                    bundle.putCharSequenceArray(b10, (CharSequence[]) d10);
                } else if (Serializable.class.isAssignableFrom(componentType)) {
                    bundle.putSerializable(b10, (Serializable) d10);
                } else {
                    throw new IllegalArgumentException("Illegal value array type " + componentType.getCanonicalName() + " for key \"" + b10 + '\"');
                }
            } else if (d10 instanceof Serializable) {
                bundle.putSerializable(b10, (Serializable) d10);
            } else if (d10 instanceof IBinder) {
                bundle.putBinder(b10, (IBinder) d10);
            } else if (d10 instanceof Size) {
                BundleApi21ImplKt.putSize(bundle, b10, (Size) d10);
            } else if (d10 instanceof SizeF) {
                BundleApi21ImplKt.putSizeF(bundle, b10, (SizeF) d10);
            } else {
                throw new IllegalArgumentException("Illegal value type " + d10.getClass().getCanonicalName() + " for key \"" + b10 + '\"');
            }
        }
        return bundle;
    }

    @NotNull
    public static final Bundle bundleOf() {
        return new Bundle(0);
    }
}
