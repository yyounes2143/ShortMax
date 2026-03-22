package android.support.v4.media.session;

import android.app.PendingIntent;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.support.v4.media.session.IMediaControllerCallback;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import android.view.KeyEvent;
import androidx.annotation.RestrictTo;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public interface IMediaSession extends IInterface {

    /* loaded from: classes.dex */
    public static class a {
        /* JADX INFO: Access modifiers changed from: private */
        public static <T> T d(Parcel parcel, Parcelable.Creator<T> creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static <T extends Parcelable> void e(Parcel parcel, List<T> list, int i10) {
            if (list == null) {
                parcel.writeInt(-1);
                return;
            }
            int size = list.size();
            parcel.writeInt(size);
            for (int i11 = 0; i11 < size; i11++) {
                f(parcel, list.get(i11), i10);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static <T extends Parcelable> void f(Parcel parcel, T t10, int i10) {
            if (t10 != null) {
                parcel.writeInt(1);
                t10.writeToParcel(parcel, i10);
                return;
            }
            parcel.writeInt(0);
        }
    }

    void A(RatingCompat ratingCompat, Bundle bundle) throws RemoteException;

    void C(int i10) throws RemoteException;

    boolean D() throws RemoteException;

    void E(String str, Bundle bundle, MediaSessionCompat.ResultReceiverWrapper resultReceiverWrapper) throws RemoteException;

    void F() throws RemoteException;

    void G(boolean z10) throws RemoteException;

    void H(IMediaControllerCallback iMediaControllerCallback) throws RemoteException;

    boolean I() throws RemoteException;

    CharSequence J() throws RemoteException;

    void K(IMediaControllerCallback iMediaControllerCallback) throws RemoteException;

    void L(boolean z10) throws RemoteException;

    ParcelableVolumeInfo M() throws RemoteException;

    int N() throws RemoteException;

    void O(String str, Bundle bundle) throws RemoteException;

    void P(Uri uri, Bundle bundle) throws RemoteException;

    boolean Q(KeyEvent keyEvent) throws RemoteException;

    void R(MediaDescriptionCompat mediaDescriptionCompat, int i10) throws RemoteException;

    int T() throws RemoteException;

    void V(long j10) throws RemoteException;

    void W(int i10) throws RemoteException;

    void Y(RatingCompat ratingCompat) throws RemoteException;

    void Z(int i10, int i11, String str) throws RemoteException;

    void a0(MediaDescriptionCompat mediaDescriptionCompat) throws RemoteException;

    void b0(MediaDescriptionCompat mediaDescriptionCompat) throws RemoteException;

    void c0(String str, Bundle bundle) throws RemoteException;

    void e0() throws RemoteException;

    Bundle getExtras() throws RemoteException;

    long getFlags() throws RemoteException;

    MediaMetadataCompat getMetadata() throws RemoteException;

    String getPackageName() throws RemoteException;

    PlaybackStateCompat getPlaybackState() throws RemoteException;

    int getRepeatMode() throws RemoteException;

    String getTag() throws RemoteException;

    void i0(int i10, int i11, String str) throws RemoteException;

    List<MediaSessionCompat.QueueItem> j0() throws RemoteException;

    void next() throws RemoteException;

    void pause() throws RemoteException;

    void play() throws RemoteException;

    void prepare() throws RemoteException;

    void previous() throws RemoteException;

    Bundle q() throws RemoteException;

    void r(float f10) throws RemoteException;

    void s(String str, Bundle bundle) throws RemoteException;

    void seekTo(long j10) throws RemoteException;

    void setRepeatMode(int i10) throws RemoteException;

    void stop() throws RemoteException;

    boolean t() throws RemoteException;

    void u(Uri uri, Bundle bundle) throws RemoteException;

    PendingIntent v() throws RemoteException;

    void y(String str, Bundle bundle) throws RemoteException;

    void z(String str, Bundle bundle) throws RemoteException;

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IMediaSession {

        /* loaded from: classes.dex */
        private static class a implements IMediaSession {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f779a;

            a(IBinder iBinder) {
                this.f779a = iBinder;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void H(IMediaControllerCallback iMediaControllerCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeStrongInterface(iMediaControllerCallback);
                    this.f779a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.IMediaSession
            public boolean Q(KeyEvent keyEvent) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    boolean z10 = false;
                    a.f(obtain, keyEvent, 0);
                    this.f779a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z10 = true;
                    }
                    return z10;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f779a;
            }
        }

        public Stub() {
            attachInterface(this, "android.support.v4.media.session.IMediaSession");
        }

        public static IMediaSession i(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.v4.media.session.IMediaSession");
            if (queryLocalInterface != null && (queryLocalInterface instanceof IMediaSession)) {
                return (IMediaSession) queryLocalInterface;
            }
            return new a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            }
            if (i10 == 1598968902) {
                parcel2.writeString("android.support.v4.media.session.IMediaSession");
                return true;
            }
            boolean z10 = false;
            switch (i10) {
                case 1:
                    E(parcel.readString(), (Bundle) a.d(parcel, Bundle.CREATOR), (MediaSessionCompat.ResultReceiverWrapper) a.d(parcel, MediaSessionCompat.ResultReceiverWrapper.CREATOR));
                    parcel2.writeNoException();
                    break;
                case 2:
                    boolean Q = Q((KeyEvent) a.d(parcel, KeyEvent.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(Q ? 1 : 0);
                    break;
                case 3:
                    H(IMediaControllerCallback.Stub.i(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    break;
                case 4:
                    K(IMediaControllerCallback.Stub.i(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    break;
                case 5:
                    boolean I = I();
                    parcel2.writeNoException();
                    parcel2.writeInt(I ? 1 : 0);
                    break;
                case 6:
                    String packageName = getPackageName();
                    parcel2.writeNoException();
                    parcel2.writeString(packageName);
                    break;
                case 7:
                    String tag = getTag();
                    parcel2.writeNoException();
                    parcel2.writeString(tag);
                    break;
                case 8:
                    PendingIntent v10 = v();
                    parcel2.writeNoException();
                    a.f(parcel2, v10, 1);
                    break;
                case 9:
                    long flags = getFlags();
                    parcel2.writeNoException();
                    parcel2.writeLong(flags);
                    break;
                case 10:
                    ParcelableVolumeInfo M = M();
                    parcel2.writeNoException();
                    a.f(parcel2, M, 1);
                    break;
                case 11:
                    i0(parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    break;
                case 12:
                    Z(parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    break;
                case 13:
                    play();
                    parcel2.writeNoException();
                    break;
                case 14:
                    z(parcel.readString(), (Bundle) a.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    break;
                case 15:
                    O(parcel.readString(), (Bundle) a.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    break;
                case 16:
                    P((Uri) a.d(parcel, Uri.CREATOR), (Bundle) a.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    break;
                case 17:
                    V(parcel.readLong());
                    parcel2.writeNoException();
                    break;
                case 18:
                    pause();
                    parcel2.writeNoException();
                    break;
                case 19:
                    stop();
                    parcel2.writeNoException();
                    break;
                case 20:
                    next();
                    parcel2.writeNoException();
                    break;
                case 21:
                    previous();
                    parcel2.writeNoException();
                    break;
                case 22:
                    e0();
                    parcel2.writeNoException();
                    break;
                case 23:
                    F();
                    parcel2.writeNoException();
                    break;
                case 24:
                    seekTo(parcel.readLong());
                    parcel2.writeNoException();
                    break;
                case 25:
                    Y((RatingCompat) a.d(parcel, RatingCompat.CREATOR));
                    parcel2.writeNoException();
                    break;
                case 26:
                    s(parcel.readString(), (Bundle) a.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    break;
                case 27:
                    MediaMetadataCompat metadata = getMetadata();
                    parcel2.writeNoException();
                    a.f(parcel2, metadata, 1);
                    break;
                case 28:
                    PlaybackStateCompat playbackState = getPlaybackState();
                    parcel2.writeNoException();
                    a.f(parcel2, playbackState, 1);
                    break;
                case 29:
                    List<MediaSessionCompat.QueueItem> j02 = j0();
                    parcel2.writeNoException();
                    a.e(parcel2, j02, 1);
                    break;
                case 30:
                    CharSequence J = J();
                    parcel2.writeNoException();
                    if (J != null) {
                        parcel2.writeInt(1);
                        TextUtils.writeToParcel(J, parcel2, 1);
                        break;
                    } else {
                        parcel2.writeInt(0);
                        break;
                    }
                case 31:
                    Bundle extras = getExtras();
                    parcel2.writeNoException();
                    a.f(parcel2, extras, 1);
                    break;
                case 32:
                    int N = N();
                    parcel2.writeNoException();
                    parcel2.writeInt(N);
                    break;
                case 33:
                    prepare();
                    parcel2.writeNoException();
                    break;
                case 34:
                    y(parcel.readString(), (Bundle) a.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    break;
                case 35:
                    c0(parcel.readString(), (Bundle) a.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    break;
                case 36:
                    u((Uri) a.d(parcel, Uri.CREATOR), (Bundle) a.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    break;
                case 37:
                    int repeatMode = getRepeatMode();
                    parcel2.writeNoException();
                    parcel2.writeInt(repeatMode);
                    break;
                case 38:
                    boolean t10 = t();
                    parcel2.writeNoException();
                    parcel2.writeInt(t10 ? 1 : 0);
                    break;
                case 39:
                    setRepeatMode(parcel.readInt());
                    parcel2.writeNoException();
                    break;
                case 40:
                    if (parcel.readInt() != 0) {
                        z10 = true;
                    }
                    G(z10);
                    parcel2.writeNoException();
                    break;
                case 41:
                    b0((MediaDescriptionCompat) a.d(parcel, MediaDescriptionCompat.CREATOR));
                    parcel2.writeNoException();
                    break;
                case 42:
                    R((MediaDescriptionCompat) a.d(parcel, MediaDescriptionCompat.CREATOR), parcel.readInt());
                    parcel2.writeNoException();
                    break;
                case 43:
                    a0((MediaDescriptionCompat) a.d(parcel, MediaDescriptionCompat.CREATOR));
                    parcel2.writeNoException();
                    break;
                case 44:
                    C(parcel.readInt());
                    parcel2.writeNoException();
                    break;
                case 45:
                    boolean D = D();
                    parcel2.writeNoException();
                    parcel2.writeInt(D ? 1 : 0);
                    break;
                case 46:
                    if (parcel.readInt() != 0) {
                        z10 = true;
                    }
                    L(z10);
                    parcel2.writeNoException();
                    break;
                case 47:
                    int T = T();
                    parcel2.writeNoException();
                    parcel2.writeInt(T);
                    break;
                case 48:
                    W(parcel.readInt());
                    parcel2.writeNoException();
                    break;
                case 49:
                    r(parcel.readFloat());
                    parcel2.writeNoException();
                    break;
                case 50:
                    Bundle q10 = q();
                    parcel2.writeNoException();
                    a.f(parcel2, q10, 1);
                    break;
                case 51:
                    A((RatingCompat) a.d(parcel, RatingCompat.CREATOR), (Bundle) a.d(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
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

    /* loaded from: classes.dex */
    public static class Default implements IMediaSession {
        @Override // android.support.v4.media.session.IMediaSession
        public boolean Q(KeyEvent keyEvent) throws RemoteException {
            return false;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.support.v4.media.session.IMediaSession
        public void H(IMediaControllerCallback iMediaControllerCallback) throws RemoteException {
        }
    }
}
