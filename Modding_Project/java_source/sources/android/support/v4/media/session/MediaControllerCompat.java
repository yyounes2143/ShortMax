package android.support.v4.media.session;

import android.content.Context;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.IMediaControllerCallback;
import android.support.v4.media.session.IMediaSession;
import android.support.v4.media.session.MediaSessionCompat;
import android.util.Log;
import android.view.KeyEvent;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.core.app.BundleCompat;
import androidx.media.AudioAttributesCompat;
import androidx.versionedparcelable.ParcelUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes.dex */
public final class MediaControllerCompat {

    /* renamed from: a  reason: collision with root package name */
    private final b f780a;

    /* renamed from: b  reason: collision with root package name */
    private final MediaSessionCompat.Token f781b;

    /* renamed from: c  reason: collision with root package name */
    private final Set<a> f782c;

    @RequiresApi(21)
    /* loaded from: classes.dex */
    static class MediaControllerImplApi21 implements b {

        /* renamed from: a  reason: collision with root package name */
        protected final MediaController f783a;

        /* renamed from: b  reason: collision with root package name */
        final Object f784b = new Object();
        @GuardedBy("mLock")

        /* renamed from: c  reason: collision with root package name */
        private final List<a> f785c = new ArrayList();

        /* renamed from: d  reason: collision with root package name */
        private HashMap<a, a> f786d = new HashMap<>();

