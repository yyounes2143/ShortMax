package androidx.lifecycle.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.n;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SavedStateHandleImpl.android.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSavedStateHandleImpl.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavedStateHandleImpl.android.kt\nandroidx/lifecycle/internal/SavedStateHandleImpl_androidKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,66:1\n1755#2,3:67\n*S KotlinDebug\n*F\n+ 1 SavedStateHandleImpl.android.kt\nandroidx/lifecycle/internal/SavedStateHandleImpl_androidKt\n*L\n28#1:67,3\n*E\n"})
/* loaded from: classes2.dex */
public final class SavedStateHandleImpl_androidKt {
    @NotNull
    private static final List<Class<? extends Object>> ACCEPTABLE_CLASSES = n.h0(new Class[]{Boolean.TYPE, boolean[].class, Double.TYPE, double[].class, Integer.TYPE, int[].class, Long.TYPE, long[].class, String.class, String[].class, Binder.class, Bundle.class, Byte.TYPE, byte[].class, Character.TYPE, char[].class, CharSequence.class, CharSequence[].class, ArrayList.class, Float.TYPE, float[].class, Parcelable.class, Parcelable[].class, Serializable.class, Short.TYPE, short[].class, SparseArray.class, Size.class, SizeF.class});

    public static final boolean isAcceptableType(@Nullable Object obj) {
        if (obj != null) {
            List<Class<? extends Object>> list = ACCEPTABLE_CLASSES;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator<T> it = list.iterator();
                while (it.hasNext()) {
                    if (((Class) it.next()).isInstance(obj)) {
                        return true;
                    }
                }
            }
            return false;
        }
        return true;
    }
}
