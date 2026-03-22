package androidx.compose.runtime;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: SnapshotDoubleState.android.kt */
@Metadata
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
final class ParcelableSnapshotMutableDoubleState extends SnapshotMutableDoubleStateImpl implements Parcelable {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final Parcelable.Creator<ParcelableSnapshotMutableDoubleState> CREATOR = new Parcelable.Creator<ParcelableSnapshotMutableDoubleState>() { // from class: androidx.compose.runtime.ParcelableSnapshotMutableDoubleState$Companion$CREATOR$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelableSnapshotMutableDoubleState createFromParcel(Parcel parcel) {
            return new ParcelableSnapshotMutableDoubleState(parcel.readDouble());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParcelableSnapshotMutableDoubleState[] newArray(int i10) {
            return new ParcelableSnapshotMutableDoubleState[i10];
        }
    };

    /* compiled from: SnapshotDoubleState.android.kt */
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

    public ParcelableSnapshotMutableDoubleState(double d10) {
        super(d10);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel parcel, int i10) {
        parcel.writeDouble(getDoubleValue());
    }
}
