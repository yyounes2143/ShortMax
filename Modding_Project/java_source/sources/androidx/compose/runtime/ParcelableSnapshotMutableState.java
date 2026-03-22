package androidx.compose.runtime;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SnapshotState.android.kt */
@Metadata
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
final class ParcelableSnapshotMutableState<T> extends SnapshotMutableStateImpl<T> implements Parcelable {
    private static final int PolicyNeverEquals = 0;
    private static final int PolicyReferentialEquality = 2;
    private static final int PolicyStructuralEquality = 1;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final Parcelable.Creator<ParcelableSnapshotMutableState<Object>> CREATOR = new Parcelable.ClassLoaderCreator<ParcelableSnapshotMutableState<Object>>() { // from class: androidx.compose.runtime.ParcelableSnapshotMutableState$Companion$CREATOR$1
        @Override // android.os.Parcelable.Creator
        public ParcelableSnapshotMutableState<Object>[] newArray(int i10) {
            return new ParcelableSnapshotMutableState[i10];
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.ClassLoaderCreator
        public ParcelableSnapshotMutableState<Object> createFromParcel(Parcel parcel, ClassLoader classLoader) {
            SnapshotMutationPolicy neverEqualPolicy;
            if (classLoader == null) {
                classLoader = ParcelableSnapshotMutableState$Companion$CREATOR$1.class.getClassLoader();
            }
            Object readValue = parcel.readValue(classLoader);
            int readInt = parcel.readInt();
            if (readInt == 0) {
                neverEqualPolicy = SnapshotStateKt.neverEqualPolicy();
            } else if (readInt == 1) {
                neverEqualPolicy = SnapshotStateKt.structuralEqualityPolicy();
            } else if (readInt == 2) {
                neverEqualPolicy = SnapshotStateKt.referentialEqualityPolicy();
            } else {
                throw new IllegalStateException("Unsupported MutableState policy " + readInt + " was restored");
            }
            return new ParcelableSnapshotMutableState<>(readValue, neverEqualPolicy);
        }

        @Override // android.os.Parcelable.Creator
        public ParcelableSnapshotMutableState<Object> createFromParcel(Parcel parcel) {
            return createFromParcel(parcel, (ClassLoader) null);
        }
    };

    /* compiled from: SnapshotState.android.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ void getCREATOR$annotations() {
        }
    }

    public ParcelableSnapshotMutableState(T t10, @NotNull SnapshotMutationPolicy<T> snapshotMutationPolicy) {
        super(t10, snapshotMutationPolicy);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel parcel, int i10) {
        int i11;
        parcel.writeValue(getValue());
        SnapshotMutationPolicy<T> policy = getPolicy();
        if (Intrinsics.areEqual(policy, SnapshotStateKt.neverEqualPolicy())) {
            i11 = 0;
        } else if (Intrinsics.areEqual(policy, SnapshotStateKt.structuralEqualityPolicy())) {
            i11 = 1;
        } else if (Intrinsics.areEqual(policy, SnapshotStateKt.referentialEqualityPolicy())) {
            i11 = 2;
        } else {
            throw new IllegalStateException("Only known types of MutableState's SnapshotMutationPolicy are supported");
        }
        parcel.writeInt(i11);
    }
}