        /* renamed from: e  reason: collision with root package name */
        final MediaSessionCompat.Token f787e;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static class ExtraBinderRequestResultReceiver extends ResultReceiver {

            /* renamed from: a  reason: collision with root package name */
            private WeakReference<MediaControllerImplApi21> f788a;

            ExtraBinderRequestResultReceiver(MediaControllerImplApi21 mediaControllerImplApi21) {
                super(null);
                this.f788a = new WeakReference<>(mediaControllerImplApi21);
            }

            @Override // android.os.ResultReceiver
            protected void onReceiveResult(int i10, Bundle bundle) {
                MediaControllerImplApi21 mediaControllerImplApi21 = this.f788a.get();
                if (mediaControllerImplApi21 != null && bundle != null) {
                    synchronized (mediaControllerImplApi21.f784b) {
                        mediaControllerImplApi21.f787e.e(IMediaSession.Stub.i(BundleCompat.getBinder(bundle, "android.support.v4.media.session.EXTRA_BINDER")));
                        mediaControllerImplApi21.f787e.f(ParcelUtils.getVersionedParcelable(bundle, "android.support.v4.media.session.SESSION_TOKEN2"));
                        mediaControllerImplApi21.b();
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static class a extends a.b {
            a(a aVar) {
                super(aVar);
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void B() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void S(MediaMetadataCompat mediaMetadataCompat) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void X(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void d0(Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void h0(CharSequence charSequence) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void x(List<MediaSessionCompat.QueueItem> list) throws RemoteException {
                throw new AssertionError();
            }
        }

        MediaControllerImplApi21(Context context, MediaSessionCompat.Token token) {
            this.f787e = token;
            this.f783a = new MediaController(context, (MediaSession.Token) token.d());
            if (token.c() == null) {
                c();
            }
        }

        private void c() {
            d("android.support.v4.media.session.command.GET_EXTRA_BINDER", null, new ExtraBinderRequestResultReceiver(this));
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b
        public boolean a(KeyEvent keyEvent) {
            return this.f783a.dispatchMediaButtonEvent(keyEvent);
        }

        @GuardedBy("mLock")
        void b() {
            if (this.f787e.c() == null) {
                return;
            }
            for (a aVar : this.f785c) {
                a aVar2 = new a(aVar);
                this.f786d.put(aVar, aVar2);
                aVar.f790b = aVar2;
                try {
                    this.f787e.c().H(aVar2);
                    aVar.i(13, null, null);
                } catch (RemoteException e10) {
                    Log.e("MediaControllerCompat", "Dead object in registerCallback.", e10);
                }
            }
            this.f785c.clear();
        }

        public void d(String str, Bundle bundle, ResultReceiver resultReceiver) {
            this.f783a.sendCommand(str, bundle, resultReceiver);
        }
    }

    /* loaded from: classes.dex */
    interface b {
        boolean a(KeyEvent keyEvent);
    }

    @RequiresApi(29)
    /* loaded from: classes.dex */
    static class c extends MediaControllerImplApi21 {
        c(Context context, MediaSessionCompat.Token token) {
            super(context, token);
        }
    }

    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        private final int f793a;

        /* renamed from: b  reason: collision with root package name */
        private final AudioAttributesCompat f794b;

        /* renamed from: c  reason: collision with root package name */
        private final int f795c;

        /* renamed from: d  reason: collision with root package name */
        private final int f796d;

        /* renamed from: e  reason: collision with root package name */
        private final int f797e;

        d(int i10, @NonNull AudioAttributesCompat audioAttributesCompat, int i11, int i12, int i13) {
            this.f793a = i10;
            this.f794b = audioAttributesCompat;
            this.f795c = i11;
            this.f796d = i12;
            this.f797e = i13;
        }
    }

    public MediaControllerCompat(Context context, @NonNull MediaSessionCompat.Token token) {
        if (token != null) {
            this.f782c = Collections.synchronizedSet(new HashSet());
            this.f781b = token;
            if (Build.VERSION.SDK_INT >= 29) {
                this.f780a = new c(context, token);
                return;
            } else {
                this.f780a = new MediaControllerImplApi21(context, token);
                return;
            }
        }
        throw new IllegalArgumentException("sessionToken must not be null");
    }

    public boolean a(KeyEvent keyEvent) {
        if (keyEvent != null) {
            return this.f780a.a(keyEvent);
        }
        throw new IllegalArgumentException("KeyEvent may not be null");
    }

    /* loaded from: classes.dex */
    public static abstract class a implements IBinder.DeathRecipient {

        /* renamed from: a  reason: collision with root package name */
        final MediaController.Callback f789a = new C0004a(this);

        /* renamed from: b  reason: collision with root package name */
        IMediaControllerCallback f790b;

        @RequiresApi(21)
        /* renamed from: android.support.v4.media.session.MediaControllerCompat$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        private static class C0004a extends MediaController.Callback {

            /* renamed from: a  reason: collision with root package name */
            private final WeakReference<a> f791a;

            C0004a(a aVar) {
                this.f791a = new WeakReference<>(aVar);
            }

            @Override // android.media.session.MediaController.Callback
            public void onAudioInfoChanged(MediaController.PlaybackInfo playbackInfo) {
                a aVar = this.f791a.get();
                if (aVar != null) {
                    aVar.a(new d(playbackInfo.getPlaybackType(), AudioAttributesCompat.wrap(playbackInfo.getAudioAttributes()), playbackInfo.getVolumeControl(), playbackInfo.getMaxVolume(), playbackInfo.getCurrentVolume()));
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onExtrasChanged(Bundle bundle) {
                MediaSessionCompat.a(bundle);
                a aVar = this.f791a.get();
                if (aVar != null) {
                    aVar.b(bundle);
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onMetadataChanged(MediaMetadata mediaMetadata) {
                a aVar = this.f791a.get();
                if (aVar != null) {
                    aVar.c(MediaMetadataCompat.a(mediaMetadata));
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onPlaybackStateChanged(PlaybackState playbackState) {
                a aVar = this.f791a.get();
                if (aVar != null && aVar.f790b == null) {
                    aVar.d(PlaybackStateCompat.a(playbackState));
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onQueueChanged(List<MediaSession.QueueItem> list) {
                a aVar = this.f791a.get();
                if (aVar != null) {
                    aVar.e(MediaSessionCompat.QueueItem.b(list));
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onQueueTitleChanged(CharSequence charSequence) {
                a aVar = this.f791a.get();
                if (aVar != null) {
                    aVar.f(charSequence);
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onSessionDestroyed() {
                a aVar = this.f791a.get();
                if (aVar != null) {
                    aVar.g();
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onSessionEvent(String str, Bundle bundle) {
                MediaSessionCompat.a(bundle);
                a aVar = this.f791a.get();
                if (aVar != null) {
                    aVar.h(str, bundle);
                }
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            i(8, null, null);
        }

        public void g() {
        }

        /* loaded from: classes.dex */
        private static class b extends IMediaControllerCallback.Stub {

            /* renamed from: a  reason: collision with root package name */
            private final WeakReference<a> f792a;

            b(a aVar) {
                this.f792a = new WeakReference<>(aVar);
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void U(int i10) throws RemoteException {
                a aVar = this.f792a.get();
                if (aVar != null) {
                    aVar.i(12, Integer.valueOf(i10), null);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void f0(boolean z10) throws RemoteException {
                a aVar = this.f792a.get();
                if (aVar != null) {
                    aVar.i(11, Boolean.valueOf(z10), null);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void k0(PlaybackStateCompat playbackStateCompat) throws RemoteException {
                a aVar = this.f792a.get();
                if (aVar != null) {
                    aVar.i(2, playbackStateCompat, null);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onEvent(String str, Bundle bundle) throws RemoteException {
                a aVar = this.f792a.get();
                if (aVar != null) {
                    aVar.i(1, str, bundle);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onRepeatModeChanged(int i10) throws RemoteException {
                a aVar = this.f792a.get();
                if (aVar != null) {
                    aVar.i(9, Integer.valueOf(i10), null);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void w() throws RemoteException {
                a aVar = this.f792a.get();
                if (aVar != null) {
                    aVar.i(13, null, null);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void g0(boolean z10) throws RemoteException {
            }
        }

        public void a(d dVar) {
        }

        public void b(Bundle bundle) {
        }

        public void c(MediaMetadataCompat mediaMetadataCompat) {
        }

        public void d(PlaybackStateCompat playbackStateCompat) {
        }

        public void e(List<MediaSessionCompat.QueueItem> list) {
        }

        public void f(CharSequence charSequence) {
        }

        public void h(String str, Bundle bundle) {
        }

        void i(int i10, Object obj, Bundle bundle) {
        }
    }
}
