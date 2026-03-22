package androidx.compose.runtime.snapshots;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
/* compiled from: SnapshotStateList.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class SnapshotStateList$Companion$CREATOR$1 implements Parcelable.ClassLoaderCreator<SnapshotStateList<Object>> {
    @Override // android.os.Parcelable.Creator
    public SnapshotStateList<Object>[] newArray(int i10) {
        return new SnapshotStateList[i10];
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable.ClassLoaderCreator
    public SnapshotStateList<Object> createFromParcel(final Parcel parcel, final ClassLoader classLoader) {
        if (classLoader == null) {
            classLoader = SnapshotStateList$Companion$CREATOR$1.class.getClassLoader();
        }
        return SnapshotStateListKt.SnapshotStateList(parcel.readInt(), new Function1() { // from class: androidx.compose.runtime.snapshots.j
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Object readValue;
                Parcel parcel2 = parcel;
                ClassLoader classLoader2 = classLoader;
                ((Integer) obj).intValue();
                readValue = parcel2.readValue(classLoader2);
                return readValue;
            }
        });
    }

    @Override // android.os.Parcelable.Creator
    public SnapshotStateList<Object> createFromParcel(Parcel parcel) {
        return createFromParcel(parcel, (ClassLoader) null);
    }
}
