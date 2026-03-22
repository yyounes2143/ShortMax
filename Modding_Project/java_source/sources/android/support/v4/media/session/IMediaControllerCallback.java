package android.support.v4.media.session;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import androidx.annotation.RestrictTo;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public interface IMediaControllerCallback extends IInterface {

    /* loaded from: classes.dex */
    public static class Default implements IMediaControllerCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    /* loaded from: classes.dex */
    public static class a {
        /* JADX INFO: Access modifiers changed from: private */
        public static <T> T b(Parcel parcel, Parcelable.Creator<T> creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }
    }

    void B() throws RemoteException;

    void S(MediaMetadataCompat mediaMetadataCompat) throws RemoteException;

    void U(int i10) throws RemoteException;

    void X(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException;

    void d0(Bundle bundle) throws RemoteException;

    void f0(boolean z10) throws RemoteException;

    void g0(boolean z10) throws RemoteException;

    void h0(CharSequence charSequence) throws RemoteException;

    void k0(PlaybackStateCompat playbackStateCompat) throws RemoteException;

    void onEvent(String str, Bundle bundle) throws RemoteException;

    void onRepeatModeChanged(int i10) throws RemoteException;

    void w() throws RemoteException;

    void x(List<MediaSessionCompat.QueueItem> list) throws RemoteException;

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IMediaControllerCallback {

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static class a implements IMediaControllerCallback {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f778a;

            a(IBinder iBinder) {
                this.f778a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f778a;
            }
        }

        public Stub() {
            attachInterface(this, "android.support.v4.media.session.IMediaControllerCallback");
        }

        public static IMediaControllerCallback i(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.v4.media.session.IMediaControllerCallback");
            if (queryLocalInterface != null && (queryLocalInterface instanceof IMediaControllerCallback)) {
                return (IMediaControllerCallback) queryLocalInterface;
            }
            return new a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
            }
            if (i10 == 1598968902) {
                parcel2.writeString("android.support.v4.media.session.IMediaControllerCallback");
                return true;
            }
            boolean z10 = false;
            switch (i10) {
                case 1:
                    onEvent(parcel.readString(), (Bundle) a.b(parcel, Bundle.CREATOR));
                    break;
                case 2:
                    B();
                    break;
                case 3:
                    k0((PlaybackStateCompat) a.b(parcel, PlaybackStateCompat.CREATOR));
                    break;
                case 4:
                    S((MediaMetadataCompat) a.b(parcel, MediaMetadataCompat.CREATOR));
                    break;
                case 5:
                    x(parcel.createTypedArrayList(MediaSessionCompat.QueueItem.CREATOR));
                    break;
                case 6:
                    h0((CharSequence) a.b(parcel, TextUtils.CHAR_SEQUENCE_CREATOR));
                    break;
                case 7:
                    d0((Bundle) a.b(parcel, Bundle.CREATOR));
                    break;
                case 8:
                    X((ParcelableVolumeInfo) a.b(parcel, ParcelableVolumeInfo.CREATOR));
                    break;
                case 9:
                    onRepeatModeChanged(parcel.readInt());
                    break;
                case 10:
                    if (parcel.readInt() != 0) {
                        z10 = true;
                    }
                    g0(z10);
                    break;
                case 11:
                    if (parcel.readInt() != 0) {
                        z10 = true;
                    }
                    f0(z10);
                    break;
                case 12:
                    U(parcel.readInt());
                    break;
                case 13:
                    w();
                    break;
                default:
                    return super.onTransact(i10, parcel, parcel2, i11);
            }
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }
    }
}
