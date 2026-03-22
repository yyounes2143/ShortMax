package android.support.v4.media;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.media.MediaDescription;
import android.media.browse.MediaBrowser;
import android.os.BadParcelableException;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import android.os.RemoteException;
import android.support.v4.media.session.IMediaSession;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.collection.ArrayMap;
import androidx.core.app.BundleCompat;
import androidx.media.MediaBrowserCompatUtils;
import androidx.media.MediaBrowserProtocol;
import androidx.media.MediaBrowserServiceCompat;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class MediaBrowserCompat {

    /* renamed from: b  reason: collision with root package name */
    static final boolean f727b = Log.isLoggable("MediaBrowserCompat", 3);

    /* renamed from: a  reason: collision with root package name */
    private final d f728a;

    /* loaded from: classes.dex */
    private static class ItemReceiver extends ResultReceiver {
        @Override // android.support.v4.os.ResultReceiver
        protected void a(int i10, Bundle bundle) {
            if (bundle != null) {
                bundle = MediaSessionCompat.c(bundle);
            }
            if (i10 == 0 && bundle != null && bundle.containsKey(MediaBrowserServiceCompat.KEY_MEDIA_ITEM)) {
                Parcelable parcelable = bundle.getParcelable(MediaBrowserServiceCompat.KEY_MEDIA_ITEM);
                if (parcelable != null && !(parcelable instanceof MediaItem)) {
                    throw null;
                }
                MediaItem mediaItem = (MediaItem) parcelable;
                throw null;
            }
            throw null;
        }
    }

    /* loaded from: classes.dex */
    private static class SearchResultReceiver extends ResultReceiver {
        @Override // android.support.v4.os.ResultReceiver
        protected void a(int i10, Bundle bundle) {
            if (bundle != null) {
                bundle = MediaSessionCompat.c(bundle);
            }
            if (i10 == 0 && bundle != null && bundle.containsKey(MediaBrowserServiceCompat.KEY_SEARCH_RESULTS)) {
                Parcelable[] parcelableArray = bundle.getParcelableArray(MediaBrowserServiceCompat.KEY_SEARCH_RESULTS);
                parcelableArray.getClass();
                ArrayList arrayList = new ArrayList(parcelableArray.length);
                for (Parcelable parcelable : parcelableArray) {
                    arrayList.add((MediaItem) parcelable);
                }
                throw null;
            }
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(21)
    /* loaded from: classes.dex */
    public static class a {
        @DoNotInline
        static MediaDescription a(MediaBrowser.MediaItem mediaItem) {
            return mediaItem.getDescription();
        }

        @DoNotInline
        static int b(MediaBrowser.MediaItem mediaItem) {
            return mediaItem.getFlags();
        }
    }

    /* loaded from: classes.dex */
    private static class b extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<h> f731a;

        /* renamed from: b  reason: collision with root package name */
        private WeakReference<Messenger> f732b;

        b(h hVar) {
            this.f731a = new WeakReference<>(hVar);
        }

        void a(Messenger messenger) {
            this.f732b = new WeakReference<>(messenger);
        }

        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            WeakReference<Messenger> weakReference = this.f732b;
            if (weakReference != null && weakReference.get() != null && this.f731a.get() != null) {
                Bundle data = message.getData();
                MediaSessionCompat.a(data);
                h hVar = this.f731a.get();
                Messenger messenger = this.f732b.get();
                try {
                    int i10 = message.what;
                    if (i10 != 1) {
                        if (i10 != 2) {
                            if (i10 != 3) {
                                Log.w("MediaBrowserCompat", "Unhandled message: " + message + "\n  Client version: 1\n  Service version: " + message.arg1);
                            } else {
                                Bundle bundle = data.getBundle(MediaBrowserProtocol.DATA_OPTIONS);
                                MediaSessionCompat.a(bundle);
                                Bundle bundle2 = data.getBundle(MediaBrowserProtocol.DATA_NOTIFY_CHILDREN_CHANGED_OPTIONS);
                                MediaSessionCompat.a(bundle2);
                                hVar.d(messenger, data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID), data.getParcelableArrayList(MediaBrowserProtocol.DATA_MEDIA_ITEM_LIST), bundle, bundle2);
                            }
                        } else {
                            hVar.c(messenger);
                        }
                    } else {
                        Bundle bundle3 = data.getBundle(MediaBrowserProtocol.DATA_ROOT_HINTS);
                        MediaSessionCompat.a(bundle3);
                        hVar.f(messenger, data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID), (MediaSessionCompat.Token) data.getParcelable(MediaBrowserProtocol.DATA_MEDIA_SESSION_TOKEN), bundle3);
                    }
                } catch (BadParcelableException unused) {
                    Log.e("MediaBrowserCompat", "Could not unparcel the data.");
                    if (message.what == 1) {
                        hVar.c(messenger);
                    }
                }
            }
        }
    }

    /* loaded from: classes.dex */
    interface d {
        void a();

        void disconnect();

        @NonNull
        MediaSessionCompat.Token getSessionToken();
    }

    @RequiresApi(23)
    /* loaded from: classes.dex */
    static class f extends e {
        f(Context context, ComponentName componentName, c cVar, Bundle bundle) {
            super(context, componentName, cVar, bundle);
        }
    }

    @RequiresApi(26)
    /* loaded from: classes.dex */
    static class g extends f {
        g(Context context, ComponentName componentName, c cVar, Bundle bundle) {
            super(context, componentName, cVar, bundle);
        }
    }

    /* loaded from: classes.dex */
    interface h {
        void c(Messenger messenger);

        void d(Messenger messenger, String str, List<MediaItem> list, Bundle bundle, Bundle bundle2);

        void f(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle);
    }

    /* loaded from: classes.dex */
    private static class i {

        /* renamed from: a  reason: collision with root package name */
        private Messenger f744a;

        /* renamed from: b  reason: collision with root package name */
        private Bundle f745b;

        public i(IBinder iBinder, Bundle bundle) {
            this.f744a = new Messenger(iBinder);
            this.f745b = bundle;
        }

        private void b(int i10, Bundle bundle, Messenger messenger) throws RemoteException {
            Message obtain = Message.obtain();
            obtain.what = i10;
            obtain.arg1 = 1;
            obtain.setData(bundle);
            obtain.replyTo = messenger;
            this.f744a.send(obtain);
        }

        void a(Context context, Messenger messenger) throws RemoteException {
            Bundle bundle = new Bundle();
            bundle.putString(MediaBrowserProtocol.DATA_PACKAGE_NAME, context.getPackageName());
            bundle.putInt(MediaBrowserProtocol.DATA_CALLING_PID, Process.myPid());
            bundle.putBundle(MediaBrowserProtocol.DATA_ROOT_HINTS, this.f745b);
            b(6, bundle, messenger);
        }

        void c(Messenger messenger) throws RemoteException {
            b(7, null, messenger);
        }
    }

    /* loaded from: classes.dex */
    private static class j {

        /* renamed from: a  reason: collision with root package name */
        private final List<k> f746a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        private final List<Bundle> f747b = new ArrayList();

        public k a(Bundle bundle) {
            for (int i10 = 0; i10 < this.f747b.size(); i10++) {
                if (MediaBrowserCompatUtils.areSameOptions(this.f747b.get(i10), bundle)) {
                    return this.f746a.get(i10);
                }
            }
            return null;
        }

        public List<k> b() {
            return this.f746a;
        }

        public List<Bundle> c() {
            return this.f747b;
        }
    }

    public MediaBrowserCompat(Context context, ComponentName componentName, c cVar, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f728a = new g(context, componentName, cVar, bundle);
        } else {
            this.f728a = new f(context, componentName, cVar, bundle);
        }
    }

    public void a() {
        Log.d("MediaBrowserCompat", "Connecting to a MediaBrowserService.");
        this.f728a.a();
    }

    public void b() {
        this.f728a.disconnect();
    }

    @NonNull
    public MediaSessionCompat.Token c() {
        return this.f728a.getSessionToken();
    }

    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: classes.dex */
    public static class MediaItem implements Parcelable {
        public static final Parcelable.Creator<MediaItem> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        private final int f729a;

        /* renamed from: b  reason: collision with root package name */
        private final MediaDescriptionCompat f730b;

        /* loaded from: classes.dex */
        class a implements Parcelable.Creator<MediaItem> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public MediaItem createFromParcel(Parcel parcel) {
                return new MediaItem(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public MediaItem[] newArray(int i10) {
                return new MediaItem[i10];
            }
        }

        public MediaItem(@NonNull MediaDescriptionCompat mediaDescriptionCompat, int i10) {
            if (mediaDescriptionCompat != null) {
                if (!TextUtils.isEmpty(mediaDescriptionCompat.c())) {
                    this.f729a = i10;
                    this.f730b = mediaDescriptionCompat;
                    return;
                }
                throw new IllegalArgumentException("description must have a non-empty media id");
            }
            throw new IllegalArgumentException("description cannot be null");
        }

        public static MediaItem a(Object obj) {
            if (obj != null) {
                MediaBrowser.MediaItem mediaItem = (MediaBrowser.MediaItem) obj;
                return new MediaItem(MediaDescriptionCompat.a(a.a(mediaItem)), a.b(mediaItem));
            }
            return null;
        }

        public static List<MediaItem> b(List<?> list) {
            if (list != null) {
                ArrayList arrayList = new ArrayList(list.size());
                Iterator<?> it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(a(it.next()));
                }
                return arrayList;
            }
            return null;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @NonNull
        public String toString() {
            return "MediaItem{mFlags=" + this.f729a + ", mDescription=" + this.f730b + '}';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeInt(this.f729a);
            this.f730b.writeToParcel(parcel, i10);
        }

        MediaItem(Parcel parcel) {
            this.f729a = parcel.readInt();
            this.f730b = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
        }
    }

    /* loaded from: classes.dex */
    public static class c {
        final MediaBrowser.ConnectionCallback mConnectionCallbackFwk = new a();
        b mConnectionCallbackInternal;

        @RequiresApi(21)
        /* loaded from: classes.dex */
        private class a extends MediaBrowser.ConnectionCallback {
            a() {
            }

            @Override // android.media.browse.MediaBrowser.ConnectionCallback
            public void onConnected() {
                b bVar = c.this.mConnectionCallbackInternal;
                if (bVar != null) {
                    bVar.onConnected();
                }
                c.this.onConnected();
            }

            @Override // android.media.browse.MediaBrowser.ConnectionCallback
            public void onConnectionFailed() {
                b bVar = c.this.mConnectionCallbackInternal;
                if (bVar != null) {
                    bVar.e();
                }
                c.this.onConnectionFailed();
            }

            @Override // android.media.browse.MediaBrowser.ConnectionCallback
            public void onConnectionSuspended() {
                b bVar = c.this.mConnectionCallbackInternal;
                if (bVar != null) {
                    bVar.b();
                }
                c.this.onConnectionSuspended();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public interface b {
            void b();

            void e();

            void onConnected();
        }

        void setInternalConnectionCallback(b bVar) {
            this.mConnectionCallbackInternal = bVar;
        }

        public void onConnected() {
        }

        public void onConnectionFailed() {
        }

        public void onConnectionSuspended() {
        }
    }

    @RequiresApi(21)
    /* loaded from: classes.dex */
    static class e implements d, h, c.b {

        /* renamed from: a  reason: collision with root package name */
        final Context f734a;

        /* renamed from: b  reason: collision with root package name */
        protected final MediaBrowser f735b;

        /* renamed from: c  reason: collision with root package name */
        protected final Bundle f736c;

        /* renamed from: d  reason: collision with root package name */
        protected final b f737d = new b(this);

        /* renamed from: e  reason: collision with root package name */
        private final ArrayMap<String, j> f738e = new ArrayMap<>();

        /* renamed from: f  reason: collision with root package name */
        protected int f739f;

        /* renamed from: g  reason: collision with root package name */
        protected i f740g;

        /* renamed from: h  reason: collision with root package name */
        protected Messenger f741h;

        /* renamed from: i  reason: collision with root package name */
        private MediaSessionCompat.Token f742i;

        /* renamed from: j  reason: collision with root package name */
        private Bundle f743j;

        e(Context context, ComponentName componentName, c cVar, Bundle bundle) {
            Bundle bundle2;
            this.f734a = context;
            if (bundle != null) {
                bundle2 = new Bundle(bundle);
            } else {
                bundle2 = new Bundle();
            }
            this.f736c = bundle2;
            bundle2.putInt(MediaBrowserProtocol.EXTRA_CLIENT_VERSION, 1);
            bundle2.putInt(MediaBrowserProtocol.EXTRA_CALLING_PID, Process.myPid());
            cVar.setInternalConnectionCallback(this);
            this.f735b = new MediaBrowser(context, componentName, cVar.mConnectionCallbackFwk, bundle2);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.d
        public void a() {
            this.f735b.connect();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.c.b
        public void b() {
            this.f740g = null;
            this.f741h = null;
            this.f742i = null;
            this.f737d.a(null);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.h
        public void d(Messenger messenger, String str, List<MediaItem> list, Bundle bundle, Bundle bundle2) {
            if (this.f741h != messenger) {
                return;
            }
            j jVar = this.f738e.get(str);
            if (jVar == null) {
                if (MediaBrowserCompat.f727b) {
                    Log.d("MediaBrowserCompat", "onLoadChildren for id that isn't subscribed id=" + str);
                    return;
                }
                return;
            }
            k a10 = jVar.a(bundle);
            if (a10 != null) {
                if (bundle == null) {
                    if (list == null) {
                        a10.c(str);
                        return;
                    }
                    this.f743j = bundle2;
                    a10.a(str, list);
                    this.f743j = null;
                } else if (list == null) {
                    a10.d(str, bundle);
                } else {
                    this.f743j = bundle2;
                    a10.b(str, list, bundle);
                    this.f743j = null;
                }
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.d
        public void disconnect() {
            Messenger messenger;
            i iVar = this.f740g;
            if (iVar != null && (messenger = this.f741h) != null) {
                try {
                    iVar.c(messenger);
                } catch (RemoteException unused) {
                    Log.i("MediaBrowserCompat", "Remote error unregistering client messenger.");
                }
            }
            this.f735b.disconnect();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.d
        @NonNull
        public MediaSessionCompat.Token getSessionToken() {
            if (this.f742i == null) {
                this.f742i = MediaSessionCompat.Token.a(this.f735b.getSessionToken());
            }
            return this.f742i;
        }

        @Override // android.support.v4.media.MediaBrowserCompat.c.b
        public void onConnected() {
            try {
                Bundle extras = this.f735b.getExtras();
                if (extras == null) {
                    return;
                }
                this.f739f = extras.getInt(MediaBrowserProtocol.EXTRA_SERVICE_VERSION, 0);
                IBinder binder = BundleCompat.getBinder(extras, MediaBrowserProtocol.EXTRA_MESSENGER_BINDER);
                if (binder != null) {
                    this.f740g = new i(binder, this.f736c);
                    Messenger messenger = new Messenger(this.f737d);
                    this.f741h = messenger;
                    this.f737d.a(messenger);
                    try {
                        this.f740g.a(this.f734a, this.f741h);
                    } catch (RemoteException unused) {
                        Log.i("MediaBrowserCompat", "Remote error registering client messenger.");
                    }
                }
                IMediaSession i10 = IMediaSession.Stub.i(BundleCompat.getBinder(extras, MediaBrowserProtocol.EXTRA_SESSION_BINDER));
                if (i10 != null) {
                    this.f742i = MediaSessionCompat.Token.b(this.f735b.getSessionToken(), i10);
                }
            } catch (IllegalStateException e10) {
                Log.e("MediaBrowserCompat", "Unexpected IllegalStateException", e10);
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.c.b
        public void e() {
        }

        @Override // android.support.v4.media.MediaBrowserCompat.h
        public void c(Messenger messenger) {
        }

        @Override // android.support.v4.media.MediaBrowserCompat.h
        public void f(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle) {
        }
    }

    /* loaded from: classes.dex */
    public static abstract class k {

        /* renamed from: a  reason: collision with root package name */
        final MediaBrowser.SubscriptionCallback f748a;

        /* renamed from: b  reason: collision with root package name */
        final IBinder f749b = new Binder();

        /* renamed from: c  reason: collision with root package name */
        WeakReference<j> f750c;

        @RequiresApi(21)
        /* loaded from: classes.dex */
        private class a extends MediaBrowser.SubscriptionCallback {
            a() {
            }

            List<MediaItem> a(List<MediaItem> list, Bundle bundle) {
                if (list == null) {
                    return null;
                }
                int i10 = bundle.getInt("android.media.browse.extra.PAGE", -1);
                int i11 = bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1);
                if (i10 == -1 && i11 == -1) {
                    return list;
                }
                int i12 = i11 * i10;
                int i13 = i12 + i11;
                if (i10 >= 0 && i11 >= 1 && i12 < list.size()) {
                    if (i13 > list.size()) {
                        i13 = list.size();
                    }
                    return list.subList(i12, i13);
                }
                return Collections.emptyList();
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public void onChildrenLoaded(@NonNull String str, List<MediaBrowser.MediaItem> list) {
                j jVar;
                WeakReference<j> weakReference = k.this.f750c;
                if (weakReference == null) {
                    jVar = null;
                } else {
                    jVar = weakReference.get();
                }
                if (jVar == null) {
                    k.this.a(str, MediaItem.b(list));
                    return;
                }
                List<MediaItem> b10 = MediaItem.b(list);
                List<k> b11 = jVar.b();
                List<Bundle> c10 = jVar.c();
                for (int i10 = 0; i10 < b11.size(); i10++) {
                    Bundle bundle = c10.get(i10);
                    if (bundle == null) {
                        k.this.a(str, b10);
                    } else {
                        k.this.b(str, a(b10, bundle), bundle);
                    }
                }
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public void onError(@NonNull String str) {
                k.this.c(str);
            }
        }

        @RequiresApi(26)
        /* loaded from: classes.dex */
        private class b extends a {
            b() {
                super();
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public void onChildrenLoaded(@NonNull String str, @NonNull List<MediaBrowser.MediaItem> list, @NonNull Bundle bundle) {
                MediaSessionCompat.a(bundle);
                k.this.b(str, MediaItem.b(list), bundle);
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public void onError(@NonNull String str, @NonNull Bundle bundle) {
                MediaSessionCompat.a(bundle);
                k.this.d(str, bundle);
            }
        }

        public k() {
            if (Build.VERSION.SDK_INT >= 26) {
                this.f748a = new b();
            } else {
                this.f748a = new a();
            }
        }

        public void c(@NonNull String str) {
        }

        public void a(@NonNull String str, @NonNull List<MediaItem> list) {
        }

        public void d(@NonNull String str, @NonNull Bundle bundle) {
        }

        public void b(@NonNull String str, @NonNull List<MediaItem> list, @NonNull Bundle bundle) {
        }
    }

    /* loaded from: classes.dex */
    private static class CustomActionResultReceiver extends ResultReceiver {
        @Override // android.support.v4.os.ResultReceiver
        protected void a(int i10, Bundle bundle) {
        }
    }
}
