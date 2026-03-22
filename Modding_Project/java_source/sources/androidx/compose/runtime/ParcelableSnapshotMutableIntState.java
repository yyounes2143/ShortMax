package androidx.compose.runtime;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: SnapshotIntState.android.kt */
@Metadata
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
final class ParcelableSnapshotMutableIntState extends SnapshotMutableIntStateImpl implements Parcelable {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final Parcelable.Creator<ParcelableSnapshotMutableIntState> CREATOR = new Parcelable.Creator<ParcelableSnapshotMutableIntState>() { // from class: androidx.compose.runtime.ParcelableSnapshotMutableIntState$Companion$CREATOR$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelableSnapshotMutableIntState createFromParcel(Parcel parcel) {
            return new ParcelableSnapshotMutableIntState(parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelableSnapshotMutableIntState[] newArray(int i10) {
            return new ParcelableSnapshotMutableIntState[i10];
        }
    };

    /* compiled from: SnapshotIntState.android.kt */
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

    public ParcelableSnapshotMutableIntState(int i10) {
        super(i10);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel parcel, int i10) {
        parcel.writeInt(getIntValue());
    }
}
