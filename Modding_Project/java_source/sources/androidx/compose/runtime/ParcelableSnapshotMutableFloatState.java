package androidx.compose.runtime;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: SnapshotFloatState.android.kt */
@Metadata
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
final class ParcelableSnapshotMutableFloatState extends SnapshotMutableFloatStateImpl implements Parcelable {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final Parcelable.Creator<ParcelableSnapshotMutableFloatState> CREATOR = new Parcelable.Creator<ParcelableSnapshotMutableFloatState>() { // from class: androidx.compose.runtime.ParcelableSnapshotMutableFloatState$Companion$CREATOR$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelableSnapshotMutableFloatState createFromParcel(Parcel parcel) {
            return new ParcelableSnapshotMutableFloatState(parcel.readFloat());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelableSnapshotMutableFloatState[] newArray(int i10) {
            return new ParcelableSnapshotMutableFloatState[i10];
        }
    };

    /* compiled from: SnapshotFloatState.android.kt */
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

    public ParcelableSnapshotMutableFloatState(float f10) {
        super(f10);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel parcel, int i10) {
        parcel.writeFloat(getFloatValue());
    }
}
