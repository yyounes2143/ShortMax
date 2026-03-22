package androidx.compose.runtime;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: SnapshotLongState.android.kt */
@Metadata
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
final class ParcelableSnapshotMutableLongState extends SnapshotMutableLongStateImpl implements Parcelable {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final Parcelable.Creator<ParcelableSnapshotMutableLongState> CREATOR = new Parcelable.Creator<ParcelableSnapshotMutableLongState>() { // from class: androidx.compose.runtime.ParcelableSnapshotMutableLongState$Companion$CREATOR$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelableSnapshotMutableLongState createFromParcel(Parcel parcel) {
            return new ParcelableSnapshotMutableLongState(parcel.readLong());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelableSnapshotMutableLongState[] newArray(int i10) {
            return new ParcelableSnapshotMutableLongState[i10];
        }
    };

    /* compiled from: SnapshotLongState.android.kt */
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

    public ParcelableSnapshotMutableLongState(long j10) {
        super(j10);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel parcel, int i10) {
        parcel.writeLong(getLongValue());
    }
}
